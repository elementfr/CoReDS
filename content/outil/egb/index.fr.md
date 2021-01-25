---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "L'Échantillon Généraliste des Bénéficiaires (EGB) du SNDS"
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
Le Système National des Données de Santé (SNDS) est un entrepôt de données médico-administratives pseudonymisées couvrant l'ensemble de la population française et contenant l'ensemble des soins présentés au remboursement. Créé en 2016 dans la continuité d'un entrepôt précédent, géré par la Caisse Nationale de l'Assurance Maladie (CNAM), il permet de chaîner :  
- les données de l'assurance maladie (base SNIIRAM)  
- les données des hôpitaux (base PMSI)  
- les causes médicales de décès (base du CépiDC de l'Inserm)  
- les données relatives au handicap (données de la CNSA) (à venir)  
- certaines données des organismes complémentaires (à venir)  
<br>

En quelques chiffres, le SNDS c'est plus de 3000 variables, et un flux annuel de :  
- 1,2 milliards de feuilles de soins  
- 11 millions de séjours hospitaliers  
- 500 millions d'actes  
- 450 To de données  
<br> 

Le SNDS se décline en différentes bases :  
- Des bases avec des données individuelles ([DCIR](#drci), [PMSI](#pmsi), [CépiDC](#cepidc)), quasi-exhaustives sur l'ensemble de la population française  
- Un échantillon représentatif au 1/97e (EGB)  
- Des bases thématiques avec des données agrégées (Datamarts BO) 
<br>

[Présentation du SNDS en vidéo](https://youtu.be/6xYtk04S7k8)


## Sommaire
1. [À quoi le SNDS peut-il servir ?](#quoisnds)  
2. [La création et l'évolution](#creationsnds)  
3. [Les données présentes et absentes](#donneesnds)  
4. [La sécurité et la confidentialité](#confidensialitesnds)  
5. [Le circuit d'alimentation](#circuitsnds)  
6. [Les bases (quasi-exhaustives) avec des données individuelles](#basesnds)
6. [L'échantillon représentatif des personnes protégées](#egbsnds) 

<a name="quoisnds"></a> <br><br>  

## <span style="color:red">**À quoi le SNDS peut-il servir ?**</span>  
Le SNDS constitue l'une des bases de données de santé les plus importantes du monde. Il attire la recherche grâce à sa quasi-exhaustivité à l'échelle de la population française, et grâce à son décloisonnement ville - hôpital permettant de travailler sur le parcours de soin complet des patients. Un enjeu majeur du SNDS est ainsi la mise à disposition de ces données afin de favoriser les études, recherches ou évaluations présentant un caractère d'intérêt public, et s'inscrivant dans l'une des finalités autorisées que sont :
- l'information sur la santé et l'offre de soins  
- l'évaluation des politiques de santé  
- l'évaluation des dépenses de santé  
- l'information des professionnels de santé sur leur activité  
- la veille et la sécurité sanitaires  
- la recherche, les études, l'évaluation et l'innovation en santé  
<br>

Il est en revanche interdit d'exploiter le SNDS pour l'une des finalités interdites que sont :  
- la promotion des produits de santé auprès des professionnels de santé et des établissements de santé  
- la modification des contrats d'assurance  

<a name="creationsnds"></a> <br><br> 

## <span style="color:red">**La création et l'évolution**</span>
Le SNDS s'inscrit naturellement dans la continuité du Système National d'Information Inter-Régime de l'Assurance Maladie (SNIIRAM), créé par la loi de financement de la sécurité sociale du 23 décembre 1998. La volonté était alors de constituer un entrepôt national de données médico-administratives de remboursement, dans l'objectif de contribuer à une meilleure gestion de l'Assurance Maladie (objectif ONDAM) et des politiques de santé, d'améliorer la qualité des soins et de transmettre aux professionnels de santé les informations pertinentes sur leur activité.  
<br> 
Le SNDS en tant que tel est créé le 26 janvier 2016 par la loi de modernisation du système de santé, et généralise le SNIIRAM (déjà enrichi du PMSI) en le liant au CépiDC et en revoyant le circuit d'accès aux données, avec pour enjeux l'ouverture des données de santé dans le respect de la vie privée du citoyen, l'amélioration de la santé des patients et l'analyse de la dépense publique en santé.  

<a name="donneesnds"></a> <br><br> 

## <span style="color:red">**Les données présentes et absentes**</span>
On trouve dans le SNDS les grandes catégories de données suivantes :  
- Les dépenses et remboursements (prestations en soins de ville, en établissements de santé, et montants associés)  
- Consommations de soins de ville (consultations, actes techniques…)  
- Prescriptions (médicaments)  
- Dispositifs médicaux (aides techniques)  
- Autres prestations (cures, transports…)  
- Soins hospitaliers (hors séances)  
- Séjours hospitaliers (et diagnostics)  
- Indemnités journalières (maladie, ATMP, maternité) et invalidité  
- Les Affections de Longue Durée (ALD)  
<br>

Des informations génériques sur les patients :  
- Âge, sexe, commune et département de résidence  
- CMU-C (Couverture Maladie Universelle Complémentaire) et ACS (Aide à la Complémentaire Santé)  
- Date, commune et causes médicales de décès  
- Médecin traitant  
- Des informations sur les professionnels de santé (spécialité, mode d'exercice, sexe, âge, département d'implantation)  
<br>

En revanche, on ne trouve dans le SNDS :  
- Pas de résultat d'examen clinique (imagerie, données biologiques, …) ou paraclinique (tabagisme, tension, IMC …)  
- Pas de motifs de consultation  
- Pas de notion des facteurs de risque type : tabac, alcool, nutrition, ...  
- Pas d'information sur les médicaments délivrés au cours des séjours hospitaliers  
- Pas (ou très peu) de données sociales  

<a name="confidensialitesnds"></a> <br><br> 

## <span style="color:red">**La sécurité et la confidentialité**</span>
Pour protéger l'identité des patients et garantir la confidentialité des données, chaque patient est repéré dans l'ensemble du SNDS par un pseudonyme, obtenu par l'application au NIR d'un procédé cryptographique irréversible appelé FOIN. Les données du SNDS sont conservées pour une durée totale de 20 ans, puis archivées pour une durée de 10 ans.  
<br> 
L'accès aux données du SNDS et leur analyse ne peut se faire que dans un cadre d'hébergement très restrictif respectant le référentiel de sécurité du SNDS (opens new window), afin de garantir la traçabilité des accès et des traitements, la confidentialité des données et leur intégrité.  

<a name="circuitsnds"></a> <br><br> 

## <span style="color:red">**Le circuit d'alimentation**</span>
Les données viennent alimenter les différentes bases du SNDS à travers différents circuits. Elles peuvent ainsi transiter par :  
- Les bases de données des régimes d'Assurance Maladie, pour les données du SNIIRAM :  
-- Les soins remboursés par les Caisses Primaires d'Assurance Maladie grâce à la carte vitale, ou des feuilles de soins papier pour les soins de ville  
-- Les bordereaux de facturation pour les cliniques privées  
-- Les actes et consultations externes réalisés dans les hôpitaux publics  
- L'ATIH, qui gère les différents sous-systèmes du PMSI (voir ci-dessous : MCO, SSR, HAD et RIM-P), pour les données de l'activité hospitalière  
- Le circuit mairie - INSEE - INSERM pour les données des causes médicales de décès  

<a name="basesnds"></a> <br><br> 
  
## <span style="color:red">**Les bases (quasi-exhaustives) avec des données individuelles**</span>
<a name="drci"></a><br><br> 
  
#### DCIR : Les soins de ville
Le Datamart de Consommation Inter Régime contient l'ensemble des soins de ville remboursés pour les bénéficiaires de l'Assurance Maladie. Il permet de réaliser des études sur la consommation de soins des bénéficiaires et les pratiques des professionnels de santé.  

<a name="pmsi"></a><br><br> 

#### PMSI : Les soins à l'hôpital  
Le Programme de Médicalisation des Systèmes d'Information recense l'activité des hôpitaux publics et privés afin d'évaluer et rémunérer l'activité des établissements, de répartir les ressources en fonction des besoins quantifiés et de réaliser des études de santé publique et épidémiologiques à travers 4 secteurs distincts :  
- Hospitalisations de courte durée (MCO - Médecine, Chirurgie, Obstétrique)  
- Soins de Suite et de Réadaptations (SSR)  
- Hospitalisation À Domicile (HAD)  
- Psychiatrie (RIM-P)   

<a name="cepidc"></a><br><br> 

#### CépiDC : Les causes médicales de décès  
Les informations fournies par le Centre d'épidémiologie sur les causes de décès permettent au SNDS en plus de disposer de la date, de pouvoir connaître la cause initiale ainsi que l'ensemble des causes de décès du bénéficiaire.  
<br>
Les années 2013 à 2015 sont pour le moment disponibles. A terme, les causes de décès de 2006 à Y-2 seront disponibles. Un délai minimum de deux années est toujours nécessaire par rapport à l'année en cours pour pouvoir effectuer le chargement des informations dans le SNDS.  

<a name="egbsnds"></a> <br><br> 

## <span style="color:red">**L'échantillon représentatif des personnes protégées**</span>
L'Échantillon Généraliste des Bénéficiaires (EGB) est un échantillon représentatif au 1/97ème par sexe et par âge de la population protégée présente dans le DCIR. Il permet en particulier de réaliser des études longitudinales, car on y trouve à la fois les consommants et les non consommants de cette population (ce qui n'est pas le cas du DCIR ou ne figurent que les soins des consommants) sur un historique qui sera de 20 ans en 2023. Les données de consommations des bénéficiaires du DCIR et des PMSI MCO et HAD y figurent. L'EGB ne permet pas de réaliser des études régionales ou départementales, ni des études sur les maladies rares.  







