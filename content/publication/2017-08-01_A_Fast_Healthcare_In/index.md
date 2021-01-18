+++
title = "A Fast Healthcare Interoperability Resources (FHIR) layer implemented over i2b2."
date = "2017-08-01"
authors = ["Boussadi Abdelali", "Zapletal Eric"]
publication_types = ["2"]
publication = "BMC medical informatics and decision making, https://doi.org/10.1186/s12911-017-0513-6"
publication_short = "BMC medical informatics and decision making, https://doi.org/10.1186/s12911-017-0513-6"
abstract = "BACKGROUND:Standards and technical specifications have been developed to define how the information contained in Electronic Health Records (EHRs) should be structured, semantically described, and communicated. Current trends rely on differentiating the representation of data instances from the definition of clinical information models. The dual model approach, which combines a reference model (RM) and a clinical information model (CIM), sets in practice this software design pattern. The most recent initiative, proposed by HL7, is called Fast Health Interoperability Resources (FHIR). The aim of our study was to investigate the feasibility of applying the FHIR standard to modeling and exposing EHR data of the Georges Pompidou European Hospital (HEGP) integrating biology and the bedside (i2b2) clinical data warehouse (CDW).RESULTS:We implemented a FHIR server over i2b2 to expose EHR data in relation with five FHIR resources: DiagnosisReport, MedicationOrder, Patient, Encounter, and Medication. The architecture of the server combines a Data Access Object design pattern and FHIR resource providers, implemented using the Java HAPI FHIR API. Two types of queries were tested: query type #1 requests the server to display DiagnosticReport resources, for which the diagnosis code is equal to a given ICD-10 code. A total of 80 DiagnosticReport resources, corresponding to 36 patients, were displayed. Query type #2, requests the server to display MedicationOrder, for which the FHIR Medication identification code is equal to a given code expressed in a French coding system. A total of 503 MedicationOrder resources, corresponding to 290 patients, were displayed. Results were validated by manually comparing the results of each request to the results displayed by an ad-hoc SQL query.CONCLUSIONS:We showed the feasibility of implementing a Java layer over the i2b2 database model to expose data of the CDW as a set of FHIR resources. An important part of this work was the structural and semantic mapping between the i2b2 model and the FHIR RM. To accomplish this, developers must manually browse the specifications of the FHIR standard. Our source code is freely available and can be adapted for use in other i2b2 sites. "
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
<a href="https://www.scimagojr.com/journalsearch.php?q=23602&amp;tip=sid&amp;exact=no" title="SCImago Journal &amp; Country Rank"><img border="0" src="https://www.scimagojr.com/journal_img.php?id=23602" alt="SCImago Journal &amp; Country Rank"  /></a>
**SCImago Journal Rank (SJR)** est un indicateur de notoriété des revues indexées à partir de 1996 dans la base de données Scopus de l’éditeur Elsevier. Le SJR a été créé par le groupe de travail SCImago Research Group (SRG) de l’Université de Grenade et Alcana de Henares en Espagne.  
  
Le SJR d’une revue est le nombre de fois où un article de cette revue est cité par d’autres articles pendant les 3 ans qui suivent sa publication, chaque citation reçue étant pondérée par la notoriété de la revue citante. Les articles « citants » sont issus d’autres revues et de la revue notée. Les citations d’articles de la revue par des articles de cette même revue (on parle d’autocitations) sont ainsi incluses dans le calcul du SJR, mais dans une limite de 35 %. Dans le calcul du SJR, le nombre de citations reçues par une revue est rapporté au nombre d’articles publiés par la revue au cours des 3 années qui précèdent.  
  
L'ensemble des revues a été classé en fonction de leur SJR et divisé en quatre groupes égaux, quartiles. Q1 (vert) comprend le quart des journaux avec les valeurs les plus élevées, Q2 (jaune) les deuxièmes valeurs les plus élevées, Q3 (orange) les troisièmes valeurs les plus élevées et Q4 (rouge) les valeurs les plus faibles.  
  
Différent entre le **SJR** et l'**Impact Factor** :  
- Le SJR est calculé pour une période de citation de 3 ans. Il tient compte de la notoriété des revues citantes. Il inclut de façon limitée les autocitations d’une revue ;  
- L'Impact Factor est calculé pour une période de citation de 2 ans. Il ne tient pas compte de la notoriété des revues citantes. Il inclut toutes les autocitations d’une revue.
