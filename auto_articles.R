library(RISmed)
library(tidyverse)
library(stringr)
library(questionr)
library(tidyverse)
library(lubridate)
library(readr)
scimagojr_2019 <- read_delim("static/data/scimagojr 2019.csv", 
                             ";", escape_double = FALSE, trim_ws = TRUE)

get_by_code <- function(query){
  url <- paste("https://www.scimagojr.com/journalsearch.php?q=",query, "&tip=sid&clean=0", sep = "")
  result <- fromJSON(url)
  return(result)
}

search_topic <- 'Anne-Sophie Jannot OR Pierre Sabatier OR Bastien Rance OR Eric Zapletal OR Hector Countouris OR Juliette Djadi-Prat OR Marie-Caroline Lai OR Maxime Wack OR Pauline Jouany OR Sandrine Katsahian'

search_query <- EUtilsSummary(search_topic, retmax=2000, mindate=2010)

summary(search_query)

records<- EUtilsGet(search_query)


pubmed_data <- data.frame('ArticleTitle' = ArticleTitle(records),
                          'PMID' = PMID(records),
                          'Authors' = (sapply(Author(records), function(x)paste(x$LastName,x$ForeName)) %>% 
                                         sapply(., paste, collapse=" , ")),
                          'Affiliation' = (Affiliation(records) %>% 
                                             sapply(., paste, collapse=" ; ")),
                          'Year' = YearPubmed(records), 
                          'Month' = MonthPubDate(records),
                          'Journal' = Title(records),
                          'DOI' = DOI(records),
                          'ArticleId' = ArticleId(records),
                          'AbstractText' = AbstractText(records),
                          'PublicationType' = (PublicationType(records) %>% 
                                                 sapply(., paste, collapse=" ; ")),
                          'ISSN' = ISSN(records)) 

## Recoding pubmed_data$Month into pubmed_data$Month_rec
pubmed_data$Month <- fct_recode(pubmed_data$Month,
                                "04" = "Apr",
                                "08" = "Aug",
                                "12" = "Dec",
                                "02" = "Feb",
                                "01" = "Jan",
                                "07" = "Jul",
                                "06" = "Jun",
                                "03" = "Mar",
                                "05" = "May",
                                "11" = "Nov",
                                "10" = "Oct",
                                "09" = "Sep"
)
pubmed_data$Month <- fct_explicit_na(pubmed_data$Month, "01")
pubmed_data$Month <- as.character(pubmed_data$Month)

pubmed_data <- pubmed_data %>% 
  mutate(date = ymd(paste(Year, Month, "01", sep = "-")),
         ArticleTitle = str_replace_all(ArticleTitle, "/", " "),
         AbstractText = str_replace_all(AbstractText, "Label=", " "),
         PublicationType = "2",
         AbstractText = str_replace_all(AbstractText, '"', ""),
         AbstractText = str_replace_all(AbstractText, "                  ", ""),
         AbstractText = str_replace_all(AbstractText, "[A-Z]{6,}[:space:]NlmCategory=", ""),
         AbstractText = str_replace_all(AbstractText, "AIM NlmCategory=", ""),
         ISSN = as.character(ISSN)) %>% 
  filter(str_detect(str_to_lower(Affiliation), "hôpital européen georges pompidou|hôpital européen georges-pompidou|georges-pompidou european hospital|georges pompidou european hospital|hegp|h.e.g.p|georges pompidou|g. pompidou|georges-pompidou|aphp|ap-hp|assistance publique - hôpitaux de paris|assistance publique - hopitaux de paris|assistance publique hopitaux de paris")) %>% 
  mutate(ISSN = str_replace_all(ISSN, "-", ""))


bibtex_2academic <- function(pubmed_data,
                             outfold,
                             abstract = TRUE, 
                             overwrite = TRUE) {
  
  require(RefManageR)
  require(dplyr)
  require(stringr)
  require(anytime)
  
  create_md <- function(x) {
    
    foldername <- paste(x[["date"]], x[["ArticleTitle"]] %>%
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
      
      # Title and date
      write(paste0("title = \"", x[["ArticleTitle"]], "\""), fileConn, append = T)
      write(paste0("date = \"", anydate(x[["date"]]), "\""), fileConn, append = T)
      
      # Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
      auth_hugo <- str_replace_all(x["Authors"], " , ", "\", \"")
      auth_hugo <- stringi::stri_trans_general(auth_hugo, "latin-ascii")
      write(paste0("authors = [\"", auth_hugo,"\"]"), fileConn, append = T)
      
      # Publication type. Legend:
      # 0 = Uncategorized, 1 = Conference paper, 2 = Journal article
      # 3 = Manuscript, 4 = Report, 5 = Book,  6 = Book section
      write(paste0("publication_types = [\"", x[["PublicationType"]],"\"]"),
            fileConn, append = T)
      
      # Publication details: journal, volume, issue, page numbers and doi link
      publication <- x[["Journal"]]
      
      if (!is.na(x[["DOI"]])) publication <- paste0(publication,
                                                    ", ", paste0("https://doi.org/", 
                                                                 x[["DOI"]]))
      
      write(paste0("publication = \"", publication,"\""), fileConn, append = T)
      write(paste0("publication_short = \"", publication,"\""),fileConn, append = T)
      
      # Abstract and optional shortened version.
      if (abstract) {
        write(paste0("abstract = \"", x[["AbstractText"]],"\""), fileConn, append = T)
      } else {
        write("abstract = \"\"", fileConn, append = T)
      }
      write(paste0("abstract_short = \"","\""), fileConn, append = T)
      
      # other possible fields are kept empty. They can be customized later by 
      # editing the created md
      
      write("image_preview = \"\"", fileConn, append = T)
      write("selected = false", fileConn, append = T)
      write("projects = []", fileConn, append = T)
      write("tags = []", fileConn, append = T)
      #links
      write("url_pdf = \"\"", fileConn, append = T)
      write("url_preprint = \"\"", fileConn, append = T)
      write("url_code = \"\"", fileConn, append = T)
      write("url_dataset = \"\"", fileConn, append = T)
      write("url_project = \"\"", fileConn, append = T)
      write("url_slides = \"\"", fileConn, append = T)
      write("url_video = \"\"", fileConn, append = T)
      write("url_poster = \"\"", fileConn, append = T)
      write("url_source = \"\"", fileConn, append = T)
      #other stuff
      write("math = true", fileConn, append = T)
      write("highlight = true", fileConn, append = T)
      # Featured image
      write("[header]", fileConn, append = T)
      write("image = \"\"", fileConn, append = T)
      write("caption = \"\"", fileConn, append = T)
      
      write("+++", fileConn, append = T)
      
      #Pour récupérer impact factor 
      scimagojr_2019 %>% 
        filter(str_detect(Issn, x[["ISSN"]])) -> scimagojrid
      
      write(paste0('<a href="https://www.scimagojr.com/journalsearch.php?q=',scimagojrid$Sourceid,'&amp;tip=sid&amp;exact=no" title="SCImago Journal &amp; Country Rank"><img border="0" src="https://www.scimagojr.com/journal_img.php?id=',scimagojrid$Sourceid,'" alt="SCImago Journal &amp; Country Rank"  /></a>', sep = ""), fileConn, append = T)
      
      
      write("**SCImago Journal Rank (SJR)** est un indicateur de notoriété des revues indexées à partir de 1996 dans la base de données Scopus de l’éditeur Elsevier. Le SJR a été créé par le groupe de travail SCImago Research Group (SRG) de l’Université de Grenade et Alcana de Henares en Espagne.  
  
Le SJR d’une revue est le nombre de fois où un article de cette revue est cité par d’autres articles pendant les 3 ans qui suivent sa publication, chaque citation reçue étant pondérée par la notoriété de la revue citante. Les articles « citants » sont issus d’autres revues et de la revue notée. Les citations d’articles de la revue par des articles de cette même revue (on parle d’autocitations) sont ainsi incluses dans le calcul du SJR, mais dans une limite de 35 %. Dans le calcul du SJR, le nombre de citations reçues par une revue est rapporté au nombre d’articles publiés par la revue au cours des 3 années qui précèdent.  
  
L'ensemble des revues a été classé en fonction de leur SJR et divisé en quatre groupes égaux, quartiles. Q1 (vert) comprend le quart des journaux avec les valeurs les plus élevées, Q2 (jaune) les deuxièmes valeurs les plus élevées, Q3 (orange) les troisièmes valeurs les plus élevées et Q4 (rouge) les valeurs les plus faibles.  
  
Différent entre le **SJR** et l'**Impact Factor** :  
- Le SJR est calculé pour une période de citation de 3 ans. Il tient compte de la notoriété des revues citantes. Il inclut de façon limitée les autocitations d’une revue ;  
- L'Impact Factor est calculé pour une période de citation de 2 ans. Il ne tient pas compte de la notoriété des revues citantes. Il inclut toutes les autocitations d’une revue.", fileConn, append = T)
      
      
    }
    
  }
  # apply the "create_md" function over the publications list to generate
  # the different "md" files.
  
  apply(pubmed_data, FUN = function(x) create_md(x), MARGIN = 1)
}


out_fold   <- "content/publication"

bibtex_2academic(pubmed_data  = pubmed_data, 
                 outfold   = out_fold, 
                 abstract  = TRUE)