# Volume 1 : Etude fonctionnelle - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Volume 1 : Etude fonctionnelle**

## Volume 1 : Etude fonctionnelle

### Cas d’usage

Cette section décrit, **à titre d’exemple et de façon non exhaustive**, un ensemble de cas d’usage. Pour une meilleure compréhension du lecteur, ces cas d’usage couvrent les échanges entre le système créateur du document et la PFI, mais également les échanges au-delà de la PFI (et donc au-delà du périmètre de ce présent document).

#### Envoi d’un document clinique d’un établissement vers un médecin traitant

> 

_Cas d'usage :_un médecin d'un établissement publie sur le DMP un document clinique concernant un patient et envoi par MSSanté ce même document au médecin traitant du patient.


Le Dr Jean Dupont exerçant à l’hôpital-A ([jean.dupont@hopital-A.mssante.fr](mailto:jean.dupont@hopital-A.mssante.fr) ) créé un compte rendu pour son patient au cours d’une consultation externe dans l’établissement. Il souhaite publier sur le DMP ce compte rendu à partir de son application métier et souhaite en même temps l’adresser par MSSanté au médecin traitant du patient, le Dr Adam Hoda ([adam.hoda@test-ci-sis.mssante.fr](mailto:adam.hoda@test-ci-sis.mssante.fr)).

Le Dr Dupont (hôpital-A) sélectionne ce compte rendu dans son application métier, il précise les métadonnées de masquage du document aux PS et de visibilité au patient et à ses représentants légaux. Il précise également au travers de l’IHM de son application métier qu’il souhaite publier ce compte rendu sur le DMP du patient et envoyer ce compte rendu au Dr Adam Hoda en sélectionnant dans son annuaire l’adresse e-mail de ce médecin traitant. Avant de valider sa demande, le Dr Dupont peut préciser s’il souhaite recevoir un accusé de réception DMP, un accusé de réception MSSanté et un accusé de lecture du courriel par le Dr Adam Hoda.

La demande du Dr Dupont est traitée par le composant PFI de l’hôpital-A qui gère les échanges avec le DMP et/ou la MSSanté. La PFI de l’hôpital-A réceptionne et analyse les éléments portés par la transaction émise à partir du logiciel métier du Dr Dupont. La PFI construit d’une part la requête d’alimentation du DMP conformément au [Guide d’intégration du DMP](https://industriels.sesam-vitale.fr/) ainsi que le courriel à destination de la BAL personnelle du Dr Adam Hoda. La PFI construit également les pièces jointes, c’est-à-dire l’archive IHE_XDM.zip conformément au [volet Echange de documents de santé du CI_SIS](https://esante.gouv.fr/volet-echange-de-documents-de-sante) et les fichiers PDF correspondants aux comptes rendus envoyés dans l’archive IHE_XDM.

Si demandé initialement, le logiciel métier du Dr Dupont réceptionne en retour, via la PFI, l’accusé métier d’intégration au DMP ainsi que l’accusé métier de réception du courriel MSSanté provenant du serveur de messagerie du Dr Adam Hoda. Dans le cas où le Dr Dupont a également demandé un accusé métier de lecture lors de l’envoi par MSSanté, celui-ci est notifié, dans son logiciel métier, de la prise de connaissance du courriel par le Dr Adam Hoda.

#### Envoi d’un compte rendu de biologie d’un laboratoire privé vers un établissement hospitalier

> 

_Cas d'usage :_un établissement hospitalier (le CH Martin) réceptionne, via MSSanté, un compte rendu de laboratoire concernant un patient pris en charge dans l'établissement, provenant d'un laboratoire d'analyses externe au CH Martin. Le laboratoire d'analyse ainsi que le CH Martin sont dotés de PFI qui gèrent l'échange de courriel entre la BAL applicative du laboratoire et la BAL applicative du DPI de l'établissement consommateur.


>  **Point d'attention** ce cas d'usage nécessite un accord de partenariat entre les deux structures permettant de rendre possible l'échange MSSanté au travers des BAL applicatives. 

Ce cas d’usage peut être étendu à tout échange entre 2 boîtes applicatives. Ce processus est similaire à l’envoi d’un document via un message HL7, mais le vecteur de communication est un courriel MSSanté.

##### Description du cas nominal

Le médecin biologiste valide le compte rendu de biologie via son SGL (Système de Gestion de Laboratoire) et précise les métadonnées de masquage du document aux PS et de visibilité au patient et à ses représentants légaux. Ces attributs peuvent également, selon les organisations mises en place, être paramétrées en fonction du type d’analyse réalisé. Le SGL est également paramétré pour prendre en compte les souhaits du médecin biologiste concernant la réception des accusés métier de réception DMP, de réception du courriel MSSanté par le serveur de messagerie de l’établissement CH Martin et de lecture/traitement du courriel MSSanté et du(des) document(s) CDA contenu(s) dans la pièce jointe IHE_XDM.zip.

A la validation du compte rendu de biologie par le médecin biologiste, le SGL envoie la demande d’intégration du CR de biologie dans l’application destinatrice.

La PFI du laboratoire de biologie réceptionne la demande, construit le courriel et la pièce jointe IHE_XDM.zip et l’envoie à une BAL applicative de l’établissement CH Martin dédiée ou non à la réception des CR de biologie de laboratoire partenaire. La PFI du CH Martin détecte l’arrivée du courriel, analyse son contenu et construit la demande d’intégration du CR de biologie dans le logiciel métier du destinataire (DPI).

Le DPI intègre le document à partir des informations disponibles dans la demande d’intégration du document et de l’entête du document CDA, et renvoie un accusé de réception de la demande à la PFI.

>  **Point d'attention** dans le contexte du SEGUR vague 2, la PFI doit pouvoir générer un courriel MDN (Message Disposition Notification) à destination de la BAL du SGL contenant le statut de l'intégration. 

La structure du MDN est décrite dans l’exemple décrit en Annexe du volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante).

**Figure 2 : Envoi d'un CR de biologie médicale -- Cas nominal**

 La Figure 2 illustre les échanges de bout en bout relatifs à une demande de transmission du compte rendu du SGL d’un laboratoire extérieur vers le DPI d’un établissement partenaire.

Le diagramme serait identique dans le cas d’une demande de remplacement ou de suppression du compte rendu.

##### Description du cas en erreur

Le CR de biologie n’est pas intégré dans le logiciel métier du destinataire pour une raison technique (par exemple, non-conformité de la transaction de demande d’intégration du document) ou pour une raison fonctionnelle (par exemple, le patient n’est pas connu du logiciel destinataire).

Dans le contexte du SEGUR vague 2, la PFI du CH Martin doit pouvoir envoyer un accusé métier de lecture/traitement MSSanté négatif vers la BAL de l’expéditeur dans le cas où le médecin biologiste a exprimé le souhait de recevoir cet accusé de lecture MSSanté.

Sur la figure suivante, seule la partie basse de la figure précédente est représentée. Les séquences relatives à l’accusé de réception MSSanté sont identiques.

**Figure 3 : Envoi d'un CR de biologie médicale -- Gestion des erreurs**

 La Figure 3 illustre la gestion des erreurs par l’établissement destinataire dans le cas d’une demande de transmission du compte rendu du SGL vers le DPI.

Le diagramme serait identique dans le cas d’une demande de remplacement ou de suppression du compte rendu.

>  Dans le cas où un MDN (Message Disposition Notification) n'a pas été explicitement demandé par le destinataire (via l'entête `Disposition-Notification-To` dans le message d'origine), et que, pour pouvoir gérer toutes les erreurs, on souhaite utiliser une BAL dédiée, un courriel 'standard' peut être utlisé. La structure du courriel est précisée en annexe du volet [Transmission au LPS d'un document CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante). 

**Figure 3 bis: Réception d’un CR de biologie médicale - Gestion des erreurs vers une BAL dédiée**

 
 **Ce cas d'usage est hors périmètre de ce volet.** 

#### Transmission d’un document clinique d’un patient d’un établissement hospitalier vers un autre établissement hospitalier

> 

_Cas d'usage :_Le Dr Jean Dupont exerce dans le service X de l'établissement A. Il souhaite transférer un de ses patients dans le service Y de l'établissement B. Il demande à la secrétaire médicale du service X d'envoyer le compte rendu d'hospitalisation de son patient à l'équipe de soins du service Y de l'établissement B.

La secrétaire médicale du service X de l'établissement A envoie un courriel à la BAL du service Y de l'établissement B. Les deux établissements sont dotés d'une PFI.


##### Description du cas nominal

Dans ce cas d’usage, le compte rendu d’hospitalisation est envoyé par MSSanté sur la BAL organisationnelle du service Y. La secrétaire de l’établissement B consulte sa BAL organisationnelle. Si la secrétaire veut intégrer les documents de la pièce jointe IHE_XDM.zip dans le DPI, elle transfère manuellement les courriels vers la BAL applicative du service Y. Ces courriels sont ensuite détectés par la BAL applicative de la PFI de l’établissement B qui les traitent, construit pour chaque courriel la demande d’intégration/remplacement/suppression du document et envoie cette demande au DPI du service Y. le document est intégré/remplacé/supprimé dans le DPI du service Y.

La secrétaire médicale du service X de l’établissement-A sélectionne le compte rendu et sélectionne à partir de l’annuaire de l’établissement la BAL organisationnelle correspondant au service Y de l’établissement B. elle précise également si elle souhaite recevoir en retour un accusé de réception MSSanté (réception par le serveur de messagerie de l’établissement B) ainsi qu’un accusé de lecture MSSanté (selon les organisations, ce choix peut être réalisé par paramétrage).

Cette demande d’envoi est traitée par la PFI de l’établissement-A qui réceptionne, analyse les éléments portés par la demande de traitement émise à partir du DPI du service X et construit l’archive IHE_XDM conformément au volet **Echange de documents de santé** du CI_SIS en pièce jointe du courriel à destination du service Y de l’établissement-B. La PFI attache également la version PDF correspondant à chaque document CDA.

Le courriel envoyé par la BAL attachée à la PFI de l’établissement-A est réceptionné par la BAL organisationnelle du service Y de l’établissement-B. Dans le cas d’usage décrit ci-dessous, la secrétaire du service Y de l’établissement B prend connaissance des courriels non lus dans la BAL organisationnelle du service Y et transfert ces courriels vers la BAL applicative du service Y dans le cas où elle désire importer automatiquement les documents dans le DPI. Si un accusé de lecture a été demandé par l’expéditeur, celui-ci est alors renvoyé vers la BAL organisationnelle du service X de l’établissement-A. Des règles peuvent également être mises en place dans le serveur de messagerie de l’établissement-B pour transférer automatiquement les courriels avec une pièce jointe IHE_XDM.zip ou un objet qui commence par XDM/1.0/DDM vers la BAL applicative du service Y.

Suite au transfert, la BAL de la PFI de l’établissement-B détecte chaque courriel arrivé sur la BAL applicative du service Y. La PFI extrait les informations du courriel ainsi que la demande d’intégration associée au document clinique et transmet ces éléments vers le DPI associé au service Y pour traitement de la demande d’intégration du document clinique dans le dossier du patient. La configuration d’une BAL applicative par service de l’établissement-B permet au DPI de classer plus finement le document.

Le DPI intègre le document à partir des informations qu’il reçoit et renvoie un accusé de réception de la demande de traitement à la PFI de l’établissement-B. La PFI doit pouvoir générer un courriel MDN (Message Disposition Notification) à destination de la BAL de service Y contenant le statut de l’intégration du document. En cas d’erreur, la secrétaire pourra envisager une intégration manuelle (voir le paragraphe suivant).

La structure du MDN est décrite dans l’exemple accessible en annexe du volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante).

La figure ci-dessous illustre ce cas d’usage.

>  **Point d'attention** ce cas d'usage décrit un mécanisme de traitement d'un courriel réceptionné sur une BAL organisationnelle. Ce mécanisme pourrait être identique pour un courriel réceptionné sur une BAL personnelle, sous réserve de respecter les exigences réglementaires relatives au transfert d'un courriel personnel dans un contexte professionnel. Ce cas d'usage nécessite de définir une BAL organisationnelle ainsi qu'une BAL applicative associée pour chaque service clinique de l'établissement B. La PFI ou le DPI peuvent prévoir un paramétrage pour associer un service clinique de l'établissement à une BAL afin de classer les documents dans le bon service. 

**Figure 4 : Transmission d'un document clinique d'un patient d'un CH versun autre CH -Cas nominal**

La Figure 4 illustre les échanges de bout en bout relatifs à une demande de transmission du compte rendu du SGL vers le DPI.

Le diagramme serait identique dans le cas d’une demande de remplacement ou de suppression du compte rendu.

##### Description du cas d’usage en erreur

La cinématique des échanges est la même que précédemment mais le compte rendu d’hospitalisation n’est pas intégré dans le DPI du service Y en raison, par exemple, de l’inexistence du patient dans le DPI.

La figure ci-dessous représente uniquement la partie basse de la figure précédente, à partir du transfert du courriel avec pièce jointe vers la BAL applicative de l’établissement-B.

**Figure 5 : Transmission d'un document clinique d'un patient d'un CH vers un autre CH -Gestion des erreurs**

La Figure 5 illustre la gestion des erreurs par l’établissement destinataire dans le cas d’une demande de transmission d’un compte rendu vers le DPI d’un autre établissement.

Le diagramme serait identique dans le cas d’une demande de remplacement ou de suppression du compte rendu.

>  Dans le cas où un MDN (Message Disposition Notification) n'a pas été explicitement demandé par le destinataire (via l'entête `Disposition-Notification-To` dans le message d'origine), et que, pour pouvoir gérer toutes les erreurs, on souhaite utiliser une BAL dédiée, un courriel 'standard' peut être utlisé. La structure du courriel est préciséé en annexe du volet [Transmission au LPS d'un document CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante). 

**Figure 5 bis: Transmission d’un document clinique d’un patient d’un CH vers un autre CH - Gestion des erreurs vers une BAL dédiée**

 
 **Ce cas d'usage est hors périmètre de ce volet.** 

### Organisation du contexte métier

##### Les groupes de processus

Réception par la plateforme d’intermédiation (PFI) d’une demande de traitement sur le(s) document(s) clinique(s) relatif(s) à un patient provenant d’un logiciel métier de l’établissement, pour publication ensuite vers le DMP et/ou envoi par MSSanté vers un ou plusieurs destinataire(s). Ce groupe de processus est divisé en quatre processus décrits dans les sections suivantes.

##### Les processus

Le groupe de processus est divisé en quatre processus :

* Une demande de transmission initiale de document(s) pour publication sur le DMP et/ou envoi par MSSanté,
* Une demande de remplacement de document(s) initialement publié(s) sur le DMP et/ou initialement envoyé(s) par MSSanté,
* Une demande de mise à jour des métadonnées de document(s)(*) initialement publié(s) sur le DMP et/ou initialement envoyé(s) par MSSanté,
* Une demande de suppression de document(s) initialement publié(s) sur le DMP et/ou initialement envoyé(s) par MSSanté.

(*) : **dans le contexte français, conformément au [volet Partage de documents de santé du CI_SIS](https://esante.gouv.fr/volet-partage-de-documents-de-sante), la mise à jour des métadonnées du document est limitée à la mise à jour des informations de masquage du document aux PS et de mise en visibilité du document au patient et à ses représentants légaux ainsi que le statut du document. La PFI interagissant avec le DMP en mode d’authentification indirecte, il lui est impossible de mettre en œuvre la transaction TD3.3 (Gestion des attributs d’un document) du profil Alimentation du DMP, décrite dans le [Guide d’intégration du DMP](https://industriels.sesam-vitale.fr/) (transaction équivalente à la transaction Update Document Set [[ITI-57](https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html)] du profil IHE Update Metadata), car celle-ci nécessite une authentification directe (cf la matrice des droits fonctionnels du DMP). Dans ce contexte, la mise à jour des métadonnées de masquage/démasquage aux PS et de visibilité du document au patient sera gérée comme un remplacement de document, ce qui implique la création d’une nouvelle version de document par le système créateur de documents. Cette nouvelle version vient remplacer la précédente au niveau du consommateur (DMP ou logiciel métier destinataire du courriel).**

Le nombre de processus est ainsi réduit aux trois processus synthétisés sur la Figure 6.

**Figure 6 : Organisation du contexte métier du volet « Transmission de documents CDA en HL7v2 »**

Le périmètre de l’étude englobe les processus en bleu sur le diagramme de paquetage.

### Acteurs et transactions

#### Liste des Acteurs et systèmes concernés

Le présent volet met en œuvre les Acteurs IHE suivants, représentant le rôle joué par un ou plusieurs composants du système d’information :

* Acteur: CREATEUR
  * Description: Système à l'origine de la création de document(s). Il transmet au système GESTIONNAIRE des demandes de transmission initiale/de remplacement/de suppression de document(s) pour publication sur le DMP et/ou envoi vers une ou plusieurs BAL MSSanté. Le CREATEUR précise également les retours métiers attendus du DMP et/ou de la MSSanté. Le CREATEUR réceptionne, le cas échéant, les retours métiers du DMP et/ou de la MSSanté demandés et renvoyés par le GESTIONNAIRE (accusé de réception DMP, accusé de réception MSSanté et accusé de lecture MSSanté).
* Acteur: GESTIONNAIRE
  * Description: Le GESTIONNAIRE réceptionne les demandes de transmission initiale/remplacement/suppression de document(s) provenant du CREATEUR et envoie le(s) document(s) vers le DMP et/ou la MSSanté (1) en fonction des informations portées par la transaction.Le GESTIONNAIRE réceptionne, gère et redistribue vers le CREATEUR, le cas échéant, les retours métiers provenant du DMP et/ou de la MSSanté.

**Note (1):** **l’acteur CREATEUR, relayé par le GESTIONNAIRE peut décider d’envoyer un courriel en direction d’une BAL personnelle (par exemple, le médecin traitant du patient), d’une BAL organisationnelle (par exemple, un cabinet médical en ville, le service de cardiologie de l’établissement destinataire) ou d’une BAL applicative (par exemple, la BAL applicative du DPI d’un établissement hospitalier destinataire).**

Le tableau suivant liste, pour chacun des acteurs, les systèmes du SIH concernés :

* Acteur: CREATEUR
  * Systèmes concernés: - Les systèmes informatiques de gestion des laboratoires (SGL), de gestion de radiologie (RIS), de gestion de cardiologie (SIC), tout système du SIH de production de documents pour un patient.- Les logiciels de dossier patient informatisé (DPI) en établissement et tout logiciel de spécialité créateur de documents cliniques.
* Acteur: GESTIONNAIRE
  * Systèmes concernés: - Les Plateformes d'Intermédiation (PFI) qui assurent la transmission de document(s) cliniques vers les services socles.- Les DRIMBox-Source qui publient sur le DMP le document de référence d'objets d'examen d'imagerie (KOS).La DRIMBox-Source gère l'accusé technique de la transaction de transmission par le RIS du compte-rendu d'imagerie en CDA. Elle transmet ensuite le document KOS correspondant au DMP. L'accusé de réception du document KOS par le DMP n'est pas à transmettre au système Créateur de documents.

#### Diagramme des Acteurs/Transactions

**Figure 7 : Diagramme des Acteurs/Transactions**

Dans le contexte du SEGUR, le flux Provide&Register Document Set-b (hors périmètre de ce volet) est mis en œuvre par :

* La transaction TD2.2 (Alimentation d’un DMP par CPE) ou TD2.1 (Alimentation du DMP en authentification indirecte) pour une demande d’intégration ou de remplacement d’un document dans le DMP,
* La transaction TD3.3c (Gestion des attributs d’un document) pour une demande de suppression d’un document du DMP.

Le tableau ci-dessous représente l’ensemble des acteurs directement impliqués dans ce volet ainsi que les transactions entre ces acteurs.

Pour être en conformité avec ce volet, chaque acteur doit supporter les transactions obligatoires (R-Required) et peut supporter les transactions optionnelles (O-Optional).

* Acteur: CREATEUR
  * Transaction: Flux 1 en émission : Demande de transmission/remplacement/suppression de document(s) CDA (Flux HL7-ORU ->)
  * Caractère requis/optionnel: O(Note 1)(Note 4)
* Acteur: Flux 2 en émission : Demande de transmission/remplacement/suppression d'un document CDA (Flux HL7- MDM ->)
  * Transaction: O(Note 1)(Note 4)
* Acteur: Flux 3 en réception : Accusé métier de réception DMP
  * Transaction: O (Note 2)
* Acteur: Flux 4 en réception : Accusé métier de réception MSSanté
  * Transaction: O (Note 2)
* Acteur: Flux 5 en réception : Accusé métier de lecture MSSanté
  * Transaction: O (Note 3)
* Acteur: GESTIONNAIRE
  * Transaction: Flux 1 en réception : Demande de transmission/remplacement/suppression de document(s) CDA par un message HL7v2.5 ORU (Flux HL7-ORU)
  * Caractère requis/optionnel: R
* Acteur: Flux 2 en réception : Demande de transmission/remplacement/suppression d'un document CDA par un message HL7v2.6 MDM (Flux HL7- MDM)
  * Transaction: R
* Acteur: Flux 3 en émission : Accusé métier de réception DMP
  * Transaction: O (Note 2)
* Acteur: Flux 4 en émission : Accusé métier de réception MSSanté
  * Transaction: O (Note 2)
* Acteur: Flux 5 en émission : Accusé métier de lecture MSSanté
  * Transaction: O (Note 3)

**Figure 8 : Tableau des Acteurs/Transactions**

**[Note 1]** : **l’acteur CREATEUR choisit d’implémenter l’une ou l’autre des transactions : le Flux 1 (Flux HL7-ORU) ou le flux 2 (Flux HL7-MDM) en émission. L’acteur GESTIONNAIRE DOIT implémenter les deux transactions Flux HL7-ORU et Flux HL7-MDM en réception.**

**[Note 2]** : **dans le contexte du SEGUR vague 2, couloirs DPI et PFI, l’accusé métier de réception DMP ainsi que l’accusé métier de réception MSSanté sont requis. L’accusé métier de réception DMP est généré par le GESTIONNAIRE à partir de la réponse du DMP à une requête d’alimentation, de remplacement ou de suppression de document(s). La réponse du DMP contient le statut du résultat de la transaction (Success ou Failure) ainsi que le code erreur en cas de problème. Ces informations sont relayées par le GESTIONNAIRE au CREATEUR au travers du flux 3. L’accusé métier de réception MSSanté est généré par le GESTIONNAIRE à partir de la réponse du serveur de messagerie du destinataire qui atteste de la réception du courriel (mécanisme Delivery Status Notification – DSN – RFC 3461 à 3464 et 6522 qui permet de savoir si un courriel a été remis avec succès dans la BAL du destinataire). Il est relayé au CREATEUR au travers du flux 4.**

**[Note 3]** : **l’accusé métier de lecture MSSanté n’est requis ni dans ce volet du CI_SIS ni dans le contexte du SEGUR vague2. Le flux d’accusé métier de lecture MSSanté est généré par le GESTIONNAIRE conformément au Message Disposition Notification – MDN de la RFC 8098. Il permet de savoir quel traitement a été effectué sur le courriel réceptionné (lecture du courriel par un utilisateur, courriel dispatché, courriel traité, courriel détruit) et de préciser les causes d’erreur éventuelles de traitement. Il est relayé au CREATEUR au travers du flux 5. La gestion de cet accusé de lecture MSSanté (MDN) va dépendre de l’organisation choisie par l’établissement pour réceptionner les courriels. Ce flux d’accusé de lecture MSSanté (courriel MDN) rend compte de la lecture du courriel par le destinataire lorsque ce courriel est traité de façon manuelle. Dans le cas d’un traitement automatique du courriel par la PFI de l’établissement destinataire, ce flux d’accusé de lecture rend compte de la réalisation de la demande de traitement sur le document contenu dans le courriel par le logiciel métier associé à la BAL destinatrice du courriel.**

**[Note 4]** : **Le Flux HL7-MDM permet de transmettre un document unique. Le Flux HL7-ORU peut, le cas échéant, transporter deux documents, un CDAr2 Niv1 et un CDAr2 Niv3, dans la même transaction. Dans ce cas, il s’agit de deux instances de documents dont le contenu clinique est identique. Ce besoin de transmettre dans une même transaction les deux formats CDAr2 Niv1 et CDAr2 Niv3 d’un même document clinique a été exprimé, en particulier par les biologistes, afin de permettre à l’utilisateur du système consommateur de visualiser le document tel qu’il a été remis au patient (PDF). Chaque format de document a son identifiant propre.**

>  **Point d'attention :** dans le contexte de la vague 2 du SEGUR, le compte-rendu de biologie, le volet de synthèse médicale ainsi que la prescription de produits de santé sont spécifiés sous la forme d'un CDAr2 Niv3 intégrant le document remis au patient sous forme papier (format PDF) dans une section dédiée. Pour ces cas d'usage, un seul document sera donc produit. Néanmoins cette version du présent volet conserve la possibilité de transmettre les 2 formats de documents (CDAr2 Niv1 et CDAr2 Niv3) dans la transaction HL7-ORU permettant ainsi de ne pas limiter l'implémentation du volet seulement aux SGL référencés SEGUR. 

#### Regroupement requis des Acteurs

Cette section décrit les exigences en termes de regroupement d’acteurs pour chacun des acteurs identifiés précédemment.

* Acteur de ce volet: CREATEUR
  * Groupé avec un autre acteur: Content Creator [(TF PCC : Patient Care Coordination - Appendix A : Actors definition)](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_TF_Vol1.pdf)
  * Référence: TF Patient Care Coordination (PCC) d'IHE - Annexe A : définition des acteurs
* Acteur de ce volet: GESTIONNAIRE
  * Groupé avec un autre acteur: Producteur (Document Source) XDS-b
  * Référence: [Volet Partage de documents de santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante) dans un contexte général ou le Référentiel Service DMP intégré aux LPS dans le contexte du SEGUR.
* Acteur de ce volet: Système initiateur (Portable Media Creator) XDM
  * Groupé avec un autre acteur: [Volet Echange de documents de santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante)

 

 

L’acteur CREATEUR est groupé avec l’acteur CONTENT CREATOR définit dans le Technical Framework PCC d’IHE pour permettre la création du document CDA.

L’acteur GESTIONNAIRE est groupé avec :

* L’acteur Producteur (Document Source) du [volet de Partage de document de santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante), pour permettre à la PFI d’implémenter la transaction ITI-41 Provide & Register Document Set dans un contexte général ou les transactions TDT2.1/TD2.2 (Alimentation du DMP) ou TD3.3c (Gestion des attributs d’un document) dans le contexte SEGUR (pour intégration/remplacement/suppression de document(s) dans le DMP en tenant compte des spécificités ajoutées par le référentiel Service DMP intégré aux LPS),
* L’acteur Système initiateur du volet d’[Echange de documents de santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante), pour permettre à la PFI de construire l’archive IHE_XDM inclue dans le courriel émis vers le destinataire,

### Définition des processus collaboratifs

Pour l’ensemble des processus décrits :

* L’accusé de réception MSSanté correspond à la prise en compte du courriel par le serveur de messagerie du destinataire du courriel,
* L’accusé de lecture MSSanté défini par la [RFC 8098](https://datatracker.ietf.org/doc/html/rfc8098) (Message Disposition Notification) comprend un élément dénommé Disposition types qui rend compte à l’expéditeur du courriel du traitement advenu sur ce courriel au niveau du destinataire : lecture du courriel, transfert du courriel, traitement automatique du courriel, suppression du courriel.

#### Processus collaboratif « Demande de transmission initiale de document(s) »

**Figure 9 : Processus collaboratif « Demande de transmission initiale de document(s) » pour publication sur DMP et envoi par MSS**

* Service Attendu: Pré-Conditions
  * Le CREATEUR émet le(s) document(s) validé(s) vers le GESTIONNAIRE qui publie ce(s) document(s) sur le DMP et/ou réalise un envoi par MSSanté.: Les métadonnées de contexte DMP/MSSanté doivent être renseignées (soit par paramétrage de l'application soit par l'utilisateur) et l'utilisateur doit valider ce(s) document(s) au niveau de l'application métier dans laquelle il a été généré via un statut de validation géré en interne. Chaque document CDA doit être valide et disponible.L'INS du patient est obligatoirement qualifiée dans le cas où la publication sur le DMP est demandée.Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.
* Service Attendu: Post-Conditions
  * Le CREATEUR émet le(s) document(s) validé(s) vers le GESTIONNAIRE qui publie ce(s) document(s) sur le DMP et/ou réalise un envoi par MSSanté.: Le document est partagé sur le DMP et/ou reçu par le(s) destinataire(s) via MSSanté.
* Service Attendu: Contraintes fonctionnelles
  * Le CREATEUR émet le(s) document(s) validé(s) vers le GESTIONNAIRE qui publie ce(s) document(s) sur le DMP et/ou réalise un envoi par MSSanté.: Dans le cas où le CREATEUR de documents transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), ces 2 documents sont transmis simultanément dans la même transaction. (Note1)
* Service Attendu: Scénario Nominal
  * Le CREATEUR émet le(s) document(s) validé(s) vers le GESTIONNAIRE qui publie ce(s) document(s) sur le DMP et/ou réalise un envoi par MSSanté.: Le CREATEUR transmet une demande de transmission initiale de document(s) au GESTIONNAIRE en précisant si ce(s) document(s) doit(vent) être transmis au DMP et/ou à un ou plusieurs destinataire(s) via la MSSanté.Le CREATEUR permet également à l'utilisateur de préciser les métadonnées DMP/MSSanté : masquage au(x) PS, visibilité au patient, visibilité au(x) représentant(s) légaux. Il permet également à l'utilisateur de préciser s'il souhaite recevoir un accusé de réception DMP/MSSanté et/ou un accusé de lecture MSSanté.Le GESTIONNAIRE réceptionne cette demande et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction d'alimentation du DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSSanté (i.e. ; produire les métadonnées XDS).En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.Dans le cas de la DrimBox, seule l'alimentation du DMP avec le document de référence d'objets d'examen d'imagerie (KOS) est réalisée. La DRIMBox-Source n'est pas concernée par la MSSanté.

**(Note 1)** : **les systèmes référencés SEGUR vague 2 ne sont pas concernés car, dans ce cas, le PDF est inclus dans une section du CDA Niv3.**

#### Processus collaboratif « Demande de remplacement de document(s) »

**Figure 10 : Processus collaboratif « Demande de remplacement de document(s) » pour publication sur DMP et envoi par MSSanté**

Le processus « Demande de remplacement de document(s) permet également de gérer la mise à jour des métadonnées associées au(x) document(s). En effet, la PFI, en authentification indirecte vis-à-vis du DMP, n’a pas la possibilité d’utiliser la transaction « TD3.3 Gestion des attributs d’un document » du profil Alimentation du DMP car celle-ci nécessite une authentification directe.

Ainsi, dans le cas d’une demande de mise à jour des métadonnées de masquage/démasquage aux PS et de visibilité du document au patient, une nouvelle version de document est générée par le CREATEUR de documents. Cette nouvelle version vient remplacer la précédente au niveau du consommateur (DMP et/ou application métier destinatrice).

* Service Attendu: Pré-Conditions
  * Le CREATEUR émet une demande de remplacement de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Replace et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) remplaçant le(s) document(s) initialement envoyés.: Le document CDA doit être disponible, validé et identifié comme remplaçant un document précédemment envoyé par MSSanté et/ou publié sur le DMP.L'INS du patient doit être obligatoirement qualifié dans le cas où le remplacement du document est demandé au niveau du DMP.Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.
* Service Attendu: Post-Conditions
  * Le CREATEUR émet une demande de remplacement de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Replace et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) remplaçant le(s) document(s) initialement envoyés.: La nouvelle version de document est publiée sur le DMP et envoyée par MSSanté (Patient et/ou PS). L'ancienne version de document est mise au statut « Deprecated » au niveau du CONSOMMATEUR MSSanté et/ou sur le DMP.
* Service Attendu: Contraintes fonctionnelles
  * Le CREATEUR émet une demande de remplacement de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Replace et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) remplaçant le(s) document(s) initialement envoyés.: Dans le cas où le CREATEUR de document(s) transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), le remplacement (ou de la mise à jour des métadonnées) d'un des formats doit s'accompagner du remplacement (ou de la mise à jour des métadonnées) du format lié. La transaction doit contenir les 2 nouvelles versions de documents. Cf Note 1
* Service Attendu: Scénario Nominal
  * Le CREATEUR émet une demande de remplacement de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Replace et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) remplaçant le(s) document(s) initialement envoyés.: Le CREATEUR transmet une demande de remplacement de document(s) au GESTIONNAIRE. Il peut s'agir de mettre jour le document, de masquer/démasquer le document aux PS, de rendre visible le document au patient ou de rendre visible le document aux représentants légaux. Le GESTIONNAIRE réceptionne cette demande de remplacement et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction d'alimentation du DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSS (i.e. ; produire les métadonnées XDS).Le code RPLC dans clinicalDocument/relatedDocument@typeCode dans le CDA-R2 [[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) permet de constituer l'association RPLC dans la soumission XDS sur le DMP pour le remplacement [[cf: SESAM-VITALE : Service DMP intégré aux LPS]](https://industriels.sesam-vitale.fr). En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.

**Note 1** : **les systèmes référencés SEGUR vague 2 ne sont pas concernés car, dans ce cas, le PDF est inclus dans une section du CDA Niv3.**

>  **Point d'attention :** La mise à jour du document ou de ses métadonnées de masquage/visibilité a pour impact la création d'une nouvelle version du document avec un nouvel identifiant et une nouvelle séquence hash. 

#### Processus collaboratif « Demande de suppression de document(s) »

**Figure 11 : Processus collaboratif « Demande de suppression de document(s) » pour publication sur DMP et envoi par MSSanté**

* Service Attendu: Pré-Conditions
  * Le CREATEUR émet une demande de suppression de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Delete et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) à supprimer.: Le document a été envoyé préalablement pour soumission au DMP et/ou pour envoi par MSSanté.L'INS du patient doit obligatoirement être qualifié dans le cas où la suppression du document du DMP est demandée.Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.
* Service Attendu: Post-Conditions
  * Le CREATEUR émet une demande de suppression de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Delete et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) à supprimer.: Le document est supprimé du DMP (availabilityStatus = Deleted) [[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante)TD3.3 (Supprimer un document) [[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante)Le document est également supprimé au niveau de chacun des destinataire(s) de l'envoi par MSS.
* Service Attendu: Contraintes fonctionnelles
  * Le CREATEUR émet une demande de suppression de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Delete et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) à supprimer.: Dans le cas où le CREATEUR de documents transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), la suppression d'un des formats doit s'accompagner de la suppression du format lié. La transaction doit contenir les 2 formats de document à supprimer. Hors périmètre SEGUR.
* Service Attendu: Scénario Nominal
  * Le CREATEUR émet une demande de suppression de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Delete et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) à supprimer.: Une erreur détectée nécessite la suppression du document sans qu'il soit remplacé par une autre version (ex. erreur d'association entre le CR et le patient).Le CREATEUR transmet une demande de suppression de document(s) au GESTIONNAIRE.Le GESTIONNAIRE réceptionne cette demande de suppression et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction de suppression du document sur le DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSS (i.e. ; produire les métadonnées XDS).Un message est envoyé par le GESTIONNAIRE vers le(s) destinataire(s) MSSanté indiquant dans le corps du mail que le document doit être supprimé.[cf : Volet Echange de Documents de Santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante).En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.

### Identification des flux

**Figure 12 : Identification des flux**

