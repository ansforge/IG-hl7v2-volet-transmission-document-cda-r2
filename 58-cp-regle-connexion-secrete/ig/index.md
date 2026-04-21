# Accueil - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/hl7v2/trans-cda-r2/ImplementationGuide/ans.hl7v2.fr.trans-cda-r2 | *Version*:2.1.3 |
| Draft as of 2026-04-21 | *Computable Name*:CISIS_CDA_HL7_V2 |

 **Brief description of this Implementation Guide**
 This document is part of the Service layer of the Interoperability Framework for Health Information Systems (CI-SIS). 
 This section outlines the possibility for an organization's business software to delegate to a third-party entity, the Intermediation Platform (PFI), the ability to interact with the DMP (French Shared Medical Record System) and/or MSSanté (French Secure Health Messaging). In the case of transmission via MSSanté, this section should be considered in conjunction with another section of the CI-SIS, namely the "Transmission au LPS d'un document CDA provenant d'un courriel MSSanté" section, to provide a comprehensive view of exchanges (from the creator of a processing request for a document to the final consumer of this request). 

>  [WIP] Version ci-build du Guide d'Implémentation de ce volet 

>  Cette version, au statut Trial Implementation, intègre le traitement des commentaires reçus par l’ANS pendant la phase de commentaires publics qui s’est déroulée du 27/11/2023 au 08/12/2023 ainsi que des corrections ou des améliorations apportées à la suite du projectathon organisé par l’ANS en septembre 2023. Cette version du volet intègre également le résultat de l’étude conduite en janvier 2024 par la DNS avec des industriels et leurs représentants sur les cas d’usage de la MSSanté présentés dans la section Volume 1 – Etude fonctionnelle. 

### Avant-propos

Ce document fait partie de la couche Service du Cadre d’Interopérabilité des Systèmes d’Information de santé (CI_SIS).

Ce présent volet décrit la possibilité pour un logiciel métier d’une organisation de déléguer à un acteur tiers, la plateforme d’intermédiation (PFI), la capacité d’interagir avec le DMP et/ou avec la MSSanté. Dans le cas d’un envoi par MSSanté, ce volet est à considérer par le lecteur en association avec un autre volet du CI_SIS, le volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » de façon à avoir une vision de bout en bout des échanges (du créateur de la demande de traitement sur un document vers le consommateur final de cette demande).

Les deux volets en question intègrent à la fois une partie fonctionnelle et une partie technique.

La partie fonctionnelle décrit, à titre d’exemple et de façon non exhaustive, un ensemble de cas d’usage. Sur la base de ces cas d’usage, sont ensuite définis des acteurs du système d’information (au sens d’[IHE](https://wiki.ihe.net/index.php/Actors)) et des transactions qui interviennent entre ces acteurs pour répondre à ces cas d’usage. Les processus collaboratifs sont ensuite décrits et les flux entre les acteurs sont également identifiés.

La partie technique décrit les standards retenus pour implémenter les flux identifiés par l’étude fonctionnelle et décrit dans le détail les règles d’implémentation de ces standards.

Pour une meilleure compréhension du lecteur, les cas d’usage décrits dans la partie fonctionnelle de chacun des volets couvrent la totalité des échanges entre les acteurs définis dans les deux volets. Dans le contexte de ce présent document, seuls les échanges entre le logiciel métier et la PFI font partie du périmètre du volet.

Dans le cas d’usage où la demande provenant du CREATEUR est relayée par le GESTIONNAIRE de l’établissement vers une BAL personnelle ou organisationnelle d’un autre établissement, l’envoi de l’accusé de lecture MSSanté (Message Disposition Notification- MDN décrit dans la [RFC 8098](https://datatracker.ietf.org/doc/html/rfc8098)) est déclenché par le traitement du courriel déposé dans la BAL de l’utilisateur destinataire (lecture, suppression, traitement, etc.). Le courriel MDN est alors réceptionné par la PFI de l’établissement expéditeur qui construit le message métier HL7 `ZAM^Z03^ZAM_Z01` et le transmet au logiciel métier de l’utilisateur expéditeur.

Une liste de cas d’usage, non exhaustive, est présentée à titre d’exemple dans le Volume 1 - Etude fonctionnelle, pour susciter les retours des industriels et des utilisateurs lors des prochains projectathons.

Rappel des conventions utilisées par IHE et HL7 :

| | |
| :--- | :--- |
| **Code d’usage** | **Signification** |
| R | Requis : l’élément de donnée doit obligatoirement être renseigné par l’émetteur et intégré par le récepteur |
| RE | Requis si connu : le système doit démontrer sa capacité à renseigner l’élément en émission et/ou à l’exploiter en réception.Sur le terrain il peut exister des situations où l’élément est non renseigné. |
| O | Optionnel |
| X | Non supporté |
| C | Conditionnel : La condition de remplissage de l’élément de donnée est spécifiée dans le tableau de description du profil de message ou dans une note en dessous du tableau. |

| | |
| :--- | :--- |
| **Code d’usage** | **Signification** |
| [ ] | Champ optionnel |
| { } | Champ répétable |
| [{ }] | Champ optionnel et répétable |

 **QUESTIONS OUVERTES :**
 [CDA_HL7_Q1 :](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/discussions/6) demande de fusionner les deux spécifications : « Transmission de document(s) CDA en HL7v2 » et « Transmission au LPS d’un document CDA provenant d’un courriel ». La fusion des deux spécifications est sans doute possible. Cependant, utiliser la même transaction entre les acteurs CREATEUR/GESTIONNAIRE et GESTIONNAIRE/CONSOMMATEUR nécessite d’effectuer une étude plus approfondie de façon à déterminer comment harmoniser ces transactions. La mise en place d'une transaction unique indépendamment du contexte créerait de l'ambiguïté avec notamment des informations non pertinentes véhiculées entre le GESTIONNAIRE et le CONSOMMATEUR (alimentation DMP, échange MSSanté…). Des retours des éditeurs sont attendus sur ce point. D’autre part, cette fusion des deux spécifications nécessiterait de modifier la rédaction des exigences SEGUR concernant la conformité des logiciels à ces spécifications. 
 

### Introduction

Ce document est une spécification d’une transaction de demande de transmission/remplacement/suppression de document(s) clinique(s) en intra-organisation entre un système créateur de documents et une PFI (plateforme d’intermédiation), dans l’objectif de partager et/ou d’échanger ces documents avec les acteurs externes à l’établissement pour :

* Publication de document(s) clinique(s) du patient au DMP (Dossier Médical Partagé),
* Envoi de document(s) clinique(s) du patient à différents destinataires externes à l’établissement au moyen de la MSSanté (Messagerie Sécurisée de Santé),

Cette spécification doit permettre d’harmoniser les modes de communication des documents cliniques concernant un patient, quelle que soit leur origine (CR de laboratoire, CR de radiologie, CR d’anatomie pathologique, CR de cardiologie, Lettre de liaison, etc..).

La PFI réceptionne les documents cliniques des patients pris en charge au sein de l’établissement provenant du système créateur de documents et les distribue en direction du DMP et/ou de la MSSanté en fonction de la demande exprimée par le créateur du document. La PFI retourne également au système créateur du document, le cas échéant, les accusés de réception du DMP et de la MSSanté de cette diffusion ainsi que l’accusé de lecture du courriel MSSanté.

Dans le cadre de cette spécification, les documents médicaux véhiculés correspondent à des documents au format CDA-R2 conformes au volet du CI-SIS « [Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) ». Ces documents doivent être validés par le professionnel de santé dans l’application métier qui les a générés via un statut de validation géré en interne.

#### Dépendances documentaires

Cette spécification n’est pas autonome. Notamment, dans le cas d’un envoi d’une demande de traitement sur le(s) document(s), le lecteur pourra également consulter le volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » pour avoir une vision complète et transversale des échanges représentée de façon synthétique sur la figure suivante et décrits de façon détaillée dans la volume 2 du présent document :

**Figure 1 : Représentation synthétique des échanges et articulation entre les deux volets du CI_SIS**

##### Dépendances avec la documentation SEGUR

Ce document doit être utilisé dans le cadre du référencement SEGUR vague 2. Il s’applique, entre autres, à la vague 2 du Ségur Numérique mais pas uniquement. Il peut également être utilisé hors SEGUR.

Les contraintes décrites dans ce présent volet sont moins fortes que certaines exigences du programme SEGUR vague 2. En conséquence, un système référencé SEGUR vague 2 devra mettre en œuvre les spécifications techniques décrites dans ce présent volet, mais également répondre aux exigences des couloirs de la vague 2 du SEGUR concernés par ce volet.

##### Positionnement dans le cadre d’interopérabilité

Cette spécification n’est pas autonome. Les développeurs doivent également connaître et maîtriser d’autres volets du CI_SIS publiés par l’ANS :

* [Le volet Partage de documents de santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante),
* [Le volet Echange de documents de santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante),

Les développeurs de PFI devront également respecter le [Référentiel socle « MSSanté #2- Clients de Messageries Sécurisées de Santé](https://esante.gouv.fr/espace_documentation/mssante-clients-de-messageries-securisees-de-sante/referentiel-socle-mssante-2) » publié par l’ANS et le référentiel [« Service DMP intégré aux LPS- Version 2.9 et supérieure »](https://industriels.sesam-vitale.fr/) publié par le GIE SESAM-VITALE.

**L’ensemble de ces spécifications sont hors périmètre de ce présent volet du CI-SIS.**

#### Ce dont ne traite pas ce volet du CI_SIS

Les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. En effet, les aspects relatifs à la sécurité sont du ressort du système d’information les implémentant.

Ce volet du CI_SIS n’a pas vocation à décrire le cadre juridique applicable. Il appartient à chaque acteur concerné par ce volet de veiller à ce que les fonctionnalités fournies et/ou mises en œuvre respectent ce cadre légal, notamment en termes de confidentialité et de sécurité des données par application des règles de la [PGSSI_S](https://esante.gouv.fr/produits-services/pgssi-s).

#### Lectorat cible

Les lecteurs cibles sont principalement des chefs de projets ainsi que toute personne concernée par les travaux du Ségur du Numérique et qui spécifie des projets avec des interfaces interopérables.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.hl7v2.fr.trans-cda-r2",
  "url" : "https://interop.esante.gouv.fr/ig/hl7v2/trans-cda-r2/ImplementationGuide/ans.hl7v2.fr.trans-cda-r2",
  "version" : "2.1.3",
  "name" : "CISIS_CDA_HL7_V2",
  "title" : "Volet de transmission d'un document CDA-R2 en HL7v2",
  "status" : "draft",
  "date" : "2026-04-21T16:23:36+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "packageId" : "ans.hl7v2.fr.trans-cda-r2",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/hl7v2/trans-cda-r2/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/hl7v2/trans-cda-r2/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Accueil",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "volume1.html"
        }],
        "nameUrl" : "volume1.html",
        "title" : "Volume 1 : Etude fonctionnelle",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "volume2.html"
        }],
        "nameUrl" : "volume2.html",
        "title" : "Volume 2 : Détail des transactions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "lien-entete-cda-meta-xds.html"
        }],
        "nameUrl" : "lien-entete-cda-meta-xds.html",
        "title" : "Lien entre l'en-tête CDA et les métadonnées XDS",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "meta-dmp-mss.html"
        }],
        "nameUrl" : "meta-dmp-mss.html",
        "title" : "Table MetaDMP/MSS",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ack-metier-zam.html"
        }],
        "nameUrl" : "ack-metier-zam.html",
        "title" : "Table AckMetierZAM",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapping.html"
        }],
        "nameUrl" : "mapping.html",
        "title" : "Mapping VIHF et XDS",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapping-mss.html"
        }],
        "nameUrl" : "mapping-mss.html",
        "title" : "Mapping message MSS",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "exemples.html"
        }],
        "nameUrl" : "exemples.html",
        "title" : "Exemples de messages",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "error-codes.html"
        }],
        "nameUrl" : "error-codes.html",
        "title" : "Error codes",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "glossaire.html"
        }],
        "nameUrl" : "glossaire.html",
        "title" : "Glossaire",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "doc-ref.html"
        }],
        "nameUrl" : "doc-ref.html",
        "title" : "Documents de référence",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "testplan.html"
        }],
        "nameUrl" : "testplan.html",
        "title" : "Test",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "change-log.html"
        }],
        "nameUrl" : "change-log.html",
        "title" : "Historique des versions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "download.html"
        }],
        "nameUrl" : "download.html",
        "title" : "Téléchargements",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
