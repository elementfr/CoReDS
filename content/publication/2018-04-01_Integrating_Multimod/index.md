+++
title = "Integrating Multimodal Radiation Therapy Data into i2b2."
date = "2018-04-01"
authors = ["Zapletal Eric", "Bibault Jean-Emmanuel", "Giraud Philippe", "Burgun Anita"]
publication_types = ["2"]
publication = "Applied clinical informatics, https://doi.org/10.1055/s-0038-1651497"
publication_short = "Applied clinical informatics, https://doi.org/10.1055/s-0038-1651497"
abstract = "BACKGROUND:Clinical data warehouses are now widely used to foster clinical and translational research and the Informatics for Integrating Biology and the Bedside (i2b2) platform has become a de facto standard for storing clinical data in many projects. However, to design predictive models and assist in personalized treatment planning in cancer or radiation oncology, all available patient data need to be integrated into i2b2, including radiation therapy data that are currently not addressed in many existing i2b2 sites.OBJECTIVE:To use radiation therapy data in projects related to rectal cancer patients, we assessed the feasibility of integrating radiation oncology data into the i2b2 platform.METHODS:The Georges Pompidou European Hospital, a hospital from the Assistance Publique - Hôpitaux de Paris group, has developed an i2b2-based clinical data warehouse of various structured and unstructured clinical data for research since 2008. To store and reuse various radiation therapy data-dose details, activities scheduling, and dose-volume histogram (DVH) curves-in this repository, we first extracted raw data by using some reverse engineering techniques and a vendor's application programming interface. Then, we implemented a hybrid storage approach by combining the standard i2b2 &quot;Entity-Attribute-Value&quot; storage mechanism with a &quot;JavaScript Object Notation (JSON) document-based&quot; storage mechanism without modifying the i2b2 core tables. Validation was performed using (1) the Business Objects framework for replicating vendor's application screens showing dose details and activities scheduling data and (2) the R software for displaying the DVH curves.RESULTS:We developed a pipeline to integrate the radiation therapy data into the Georges Pompidou European Hospital i2b2 instance and evaluated it on a cohort of 262 patients. We were able to use the radiation therapy data on a preliminary use case by fetching the DVH curve data from the clinical data warehouse and displaying them in a R chart.CONCLUSION:By adding radiation therapy data into the clinical data warehouse, we were able to analyze radiation therapy response in cancer patients and we have leveraged the i2b2 platform to store radiation therapy data, including detailed information such as the DVH to create new ontology-based modules that provides research investigators with a wider spectrum of clinical data. "
abstract_short = ""
image_preview = ""
selected = false
projects = []
tags = []
url_pdf = ""
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""
math = true
highlight = true
[header]
image = ""
caption = ""
+++
<a href="https://www.scimagojr.com/journalsearch.php?q=21100258404&amp;tip=sid&amp;exact=no" title="SCImago Journal &amp; Country Rank"><img border="0" src="https://www.scimagojr.com/journal_img.php?id=21100258404" alt="SCImago Journal &amp; Country Rank"  /></a>
**SCImago Journal Rank (SJR)** est un indicateur de notoriété des revues indexées à partir de 1996 dans la base de données Scopus de l’éditeur Elsevier. Le SJR a été créé par le groupe de travail SCImago Research Group (SRG) de l’Université de Grenade et Alcana de Henares en Espagne.  
  
Le SJR d’une revue est le nombre de fois où un article de cette revue est cité par d’autres articles pendant les 3 ans qui suivent sa publication, chaque citation reçue étant pondérée par la notoriété de la revue citante. Les articles « citants » sont issus d’autres revues et de la revue notée. Les citations d’articles de la revue par des articles de cette même revue (on parle d’autocitations) sont ainsi incluses dans le calcul du SJR, mais dans une limite de 35 %. Dans le calcul du SJR, le nombre de citations reçues par une revue est rapporté au nombre d’articles publiés par la revue au cours des 3 années qui précèdent.  
  
L'ensemble des revues a été classé en fonction de leur SJR et divisé en quatre groupes égaux, quartiles. Q1 (vert) comprend le quart des journaux avec les valeurs les plus élevées, Q2 (jaune) les deuxièmes valeurs les plus élevées, Q3 (orange) les troisièmes valeurs les plus élevées et Q4 (rouge) les valeurs les plus faibles.  
  
Différent entre le **SJR** et l'**Impact Factor** :  
- Le SJR est calculé pour une période de citation de 3 ans. Il tient compte de la notoriété des revues citantes. Il inclut de façon limitée les autocitations d’une revue ;  
- L'Impact Factor est calculé pour une période de citation de 2 ans. Il ne tient pas compte de la notoriété des revues citantes. Il inclut toutes les autocitations d’une revue.
