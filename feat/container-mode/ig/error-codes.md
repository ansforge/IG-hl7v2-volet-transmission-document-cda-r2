# Error codes - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Error codes**

## Error codes

### Table « SMTPERRORCODE »

La table « SMTPERRORCODE » utilisé dans le champ ERR-5 du message `ZAM^Z02^ZAM_Z01` contient le code d’erreur remonté lors de la distribution du ou des document(s) par MSSanté dans le serveur de messagerie du destinataire MSSanté :

* Code: **101**
  * Libellé: Le serveur n'arrive pas à se connecter.
  * CodeSystem: SMTPERRORCODE 
* Code: **111**
  * Libellé: Connexion refusée ou impossibilité d'ouvrir un flux SMTP.
  * CodeSystem: SMTPERRORCODE 
* Code: **251**
  * Libellé: Le compte du destinataire n'est pas sur le serveur actuel. L'envoi sera donc relayé à un autre serveur.
  * CodeSystem: SMTPERRORCODE 
* Code: **252**
  * Libellé: Le serveur ne peut pas vérifier l'utilisateur. Il confirme cependant qu'il essaiera de transmettre le message malgré tout
  * CodeSystem: SMTPERRORCODE 
* Code: **420**
  * Libellé: « Problème de connexion de temporisation » : il y a eu des problèmes pendant le transfert du message.
  * CodeSystem: SMTPERRORCODE 
* Code: **421**
  * Libellé: Le service est indisponible en raison d'un problème de connexion.
  * CodeSystem: SMTPERRORCODE 
* Code: **422**
  * Libellé: La boîte aux lettres du destinataire a dépassé sa limite de stockage.
  * CodeSystem: SMTPERRORCODE 
* Code: **431**
  * Libellé: Espace insuffisant sur le disque, ou état de mémoire insuffisante en raison d'une surcharge de fichiers.
  * CodeSystem: SMTPERRORCODE 
* Code: **432**
  * Libellé: Mot de passe de transition nécessaire
  * CodeSystem: SMTPERRORCODE 
* Code: **441**
  * Libellé: Le serveur du destinataire ne répond pas
  * CodeSystem: SMTPERRORCODE 
* Code: **442**
  * Libellé: La connexion a été interrompue pendant la transmission
  * CodeSystem: SMTPERRORCODE 
* Code: **450**
  * Libellé: Action non effectuée : boîte-aux-lettres non disponible [Ex., bloquée par un autre utilisateur]
  * CodeSystem: SMTPERRORCODE 
* Code: **451**
  * Libellé: Action arrêtée : erreur de traitement
  * CodeSystem: SMTPERRORCODE 
* Code: **452**
  * Libellé: Action non effectuée : manque de ressources système.
  * CodeSystem: SMTPERRORCODE 
* Code: **500**
  * Libellé: Erreur de syntaxe, commande non reconnue [y compris des erreurs de type « ligne de commande trop longue »]
  * CodeSystem: SMTPERRORCODE 
* Code: **501**
  * Libellé: Erreur de syntaxe dans des paramètres ou arguments de commande
  * CodeSystem: SMTPERRORCODE 
* Code: **502**
  * Libellé: Commande non implémentée
  * CodeSystem: SMTPERRORCODE 
* Code: **503**
  * Libellé: Mauvaise séquence de commandes
  * CodeSystem: SMTPERRORCODE 
* Code: **504**
  * Libellé: Paramètre de commande non implémenté
  * CodeSystem: SMTPERRORCODE 
* Code: **510**
  * Libellé: Mauvaise adresse courriel
  * CodeSystem: SMTPERRORCODE 
* Code: **512**
  * Libellé: Ce code indique une erreur DNS. Le serveur hôte du nom de domaine du destinataire est introuvable.
  * CodeSystem: SMTPERRORCODE 
* Code: **513**
  * Libellé: Le type d'adresse est incorrect. Souvent un problème lié à une faute d'orthographe. Dans de rares cas, il peut être lié à un problème d'authentification.
  * CodeSystem: SMTPERRORCODE 
* Code: **523**
  * Libellé: La taille totale de votre mailing dépasse les limites du serveur destinataire.
  * CodeSystem: SMTPERRORCODE 
* Code: **530**
  * Libellé: L'authentification est requise. Vous devez authentifier votre compte de messagerie avant d'envoyer un e-mail
  * CodeSystem: SMTPERRORCODE 
* Code: **541**
  * Libellé: L'adresse du destinataire a rejeté votre message. Dans la plupart des cas, c'est une erreur causée par un filtre anti-spam.
  * CodeSystem: SMTPERRORCODE 
* Code: **550**
  * Libellé: Action non effectuée : boîte aux lettres non disponible (ex. : boîte-aux-lettres non trouvée, pas d'accès).
  * CodeSystem: SMTPERRORCODE 
* Code: **551**
  * Libellé: Un relais peut être interrompu car votre adresse et celle du destinataire ne sont pas hébergées localement par le serveur.
  * CodeSystem: SMTPERRORCODE 
* Code: **552**
  * Libellé: Action abandonnée - Allocation de stockage dépassée. La boîte aux lettres du destinataire a dépassé ses limites.
  * CodeSystem: SMTPERRORCODE 
* Code: **553**
  * Libellé: La commande a été abandonnée car le nom de la boîte aux lettres n'est pas valide.
  * CodeSystem: SMTPERRORCODE 
* Code: **554**
  * Libellé: Cela signifie que l'envoi a échoué. Ce code indique une erreur permanente et le serveur n'essaiera pas d'envoyer le message à nouveau.
  * CodeSystem: SMTPERRORCODE 

### Codes erreurs de l’accusé métier de lecture/traitement de la demande

Les tables **HL70357** (dont le nom symbolique est messageErrorCondition) et **HL70533** (dont le nom symbolique est applicationErrorCode) sont décrites dans le volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSsanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » du CI_SIS.

La table HL7 **messageErrorCondition** est utilisée par l’acteur CONSOMMATEUR (DPI/RIS…) en cas d’erreur technique du message HL7 MDM (erreur de syntaxe). La nature de l’erreur est renseignée dans le champ ERR-3 de la structure du message ACK renvoyé par le CONSOMMATEUR au niveau du GESTIONNAIRE (PFI).

* Code: 0
  * Libellé: Message accepted
  * Description: Message accepté
* Code: 100
  * Libellé: Segment sequence error
  * Description: Les segments ne sont pas dans le bon ordre ou il manque un ou plusieurs segments requis
* Code: 101
  * Libellé: Required field missing
  * Description: Un champ requis dans un segment est manquant
* Code: 102
  * Libellé: Data type error
  * Description: Erreur sur un type de donnée
* Code: 103
  * Libellé: Table value not found
  * Description: Table non trouvée
* Code: 198
  * Libellé: Non-conformant cardinality
  * Description: Erreur de cardinalité sur un champ du message
* Code: 199
  * Libellé: Other HL7 Error
  * Description: Autre type d'erreur concernant la syntaxe du message HL7
* Code: 200
  * Libellé: Unsupported message type
  * Description: Type de message non supporté
* Code: 201
  * Libellé: Unsupported event code
  * Description: Code évènement non supporté
* Code: 202
  * Libellé: Unsupported processing
  * Description: Code process non supporté
* Code: 203
  * Libellé: Unsupported version
  * Description: Version HL7 non supportée
* Code: 207
  * Libellé: Application error
  * Description: Erreur de niveau applicatif dont le contenu est détaillé dans le champ ERR-5

La table **user-defined applicationErrorCondition** est utilisée par l’acteur CONSOMMATEUR (DPI/RIS…) en cas d’erreur d’intégration/de remplacement ou de suppression du document CDA au niveau du CONSOMMATEUR. La nature de l’erreur applicative est renseignée dans le champ ERR-5 de la structure du message ACK renvoyé par le CONSOMMATEUR au niveau du GESTIONNAIRE de l’établissement. Cette table est fournie à titre indicatif et pourra être enrichie si besoin, en fonction des retours d’implémentation.

| | | |
| :--- | :--- | :--- |
| **Code** | **Libellé** | **Description** |
| 900 | Version du document incorrecte lors d'une demande de remplacement/suppression | Lors d'une demande de remplacement ou suppression d'un document, la version de document transmise dans le message HL7 ne correspond pas à la version la plus récente du document existant au niveau de l'application réceptrice (consommateur) |
| 901 | Auteur non autorisé à remplacer ou supprimer un document | Lors d'une demande de remplacement ou suppression d'un document, l'acteur qui demande le traitement sur le document doit être l'auteur du document ou un acteur qui appartient à la même organisation que l'auteur du document original. Dans le cas contraire, le message est rejeté. |
| 902 | Identifiant patient inconnu | Le patient pour lequel le traitement sur le document est demandé est inconnu de l'application réceptrice (consommateur) |
| 903 | INS non présent dans le document | Le document CDA contenu dans le message contient une liste d'identifiants de patient mais pas l'INS. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur. |
| 904 | L'INS transmis ne correspond pas exactement à celui stocké dans la base du consommateur | L'INS du patient est présent dans le document CDA contenu dans le message HL7 mais les traits ou le matricule ne correspondent pas exactement à ceux stockés dans le système consommateur. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur. |
| 905 | L’INS transmis n’est pas complet | Le matricule INS du patient est présent dans le document CDA contenu dans le message HL7 mais l'ensemble des traits de l’INS ne sont pas présents. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur. |
| 906 | Erreur 'Autre' | Si les autres codes erreurs ne correspondent pas au cas d'erreur rencontré ce code erreur peut être utilisé. |

