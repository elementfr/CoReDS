library(tidyverse)
library(stringr)
library(questionr)
library(tidyverse)
library(lubridate)
library(readr)
library(REDCapR)



uri <- "http://s1.eq22.fr/redcap/api/"
token <- "3707C9643481CAE91EAC1EAE913B0E30"

projet_data <- redcap_read(redcap_uri = uri, token = token)$data

projet_data <- projet_data %>% 
  mutate(PublicationType = 2,
         demande_date = ymd(demande_date))


bibtex_2academic <- function(projet_data,
                             outfold,
                             overwrite = TRUE) {
  
  require(RefManageR)
  require(dplyr)
  require(stringr)
  require(anytime)
  
  create_md <- function(x) {
    
    foldername <- paste(x[["demande_date"]], x[["titre_etude"]] %>%
                          str_replace_all(fixed(" "), "_") %>%
                          str_remove_all(fixed(":")) %>%
                          str_sub(1, 20), sep = "_")
    
    #folder = paste0(outfold, "/", foldername)
    dir.create(file.path(outfold, foldername), showWarnings = FALSE)
    filename = "index.md"
    # start writing
    outsubfold = paste(outfold, foldername, sep="/")
    # start writing
    if (!file.exists(file.path(outsubfold, filename)) | overwrite) {
      fileConn <- file.path(outsubfold, filename)
      write("+++", fileConn)
      
      write(paste0("title = \"", x[["titre_etude"]], "\""), fileConn, append = T)
      
      write(paste0("date = \"", x[["demande_date"]],  "\""), fileConn, append = T)
      
      write("+++", fileConn, append = T)
      
      
      if (x[["responsable_traitement"]] == 1) {
      write(paste0("Responsable(s) du traitement : ",'<span style="color:#3498DB;font-weight:bold">', "APHP", "</span>", "<br><br>"), fileConn, append = T)
      } else {
        write(paste0("Responsable(s) du traitement : ", '<span style="color:#3498DB;font-weight:bold">', x[["si_autre_partenaire"]], "</span>","<br><br>"), fileConn, append = T)
      }
      write(paste0("Investigateur principal : ", '<span style="color:#3498DB;font-weight:bold">', x[["pi_nom"]], " ", x[["pi_prenom"]],  "</span>", "<br><br>"), fileConn, append = T)
      
      if (!is.na(x[["objectif"]])) {
        write(paste0("Objectif de l'étude : ", '<span style="color:#3498DB;font-weight:bold">', x[["objectif"]],   "</span>", "<br><br>"), fileConn, append = T)
      } else {
        write(paste0("Objectif de l'étude : ", '<span style="color:#3498DB;font-weight:bold">', "aucun",  "</span>","<br><br>"), fileConn, append = T)
      }
     
      if (x[["avis_ceraphp_complete"]] == 2) {
        write(paste0("Date d'avis Comité éthique CERAPHP : ", '<span style="color:#3498DB;font-weight:bold">', x[["date_ceraphp"]], "</span>", "<br><br>"), fileConn, append = T)
      } else if (x[["avis_ceraphp_complete"]] == 1) {
        write(paste0("Date d'avis Comité éthique CERAPHP : ", '<span style="color:#3498DB;font-weight:bold">', "Non concerné", "</span>", "<br><br>"), fileConn, append = T)
      } else if (x[["avis_ceraphp_complete"]] == 0) {
        write(paste0("Date d'avis Comité éthique CERAPHP : ", '<span style="color:#3498DB;font-weight:bold">', "En attente", "</span>", "<br><br>"), fileConn, append = T)
      } 
      
      if (x[["avis_cpp_complete"]] == 2) {
        write(paste0("Date d'avis Comité éthique CPP : ", '<span style="color:#3498DB;font-weight:bold">', x[["date_cpp"]], "</span>", "<br><br>"), fileConn, append = T)
      } else if (x[["avis_cpp_complete"]] == 1) {
        write(paste0("Date d'avis Comité éthique CPP : ", '<span style="color:#3498DB;font-weight:bold">', "Non concerné", "</span>", "<br><br>"), fileConn, append = T)
      } else if (x[["avis_cpp_complete"]] == 0) {
        write(paste0("Date d'avis Comité éthique CPP : ", '<span style="color:#3498DB;font-weight:bold">', "En attente", "</span>", "<br><br>"), fileConn, append = T)
      }
      
      
      if (!is.na(x[["duree_conservation"]])) {
        write(paste0("Durée de conservation des données : ", '<span style="color:#3498DB;font-weight:bold">', x[["duree_conservation"]],   "</span>", "<br><br>"), fileConn, append = T)
      } else {
        write(paste0("Durée de conservation des données : ", '<span style="color:#3498DB;font-weight:bold">', "Non précisé",  "</span>","<br><br>"), fileConn, append = T)
      }
      
      write(paste0("Licéité du traitement : ", '<span style="color:#3498DB;font-weight:bold">', "Le traitement est nécessaire à l'exécution d'une mission d'intérêt publique ou relève de l'exercice de l'autorité publique du responsable de traitement", "</span>", "<br><br>"), fileConn, append = T)
      
      write(paste0("Destinataire(s) des données : ", '<span style="color:#3498DB;font-weight:bold">', "Le responsable de traitement et ses sous-traitants, Le responsable scientifique de la recherche, Les professionnels intervenant dans la recherche, Les personnes chargées du traitement et de l'analyse des données",  "</span>", "<br><br>"), fileConn, append = T)
      
    }
    
  }
  # apply the "create_md" function over the publications list to generate
  # the different "md" files.
  
  apply(projet_data, FUN = function(x) create_md(x), MARGIN = 1)
}


out_fold   <- "content/transparence"

bibtex_2academic(projet_data  = projet_data, 
                 outfold   = out_fold)
