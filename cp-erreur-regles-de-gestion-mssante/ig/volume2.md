# Volume 2 : Détail des transactions - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Volume 2 : Détail des transactions**

## Volume 2 : Détail des transactions

### Introduction

Cette section décrit les détails techniques nécessaires pour la mise en œuvre de la transaction

* Flux 1 : Demande de transmission/remplacement/suppression de document(s) CDA (Flux HL7-ORU)
* Flux 2 : Demande de transmission/remplacement/suppression d’un document CDA (Flux HL7-MDM)
* Des flux d’accusés métier identifiés dans le [tableau des Acteurs/Transactions](volume1.md#diagramme-des-acteurstransactions).

### Périmetre de la transaction

Cette transaction véhicule en intra hospitalier les demandes de transmission initiale, de remplacement ou de suppression de(s) document(s) du patient au niveau d’un système cible (le DMP et/ou le(s) destinataire(s) MSSanté indiqués dans la transaction).

La spécification de cette transaction s’applique à toute demande de transmission initiale/de remplacement/de suppression de document(s) clinique(s) d’un patient, au moyen d’un message HL7, entre un acteur CREATEUR de documents vers un acteur GESTIONNAIRE de documents. Le message transmis contient une demande de traitement sur le(s) document(s) au format CDA-R2 encodé(s) dans un flux HL7v2 ORU ou MDM avec description uniquement des segments nécessaires au GESTIONNAIRE de documents pour alimenter le DMP et/ou envoyer le(s) document(s) via MSSanté au(x) destinataire(s) désigné(s) dans le message HL7 par le CREATEUR de document(s).

Les autres données nécessaires aux transactions XDS ou à la création de l’archive IHE-XDM ne rentrent pas dans le périmètre de cette spécification, elles sont récupérées de l’en-tête CDA ([ANS – CI-SIS : ANNEXE – LIEN ENTRE L’EN-TETE CDA ET LES METADONNEES XDS](https://esante.gouv.fr/annexe-lien-entre-len-tete-cda-et-les-metadonnees-xds)).

La spécification technique de cette transaction couvre également l’envoi de l’accusé du message HL7, l’envoi de l’accusé de réception du DMP et MSSanté ainsi que l’accusé de lecture du courriel MSSanté du GESTIONNAIRE vers le CREATEUR.

### Rôle des acteurs pour cette transaction

* **Acteur**: **Rôle**
  * CREATEUR: Envoie les demandes de transmission initiale/remplacement/suppression de document(s) clinique(s) associé(s) à un patient au GESTIONNAIRE, précise la destination de ce(s) document(s) (DMP et/ou MSSanté), précise le cas échéant le(s) destinataire(s) du courriel et précise les métadonnées de masquage aux PS et de visibilité de(s) document(s) au patient et aux représentants légaux. Reçoit optionnellement les messages HL7 métier de retour du DMP et/ou MSSanté (accusé réception DMP, accusé réception MSSanté, accusé de lecture MSSanté).
* **Acteur**: **Acteur**
  * CREATEUR: GESTIONNAIRE
* **Acteur**: **Rôle**
  * CREATEUR: Reçoit et gère la demande reçue du CREATEUR. Le GESTIONNAIRE construit, le cas échéant la requête d’alimentation du DMP et/ou le corps de mail, l’archive IHE_XDM et le(s) PDF(s) correspondant aux documents CDA de l’archive à transmettre au(x) destinataire(s) du courriel. Le GESTIONNAIRE réceptionne le retour du DMP et/ou de la MSSanté et construit, le cas échéant, les messages métiers HL7 de réception DMP, réception MSSanté et de lecture MSSanté qu’il renvoie en direction du CREATEUR.

### Choix des standards

* **HL7 v2.5 Chapitre 7**, message ORU (Unsolicited transmission of an observation message), **HL7 v2.6 Chapitre 9**, message MDM (Medical Document Management) (1)
* Le présent document spécifie également une nouvelle structure de message HL7, le message ZAM spécifique à ce volet, basé sur HL7v2.6 et utilisé pour implémenter les accusés métier (accusé de réception DMP, accusé de réception MSSanté et accusé de lecture MSSanté),
* [Extension française du profil IHE PAM : PAM.fr, version 2.11](https://www.interopsante.org/publications) (1),
* Les types de données utilisés (2) doivent se conformer aux spécifications « [INTEROP’SANTE : ITI - Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France - Release 1.8 – Final Text – 31 janvier 2024](https://www.interopsante.org/publications) »
* Le choix du protocole de transport est libre. L’utilisation du protocole MLLP est à privilégier pour gérer au mieux les accusés de réception techniques (ACK).
* Dans le cadre de cette spécification, les documents médicaux véhiculés correspondent à des documents au format CDA-R2 conformes au volet du CI-SIS « [Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) ».
* Les documents transmis par le message HL7 doivent être validés par le professionnel de santé dans l’application métier qui les a générés via un statut de validation géré en interne.
* Dans le cas d’une publication de(s) document(s) sur le DMP, l’INS du patient doit être qualifié en suivant [les spécifications de l’annexe INS CI-SIS](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis) et les règles du [corpus documentaire INS](https://esante.gouv.fr/produits-services/referentiel-ins).

>  **(1) :** Les messages décrits au niveau de cette transaction implémentent la version 2.5 (message ORU) ou la version 2.6 (message MDM) du standard HL7 mais pré adoptent le segment PRT de la version 2.9, permettant de spécifier l'expéditeur et le(s) destinataire(s) d'un courriel. Le message ORU permet de transmettre, si nécessaire, deux formats de document (CDAr2 Niv1 et CDAr2 Niv3). Le message MDM permet de transmettre un seul document. 

>  **(2) :** Pour l'ensemble des champs de type CE en HL7v2.5 et CWE en HL7v2.6, la contrainte imposée en version 2.7 sur le type de donnée CE/CWE est pré adoptée. En conséquence, ces spécifications imposent de préciser le système de codage (CE/CWE.3) lorsque le code (CE/CWE.1) est renseigné. Les bonnes pratiques consistent à renseigner systématiquement les 3 composantes : le code, le libellé du code et le libellé de la nomenclature. 

### Evènements déclenchants

Les cas d’usages liés à une demande de transmission initiale/remplacement/suppression de document(s) clinique(s) d’un patient sont gérés différemment entre l’ORU et le MDM :

* Flux métier: TransmissionDocuments : Demande de transmission initiale de document(s)
  * Message de type ORU: ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message » -> OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]
  * Message de type MDM: MDM : L'évènement utilisé sera le T02 « Original document notification »-> MDM^T02^MDM_T02-> OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]
* Flux métier: TransmissionDocuments : Demande de suppression de document(s)
  * Message de type ORU: ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message »-> OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]
  * Message de type MDM: MDM : L'évènement utilisé sera le T04 « Document status change notification and content »-> MDM^T04^MDM_T02-> OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]
* Flux métier: TransmissionDocuments : Demande de remplacement de document(s)
  * Message de type ORU: ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message »-> OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]
  * Message de type MDM: MDM : L'évènement utilisé sera le T10 « Document replacement notification and content »-> MDM^T10^MDM_T02-> OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]
* Flux métier: RéponseTransmissionDocuments 
  * Message de type ORU: Acquittement technique du message HL7 ORU
  * Message de type MDM: Acquittement technique du message HL7 MDM

### Interactions entre les Acteurs

Les échanges sont représentés de bout en bout pour permettre au lecteur d’avoir une vision de l’ensemble des échanges, y compris du côté du destinataire. Cependant, le périmètre du présent volet est limité aux transactions représentées en bleu sur les figures suivantes.

#### Implémentation du message ORU et de ses acquittements métier HL7

**Figure 13 : Diagramme de séquence -- Message ORU**

Les interactions de la transaction de transmission/remplacement/suppression de document(s) utilisent le message HL7 `ORU^R01^ORU_R01` en version 2.5 ainsi que ses acquittements métiers HL7 `ZAM^Z01^ZAM_Z01` (accusé métier de réception DMP), `ZAM^Z02^ZAM_Z01` (accusé métier de réception MSSanté) et `ZAM_Z03^ZAM_Z01` (accusé métier de lecture MSSanté).

L’action à réaliser sur le document porté par la transaction est indiquée par la valeur renseignée au niveau du champ OBX-11 du segment OBX portant le document (cf [section dédiée](volume2.md#les-donn%C3%A9es-concernant-la-demande-de-traitement-sur-les-documents)), qui prend la valeur F (pour demande d’intégration du document), C (pour demande de remplacement de document) et D (pour demande de suppression de document), et sur la valeur du champ ORC-1 (cf [section dédiée](volume2.md#le-segment-orc)).

Pour des questions de lisibilité, la figure 13 représente sur le même schéma la possibilité pour l’acteur CREATEUR d’envoyer une demande d’intégration, de remplacement ou de suppression de document(s) au moyen d’un message HL7 ORU.

#### Implémentation du message MDM et de ses acquittements métier HL7

Les interactions de la transaction de transmission/remplacement/suppression de document(s) utilisent respectivement les messages HL7 `MDM^T02^MDM_T02`, `MDM^T10^MDM_T02` et `MDM^T04^MDM_T02` en version 2.6 ainsi que ses acquittements métiers HL7 `ZAM^Z01^ZAM_Z01` (accusé métier de réception DMP), `ZAM^Z02^ZAM_Z01` (accusé métier de réception MSSanté) et `ZAM_Z03^ZAM_Z01` (accusé métier de lecture MSSanté).

L’action à réaliser sur le document porté par la transaction est indiquée par la nature de l’événement (T02, T10 et T04).

##### Demande de transmission initiale d’un document

**Figure 14 : Diagramme de séquence -- Message MDM -- Transmission initiale d'un document**

##### Demande de remplacement d’un document

**Figure 15 : Diagramme de séquence -- Message MDM -- Remplacement d'un document**

##### Demande de suppression d’un document

**Figure 16 : Diagramme de séquence -- Message MDM -- Suppression de document(s)**

### Profils de messages

#### Description des messages ORU et MDM

La description des messages ORU et MDM est basée sur le contenu du document et les métadonnées complémentaires à véhiculer dans le cadre du partage et de l’échange.

Les données utiles pour publication sur le DMP et pour l’envoi par MSSanté de(s) document(s) sont stockées à la fois dans le segment PID du message HL7, dans le document CDA-R2 conforme au [volet du CI_SIS Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) et dans des segments OBX du message HL7 spécifiant les métadonnées complémentaires.

Le développeur doit valoriser tous les segments et champs obligatoires des messages HL7v2 afin de répondre au standard d’interopérabilité des messages.

Ci-dessous sont représentées les structures de messages HL7v2 proposées pour la transmission de document(s) CDA-R2 en HL7v2.

##### Message ORU^R01^ORU_R01 en HL7v2.5

###### Profil du message ORU_R01

Le profil du message ORU_R01 est le suivant :

* Segment: MSH
  * Meaning: Message Header
  * Usage: R
  * Card.: [1..1]
  * § HL7: 2
* Segment:  
  * Meaning: --- PATIENT_RESULT begin
  * Usage: R
  * Card.: [1..1]
  * § HL7:  
* Segment:  
  * Meaning: --- PATIENT begin
  * Usage: R
  * Card.: [1..1]
  * § HL7:  
* Segment:  PID
  * Meaning: Patient Identification
  * Usage: R
  * Card.: [1..1]
  * § HL7: 3
* Segment:  
  * Meaning: --- PATIENT_VISIT begin
  * Usage: RE
  * Card.: [0..1]
  * § HL7:  
* Segment:  PV1
  * Meaning: Patient Visit
  * Usage: R
  * Card.: [1..1]
  * § HL7: 3
* Segment:  
  * Meaning: --- PATIENT_VISIT end
  * Usage:  
  * Card.:  
  * § HL7:  
* Segment:  
  * Meaning: --- PATIENT end
  * Usage:  
  * Card.:  
  * § HL7:  
* Segment: {
  * Meaning: --- ORDER_OBSERVATION begin
  * Usage: R
  * Card.: [1..*]
  * § HL7:  
* Segment:  ORC
  * Meaning: Common Order : demande de traitement sur un document
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment:  OBR
  * Meaning: Observation Request
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment:  [{NTE}]
  * Meaning: Comments on the order
  * Usage: O
  * Card.: [0..*]
  * § HL7: 2
* Segment: [{
  * Meaning: --- TIMING begin
  * Usage: O
  * Card.: [0..*]
  * § HL7:  
* Segment:  TQ1
  * Meaning: Timing Quantity
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment: }]
  * Meaning: --- TIMING end
  * Usage:  
  * Card.:  
  * § HL7:  
* Segment:  {
  * Meaning: --- OBSERVATION begin
  * Usage: R
  * Card.: [1..*]
  * § HL7:  
* Segment:  OBX
  * Meaning: Document et expression des métadonnées de document relatives au masquage du document aux PS et de visibilité au patient.
  * Usage: R
  * Card.: [1..1]
  * § HL7: 7
* Segment:  [{PRT}] (note 1)
  * Meaning: Participation : Expéditeur du document, destinataire(s) MSSanté, adresse mail sur laquelle le destinataire peut répondre. Segment PRT pré-adopté de la version 2.9
  * Usage: R/C
  * Card.: [1..*]
  * § HL7: 7 (v2.9)
* Segment:  [{NTE}]
  * Meaning: Comment of the result
  * Usage: O
  * Card.: [0..*]
  * § HL7: 2
* Segment:  }
  * Meaning: --- OBSERVATION end
  * Usage:  
  * Card.:  
  * § HL7:  

**Note (1) :** **le segment PRT est utilisé uniquement avec l’OBX qui porte la demande de traitement sur le document. Dans ce cas il est requis et conditionnel (sa valeur dépend de la demande exprimée : envoi de la demande de traitement sur le DMP et/ou envoi vers un ou des destinataire(s) via MSSanté).**

Le message ORU peut transmettre une ou deux instances de documents CDA-R2. Le CREATEUR peut ainsi transmettre un document au format CDA-R2 niveau 1 et un deuxième document de contenu clinique identique au format CDA-R2 niveau 3. Chaque document possède son propre identifiant (fonctionnalité non applicable au SEGUR vague 2).

Dans le cadre de ce volet, spécifique à un échange entre un système (CREATEUR) et une PFI (GESTIONNAIRE), l’occurrence ORDER_OBSERVATION est utilisée pour transmettre une demande de traitement sur le(s) document(s) : transmission initiale/remplacement/suppression de document(s). Seuls les segments ORC, OBR et le groupe de segments OBSERVATION de l’occurrence ORDER_OBSERVATION sont à renseigner.

Les contraintes apportées par ce volet sur les données des différents segments du message ORU sont décrites à la [section dédiée](volume2.md#contraintes-appliquées-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

###### Description fonctionnelle du message ORU

**Figure 17 : Structure fonctionnelle du message ORU_R01**

Les groupes en rouge sur le schéma représentent les éléments spécifiques à ce volet :

* Un premier groupe de segments OBSERVATION contenant le document médical au format CDA-R2 codé en base64 suivi de segments PRT, pré-adoptés depuis la version 2.9 du standard, permettant ainsi de renseigner le cas échéant les informations de l’expéditeur, le(s) destinataire(s) MSSanté et l’adresse mail de réponse.
* Un deuxième groupe OBSERVATION contenant le cas échéant le même document médical spécifié dans un autre format, codé en base64. Le contenu clinique des documents est identique, seul le format est différent. Cette possibilité n’est pas utilisée dans le contexte du SEGUR vague2 (la version PDF du compte-rendu est insérée dans une section dédiée du document CDA Niv3).

Les groupes de segments OBSERVATION suivants (répétables) véhiculent les métadonnées spécifiques à la publication sur le DMP et/ou à l’envoi par la MSSanté. Ces métadonnées sont communes aux deux formats du document. Ces métadonnées sont décrites dans la [section dédiée](volume2.md#contraintes-appliqu%C3%A9es-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

##### Message MDM en HL7v2.6

###### Profil du message MDM

Le profil du message MDM est le suivant :

* Segment: MSH
  * Meaning: Message Header
  * Usage: R
  * Card.: [1..1]
  * § HL7: 2
* Segment: EVN
  * Meaning: Event type
  * Usage: R
  * Card.: [1..1]
  * § HL7: 2
* Segment: PID
  * Meaning: Patient Identification
  * Usage: R
  * Card.: [1..1]
  * § HL7: 3
* Segment: PV1
  * Meaning: Patient Visit
  * Usage: R
  * Card.: [1..1]
  * § HL7: 3
* Segment:  
  * Meaning: --- COMMON_ORDER begin
  * Usage: R
  * Card.: [1..1]
  * § HL7:  
* Segment:    ORC
  * Meaning: Common Order = demande de traitement sur le document
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment:  [{
  * Meaning: --- TIMING begin
  * Usage: O
  * Card.: [0..*]
  * § HL7:  
* Segment:   TQ1
  * Meaning: Timing/Quantity
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment:   [{TQ2}]
  * Meaning: Timing/Quantity RelationShip
  * Usage: O
  * Card.: [0..*]
  * § HL7: 4
* Segment:   }]
  * Meaning: --- TIMING end
  * Usage:  
  * Card.:  
  * § HL7:  
* Segment:   OBR
  * Meaning: Observation Request segment
  * Usage: R
  * Card.: [1..1]
  * § HL7: 4
* Segment:  [{NTE}]
  * Meaning: Notes and comments
  * Usage: O
  * Card.: [0..*]
  * § HL7: 2
* Segment:  
  * Meaning: --- COMMON_ORDER end
  * Usage:  
  * Card.:  
  * § HL7:  
* Segment: TXA
  * Meaning: Transcription document header
  * Usage: R
  * Card.: [1..1]
  * § HL7: 9
* Segment: {
  * Meaning: OBXNTE : Document ou expression des métadonnées de document relatives au masquage du document aux PS et de visibilité au patient.
  * Usage: R
  * Card.: [1..*]
  * § HL7:  
* Segment:  OBX
  * Meaning: Observation/Result.
  * Usage: R
  * Card.: [1..1]
  * § HL7: 9
* Segment:  [{PRT}](Note 1)
  * Meaning: Participation : Expéditeur, destinataire(s) MSSanté, adresse mail sur laquelle le destinataire peut répondre. Segment PRT pré-adopté de la version 2.9
  * Usage: R/C
  * Card.: [1.*]
  * § HL7: 7 (v2.9)
* Segment:  [{NTE}]
  * Meaning: Notes and comments
  * Usage: O
  * Card.: [0..*]
  * § HL7: 2
* Segment: }
  * Meaning: ---OBXNTE end
  * Usage:  
  * Card.:  
  * § HL7:  

**Note (1)** : **le segment PRT est utilisé conjointement avec l’OBX qui porte la demande de traitement sur le document. Dans ce cas il est requis et conditionnel (sa valeur dépend de la demande exprimée : envoi de la demande de traitement sur le DMP et/ou envoi vers un ou des destinataire(s) via MSSanté).**

Le message MDM ne peut transmettre qu’un seul document médical au format CDAr2.

Les contraintes apportées par ce volet sur les données du message MDM sont décrites à la [section dédiée](volume2.md#contraintes-appliquées-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

###### Description fonctionnelle du message MDM

**Figure 18 : Structure fonctionnelle du message MDM**

Les groupes de segments en rouge sur le schéma représentent les éléments spécifiques à ce volet :

* Un groupe OBXNTE, requis, contenant le document médical au format CDA-R2 codé en base64 suivi de segments PRT, pré-adoptés depuis la version 2.9 du standard, permettant ainsi de renseigner si nécessaire les informations de l’expéditeur, le(s) destinataire(s) MSSanté et l’adresse mail de réponse.
* Les groupes OBXNTE suivants (répétables) véhiculent les métadonnées spécifiques à la publication sur le DMP et à l’envoi par la MSSanté.

Dans le message MDM, le document est accompagné de quelques métadonnées à renseigner au niveau du segment TXA. Il s’agit à minima du type de document (TXA-2), de la présentation du contenu du document (TXA-3), de l’identifiant unique du document (TXA-12), de l’identifiant unique du document remplacé (TXA-13) lorsque l’évènement est à T10 et du statut indiquant la complétude du document (TXA-17).

#### Contraintes appliquées aux messages MDM et ORU dans le contexte de ce volet

Dans la suite de cette section, les valeurs indiquées en bleu dans les tableaux indiquent les valeurs fixes à insérer dans le champ du message.

##### Eléments de contrôle du message ORU ou MDM

###### Le segment MSH – Header du message

Les éléments de contrôle du message HL7 sont portés par le segment d’entête MSH. Le tableau ci-dessous liste les champs à renseigner pour le segment MSH :

* Champ: MSH-1
  * Contenu: | séparateur de champ
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-2
  * Contenu: ^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-3
  * Contenu: Application émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-4
  * Contenu: Organisation émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-5
  * Contenu: Application réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-6
  * Contenu: Organisation réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-7
  * Contenu: Date/time du message
  * Type donnée: TS
  * Caractère optionnel/obligatoire: R
* Champ: MSH-9
  * Contenu: Type du message ORU^R01^ORU_R01 MDM^T02^MDM_T02 MDM^T10^MDM_T02  MDM^T04^MDM_T02
  * Type donnée: MSG
  * Caractère optionnel/obligatoire: R 
* Champ: MSH-10
  * Contenu: Identifiant du message
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-11
  * Contenu: Processing Id  P  : en production  T  : message de test  D : environnement de debug
  * Type donnée: PT
  * Caractère optionnel/obligatoire: R
* Champ: MSH-12
  * Contenu: Version du standard  2.5 pour ORU  2.6 pour MDM
  * Type donnée: VID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-17
  * Contenu: FRA
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-18
  * Contenu: Jeux de caractères, valeurs possibles :UNICODE UTF-8 ou 8859/15
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21
  * Contenu: Identifiant du profil de messageMSH-21.1 : Entity Identifier (2.1)MSH-21.2 : Namespace IdCISIS_CDA_HL7_V2 
  * Type donnée: EI
  * Caractère optionnel/obligatoire: R

###### Exemples

Entête MSH d’un message MDM ou ORU émis par le CREATEUR :

`MSH|^~\&|SIL|CHU_X|PFI|CHU_X|202310030830||ORU^R01^ORU_R01|12345|P|2.5|||||FRA|8859/15|||2.1^ CISIS_CDA_HL7_V2`

##### Les données concernant le patient et la venue du patient

Le message HL7 (ORU ou MDM) est centré sur un seul patient. Les informations concernant le patient sont décrites par le segment requis PID. Le segment PV1, requis, représente la venue courante du patient.

Ces deux segments doivent être renseignés conformément à la spécification « [PAM – National extension France » version 2.11](https://www.interopsante.org/publications) publiée en 2024. Si l’INS est véhiculé, le segment PID doit suivre les contraintes décrites dans l’annexe CI-SIS « [Prise en charge de l’identifiant National de Santé (INS) dans les standards d’interopérabilité et les volets du CI-SIS](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis) ».

Pour le segment PID, ce volet ajoute une contrainte particulière sur le PID-18 par rapport à PAM.FR. Il doit être renseigné si connu afin de pouvoir calculer des indicateurs, dans le contexte de l’alimentation du DMP.

* Champ: PID-3
  * Contenu: Identifiants du patient
  * Type donnée: CX
  * Caractère optionnel/obligatoire: R
* Champ: PID-5
  * Contenu: Nom du patient
  * Type donnée: XPN
  * Caractère optionnel/obligatoire: R
* Champ: PID-18 (*Note 1*)
  * Contenu: N° de dossier administratif
  * Type donnée: CX
  * Caractère optionnel/obligatoire: RE

Le PID-3 doit être identique aux identifiants de patient portés par le document CDA (recordTarget/patientRole/id).

Pour le segment PV1, ce volet ajoute les contraintes suivantes :

* Champ: PV1-2
  * Contenu: Classe du patient 
  * Type donnée: IS
  * Caractère optionnel/obligatoire: R
* Champ: PV1-19 *(Note 1*) et (*Note 2*)
  * Contenu: Identifiant de la venue
  * Type donnée: CX
  * Caractère optionnel/obligatoire:  C (Note 2)
* Champ: PV1-44 (*Note 1*)
  * Contenu: Date d'entrée du patient
  * Type donnée: TS
  * Caractère optionnel/obligatoire: RE
* Champ: PV1-45(*Note 1*)
  * Contenu: Date de sortie du patient
  * Type donnée: TS
  * Caractère optionnel/obligatoire: RE

**Note 1** : **A noter que ces champs sont à renseigner, s’ils sont connus, par l’acteur CREATEUR afin de pouvoir calculer des indicateurs.**

**Note 2** : **Le champ PV1-19 est requis lorsque le PV1-2 prend la valeur E, I, O ou R. Si PV1-2 prend la valeur N alors PV1-19 est requis si connu.**

##### Les métadonnées du document [Uniquement pour le message MDM]

Le message MDM requiert l’utilisation du segment TXA qui porte les métadonnées associées au document contenu dans le message. Les contraintes apportées par ce volet sur le segment TXA sont les suivantes :

* Champ: TXA-1
  * Contenu: Set-ID TXA. Valeur = 1
  * Type donnée: SI
  * Caractère optionnel/obligatoire: R
* Champ: TXA-2
  * Contenu: Type de document dont les valeurs sont à prendre dansle [JDV_J07-XdsTypeCode-CISIS](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J07-XdsTypeCode-CISIS.html) de la Nomenclature des Objets de Santé (NOS).Par ex : 11502-2
  * Type donnée: IS
  * Caractère optionnel/obligatoire: R
* Champ: TXA-3
  * Contenu: Document Content PresentationTEXT
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: TXA-12 *(Note 1)*
  * Contenu: Unique document numberSi ClinicalDocument/id@extension est renseigné : ex : 58132^^1.2.250.2345.3245.13^ISOSi ClinicalDocument/id@extension n'est pas renseigné : ex : 1.2.250.2345.3245.13.58132
  * Type donnée: EI
  * Caractère optionnel/obligatoire: R
* Champ: TXA-13 *(Note 1)*
  * Contenu: Parent document numberSi ClinicalDocument/id@extension est renseigné : ex : 58131^^1.2.250.2345.3245.13^ISOSi ClinicalDocument/id@extension n'est pas renseigné : ex : 1.2.250.2345.3245.13.58131
  * Type donnée: EI
  * Caractère optionnel/obligatoire: C Requis dans le cas d'une demande de remplacement
* Champ: TXA-17
  * Contenu: Document completion status dont la valeur est à prendre dans la table HL7 0271AU
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R

**(Note 1)** : **conformément au volet de [Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante), l’identifiant du document au sein du document CDA s’exprime soit par un OID complet identifiant complètement l’instance du document (sans extension), soit par une racine d’OID commune à toutes les instances de documents de l’émetteur associée à une extension propre à l’instance du document.**

La règle de peuplement des sous champs des champs TXA-12 et TXA-13 est la suivante :

* si ClinicalDocument/id@extension est renseigné :
* si ClinicalDocument/id@extension n’est pas renseigné :

>  **Point d'attention** La version actuelle du DMP ne supporte pas le format OID^Extension. 

##### Le segment ORC

* Composition du segment ORC : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du segment ORC : Usage = Required / Cardinalité = [1..1]: **Segment ORC**
  * ?: **Common Order**
  * ?:  
* Composition du segment ORC : Usage = Required / Cardinalité = [1..1]: ORC-1
  * ?: Order control
  * ?: NW (New order/service dans le cas d'une demande d'intégration de document(s)RO (Replace order) dans le cas d'une demande de remplacementCA (Canceled) dans le cas d'une demande de suppression

La valeur du champ ORC-1 doit être cohérente avec la valeur du champ OBX-11 et dans le cas du message MDM avec l’évènement déclenchant (T02, T04 ou T10). En cas d’incohérence entre ces champs, le message HL7 sera rejeté par la PFI.

##### Le segment OBR

* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: **Segment OBR**
  * ?: **Observation Request**
  * ?:  
* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: OBR-4
  * ?: Universal Service Identifier
  * ?:  
* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: >OBR-4.1
  * ?: Code du document
  * ?: Utiliser le [JDV_J07-XdsTypeCode-CISIS](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J07-XdsTypeCode-CISIS.html) de la Nomenclature des Objets de Santé (NOS).A noter qu'en cas d'envoi au DMP, le Gestionnaire doit contrôler que le type de document appartient au jeu de valeur défini par le DMP ([JDV_J66-TypeCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J66-TypeCode-DMP.html)).
* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: >OBR-4.2
  * ?: Libellé du document
* Composition du segment OBR : Usage = Required / Cardinalité = [1..1]: >OBR-4.3
  * ?: Système de codage dont est issu le code
  * ?:  LN ou TRE_A05[ (lien vers la TRE)](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/CodeSystem-TRE-A05-TypeDocComplementaire.html) en fonction de l'appartenance du code à l'un des systèmes de codage

##### Les données concernant la demande de traitement sur le(s) document(s)

Les messages ORU/MDM utilisés contiennent un premier groupe, respectivement OBSERVATION/OBXNTE composé :

* D’un segment OBX contenant un document au format CDA-R2 dont le type MIME est précisé en OBX-5.2.
* D’un segment PRT conditionnel, pré-adopté de la version 2.9 du standard, permettant de renseigner les informations concernant l’expéditeur de la demande de traitement sur le document (publication/remplacement/suppression) et la structure à laquelle l’expéditeur est attaché. Ce segment est requis dans le cas d’une publication du document sur le DMP. Il permet à la PFI de générer le jeton VIHF lors de l’alimentation du DMP ainsi que la métadonnée représentant l’auteur et la structure de l’auteur du lot de soumission.
* D’un segment PRT conditionnel, pré-adopté de la version 2.9 du standard, permettant de renseigner les informations du ou des destinataires MSSanté. Ce segment est requis dans le cas d’un échange de document(s) via le canal MSSanté.
* D’un segment PRT optionnel, pré-adopté de la version 2.9 du standard, permettant de renseigner l’adresse mail sur laquelle le destinataire peut répondre.

Les champs des segments PRT doivent être renseignés conformément aux spécifications [« Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France » release 1.8](https://www.interopsante.org/publications).

Les tableaux suivants listent l’ensemble des **segments et des champs à renseigner obligatoirement**, dans l’ordre indiqué, à l’exception du dernier segment PRT permettant de préciser l’adresse mail de réponse (qui est optionnel).

De façon à éviter les incohérences entre les données spécifiées dans le(s) document(s) et le message ORU/MDM et de façon privilégiée, seuls les segments et les champs indiqués dans les tableaux suivants sont à renseigner dans le message ORU/MDM. Néanmoins, dans le cas où un champ ou un segment autre que ceux indiqués dans le tableau serait renseigné, l’expéditeur du message prend la responsabilité de la cohérence des données entre le message et le(s) document(s) et le récepteur n’a pas l’obligation de gérer le contenu de ces champs ou segments.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX (Requis)**
  * ?: **Observation/Result**
  * ?: Contient un document au format CDA-R2 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?:  ED (Encapsuled Data)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3 = OBR-4
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code du Document
  * ?: Utiliser le [JDV_J07-XdsTypeCode-CISIS](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J07-XdsTypeCode-CISIS.html) de la Nomenclature des Objets de Santé (NOS).A noter qu'en cas d'envoi au DMP, le Gestionnaire doit contrôler que le type de document appartient au jeu de valeur défini par le DMP ([JDV_J66-TypeCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J66-TypeCode-DMP.html)).
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé du Document 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Système de codage dont est issu le code
  * ?:  LN ou TRE_A05[ (lien vers la TRE)](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/CodeSystem-TRE-A05-TypeDocComplementaire.html) en fonction de l'appartenance du code à l'un des systèmes de codage.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5 
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Source Application
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.2
  * ?: Type
  * ?: Pour le message ORU : TEXT (Machine readable text document)Pour le message MDM : text (Text data)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Data Subtype
  * ?: XML
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.4
  * ?: Encoding
  * ?: Base64
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.5
  * ?: Data
  * ?: Intégrer le document CDA-R2
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Statut du document pris dans la table HL7 0085 (Observation Result Status Codes Interpretation) :· F : Document validé· D : Document à supprimer· C : Remplacement du Document
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment PRT (Conditionnel)**
  * ?: Participation Information Expéditeur
  * ?: **Ce segment est requis, en particulier dans le cas d'une publication du document sur le DMP,** pour permettre à la PFI de générer le VIHF ainsi que l'auteur du lot de soumission.[[2]](#_ftn2)Ce segment contient les informations de l'expéditeur à l'origine de la demande de traitement sur le document et de la structure à laquelle il est rattaché.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-2 
  * ?: Action Code
  * ?: UC (Unchanged)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-4 
  * ?: Participation
  * ?: SB^Send by^participation
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-5 (conditionnel) 
  * ?: Participation Person
  * ?: Ce champ est requis si l'expéditeur est un professionnel
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.1
  * ?: Person Identifier
  * ?: Identifiant du professionnel qui fait la demande de traitement sur le(s) document(s)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.2
  * ?: Family Name
  * ?: Nom d'exercice du professionnel expéditeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.3
  * ?: Given Name
  * ?: Prénom d'exercice du professionnel expéditeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.9
  * ?: Assigning Authority
  * ?: Autorité d'affectation de l'identifiant du PS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.1 (optionnel)
  * ?: Namespace Id
  * ?: Nom de l'assigning authority
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.2
  * ?: Universal Id
  * ?: Autorité d'affectation de l'identifiant du PS (OID de gestion de personnes) : 1.2.250.1.71.4.2.1
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.3
  * ?: Universal Id Type
  * ?: ISO
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.13
  * ?: Identifier Type Code
  * ?: Type d'identifiant du professionnel (valeur issue de la [Table 0203 - Interop'Santé](https://www.interopsante.org/publications) présent dan le document "Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France")
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-8
  * ?: Participation Organization
  * ?: Décrit l'organisation rattachée au professionnel ou au système à l'origine de la demande de traitement sur le(s) document(s)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.1
  * ?: OrganizationName
  * ?: Nom de l'organisation
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.6
  * ?: Assigning Authority
  * ?: Autorité d'affectation de l'identifiant de l'organisation dont dépend le PS ou le système à l'origine de la demande de traitement sur le(s) document(s).1.2.250.1.71.4.2.2 (OID de gestion des structures pour un PS dans un établissement de santé).
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.7
  * ?: Identifier Type Code
  * ?: Type d'identifiant de l'organisation (valeur issue de la [Table 0203 - Interop'Santé](https://www.interopsante.org/publications) présent dan le document "Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France") : FINEJ (FINESS d'entité juridique) ou FINEG (FINESS d'entité géographique) ou IDNST.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.10
  * ?: Organization number
  * ?: Identifiant de l'organisation à l'origine de la demande de traitement sur le(s) document(s)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-10 (conditionnel)
  * ?: Participation Device
  * ?: Ce champ est requis si l'auteur est un dispositif.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-10.1
  * ?: Entity Identifier
  * ?: Identifiant du dispositif expéditeur du document
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment PRT (conditionnel)**
  * ?: Participation Information destinataire(s)
  * ?: Ce segment est répétable et **requis si le document est échangé via MSSanté**.Il contient l'adresse MSSanté d'un destinataire.Ce segment est répétable.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-2 
  * ?: Action Code
  * ?: UC(Unchanged)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-4 
  * ?: Participation
  * ?: RCT^Result Copies To^participation
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-5 (conditionnel)
  * ?: Participation Person
  * ?: Ce champ est requis si le destinataire est un professionnel de santé ou un patient.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.1
  * ?: Person Identifier
  * ?: Identifiant du professionnel de santé destinataire/patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.2
  * ?: Family Name
  * ?: Nom d'exercice du PS destinataire/nom patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.3
  * ?: Given Name
  * ?: Prénom d'exercice du PS destinataire/prénom patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.9
  * ?: Assigning Authority
  * ?: Autorité d'affectation de l'identifiant du PS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.1 (optionnel)
  * ?: Namespace Id
  * ?: Nom de l'assigning authority
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.2
  * ?: Universal Id
  * ?: Autorité d'affectation de l'identifiant du PS (OID de gestion de personnes) : 1.2.250.1.71.4.2.1 ou du patient 1.2.250.1.213.1.4.8 (INS-NIR) ou 1.2.250.1.213.1.4.9 (INS-NIA)</span>
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > > PRT-5.9.3
  * ?: Universal Id Type
  * ?: ISO
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-5.13
  * ?: Identifier Type Code
  * ?: Type d'identifiant (valeur issue de la [Table 0203 - Interop'Santé](https://www.interopsante.org/publications) présent dan le document "Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France") : RPPS ou INS ou IDNPS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-8 (conditionnel)
  * ?: Participation Organization
  * ?: Ce champ est requis si le destinataire est une organisation (établissement, service, UF…).
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.1
  * ?: OrganizationName
  * ?: Nom de l'organisation
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.6
  * ?: Assigning Authority
  * ?: Autorité d'affectation de l'identifiant de l'organisation destinataire du document.1.2.250.1.71.4.2.2 (OID de gestion des structures pour préciser une entité juridique ou une entité géographique), N° FINESS ou N° FINEG pour identifier une organisation intra-établissement (service, UF, pôle…).[Cf Contraintes sur les types de données HL7 v2.5 applicables aux profils d'intégration du cadre technique IT Infrastructure dans le périmètre d'IHE France](https://www.interopsante.org/publications).
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.7
  * ?: Identifier Type Code
  * ?: Type d'identifiant (valeur issue de la [Table 0203 - Interop'Santé](https://www.interopsante.org/publications) présent dan le document "Contraintes sur les types de données HL7 v2.5 applicables aux profils d’intégration du cadre technique IT Infrastructure dans le périmètre d’IHE France") : FINEJ (FINESS d'entité juridique) ou FINEG (FINESS d'entité géographique) ou IDNST ou UF (UF), SVR (service).
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-8.10
  * ?: Organization number
  * ?: Identifiant de l'organisation destinataire du document
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-10 (conditionnel)
  * ?: Participation Device
  * ?: Ce champ est requis si le destinataire est une application.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-10.1
  * ?: Entity Identifier
  * ?: Identifiant de l'application destinataire du document
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-15 
  * ?: Participant Telecommunication Address
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-15.3
  * ?: Telecommunication Equipment Type
  * ?: X.400 (X.400 email address)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-15.4
  * ?: Communication Address
  * ?: Intégrer l'adresse mail MSSanté
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment PRT (segment optionnel)**
  * ?: Participation Information Adresse de réponse
  * ?: Ce segment optionnel permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre.
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-2 
  * ?: Action Code
  * ?: UC (Unchanged)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-4 
  * ?: Participation
  * ?: REPLY^Reply To^participation
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: PRT-15 
  * ?: Participant Telecommunication Address
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-15.3
  * ?: Telecommunication Equipment Type
  * ?: X.400 (X.400 email address)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > PRT-15.4
  * ?: Communication Address
  * ?: Intégrer l'adresse mail de réponse

[[2]](#_ftnref2) SC.DMP/CONF.12 : « Le système DOIT transmettre à la PFI les informations d'identification nécessaires à la constitution du jeton VIHF : FINESS géographique de l'établissement et l'identifiant du professionnel ou du dispositif à l'origine de la demande d'alimentation du DMP ». 

**Exemple pour un Compte-Rendu d’imagerie médicale :**

Compte-rendu d’imagerie médicale à transmettre à 4 destinataires (le patient, le médecin HODA Adam, le service radiologie de l’hôpital A, une application). Une adresse mail de réponse est indiquée.

```
OBX|1|ED|18748-4^CR d’imagerie médicale^LN||^Text^XML^Base64^RG9jdW1lbnQgbcOpZGljYWwgYX
UgZm9ybWF0IENEQQ||||||F|
PRT||UC||SB^Send By^participation|801234567866^Dupont^Jean^^^^^^ASIP-SANTE- PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS |||Organisation-X^^^^^ASIP-SANTE-ST&1.2.250.1.71.4.2.2&ISO^FINEG^^^300017985                  
PRT||UC||RCT^results Copies To^participation|||||||||||^^X.400^146026322000196@patient.mssante.fr
PRT||UC||RCT^results Copies To^participation|101234567897^Hoda^Adam^^^^^^ASIP-SANTE- PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|||||||||||^^X.400^adam.hoda@test-ci-sis.mssante.fr PRT||UC||RCT^results Copies To^participation||||Radiologie^^^^^120456789^UF^^^3435|||||||^^X.400^radiologie@hopitalA.mssante.fr
PRT||UC||RCT^results Copies To^participation||||||12|||||^^X.400^appliExemple@hopitalB.mssante.fr
PRT||UC||REPLY^Reply to^participation|||||||||||^^X.400^adam.hoda@test-ci-sis.mssante.fr

```

**Expéditeur MSSanté :** Le segment PRT est également utilisé pour renseigner les informations sur l’expéditeur du courriel en fixant le champ PRT-4 « Participation » à SB « Send by ».

La version précédente du présent volet valorisait les adresses email MSSanté des professionnels de santé directement dans le document CDA au niveau de l’élément informationRecipient/intendedRecipient/telecom@Value (Type : url).

Les retours d’expérience du SEGUR ont mis en évidence qu’il ne s’agissait pas d’une bonne pratique. En effet, le contenu de l’élément informationRecipient ne rend pas forcément compte de la réalité des échanges. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). D’autre part, certains médecins n’acceptent pas la dématérialisation des échanges. Cette information doit être prise en compte par les Créateurs de documents lors de l’envoi du message HL7v2.

Pour ces raisons, il a été décidé de dissocier l’information « médicale » portée par l’élément informationRecipient au sein du document CDA de l’information « technique ». La constitution « technique » de cette liste consiste à sélectionner au niveau du Créateur de documents, à partir de l’annuaire des professionnels de santé, la liste des destinataires MSSanté souhaitée au moment de la génération du message HL7v2.

La liste des destinataires MSSanté et l’expéditeur sont ainsi insérés dans le message HL7v2 au travers du segment PRT tel que décrit ci-dessus.

Pour information, la norme CDA r2 précise les points suivants, concernant l’élément informationRecipient :

* (1) informationRecipient contient les destinataires d’une copie du document désignés au moment de la création du document,
* (2) informationRecipient ne permet pas de spécifier les destinataires auxquels le document est transmis ultérieurement à sa création,
* (3) informationRecipient permet de spécifier le destinataire principal (prescripteur de l’examen) et les destinataires secondaires.

En conséquence, l’envoi ultérieur du document CDA à un destinataire non prévu au moment de la création du document ne doit pas donner lieu à la mise à jour de l’élément informationRecipient et donc à une nouvelle version du document.

Concernant le point (3), le « [Volet Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) » a été modifié de façon à lever la contrainte existante sur l’élément « participant ». Il est prévu de modifier la prochaine version du « Volet CR-BIO – Compte-rendu d’examens de biologie médicale » dans le même sens.

##### Les métadonnées DMP/MSSanté

Cette section présente les métadonnées de restriction indispensables aux échanges avec le DMP et/ou la MSSanté. Ces métadonnées doivent être valorisées avec Y ou N suivant qu’elles sont activées ou non au moment de la validation du document.

Ces métadonnées sont spécifiées au niveau des groupes de segments OBSERVATION/OBXNTE des messages HL7, respectivement ORU/MDM.

**Ces métadonnées sont requises** sauf les deux dernières (Corps du mail proposé au PS ou au patient) qui sont proposées de façon optionnelle afin de véhiculer des informations complémentaires à intégrer dans le courriel MSSanté. Le caractère obligatoire de chaque métadonnée est indiqué en entête des tableaux.

Les métadonnées doivent apparaître dans le message HL7 dans l’ordre indiqué ci-dessous.

Pour l’ensemble des OBX listés dans cette section, le champ OBX-3 prend ses valeurs dans la table « MétaDMP/MSS » disponible [sur cette page](meta-dmp-mss.md).

Le champ OBX-11 étant requis par le standard HL7v2, la valeur de ce champ est arbitrairement fixée à « F ».

L’ensemble de ces métadonnées est identique pour les 2 formats de documents pouvant être contenus dans le message ORU.

###### Document Masqué aux professionnels de Santé 

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document est masqué aux professionnels de santé.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: MASQUE_PS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Masqué aux professionnels de Santé
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code 
  * ?: Table HL7 : 0136 :·  Y (Yes) ->MASQUE_PS actif· N (No) -> MASQUE_PS non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

###### Document Non visible par le patient 

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document est masqué au patient.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: INVISIBLE_PATIENT
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Document Non Visible par le patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?:   MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :· Y (YES) -> INVISIBLE_PATIENT actif· N (No) -> INVISIBLE_PATIENT non actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d'attention** un document clinique masqué au patient ne doit pas être envoyé au patient par MSSanté. 

###### Document Non visible par les représentants légaux du patient  

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document est masqué aux représentants légaux du patient.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: INVISIBLE_REP_LEGAUX
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Non visible par les représentants Légaux du patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :· Y (YES) -> INVISIBLE_ REP_LEGAUX actif· N (No) -> INVISIBLE_ REP_LEGAUX non actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d'attention :** un document clinique masqué aux représentants légaux du patient ne doit pas être envoyé aux représentants légaux du patient par MSSanté. 

###### Connexion Secrète

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document doit être utilisé pour une transaction DMP « connexion secrète » ([cf SESAM-VITALE : Service DMP intégré aux LPS - Version 2.10.0 – 07/07/2023](https://industriels.sesam-vitale.fr/))

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: CONNEXION_SECRETE
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Connexion Secrete
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) -> CONNEXION_SECRETE actif- N (No) -> CONNEXION_SECRETE non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

###### Modification Confidentiality Code

Cet OBX permet d’informer l’acteur GESTIONNAIRE que la transaction porte une modification du CONFIDENTIALITY CODE indiquant une mise à jour des métadonnées de masquage/démasquage aux PS et/ou de visibilité du document au patient ou à ses représentants légaux.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: MODIF_CONF_CODE
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Modification Confidentiality Code
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) -> MODIF_CONF_CODE actif- N (No) -> MODIF_CONF_CODE non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

###### Alimentation DMP

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document doit être utilisé pour une transaction DMP.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: DESTDMP
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Destinataire DMP
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) ->DESTDMP actif- N (No) -> DESTDMP non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d’attention : **Un document ayant un niveau renforcé de confidentialité (restreint ou très restreint) ne devrait pas être mis en partage. 

###### Echange MSSanté Professionnel de Santé/Organisation/BAL applicative

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document doit être envoyé vers un PS, une organisation ou une Boîte aux lettres (BAL) applicative.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: DESTMSSANTEPS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Destinataire (Professionnel de Santé, organisation ou BAL applicative)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) ->DESTMSSANTEPS actif- N (No) -> DESTMSSANTEPS non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d’attention :** Les adresses mails MSSanté sont valorisées dans les segments PRT (Participation Information) du message HL7v2, dont l'élément PRT-4 (Participation) prend la valeur « RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans l'élément PRT-15 (Participant Telecommunication Address). 

###### Echange MSSanté Patient

Cet OBX permet d’informer l’acteur GESTIONNAIRE que le document doit être échangé vers le mail MSSanté du Patient.

Si l’utilisateur ne souhaite pas que le patient puisse répondre à son message, un segment NTE avec la valeur « FIN » doit être ajouté.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: DESTMSSANTEPAT
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Destinataire Patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) -> DESTMSSANTEPAT actif- N (No) -> DESTMSSANTEPAT non Actif
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: **Segment NTE** (conditionnel)
  * ?: **Notes And Comments**
  * ?: 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]: NTE-4
  * ?: Comment Type
  * ?: la valeur « FIN » doit être utilisée si l'utilisateur ne souhaite pas que le patient puisse répondre au courriel.

>  **Point d'attention :** L'adresse mail MSSanté du patient est valorisée dans un segment PRT (Participation Information) du message HL7v2, dont l'élément PRT-4 (Participation) prend la valeur « RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans l'élément PRT-15 (Participant Telecommunication Address). 

###### Transmission de l’accusé de réception DMP/MSSanté

Cet OBX permet d’informer le GESTIONNAIRE que l’utilisateur souhaite recevoir un accusé de réception provenant du DMP et un accusé de réception provenant du serveur de messagerie de chaque destinataire MSSanté.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?: ACK_RECEPTION
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Accusé de réception
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.3 :
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) ->ack de réception DMP/MSSanté souhaité- N (No) -> accusé de réception DMP/MSSanté non souhaité
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

###### Transmission de l’accusé de lecture

Cet OBX permet d’informer le GESTIONNAIRE que l’utilisateur souhaite recevoir un accusé de lecture pour chaque destinataire MSSanté. En fonction de l’organisation choisie, cet accusé de lecture atteste soit de la lecture du courrier électronique présent dans la BAL pour chacun des destinataires MSSanté, soit du résultat du traitement automatique du courrier électronique par le GESTIONNAIRE destinataire.

* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: Elément requis 
  * ?: Description 
  * ?: Valeur 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-2
  * ?: Value Type
  * ?: Pour le message ORU : CE (Coded Entry)Pour le message MDM : CWE (Coded with Exceptions)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Code 
  * ?:   ACK_LECTURE_MSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Libellé 
  * ?:  Accusé de lecture
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Table HL7 : 0136 :- Y (Yes) ->accusé de lecture MSSanté souhaité- N (No) -> accusé de lecture MSSanté non souhaité
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

###### Corps du mail à destination d’un professionnel de santé

Cet OBX permet à l’acteur CREATEUR de documents d’ajouter un texte à intégrer dans le corps du mail à destination des professionnels de santé via MSSanté. Cette métadonnée est optionnelle :

* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: Elément requis 
  * ?: Description 
  * ?: Valeur 
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-2
  * ?: Value Type
  * ?: ED (Encapsulated Data)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.1 
  * ?: Code 
  * ?: CORPSMAIL_PS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Corps du mail pour un PS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-5
  * ?: Observation Value
  * ?: Indiquer le texte à intégrer dans le corps du mail
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d'attention :** Si ce segment OBX est renseigné, le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR pour l'envoi par MSSanté aux professionnels de santé. A défaut, dans le cadre d'une suppression ou d'un remplacement de document, le GESTIONNAIRE renseigne un corps de mail par défaut. 

###### Corps du mail à destination du patient

Cet OBX permet au CREATEUR de documents d’ajouter un texte à intégrer dans le corps du mail à destination du patient via MSSanté. Cette métadonnée est optionnelle :

* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: Elément requis
  * ?: Description
  * ?: Valeur
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: **Segment OBX**
  * ?: **Observation/Result**
  * ?:  
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-2
  * ?: Value Type
  * ?: ED (Encapsulated Data)
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-3
  * ?: Observation Identifier
  * ?: ** **
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.1 
  * ?: Code 
  * ?: CORPSMAIL_PATIENT
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.2 
  * ?: Libellé 
  * ?: Corps du mail pour le patient
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: > OBX-3.3 
  * ?: Name of Coding system
  * ?: MetaDMPMSS
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-5
  * ?: Observation Value
  * ?: Indiquer le texte à intégrer dans le corps du mail
* Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

>  **Point d'attention :** Si ce segment OBX est renseigné,le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR pour l'envoi par MSSanté au patient. A défaut, dans le cadre d'une suppression ou d'un remplacement de document, le GESTIONNAIRE renseigne un corps de mail par défaut. 

Quelques exemples sont disponibles [ici](exemples.md).

##### Le message d’acquittement du message HL7v2 

Après réception du message ORU/MDM, le Gestionnaire va acquitter ce message HL7.

###### Profil du message ACK

Le profil du message ACK est le suivant :

* Segment: MSH
  * Meaning: Message header
  * Usage: R
  * Card.: [1..1]
  * HL7 §: 2
* Segment: [{SFT}]
  * Meaning: Software segment
  * Usage: O
  * Card.: [0..*]
  * HL7 §: 2
* Segment: [UAC]
  * Meaning: User Authentication credential- Utilisé uniquement dans la version 2.6
  * Usage: O
  * Card.: [0..1]
  * HL7 §: 2
* Segment: MSA
  * Meaning: Message Acknowledgement
  * Usage: R
  * Card.: [1..1]
  * HL7 §: 2
* Segment: [{ERR}]
  * Meaning: Error
  * Usage: C
  * Card.: [0..*]
  * HL7 §: 2

###### Structure fonctionnelle du message ACK

La structure du message ACK est représentée ci-dessous :

**Figure 19 : Structure fonctionnelle du message ACK**

Ces segments doivent être conformes au standard HL7v2.5 pour le message ORU et HL7v2.6 pour MDM.

###### Description des contraintes à appliquer sur l’acquittement

**Segment MSH**

Le segment MSH reprend une partie des informations du message initial :

* Message initial: Champ
  * Message d'acquittement: Description
  * ?: Champ
  * ?: Description
* Message initial: [MSH.3](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3) - Sending Application​
  * Message d'acquittement: Application source du message à acquitter
  * ?: [MSH.5](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5) - Receiving Application​
  * ?: Application destinatrice de l'acquittement
* Message initial: [MSH.4](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4) - Sending Facility​
  * Message d'acquittement: Etablissement source du message à acquitter
  * ?: [MSH.6](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6) - Receiving Facility​
  * ?: Etablissement destinataire de l'acquittement
* Message initial: [MSH.5](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5) - Receiving Application​
  * Message d'acquittement: Application destinatrice du message à acquitter
  * ?: [MSH.3](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3) - Sending Application​
  * ?: Application source de l'acquittement
* Message initial: [MSH.6](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6) - Receiving Facility​
  * Message d'acquittement: Etablissement destinataire du message à acquitter
  * ?: [MSH.4](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4) - Sending Facility​
  * ?: Etablissement source de l'acquittement
* Message initial: [MSH.11](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11) - Processing Id​
  * Message d'acquittement: Identifiant de traitement
  * ?: [MSH.11](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11) - Processing Id​
  * ?: Identifiant de traitement

Le segment MSH doit être conforme au standard HL7v2.5 ou HL7v2.6 selon le type du message (ORU ou MDM) :

* Champ: MSH-1
  * Contenu: | séparateur de champ
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-2
  * Contenu: ^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-3
  * Contenu: Application émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-4
  * Contenu: Organisation émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-5
  * Contenu: Application réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-6
  * Contenu: Organisation réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-7
  * Contenu: Date/time du message
  * Type donnée: TS
  * Caractère optionnel/obligatoire: R
* Champ: MSH-9
  * Contenu: Type du message, selon l'évènement du message initial : ACK^R01^ACK ACK^T02^ACK ACK^T04^ACK ACK^T10^ACK 
  * Type donnée: MSG
  * Caractère optionnel/obligatoire: R 
* Champ: MSH-10
  * Contenu: Identifiant du message
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-11
  * Contenu: Processing Id P : en production T : message de test D : environnement de debug 
  * Type donnée: PT
  * Caractère optionnel/obligatoire: R
* Champ: MSH-12
  * Contenu: Version du standard 2.5 pour ORU 2.6 pour MDM 
  * Type donnée: VID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-17
  * Contenu: FRA
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-18
  * Contenu: Jeux de caractères, valeurs possibles :UNICODE UTF-8 ou 8859/15
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R

**Segment MSA**

* Champ requis: [MSA.1](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.1) - Acknowledgment Code
  * Contenu: Code d'acquittement du message autorisé :· AA(Original mode: Application Accept - Enhanced mode: Application acknowledgment: Accept) : le message a été compris et intégré par l'application destinatrice qui prend la responsabilité du message et libère ainsi l'application productrice de toute obligation de le renvoyer.· AE (Original mode: Application Error - Enhanced mode: Application acknowledgment: Error) : le message contient des erreurs de syntaxe. · AR (Original mode: Application Reject - Enhanced mode: Application acknowledgment: Reject)  : le message est rejeté pour une raison circonstancielle. Il peut être réémis plus tard. 
* Champ requis: [MSA.2](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.2) - Message Control Id
  * Contenu: Rappel l'identifiant du message acquitté correspondant au champ MSH.10 du message initial.

** Segment ERR**

Ce segment est utilisé au niveau des messages d’acquittement dans le cas où le champ MSA-1 prend la valeur AE (Application error) ou AR (Application reject).

Le tableau ci-dessous liste les champs à renseigner pour le segment ERR :

* Champ: ERR-2
  * Contenu: Localisation de l'erreur dans le cas d'une erreur de syntaxe du message initial.
  * Type donnée: ERL
  * Caractère optionnel/obligatoire: O
* Champ: ERR-3
  * Contenu: Code erreur HL7 dont les valeurs sont à prendre dans la table HL7 0357 (nom symbolique messageErrorCondition)
  * Type donnée: CWE
  * Caractère optionnel/obligatoire: R
* Champ: ERR-4
  * Contenu: Sévérité de l'erreur dont les valeurs sont à prendre dans la table HL7 0516 (nom symbolique errorSeverity)
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R

**Exemple**

Entête MSH d’un message MDM ou ORU émis par le CREATEUR :

```
MSH|^~\&|SIL|CHU_X|PFI|CHU_X|202310030830||ORU^R01^ORU_R01|12345|P|2.5|||||FRA|8859/15|||2.1^ CISIS_CDA_HL7_V2

```

Un acquittement positif retourné par le GESTIONNAIRE :

```
MSH|^~\&|PFI|CHU_X|SIL|CHU_X|202310030831||ACK^R01^ACK|12346|P|2.5|||||FRA|8859/15
MSA|AA|12345


```

Un acquittement négatif retourné par le GESTIONNAIRE : version d’HL7 inconnue

```
MSH|^~\&|PFI|CHU_X|SIL|CHU_X|202310030831||ACK^R01^ACK|12347|P|2.5|||||FRA|8859/15
MSA|AE|12345
ERR||MSH^1^12|203^ Unsupported version^messageErrorCondition| E


```

#### Description des messages HL7 d’accusés métier

##### Evènements déclenchants des messages d’accusés métier HL7v2

Après réception du (des) document(s), le GESTIONNAIRE le(s) distribue(nt) au consommateur de documents (DMP/MSSanté). Lorsque le GESTIONNAIRE reçoit un retour du consommateur, il en informe le CREATEUR au moyen d’accusés métier HL7.

A noter qu’aucun accusé de réception métier n’est prévu dans la spécification lors de la réception par la DRIMbox Source du message HL7v2 ORU ou MDM avec le Compte-Rendu d’Imagerie. Par contre, un message d’acquittement technique ([voir section dédiée](volume2.md#le-message-dacquittement-du-message-hl7v2)) permettra à la DRIMbox de communiquer au GESTIONNAIRE qu’elle a bien pris la responsabilité des traitements associés au compte-rendu qui lui a été transmis (AA (Original mode: Application Accept - Enhanced mode: Application acknowledgment: Accept dans MSA-1)).

Pour couvrir ce besoin de retour d’accusés métiers, un nouveau type de message HL7 a été créé : HL7v2.6 ZAM – Accusé Métier.

Ce type de message est utilisé par trois évènements différents :

* Flux métier: AccuseMetierReceptionDMP : Accusé de réception de(s) document(s) par le DMP.
  * Evènement déclenchant au niveau du GESTIONNAIRE: Réception du retour du DMP (Provide And Register Document Set-b Response)
  * Message métier HL7: - ZAM : L'évènement utilisé sera le Z01« Accusé de réception DMP »-> ZAM^Z01^ZAM_Z01
* Flux métier: AccuseMetierReceptionMSS : Accusé de réception de la demande par le serveur de messagerie du destinataire MSSanté
  * Evènement déclenchant au niveau du GESTIONNAIRE: Réception du message DSN (RFC 3461 à 3464 et 6522)
  * Message métier HL7: - ZAM : L'évènement utilisé sera le Z02« Accusé de réception MSSanté »-> ZAM^Z02^ZAM_Z01
* Flux métier: AccuseMetierLectureMSS : Accusé de lecture du courriel (traitement automatique du courriel ou lecture du courriel par un utilisateur dans sa boîte aux lettres)
  * Evènement déclenchant au niveau du GESTIONNAIRE: Réception du courriel MDN (RFC 8098)
  * Message métier HL7: - ZAM : L'évènement utilisé sera le Z03« Accusé de lecture MSSanté »-> ZAM^Z03^ZAM_Z01

##### Structure des messages accusés métier HL7

L’accusé de réception du document par le DMP, l’accusé de réception du courriel MSSanté et l’accusé de lecture MSSanté seront transmis en utilisant la structure de message HL7v2.6 ZAM_Z01 :

**Figure 20 : Structure fonctionnelle des messages accusé métier**

Ces segments doivent être conformes au standard HL7v2.6. Les contraintes concernant les segments en rouge sur le schéma sont décrites dans la section suivante.

##### Description des contraintes à appliquer sur les accusés métiers

Pour l’ensemble des OBX listés dans cette section, le champ OBX-3 prend ses valeurs dans la table « AckMetierZAM » disponible [ici](ack-metier-zam.md).

###### Contraintes à appliquer au message ZAM^Z01^ZAM_Z01 - Accusé de réception DMP

**Segment MSH**

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de ces spécifications, le champ MSH-9 « Message Type » prend la valeur `ZAM^Z01^ZAM_Z01`.

* Champ: MSH-1
  * Contenu: | séparateur de champ
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-2
  * Contenu: ^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-3
  * Contenu: Application émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-4
  * Contenu: Organisation émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-5
  * Contenu: Application réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-6
  * Contenu: Organisation réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-7
  * Contenu: Date/time du message
  * Type donnée: TS
  * Caractère optionnel/obligatoire: R
* Champ: MSH-9
  * Contenu: Type du message : ZAM^Z01^ZAM_Z01
  * Type donnée: MSG
  * Caractère optionnel/obligatoire: R
* Champ: MSH-10
  * Contenu: Identifiant du message
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-11
  * Contenu: Processing Id P : en production T : message de test D : environnement de debug 
  * Type donnée: PT
  * Caractère optionnel/obligatoire: R
* Champ: MSH-12.1
  * Contenu: Version du standard 2.6
  * Type donnée: VID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-17
  * Contenu: FRA
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-18
  * Contenu: Jeux de caractères, valeurs possibles :UNICODE UTF-8 ou 8859/15
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.1
  * Contenu: Version du présent volet du CI_SIS :2.1 
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.2
  * Contenu: Identifiant du profil de message :CISIS_CDA_HL7_V2
  * Type donnée: IS
  * Caractère optionnel/obligatoire: R

**Segment OBX portant le statut de d’accusé de réception**

Le premier segment OBX renseigne le statut de l’accusé de réception :

* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment1
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?: CWE (Coded with Exceptions)
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-3 
  * ?: Observation Identifier
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Identifier
  * ?: ACK_RECEPTION_DMP
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Text
  * ?: Accusé de réception DMP
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Name of Coding system
  * ?: AckMetierZAM
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-4
  * ?: Observation Sub-ID
  * ?: Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Statut de l'accusé de réception - Table HL7 : 0136 :- Y (Yes) ->Succès- N (No) -> Erreur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

**Segment ERR**

Si une erreur intervient lors du dépôt du document sur le DMP, ce segment contient sa description.

* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 3
  * ?: Hl7 Error Code
  * ?: 207^Application error^messageErrorCondition
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 4
  * ?: Severity
  * ?: Error, Fatal Error, Information, Warning
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 5
  * ?: Application Error Code (CWE)
  * ?: Code erreur de DMP à Utiliser les codes et libellés de codes de l'annexe A7-1 « Liste des codes d'erreurs » de la spécification « [Service DMP intégré aux LPS » v.2.10.0](https://industriels.sesam-vitale.fr)Code^libellé du code^DMP_ERROR_CODE

###### Contraintes à appliquer au message ZAM^Z02^ZAM_Z01 – Accusé de réception MSSanté

**Segment MSH**

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de ces spécifications, le champ MSH-9 « Message Type » prend la valeur `ZAM^Z02^ZAM_Z01`.

* Champ: MSH-1
  * Contenu: | séparateur de champ
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-2
  * Contenu: ^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-3
  * Contenu: Application émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-4
  * Contenu: Organisation émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-5
  * Contenu: Application réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-6
  * Contenu: Organisation réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-7
  * Contenu: Date/time du message
  * Type donnée: TS
  * Caractère optionnel/obligatoire: R
* Champ: MSH-9
  * Contenu: Type du message : ZAM^Z02^ZAM_Z01
  * Type donnée: MSG
  * Caractère optionnel/obligatoire: R 
* Champ: MSH-10
  * Contenu: Identifiant du message
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-11
  * Contenu: Processing Id P : en production T : message de test D : environnement de debug 
  * Type donnée: PT
  * Caractère optionnel/obligatoire: R
* Champ: MSH-12.1
  * Contenu: Version du standard 2.6
  * Type donnée: VID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-17
  * Contenu: FRA
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-18
  * Contenu: Jeux de caractères, valeurs possibles :UNICODE UTF-8 ou 8859/15
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.1
  * Contenu: Version du présent volet du CI_SIS :2.1 
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.2
  * Contenu: Identifiant du profil de message :CISIS_CDA_HL7_V2
  * Type donnée: IS
  * Caractère optionnel/obligatoire: R

** Segment OBX portant le statut de d’accusé de réception**

Le premier segment OBX renseigne le statut de l’accusé de réception MSSanté :

* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment1
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?: CWE
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-3 
  * ?: Observation Identifier
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Identifier
  * ?: ACK_RECEPTION_MSS
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Text
  * ?: Accusé de réception MSSanté
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Name of Coding system
  * ?: AckMetierZAM
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-4
  * ?: Observation Sub-ID
  * ?: Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Statut de l'accusé de réception - Table HL7 : 0136 :- Y (Yes) ->Succès- N (No) -> Erreur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

** Segment OBX portant les informations du destinataire MSSanté**

Le deuxième segment OBX renseigne les informations du destinataire du courriel MSSanté :

* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment 2
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?: XTN
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-3 
  * ?: Observation Identifier
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Identifier
  * ?: DESTINATAIRE_MSS
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Text
  * ?: Destinataire MSSanté
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Name of Coding system
  * ?: AckMétierZAM
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-4 (optionnel)
  * ?: Observation Sub-ID
  * ?: Indiquer l'identifiant du destinataire
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Telecommunication Equipment Type
  * ?: X.400 (X.400 email address)
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.4
  * ?: Communication Address
  * ?: Intégrer l'adresse MSSanté du destinataire
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

** Segment ERR**

Si une erreur intervient lors de la distribution du ou des document(s) par MSSanté dans le serveur de messagerie du destinataire MSSanté, ce segment contient sa description.

* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 3
  * ?: Hl7 Error Code
  * ?: 207^Application error^messageErrorCondition
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 4
  * ?: Severity
  * ?: Error, Fatal Error, Information, Warning
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 5
  * ?: Application Error Code
  * ?: Code erreur de MSSanté. Cf [Table « SMTPERRORCODE »](error-codes.md#table--smtperrorcode-)Code SMTP^libellé du code^SMTPERRORCODE

###### Contraintes à appliquer au message ZAM^Z03^ZAM_Z01 – Accusé de lecture MSSanté

** Segment MSH**

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de ces spécifications, le champ MSH-9 « Message Type » prend la valeur `ZAM^Z03^ZAM_Z01`.

* Champ: MSH-1
  * Contenu:  | séparateur de champ
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-2
  * Contenu:  ^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-3
  * Contenu: Application émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-4
  * Contenu: Organisation émettrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-5
  * Contenu: Application réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-6
  * Contenu: Organisation réceptrice
  * Type donnée: HD
  * Caractère optionnel/obligatoire: R
* Champ: MSH-7
  * Contenu: Date/time du message
  * Type donnée: TS
  * Caractère optionnel/obligatoire: R
* Champ: MSH-9
  * Contenu: Type du message : ZAM^Z03^ZAM_Z01
  * Type donnée: MSG
  * Caractère optionnel/obligatoire: R 
* Champ: MSH-10
  * Contenu: Identifiant du message
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-11
  * Contenu: Processing Id P : en production T : message de test D : environnement de debug 
  * Type donnée: PT
  * Caractère optionnel/obligatoire: R
* Champ: MSH-12.1
  * Contenu: Version du standard 2.6
  * Type donnée: VID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-17
  * Contenu: FRA
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-18
  * Contenu: Jeux de caractères, valeurs possibles :UNICODE UTF-8 ou 8859/15
  * Type donnée: ID
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.1
  * Contenu: Version du présent volet du CI_SIS :2.1 
  * Type donnée: ST
  * Caractère optionnel/obligatoire: R
* Champ: MSH-21.2
  * Contenu: Identifiant du profil de message :CISIS_CDA_HL7_V2
  * Type donnée: IS
  * Caractère optionnel/obligatoire: R

** Segment OBX portant le statut de d’accusé de lecture MSSanté**

Le premier segment OBX renseigne le statut de l’accusé de lecture :

* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment1
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?: CWE
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-3 
  * ?: Observation Identifier
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Identifier
  * ?: ACK_LECTURE_MSS
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Text
  * ?: Accusé de lecture
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Name of Coding system
  * ?: AckMetierZAM
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-4
  * ?: Observation Sub-ID
  * ?: Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.1
  * ?: Code :
  * ?: Statut de l'accusé de lecture - Table HL7 : 0136 :- Y (Yes) ->Succès- N (No) -> Erreur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Name Of Coding System
  * ?: expandedYes-NoIndicator
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

**Segment OBX portant les informations du lecteur**

Le deuxième segment OBX renseigne les informations du lecteur du courriel MSSanté :

* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-1
  * ?: Set Id - Obx
  * ?: Numéro de séquence du segment2
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-2 
  * ?: Value Type
  * ?: XTN
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-3 
  * ?: Observation Identifier
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.1 
  * ?: Identifier
  * ?: LECTEUR_MSS
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.2 
  * ?: Text
  * ?: Lecteur du courriel MSSanté
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-3.3
  * ?: Name of Coding system
  * ?: AckMetierZAM
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-4 (optionnel)
  * ?: Observation Sub-ID
  * ?: Indiquer l'identifiant du professionnel de santé
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-5
  * ?: Observation Value
  * ?:  
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.3
  * ?: Telecommunication Equipment Type
  * ?: X.400 (X.400 email address)
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: > OBX-5.4
  * ?: Communication Address
  * ?: Intégrer l'adresse de la BAL qui a lu le courriel.
* Composition du segment OBX : Usage = Required / Cardinalité = [1..1]: OBX-11
  * ?: Observation Result Status
  * ?: Valeur fixée à « F » 

**Segment ERR**

Si une erreur intervient lors du traitement de la demande réceptionnée par le destinataire, ce segment contient sa description.

* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): Champ requis
  * ?: Description
  * ?: Valeur
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 3
  * ?: Hl7 Error Code
  * ?: 207^Application error^messageErrorCondition
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 4
  * ?: Severity
  * ?: Error, Fatal Error, Information, Warning
* Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N): ERR - 5
  * ?: Application Error Code (CWE)
  * ?: Sélection d'un code erreur dans la table HL70533 (nom symbolique : applicationErrorCode) à Utiliser les codes et libellés de [Codes erreurs de l'accusé métier de lecture/traitement de la demande](error-codes.md#codes-erreurs-de-laccus%C3%A9-m%C3%A9tier-de-lecturetraitement-de-la-demande).Code^libellé du code^applicationErrorCondition

Seules les erreurs de niveau applicatif du traitement automatique sur le document au niveau du destinataire final sont remontées au travers du courriel MDN et réceptionnées par le GESTIONNAIRE (la PFI expéditrice). Les erreurs de type technique (erreurs de syntaxe du message HL7) sont généralement traitées localement, côté du destinataire, par une des intervenants techniques. Dans ces conditions, le segment ERR-3 prend la valeur 207 et le segment ERR-5 contient l’erreur applicative remontée au travers du courriel MDN. Le message HL7 `ZAM^Z03^ZAM_Z01` est généré ple GESTIONNAIRE à partir des informations contenues dans le courriel MDN (cf structure du MDN – Message Disposition Notification) décrit en Annexe du volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) ».

>  Dans le cas où un MDN (Message Disposition Notification) n'a pas été explicitement demandé par le destinataire (via l'entête `Disposition-Notification-To` dans le message d'origine), et que, pour pouvoir gérer toutes les erreurs, on souhaite utiliser une BAL dédiée, un courriel 'standard' peut être utlisé. La structure du courriel est précisée en annexe du volet [Transmission au LPS d'un document CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante). 
 

##### Message d’acquittement technique des accusés métiers

Le message d’acquittement est identique à celui spécifié dans la [partie dédiée](volume2.md#le-message-dacquittement-du-message-hl7v2), à l’exception du champ MSH-9 qui prend la valeur `ACK^Z01^ACK` ou `ACK^Z02^ACK` ou `ACK^Z03^ACK` selon l’évènement du message initial.

### Règles de gestion MSSANTE

Ci-dessous la matrice de gestion pour les échanges MSSanté suivant les OBX valorisés. Le tableau présente une liste exhaustive des combinaisons possibles des OBX pour l’échange MSSANTE. Les cas non représentés génèrent un message d’erreur.

* Balises OBX: MASQUE_PS : NINVISIBLE_PATIENT : NINVISIBLE_REP_LEGAUX : NCONNEXION_SECRETE : NMODIF_CONF_CODE : N ou YDESTDMP : N ou YDESTMSSANTEPS : Y DESTMSSANTEPAT : YACK_RECEPTION : N ou YACK_LECTURE_MSS : N ou Y
  * Echange MSSANTE: Envoi du document sur la boite MSSanté du PS/organisation/BAL applicative du destinataire et du Patient
* Balises OBX: MASQUE_PS :Y ou N<INVISIBLE_PATIENT : YINVISIBLE_REP_LEGAUX : NCONNEXION_SECRETE : NMODIF_CONF_CODE : N ou YDESTDMP : N ou YDESTMSSANTEPS : Y DESTMSSANTEPAT : NACK_RECEPTION : N ou YACK_LECTURE_MSS : N ou Y
  * Echange MSSANTE: Envoi du document sur la boite MSSanté du PS/organisation/BAL applicative du destinataire
* Balises OBX: MASQUE_PS : Y ou NINVISIBLE_PATIENT : NINVISIBLE_REP_LEGAUX : N ou YCONNEXION_SECRETE : NMODIF_CONF_CODE : N ou YDESTDMP : NDESTMSSANTEPS : N DESTMSSANTEPAT : YACK_RECEPTION : N ou YACK_LECTURE_MSS : N ou Y
  * Echange MSSANTE: Envoi du document sur la boite MSSanté du patient

