# Historique des versions - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Historique des versions**

## Historique des versions

### version 2.1.2

**Version mineure sans impact sur le développement (corrections de typo, précisions ou ajout d’informations)**

* Ajout de la possibilité d’utiliser un courriel standard à la place du MDN pour la gestion des erreurs ([41](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/41)) 
* ajout d’une note pour décrire le [cas d’usage](volume1.md#cas-dusage)
* ajout du lien vers l’annexe du volet Transmission au LPS de documents CDA provenant d’un courriel MSSanté
* suppression de l’annexe décrivant le MDN pour renvoyer vers l’annexe du volet Transmission au LPS de documents CDA provenant d’un courriel MSSanté
 
* Correction PRT-8.7 : Ajout du code IDNST suite à l’évolution du volet InteropSanté [profils des messages](volume2.md#profils-de-messages) ([47](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/47))
* Correction PRT-5.13 : Ajout du code IDNPS suite à l’évolution du volet InteropSanté [profils des messages](volume2.md#profils-de-messages) ([43](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/43))
* Précisions apportées pour PRT-5.9 [profils des messages](volume2.md#les-données-concernant-la-demande-de-traitement-sur-les-documents) ([50](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/50))
* Ajout du code 906 ‘autres type d’erreur’ dans l’annexe [Error codes](error-codes.md) ([45](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/45))

### version 2.1.1

**Version mineure sans impact sur le développement (changement de format, corrections de typo, précisions ou ajout d’informations)**

* Modification du format du volet : passage du format PDF au format guide d’implémentation ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
* Avant-propos : suppression d’une ligne vide du tableau des conventions HL7, IHE ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
* Ensemble du document : 
* remplacement adresse courriel adam.hoda@medecin.mssante.fr par adam.hoda@test-ci-sis.mssante.fr ([10](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/10))
* remplacement de message MDN par MDN (qui signifie d’emblée Message Disposition Notification) ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
 
* Volume 1 Etude fonctionnelle 
* remplacement du terme « section » par « volume 2 » ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
* cas d’usage, remplacement des termes « Guide d’implémentation du DMP » par « Guide d’intégration du DMP » ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
 
* Volume 2 Etude technique 
* [Choix des standards](volume2.md#choix-des-standards) : suppression de la phrase « Les échanges MSSanté doivent prendre en compte les restrictions positionnées sur le message. (Exemple : un document avec un masquage Médecin ne doit pas être envoyé sur le mail MSSanté du médecin). » qui n’a pas de rapport avec le choix des standards. ([4](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/4))
* [Profils des messages](volume2.md#echange-mssanté-patient): précision sur l’utilisation du code FIN dans NTE-4 dans l’OBX dans le contexte de l’“Echange MSSanté Patient” ([21](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/21))
* [Profils des messages](volume2.md#document-masqué-aux-professionnels-de-santé): suppression de la phrase et du point d’attention “un document clinique masqué aux PS ne doit pas être envoyé aux PS par MSSanté.” car les envois DMP et MSS aux PS correspondent à des cas d’usages différents qui justifient d’avoir leurs propres règles sans que les impératifs de l’un ne s’impose à l’autre. ([5](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/5))
* [Profils des messages](volume2.md#alimentation-dmp): Ajout du Point d’attention : Un document ayant un niveau renforcé de confidentialité (restreint ou très restreint) ne devrait pas être mis en partage. ([15](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/15))
* correction typos/cohérence pour le type message en MSH-9.3 ([13](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/13)): 
* dans [Implémentation du message MDM et de ses acquittements métier HL7](volume2.md#implémentation-du-message-mdm-et-de-ses-acquittements-métier-hl7)
* dans les diagrammes “[Demande de remplacement d’un document](volume2.md#demande-de-remplacement-dun-document)” et “[Demande de suppression d’un document](volume2.md#demande-de-suppression-dun-document)”
* dans les [profils des messages](volume2.md#le-segment-msh--header-du-message)
 
* [correction exemples de messages d’acquittements de l’ORU ou du MDM](volume2.md#description-des-contraintes-à-appliquer-sur-lacquittement) : Suppression dans les exemples du MSH-21.1 et MSH-21.2 car les Ack n’ont pas de contraintes particulières par rapport à la spécification international d’un Ack ([3](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/pull/3))
* Déplacement du paragraphe “Lien entre l’EN-TETE CDA et les métadonnées XDS” (page 52 dans la version précédente du volet) dans Volume 3 Annexes ([37](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/37))
 
* Volume 3 Annexes 
* [Ajout mapping VIHF et Metadata XDS](mapping.md) ([8](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/8))
* [Ajout mapping message MSS](mapping.md#mapping-message-mss) ([28](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/28))
* [Ajout du code erreur 905](error-codes.md#codes-erreurs-de-laccusé-métier-de-lecturetraitement-de-la-demande) ([33](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/33))
 

### Rappel de l’historique des anciennes versions au format PDF (avant novembre 2024)

Ici nous rappelons l’historique des précédentes versions. Cet historique est également disponible dans la dernière version du volet au format pdf : [ANNEXE 9 du doument CI_SIS-SERVICES_VOLET_TRANS_DOCS_CDA_EN_HL7V2_V2.1_Post_PAT_CONCERTATION_FINAL_0.pdf](https://esante.gouv.fr/sites/default/files/media_entity/documents/CI_SIS-SERVICES_VOLET_TRANS_DOCS_CDA_EN_HL7V2_V2.1_Post_PAT_CONCERTATION_FINAL_0.pdf)

* Version: 0.6
  * Rédigé par: ANS
  * Vérifié par: Le 26/05/2021
  * Validé par: ANS
  * ?: Le 10/06/2021
  * ?: ANS
  * ?: Le 26/05/2021
* Version: Motif et nature de la modification :**Création du document / Partage du Documents auprès des éditeurs des Task-Forces du SEGUR du Numérique**
* Version: 1.0
  * Rédigé par: ANS
  * Vérifié par: Le 10/06/2021
  * Validé par: ANS
  * ?: Le 10/06/2021
  * ?: ANS
  * ?: Le 10/06/2021
* Version: Motif et nature de la modification : **Version validée suite aux retours des éditeurs**
* Version: 1.1
  * Rédigé par: ANS
  * Vérifié par: Le 02/09/2021
  * Validé par: ANS
  * ?: Le 02/09/2021
  * ?: ANS
  * ?: Le 02/09/2021
* Version: Motif et nature de la modification : **Modification de la casse sur certains OBX Mise en œuvre de la syntaxe Xpath pour la valorisation des exemples de mails dans le CDA-R2 Ajout d'une précision sur le point 4.4 à propos du transport de plusieurs documents et la messagerie MSSanté**
* Version: 1.2
  * Rédigé par: ANS
  * Vérifié par: Le 22/12/2022
  * Validé par:  
  * ?:  
  * ?:  
  * ?:  
* Version: Motif et nature de la modification :· Changement de titre du volet : « Transmission de documents CDA en HL7v2 »· Mise à jour des diagrammes de cas d'utilisation· Les cas d'usage de remplacement et suppression d'un document via MSSanté ont été précisés.· Le processus « Remplacement d'un document » prend en charge la mise à jour du document, le masquage/démasquage d'un document au patient, la possibilité de rendre visible le document au patient, la possibilité de rendre visible un document aux représentants légaux.· Suppression du processus « Rendre un document visible au patient » · Correction de la métadonnée « INVISIBLE_REPRENSANTS_LEGAUX » en « INVISIBLE_REPRESENTANTS_LEGAUX ».· Correction de l'exemple 7· Utilisation du datatype CWE pour le message MDM (le datatype CE n'existant plus en HL7v2.6)· Réorganisation de la partie 4. Spécification technique des messages· Messages initiaux :o Ajout de la structure des messages ORU_R01, OUL_R22 et MDM_T02.o Les champs PID-18 (numéro de venue pour les hospitalisations), PV1-19 (numéro de venues récurrentes ou de consultation), PV1-44 et PV1-45 (respectivement la date d'entrée et la date de sortie) sont requis si connu afin de pouvoir calculer les indicateurs exigés en SEGUR 1.o Ajout de la version du profil utilisé dans le champ MSH-12.o Pré-adoption du segment PRT de la version 2.9 du standard afin de transmettre l'adresse mail sur laquelle le destinataire peut répondre.o Ajout de métadonnées optionnelles : CORPSMAIL_PS et CORPSMAIL_PATIENT.o Mises à jour des exemples.· Ajout du message d'acquittement
* Version: 2.0
  * Rédigé par: ANS
  * Vérifié par: Le 24/04/2023
  * Validé par: ANS
  * ?: Le 26/04/2023
  * ?: ANS
  * ?: Le 26/04/2023
  * ?:  
* Version: Motif et nature de la modification :· Suppression du message OUL· Possibilité de transmettre au format CDA-R2 niveau 1 et CDA-R2 niveau 3 un même document dans un même message HL7v2 ORU. Le message HL7v2 MDM ne peut transmettre qu'un seul document.· Pré-adoption du segment PRT de la version 2.9 du standard afin de transmettre l'adresse mail des destinataires MSSanté et les informations de l'expéditeur.· Ajout de la valeur FIN dans le segment NTE suivant le segment OBX permettant de spécifier l'envoi du message MSSanté vers le patient. Le mot FIN permet au PS d'indiquer qu'il ne souhaite pas que le patient lui réponde.· Modification du libellé du code « DESTMSSANTEPS » en « Destinataire (Professionnel de Santé, organisation ou BAL applicative) »· Ajout de la métadonnée ACK_RECEPTION indiquant si l'utilisateur souhaite recevoir un accusé de réception· Ajout de la métadonnée ACK_LECTURE indiquant si l'utilisateur souhaite recevoir un accusé de lecture· Ajout de l'envoi des accusés métier DMP/MSSanté· Ajout de l'acteur DRIMBox-Source comme gestionnaire de documents· La métadonnée « INVISIBLE_REPRESENTANTS_LEGAUX » a été renommé en « INVISIBLE_REP_LEGAUX » afin de respecter le nombre maximum de 20 caractères· La métadonnée « MODIF_CONFIDENTIALITYCODE » a été renommé en « MODIF_CONF_CODE » afin de respecter le nombre maximum de 20 caractères· Création des tables « MétaDMP/MSS » et « AckMetierZAM »
  * Rédigé par:  
* Version: 2.1
  * Rédigé par: ANS
  * Vérifié par: Le 20/10/2023
  * Validé par: ANS
  * ?: Le
  * ?: ANS
  * ?: Le
  * ?:  
* Version: Motif et nature de la modification : modifications après projectathon pour passage en concertation publique· Ajout de l'étude fonctionnelle et réorganisation des chapitres pour intégrer les aspects fonctionnels dans une section dédiéeo Section 2 : rédaction des cas d'usageo Section 3 : organisation du contexte métiero Section 4 : définition des acteurs, des transactions et tableau des Acteurs/Transactions. Précision apportée sur l'évolution SEGUR qui consiste à intégrer le PDF (Document remis au patient sous forme papier) dans une section dédiée du CDA Niv3. Néanmoins, la possibilité de transmettre 2 formats de documents dans la transaction perdure (pour les systèmes non référencés SEGUR vague2).o Section 5 : définition des processus collaboratifs : suppression des références à l'association XFRM (lien entre CDA Niv3 et CDA Niv1)o Section 6 : ajout du diagramme des flux· Etude techniqueo Section 7 : Périmètre de la transaction. Précision apportée sur la gestion de l'accusé de lecture MSS, proposé à l'état expérimental mais qui nécessite une étude plus approfondie (remontée DPI/RISàPFIàMSSàCréateur). Etude à mener conjointement GT + ANS (Interop Technique+MSSanté) + DNSo Section 8 : rappel du rôle des acteurs dans la transactiono Section 9 : choix des standards.§ Ajout de la contrainte supplémentaire, pré adoptée de la version 2.7, sur les types de données CE et CWE : nécessité de préciser le code/nom du système de codage dont est issu le code,§ Référence la version 1.7.4 des « Contraintes sur les types de données HL7 v2.5 applicables aux profils d'intégration du cadre technique IT Infrastructure dans le périmètre d'IHE France » qui intègre l'agrandissement du champ EI-1 du type de données EI (passage de EI-1 à 199).o Section 11 : détail des diagrammes de séquence en fonction des évènements déclencheurso Section 12.1.1 : ajout de la description du profil complet du message ORU avec cardinalités des segments.o Section 12.1.1 .2 : description fonctionnelle de l'ORU :§ Le segment PRT sur le 1° groupe OBSERVATION est Conditionnel et requis (cardinalité 1..*)§ Il n'y a plus de référence au format de CDA au niveau des segments OBX§ Cardinalité passée à 10..* (au lieu de 0..*) pour les métadonnéeso Section 12.1.2 : ajout de la description du profil complet du message MDM avec cardinalités des segments.o Section 12.1.2 .2 : description fonctionnelle de MDM :§ Le segment PRT sur le 1° groupe OBXNTE est Conditionnel et requis (cardinalité 1..*)§ Il n'y a plus de référence au format de CDA au niveau du segment OBXNTE§ Cardinalité passée à 10..* (au lieu de 0..*) pour les métadonnées§ Suppression de la référence au livre blanc « Harmonisation des modalités de communication des documents médicaux » v1.0 publié par Interop'Santéo Section 12.2 Contraintes appliquées aux messages MDM et ORU : regroupement dans une section commune des contrainteso Section 12.2.3 : données concernant les demandes de traitement sur les documents§ Le 1° segment PRT permet de préciser l'expéditeur de la demande de traitement sur le document (publication/remplacement/suppression) et non pas l'auteur du document. Ceci pour générer le VIHF du PS qui demande le traitement sur le DMP.§ Les tableaux listent l'ensemble des segments et des champs requis à renseigner obligatoirement, dans l'ordre indiqué.o Section 12.2.3 : précisions sous forme d'un tableau des contraintes apportées sur le segment TXA (uniquement pour message MDM)o Section 12.2.4 : description du segment ORCo Section 12.2.5 : description du segment OBRo Section 12.2.7 : métadonnées DMP/ MSSanté : ces segments OBX sont requis (sauf les 2 derniers : corps du mail patient et PS) et doivent apparaître dans l'ordre indiqué. La valeur doit être Y ou N.§ Précision sur la valeur d'OBX-5.1o Section 12.3.2.3 : ajout de la description du segment ERR au niveau du message d'acquittement techniqueo Section 12.3.2.4 : ajout d'exemples de messages d'acquittemento Section 13 : modification du tableau, ajout de toutes les métadonnées requises· Annexe 2 et Annexe 3 : correction des exemples de messages pour tenir compte de la contrainte ajouté sur les types de données CE et CWE (code+codeSystem dont est issu le code)· Annexe 5 : proposition d'une liste de codes erreur SMTP
  * Rédigé par:  
* Version: 2.1
  * Rédigé par: ANS
  * Vérifié par: Le 19/01/2024
  * Validé par: ANS
  * ?: Le
  * ?: DNS
  * ?: Le 29/02/2024
  * ?:  
* Version: Motif et nature de la modification : Prise en compte des retours de concertation publique (27/11/2023 au 08/12/2023) et prise en compte des modifications demandées par la DNS après clôture de la période de concertation publique.· Rédaction des questions ouvertes· Section 1.1 : référence au volet Transmission d'un document CDA provenant d'un courriel MSS de façon à mettre en exergue le lien entre le présent volet et le volet référencé· Volume 1 - Etude fonctionnelleo Section 2 : complétude des cas d'usageo Section 4.1 : liste des acteurs et transactions, au niveau du CREATEUR, la demande de traitement sur le(s) document(s) est envoyée vers une BAL MSS qui n'est pas obligatoirement externe à l'établissement (elle peut être interne)o Section 4.2 : diagramme des acteurs/transactions.§ Précision apportée pour expliquer que dans le cadre du SEGUR, la transaction Provide&Register Document Set-b est implémentée par les transactions TD2.2 et TD3.3c.§ Précisions apportées sur les accusés métier de réception DMP, réception MSS et accusé de lecture MSSo Section 4.3 : regroupement des acteurs§ Groupement de l'acteur CREATEUR avec l'acteur IHE Content Creator§ L'acteur GESTIONNAIRE fait référence au GI DMP dans le contexte du SEGURo Section 5 : améliorations de rédaction des processus. Précision, dans le cadre du SEGUR, le PDF est inclus dans une section dédiée du CDA Niv3· Volume 2 - Etude techniqueo Section 8 : rôle des acteurs, préciser au niveau de l'acteur CREATEUR que le retour des messages métiers n'est pas obligatoire dans le volet (obligatoires dans le cadre du SEGUR vague 2)o Section 9 : choix des standards§ Référencement de la version 2.11 de la version française PAM.FR§ Référencement de la version 1.8 des types de données HL7 en France (passage de la longueur du champ ED-1 de 16 caractères à 128 caractèreso Section 11.2 : implémentation du message ORU. Ajout d'une phrase en dessous de la figure 14 pour expliquer que le type de demande de traitement du document est porté en particulier par le champ OBX-11. La figure 14 n'a pas été dupliquée pour chaque cas d'usage (demande d'intégration, de remplacement ou de suppression de(s) document(s)o Section 11.3 : ajout des diagrammes de séquence pour le message MDMo Section 12.1.1.1 : modification du profil de message ORU, suppression du segment SPECIMEN,o Section 12.2.2 : segment PV1, les champs sont requis si connus pour permettre le calcul des indicateurs dans toute situation, non pas uniquement dans le contexte du SEGUR.o Section 12.2.4 : segment ORC, préciser que la valeur ORC-1 doit être cohérente avec la valeur du champ OBX-11o Section 12.2.6 : OBX contenant le document et la demande de traitement sur le document.§ Précision pour expliquer qu'il est préférable de renseigner uniquement les champs spécifiés dans cette section, de façon à ne pas introduire d'incohérences entre le message HL7 et le contenu du document CDA. En cas de précision d'autres éléments, le destinataire n'a pas l'obligation d'analyser ces champs supplémentaires.§ Précision apportée sur le PRT destinataire : le destinataire peut être le patient§ Ajout du champ PRT-8.1 (nom de l'organisation) sur l'expéditeur et le destinataire.§ PRT-4 : nom de table HL70136 remplacé par « participation »§ Exemple pour un CR d'imagerie : ajout de l'identifiant du PSo Section 12.2.8.3.1 : suppression de la référence au profil de message CISIS_CDA_HL7_V2 au niveau du champ MSH-21 du message d'acquittement. MSH-18 : possibilité d'utiliser les 2 valeurs UNICODE UTF-8 ou 8859/15 quelle que soit la version d'HL7o Segment 12.3.3.4 : ajout du segment ERR au message ZAM-Z03· Annexe 2 et Annexe 3 : ajout de l'identifiant du PS dans les exemples et modification des exemples pour prendre en compte les modifications apportées par cette version· Annexe 5 : proposition d'une table des codes d'erreur MSSanté· Annexe 6 : table des erreurs de traitement du message HL7 MDM du volet « Transmission au LPS d'un document CDA provenant d'un courriel MSSanté »
  * Rédigé par:  
* Version: 2.1
  * Rédigé par: ANS
  * Vérifié par: Le
  * Validé par: ANS
  * ?: Le
  * ?: DNS
  * ?: Le
  * ?:  
* Version: Motif et nature de la modification : Prise en compte des retours de concertation (4 au 18 mars 2024)· Ajout du paragraphe 1.2 : ce dont ne traite pas ce volet· Partie fonctionnelleo Cas d'usage 2.1 : correction de l'adresse mail du Dr Dupont : [jean.dupont@hopital-A.mssante.fr](mailto:jean.dupont@hopital-A.mssante.fr)o Cas d'usage 2.2 : précision apportée : Le laboratoire d'analyse ainsi que le CH Martin sont dotés de PFI qui gèrent l'échange de courriel entre la BAL applicative du laboratoire et la BAL applicative du DPI de l'établissement consommateur.o Paragraphe 2.3.1 : cas d'usage, transmission d'une BAL orga vers une BAL orga : précisions apportées sur le point d'attention juste avant la figure 4.o Paragraphe 3.2 : processus, précisions apportées sur la mise à jour des métadonnées du document qui en France est limitée à la mise à jour des informations de masquage aux PS et de visibilité au patient ainsi qu'au statut du document.o Paragraphe 4.2 : acteurs/transactions.§ La transaction Provide&Register Document set-b est mise en œuvre via les transactions TD2.1 ou TD2.2 dans le cadre de l'alimentation du DMP.§ Suppression du caractère expérimental de l'accusé de lecture à la demande de la DNS. La réflexion concernant cet accusé de lecture est portée par le cas d'usage 2.3o Paragraphe 5.1, 5.2 et 5.3 : processus collaboratifs§ Précision apportée pour la transmission via MSSanté : l'INS qualifié n'est pas obligatoire.· Partie techniqueo Paragraphe 12.1.1 et 12.2.1 : modification des profils de message ORU et MDM§ Le segment PRT est conditionnel et requis, il doit exister au moins un expéditeur ou un destinataire (en fonction de la demande exprimée par le créateur). La cardinalité du PRT passe de [0..*] à [1..*]o Paragraphe 12.2.3 : segment TXA§ Ajout des règles de peuplement des sous champs TXA-12.1, TXA-12.2, TXA-12.3 et TXA-12.4 (idem pour TXA-13)o Paragraphe 12.2.6 : segment OBX portant la demande de traitement sur document(s)§ Ajout PRT-5.2, PRT-5.3 et PRT-5.9 sur l'expéditeur§ Précision des OIDs pour les PS et organisations destinataires et sur les types d'identifiants d'organisations§ Précision apportée sur le PRT destinataires qui peut être un PS ou un patiento Paragraphes 12.3.3.1, 12.3.3.2 et 12.3.3.3 :§ Ajout des contraintes sur le MSH sur les messages ZAM_Z01, ZAM_Z02 et ZAM_Z03.§ Remplacement des noms de tables HL70357 et HL70533 par messageErrorCode et applicationErrorCode§ Ajout du champ ERR-5 (erreurs applicatives) au message ZAM_Z03§ Ajout d'un texte explicatif en 12.3.3.3 sur la façon de générer le segment ERR pour l'accusé de lecture/traitement de la demandeo Paragraphe 13 : corrections d'erreurs· Annexe 6 : codes erreurs de la demande de traitement à remonter dans le message HL7 ZAM_Z03 : table initiale scindée en 2 tables : codes d'erreur techniques et codes erreurs applicatifs
  * Rédigé par:  

