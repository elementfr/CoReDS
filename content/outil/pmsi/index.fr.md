---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Base de donnée - PMSI national"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-12-13T22:53:00+01:00
lastmod: 2020-12-13T22:53:00+01:00
featured: false
draft: false
       
# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

L’ATIH propose aux institutionnels et aux établissements de santé publics et privés, un accès aux bases nationales PMSI sur la plateforme des données hospitalières. 10 années de données sont disponibles, incluant les bases infra-annuelles de l’année en cours sur les 4 champs MCO, HAD, SSR et Psychiatrie, ainsi que les bases des résumés de passage aux urgences (RPU), nouveau recueil depuis 2016. <br>
[Chiffres clés de l'hospitalisation](https://www.atih.sante.fr/chiffres-cles-de-l-hospitalisation)

# Sommaire
1. [MCO](#MCO)
2. [SSR](#SSR)
3. [HAD](#HAD)
4. [Psychiatrie](#psychiatrie)


<a name="MCO"></a> <br><br> 

## <span style="color:red">**MCO : Médecine, chirurgie, obstétrique**</span> 
### Objectif du recueil
Connaître l’activité médicale des établissements de santé afin de décrire et de financer les établissements.  

### Informations recueillies
Tout séjour hospitalier dans le champ MCO d’un établissement de santé doit donner lieu à la production d’un enregistrement informatique normalisé, appelé résumé de sortie standardisé (RSS), comportant  des informations administratives, démographiques, médicales et de prise en charge.  

### Cadre juridique
Depuis la loi du 31 juillet 1991 portant réforme hospitalière, les établissements de santé publics et privés doivent procéder à l’analyse de leur activité médicale et transmettre aux services de l’État et à l’Assurance maladie « les informations relatives à leurs moyens de fonctionnement et à leur activité » : articles L. 6113-7 et L. 6113-8 du code de la santé publique. À cette fin, ils doivent « mettre en œuvre des systèmes d’information qui tiennent compte notamment des pathologies et des modes de prise en charge » : c'est la définition même du programme de médicalisation des systèmes d’information (PMSI).  

### Public concerné
Le recueil PMSI couvre l’hospitalisation à temps complet et à temps partiel des établissements publics et privé, en France métropolitaine et dans les départements d’outre-mer.  

### Qu’est-ce que le groupage ?
Chaque RSS est classé, à l’aide d’un algorithme de classification, dans un et un seul Groupe Homogène de Malade (GHM). L’ensemble des séjours d’un établissement sera donc groupé en GHM qui permettra de décrire son activité en Casemix (nombre de séjours par GHM).  

La classification est médicale et économique :  
- médicale, car son premier niveau de classification est fondé sur des critères médicaux (appareil fonctionnel ou motif notoire d’hospitalisation);  
- économique, car les séjours classés dans un même groupe ont, par construction, des consommations de ressources voisines.  
L’application de l’algorithme de groupage est réalisée à l’aide d’un outil logiciel : la fonction de groupage, produite par l’ATIH chaque année.  

### Dispositif du recueil  
L’établissement doit transmettre ses données anonymisées sur la plateforme e-PMSI de l’ATIH de façon mensuelle et cumulée depuis le début de l’année.  

Le logiciel GENRSA dit « générateur de RSA (Résumé de Sortie Anonymisé)», propriété de l’État, produit un fichier de RSA par transformation des RSS groupés.  

Outre les RSA, les hôpitaux doivent produire un ensemble des recueils nommés « VID-HOSP », « FICHCOMP », « RSF-ACE » (RSF des actes et consultations externes) et « FICHSUP ». Ces recueils contiennent des informations absentes du RSA : nombre de consultations et d’actes externes réalisés, consommation de certains médicaments et dispositifs médicaux implantables (prothèses, implants) utilisés, prélèvements d'organes sur les personnes décédées… Pour davantage d’informations sur les fichiers VID-HOSP, FICHCOMP, RSF-ACE et FICHSUP, consultez le chapitre II du Guide méthodologique.  

Une fois les données transmises sur la plateforme e-PMSI, l’établissement peut accéder à un outil de validation des données PMSI, appelé OVALIDE.  



<a name="SSR"></a> <br><br> 

## <span style="color:red">**SSR : Soins de suite et de réadaptation**</span> 
Un recueil d’informations médicales synthétiques et respectant un format normalisé est institué pour les hospitalisations réalisées dans des structures ayant une activité autorisée en soins de suite ou de réadaptation. L’activité visée concerne les groupes de disciplines sanitaires suivants : maladies à évolution prolongée, convalescence, repos et régime, rééducation fonctionnelle et réadaptation, lutte contre la tuberculose et les maladies respiratoires, cures thermales, cures médicales, cures médicales pour enfants, post-cures pour alcooliques. Ce recueil, ayant comme support l’informatique, ainsi que le traitement des informations contenues, définit le PMSI-SSR.  

### Objectif du recueil
L’objet de ce recueil et de son traitement est, d’une part, de permettre la description quantifiée, et en termes médicaux, de l’activité des établissements et, d’autre part, au moyen d’un algorithme s’appuyant sur les informations contenues dans le recueil, de regrouper les séjours hospitaliers en ensembles définis, ceux-ci pouvant fonder une part du financement des établissements.  

### Public concerné
Le recueil concerne tout séjour d’hospitalisation, qu’il s’agisse d’hospitalisation complète ou partielle, d’établissements de santé publics comme privés. Le cadre et les normes de ce recueil sont définis de façon réglementaire. Pour les établissements de santé publics et privés participant au service public hospitalier, le recueil a été institué à compter du 1er juillet 1998, et à compter du 1er juillet 2003 pour les autres établissements de santé privés.  

### Informations recueillies
Les informations recueillies sont, à l’instar du contenu du dossier médical, protégées par le secret médical dû aux malades. Chaque établissement de santé doit désigner en son sein un médecin chargé de rassembler les informations destinées au PMSI-SSR en une base de données informatique et de réaliser les traitements prévus, comme le groupage des séjours et l’anonymisation des informations avant transmission à l’autorité de tutelle de l’établissement de santé. Une déclaration, décrivant le système informatique utilisé et l’organisation afférente, doit être faite à la Commission Nationale de l’Informatique et des Libertés par chaque établissement de santé soumis au PMSI-SSR.  

### Spécificités du recueil  
- Les résumés sont constitués par semaine calendaire, soit du lundi au dimanche. Ainsi un séjour hospitalier en SSR est couvert par un ou plusieurs résumés hebdomadaires standardisés (RHS). Dans ces résumés, les jours de présence effective des malades sont indiqués pour chaque jour de la semaine. Dans chaque établissement, les RHS sont identifiés par le numéro de RHS/numéro administratif de séjour ainsi que par le numéro de semaine et l’année ; la première semaine de chaque année est définie comme celle contenant le 4 janvier.  
- Trois catégories de soignants concourent au recueil : les médecins (diagnostics et actes médicaux), les infirmières et aides soignantes (scores de dépendance), les kinésithérapeutes (temps de rééducation).  
- Le codage des pathologies utilise la classification internationale des maladies, 10ème révision (CIM-10), celui des actes médicaux le catalogue des actes médicaux (CdAM) ou la classification commune des actes médicaux (CCAM) ; les activités de rééducations et de réadaptation sont décrites dans le catalogue des activités de réadaptation-rééducation (CdARR). Le détail des informations contenues dans les RHS est présenté dans le manuel de production des résumés hebdomadaires standardisés publié au bulletin officiel du ministère de la Santé 97/5bis et complété par la circulaire 105 du 22/2/2001.  
 
### Qu’est-ce que le groupage ? 
L’algorithme de regroupement définit 278 groupes homogènes de journée (GHJ) répartis en 14 catégories majeures cliniques (CMC). Il a été établi à dires d’expert et est décrit en détail dans le bulletin du ministère de la Santé 97/8 bis. Cet algorithme est appliqué à chaque RHS indépendamment des autres RSH constituant un même séjour hospitalier. Il s’appuie sur les informations suivantes : les codes de diagnostic, notamment la finalité de prise en charge et la manifestation morbide principale et les diagnostics associés et actes médicaux dans la mesure où ils appartiennent à la liste dite des « prises en charge clinique lourde » (PCL) ou « très lourdes » (PCTL), le score de dépendance physique, les temps de rééducation hebdomadaire ainsi que l’âge. L’agence technique de l’information sur l’hospitalisation (ATIH) développe, maintient et diffuse un programme informatique exécutant cet algorithme, sous la dénomination « fonction groupage » (FG), programme source destiné à être intégré par les sociétés de service dans un système d’information hospitalier, ou celle de « programme de groupage » (PdG), programme à interface graphique, auquel est adjoint un utilitaire d’enregistrement des RHS, Citrus, remplaçant depuis 2001 TS2R.  

### Dispositif du recueil 
Avant leur transmission semestrielle à la tutelle, les RHS sont anonymisés en résumés hebdomadaires de sortie anonymes (RHA) par un logiciel gratuit, développé, maintenu et diffusé par l’ATIH, GENRHA. Outre les RHA, GENRHA crée un fichier complémentaire contenant des enregistrments dits « suites semestrielles de RHA » (SSRHA): les informations de séjour et de groupage des RHS ayant le même numéro sont synthétisées en une seule ligne. A compter de 2001, conformément à la circulaire 106 du 22/2/2001 et dans le but de pouvoir rassembler l’information de RHA d’un même séjour hospitalier y compris pour le cas de séjours répartis sur plusieurs semestres, les RHA peuvent être chaînés au moyen d’une clé issue du cryptage d’informations d’assurance maladie des malades. Cette clé est générée par le logiciel MAGIC maintenu et diffusé par l’ATIH. A compter de 2004, en remplacement d’un système par disquettes, les RHA sont télétransmis par internet sécurisé, au moyen de la plateforme de services e-PMSI, l’utilitaire e-POP vérifiant, au départ des établissements, exactitude du format des fichiers transmis ; e-POP et e-PMSI sont développés et maintenus par l’ATIH.  



<a name="HAD"></a> <br><br> 

## <span style="color:red">**HAD : Hospitalisation à domicile**</span> 
Au cours de l’année 2004, un recueil d’informations médicalisé systématique a été défini, fondé sur les résultats d’une étude conduite par l’Institut de Recherche et Documentation en Économie de la Santé, utilisant l’enquête nationale HAD réalisée au cours de l’année 1999. Ce recueil s’applique à tous les établissements de santé, publics comme prives, ayant une autorisation pour l’activité d’hospitalisation à domicile, à compter du 1er janvier 2005 (arrêté du 31 décembre 2004, auquel le guide méthodologique de production des résumés par sous-séquence est annexé).  

### Spécificités du recueil 
Les spécificités de ce recueil d’information, par comparaison à ceux réalisés dans les autres champs de l’hospitalisation, concernent, d’une part, la nature de certaines informations colligées : mode de prise en charge, principal et associé, indice d’état général (Karnofsky). Ces variables définissent la classification en groupe homogène de prise en charge (GHPC). D’autre part, un certain degré de souplesse est laissé aux établissements quand au rythme de production des résumés PMSI pour l’HAD. En effet, ceux-ci ne se font pas nécessairement par séjour ou semaine calendaire, mais par sous-séquence de soins : au cours d’une hospitalisation à domicile, chaque séquence de soins est définie tant que dure une combinaison des trois variables classantes, les établissements ayant la liberté de constituer un ou plusieurs résumés par sous-séquence (RPSS) pour couvrir la durée chaque séquence de soins. Ceci permet, eu égard à la particularité de l’organisation des soins dans ce secteur, de fixer un rythme de production des RPSS qui puisse être adapté à l’organisation de chaque établissement.  
<br> 
Dans le cadre de la mise en œuvre de la tarification à l’activité, le modèle tarifaire, issu de la classification en GHPC, s’applique à la journée. Le modèle utilise les échelles de pondération associées au mode de prise en charge principal, au mode de prise en charge associé et à l’indice d’état général, qui pondèrent un tarif de base. En fonction du résultat de la pondération, ainsi que d’un schéma de dégressivité au cours de chaque séquence de soins, un des 31 groupe homogène de tarif (GHT) est obtenu.  

### Informations recueillies
En pratique, les informations colligées dans les RPSS doivent être conformes au contenu du dossier médical. Outre les variables décrites ci-dessus, les caractéristiques démographiques des malades, la pathologie et le degré de dépendance (décrit selon le score des activités de la vie quotidienne (AVQ)) doivent figurer dans chaque RPSS. Il est à noter que les informations recueillies sont, à l’instar du contenu du dossier médical, protégées par le secret médical dû aux malades. Chaque établissement de santé doit désigner en son sein un médecin chargé de rassembler les informations destinées au PMSI en HAD en une base de données informatique et de réaliser les traitements prévus, comme le groupage des séjours et l’anonymisation des informations avant transmission à l’autorité de tutelle de l’établissement de santé. Une déclaration, décrivant le système informatique utilisé et l’organisation afférente, doit être faite à la Commission Nationale de l’Informatique et des Libertés par chaque établissement de santé soumis au PMSI en HAD.

### Dispositif du recueil
Avant leur transmission, à trimestre échu, aux services de tutelle des établissements de santé, les RPSS sont anonymisés en résumés anonymes par sous-séquence (RAPSS) au moyen d’un logiciel gratuit, développé, maintenu et diffusé par l’ATIH, PAPRICA. Outre les RAPSS, PAPRICA produit un fichier comportant pour chaque séjour en HAD une correspondance avec une clé unique par malade. Ceci a pour but de pouvoir rassembler les informations de RAPSS de chaque malade y compris pour le cas de séjours répartis sur plusieurs périodes de transmission. Conformément à la circulaire 106 du 22/2/2001, chaque clé est issue du cryptage irréversible d’informations d’assurance maladie des malades. Elle est générée par le logiciel MAGIC maintenu et diffusé par l’ATIH.

<a name="psychiatrie"></a> <br><br> 

## <span style="color:red">**Psychiatrie**</span> 
### Objectif du recueil
Le recueil d’informations médicalisé pour la psychiatrie (RIM-P) permet de décrire toute l’activité réalisée au bénéfice de malades par les établissements de santé, en hospitalisation complète ou partielle (résumé par séquence, RPS) comme en ambulatoire (résumé d’activité ambulatoire, RAA). En cas de prise en charge simultanée selon différents modes, autant de résumés que nécessaire devront être renseignés. Les informations du RIM-P, caractérisant la prise en charge des malades, sont propres à la psychiatrie, les autres sont communes aux champs couverts par le PMSI. Ces informations doivent être conformes au dossier médical dont elles constituent un extrait. Le codage des diagnostics, dans la mesure où le cadre nosologique le plus proche, et sans perte de précision ni réinterprétation, de ce qui est inscrit dans le dossier est sélectionné dans la CIM-10, répond à ce principe. En retour, cet extrait, étant standardisé, peut servir de base, à compléter, pour des travaux d’évaluation.  

### Spécificités du recueil  
La logique de production du RIM-P est de type événementiel (par exemple, une admission, un changement de mode de prise en charge ou d’unité médicale, un acte en ambulatoire, la limite trimestrielle) centré sur chaque malade (identifié dans les systèmes d’informations des établissements par un numéro identifiant unique, auquel il est possible de rattacher des informations au fur et à mesure de leur survenue). Pour les établissements qui ne seraient pas en mesure de produire un fichier de RAA exhaustif, un recueil synthétique de l’activité de consultation et soins externes est prévu. La constitution des fichiers de RPS et RAA est placée sous la responsabilité du médecin chargé, au sein de chaque établissement, de l’information médicale. Ce médecin est habilité à recevoir des services de soins, dans le respect des règles de confidentialité, les informations nécessaires à la constitution de ces fichiers, les informations pouvant être reçues sous la forme de copie de la lettre de sortie, d’un bordereau de synthèse, ou encore d’informations déjà codées. Les fichiers à constituer devant être sous forme informatique, l’enregistrement des informations peut être réalisé au département d’information médicale, dans chaque unité médicale, ou encore par les différents intervenants en temps réel (première prise en charge, mouvement, soins, par exemple). In fine, l’organisation retenue devrait tenter d’éviter les distorsions comme les pertes d’information tout en vérifiant les coûts de leur production.  

### Cadre juridique
L’arrêté du 29 juin 2006 (relatif au recueil et au traitement des données d'activité médicale des établissements de santé publics ou privés ayant une activité en psychiatrie et à la transmission d'informations issues de ce traitement, dans les conditions définies aux articles L. 6113-7 et L. 6113-8 du code de la santé publique, publié le 7 juillet 2006 au journal officiel et d’application immédiate) donne la possibilité technique aux établissements, ayant une activité autorisée en psychiatrie, de recueillir et télétransmettre à leur services de tutelle, dans les conditions prévues par cet arrêté, des données standardisées, médicalisées et anonymisées relatives à cette activité, à compter du troisième trimestre de 2006. Une déclaration à la commission nationale de l’informatique et des libertés doit être faite par chaque établissement ; l’annexe I de l’arrêté propose un canevas pour cette déclaration.  

### Dispositif du recueil
L’organisation technique prévue par la circulaire DHOS/E3/2001/N°625 du 19 décembre 2001 relative à la mise en œuvre du PMSI-psychiatrie à titre expérimental est modifiée : le nombre d’informations devant être transmises est moins important ainsi que le rythme du recueil, et les fichiers sont télétransmis au moyen de la plateforme de service e-PMSI. Ces points sont détaillés ci-après. Par ailleurs, suite à l’analyse du recueil, en juin 2004, des coûts directs, la fonction groupage initiale est apparue comme inefficiente et n’est donc plus utilisée dans le cadre du nouveau recueil. Des travaux seront menés, en 2007, de telle sorte à aboutir à une nouvelle version de cette fonction groupage.  
