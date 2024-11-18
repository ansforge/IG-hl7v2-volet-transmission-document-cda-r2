### Historique du volet au format guide d'implémentation (après novembre 2024)

#### version 2.1.1

**Version mineure sans impact sur le développement (changement de format, corrections de typo, précisions ou ajout d'informations)**

* Modification du format du volet : passage du format PDF au format guide d'implémentation 
* Avant-propos : suppression d’une ligne vide du tableau des conventions HL7, IHE
* Ensemble du document : remplacement adresse courriel adam.hoda@medecin.mssante.fr par adam.hoda@test-ci-sis.mssante.fr
* Volume 1 Etude fonctionnelle
  * & 1.1 : remplacement du terme « section » par « volume 2 »
  * &2.1 : cas d’usage, remplacement des termes « Guide d’implémentation du DMP » par « Guide d’intégration du DMP »
  * &2.2.1 et &3.2 : remplacement du terme « message MDN » par « MDN »
* Volume 2 Etude technique
  * &9 : Choix des standards : suppression de la phrase « Les échanges MSSanté doivent prendre en compte les restrictions positionnées sur le message. (Exemple : un document avec un masquage Médecin ne doit pas être envoyé sur le mail MSSanté du médecin). » qui n’a pas de rapport avec le choix des standards.
  * &12.2.7.1 : suppression du point d’attention sur la cohérence des métadonnées DMP et MSSanté (vide juridique). « un document clinique masqué aux PS ne doit pas être envoyé aux PS par MSSanté ». Le point d’attention est remplacé par une question ouverte.
  * Profils des messages précision sur l'utilisation du code FIN dans NTE-4 dans l'OBX dans le contexte de l'"Echange MSSanté Patient"  ([issue 21](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/21))
  * & 12.2.8.3.4 : exemples de messages d’acquittements de l’ORU ou du MDM : Suppression dans les exemples du MSH-21.1 et MSH-21.2 car les Ack n’ont pas de contraintes particulières par rapport à la spécification international d’un Ack
* Volume 3 Annexes
* Annexe 2 et 3 : remplacement de la référence [9] par la référence [3] et remplacement de la référence [13] par [9]
* Annexe 4 : remplacement de message MDN par MDN (qui signifie d’emblée Message Disposition Notification)
* Ajout mapping VIHF et Metadata XDS ([issue 8](https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/issues/8))




### Historique du volet des anciennes versions au format PDF (avant novembre 2024)

<table>
  <tbody>
    <tr>
      <th>
        <p>Version</p>
      </th>
      <th colspan="6">
        <p>Rédigé par</p>
      </th>
      <th colspan="6">
        <p>Vérifié par</p>
      </th>
      <th colspan="7">
        <p>Validé par</p>
      </th>
    </tr>
    <tr>
      <td rowspan="2">
        <p>0.6</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 26/05/2021</p>
      </td>
      <td colspan="2">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 10/06/2021</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 26/05/2021</p>
      </td>
    </tr>
    <tr>
      <td colspan="19">
        <p>Motif et nature de la modification :</p>
        <p><strong>Création du document / Partage du Documents auprès des éditeurs des Task-Forces du SEGUR du Numérique</strong></p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>1.0</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 10/06/2021</p>
      </td>
      <td colspan="2">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 10/06/2021</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 10/06/2021</p>
      </td>
    </tr>
    <tr>
      <td colspan="19">
        <p>Motif et nature de la modification : <strong>Version validée suite aux retours des éditeurs</strong></p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>1.1</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 02/09/2021</p>
      </td>
      <td colspan="2">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 02/09/2021</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="4">
        <p>Le 02/09/2021</p>
      </td>
    </tr>
    <tr>
      <td colspan="19">
        <p>Motif et nature de la modification : <strong>Modification de la casse sur certains OBX Mise en œuvre de la syntaxe Xpath pour la valorisation des exemples de mails dans le CDA-R2 Ajout d'une précision sur le point 4.4 à propos du transport de plusieurs documents et la messagerie MSSanté</strong></p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>1.2</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 22/12/2022</p>
      </td>
      <td colspan="3">
        <p> </p>
      </td>
      <td colspan="3">
        <p> </p>
      </td>
      <td colspan="4">
        <p> </p>
      </td>
      <td colspan="3">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td colspan="19">
        <p>Motif et nature de la modification :</p>
        <p>·       Changement de titre du volet : « Transmission de documents CDA en HL7v2 »</p>
        <p>·       Mise à jour des diagrammes de cas d'utilisation</p>
        <p>·       Les cas d'usage de remplacement et suppression d'un document via MSSanté ont été précisés.</p>
        <p>·       Le processus « Remplacement d'un document » prend en charge la mise à jour du document, le masquage/démasquage d'un document au patient, la possibilité de rendre visible le document au patient, la possibilité de rendre visible un document aux représentants légaux.</p>
        <p>·       Suppression du processus « Rendre un document visible au patient » </p>
        <p>·       Correction de la métadonnée « INVISIBLE_REPRENSANTS_LEGAUX » en « INVISIBLE_REPRESENTANTS_LEGAUX ».</p>
        <p>·       Correction de l'exemple 7</p>
        <p>·       Utilisation du datatype CWE pour le message MDM (le datatype CE n'existant plus en HL7v2.6)</p>
        <p>·       Réorganisation de la partie 4. Spécification technique des messages</p>
        <p>·       Messages initiaux :</p>
        <p>o   Ajout de la structure des messages ORU_R01, OUL_R22 et MDM_T02.</p>
        <p>o   Les champs PID-18 (numéro de venue pour les hospitalisations), PV1-19 (numéro de venues récurrentes ou de consultation), PV1-44 et PV1-45 (respectivement la date d'entrée et la date de sortie) sont requis si connu afin de pouvoir calculer les indicateurs exigés en SEGUR 1.</p>
        <p>o   Ajout de la version du profil utilisé dans le champ MSH-12.</p>
        <p>o   Pré-adoption du segment PRT de la version 2.9 du standard afin de transmettre l'adresse mail sur laquelle le destinataire peut répondre.</p>
        <p>o   Ajout de métadonnées optionnelles : CORPSMAIL_PS et CORPSMAIL_PATIENT.</p>
        <p>o   Mises à jour des exemples.</p>
        <p>·       Ajout du message d'acquittement</p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>2.0</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="2">
        <p>Le 24/04/2023</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 26/04/2023</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le 26/04/2023</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td colspan="17">
        <p>Motif et nature de la modification :</p>
        <p>·       Suppression du message OUL</p>
        <p>·       Possibilité de transmettre au format CDA-R2 niveau 1 et CDA-R2 niveau 3 un même document dans un même message HL7v2 ORU. Le message HL7v2 MDM ne peut transmettre qu'un seul document.</p>
        <p>·       Pré-adoption du segment PRT de la version 2.9 du standard afin de transmettre l'adresse mail des destinataires MSSanté et les informations de l'expéditeur.</p>
        <p>·       Ajout de la valeur FIN dans le segment NTE suivant le segment OBX permettant de spécifier l'envoi du message MSSanté vers le patient. Le mot FIN permet au PS d'indiquer qu'il ne souhaite pas que le patient lui réponde.</p>
        <p>·       Modification du libellé du code « DESTMSSANTEPS » en « Destinataire (Professionnel de Santé, organisation ou BAL applicative) »</p>
        <p>·       Ajout de la métadonnée ACK_RECEPTION indiquant si l'utilisateur souhaite recevoir un accusé de réception</p>
        <p>·       Ajout de la métadonnée ACK_LECTURE indiquant si l'utilisateur souhaite recevoir un accusé de lecture</p>
        <p>·       Ajout de l'envoi des accusés métier DMP/MSSanté</p>
        <p>·       Ajout de l'acteur DRIMBox-Source comme gestionnaire de documents</p>
        <p>·       La métadonnée « INVISIBLE_REPRESENTANTS_LEGAUX » a été renommé en « INVISIBLE_REP_LEGAUX » afin de respecter le nombre maximum de 20 caractères</p>
        <p>·       La métadonnée « MODIF_CONFIDENTIALITYCODE » a été renommé en « MODIF_CONF_CODE » afin de respecter le nombre maximum de 20 caractères</p>
        <p>·       Création des tables « MétaDMP/MSS » et « AckMetierZAM »</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>2.1</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="2">
        <p>Le 20/10/2023</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td colspan="17">
        <p>Motif et nature de la modification : modifications après projectathon pour passage en concertation publique</p>
        <p>·       Ajout de l'étude fonctionnelle et réorganisation des chapitres pour intégrer les aspects fonctionnels dans une section dédiée</p>
        <p>o   Section 2 : rédaction des cas d'usage</p>
        <p>o   Section 3 : organisation du contexte métier</p>
        <p>o   Section 4 : définition des acteurs, des transactions et tableau des Acteurs/Transactions. Précision apportée sur l'évolution SEGUR qui consiste à intégrer le PDF (Document remis au patient sous forme papier) dans une section dédiée du CDA Niv3. Néanmoins, la possibilité de transmettre 2 formats de documents dans la transaction perdure (pour les systèmes non référencés SEGUR vague2).</p>
        <p>o   Section 5 : définition des processus collaboratifs : suppression des références à l'association XFRM (lien entre CDA Niv3 et CDA Niv1)</p>
        <p>o   Section 6 : ajout du diagramme des flux</p>
        <p>·       Etude technique</p>
        <p>o   Section 7 : Périmètre de la transaction. Précision apportée sur la gestion de l'accusé de lecture MSS, proposé à l'état expérimental mais qui nécessite une étude plus approfondie (remontée DPI/RISàPFIàMSSàCréateur). Etude à mener conjointement GT + ANS (Interop Technique+MSSanté) + DNS</p>
        <p>o   Section 8 : rappel du rôle des acteurs dans la transaction</p>
        <p>o   Section 9 : choix des standards.</p>
        <p>§  Ajout de la contrainte supplémentaire, pré adoptée de la version 2.7, sur les types de données CE et CWE : nécessité de préciser le code/nom du système de codage dont est issu le code,</p>
        <p>§  Référence la version 1.7.4 des « Contraintes sur les types de données HL7 v2.5 applicables aux profils d'intégration du cadre technique IT Infrastructure dans le périmètre d'IHE France » qui intègre l'agrandissement du champ EI-1 du type de données EI (passage de EI-1 à 199).</p>
        <p>o   Section 11 : détail des diagrammes de séquence en fonction des évènements déclencheurs</p>
        <p>o   Section 12.1.1 : ajout de la description du profil complet du message ORU avec cardinalités des segments.</p>
        <p>o   Section 12.1.1 .2 : description fonctionnelle de l'ORU :</p>
        <p>§  Le segment PRT sur le 1° groupe OBSERVATION est Conditionnel et requis (cardinalité 1..*)</p>
        <p>§  Il n'y a plus de référence au format de CDA au niveau des segments OBX</p>
        <p>§  Cardinalité passée à 10..* (au lieu de 0..*) pour les métadonnées</p>
        <p>o   Section 12.1.2 : ajout de la description du profil complet du message MDM avec cardinalités des segments.</p>
        <p>o   Section 12.1.2 .2 : description fonctionnelle de MDM :</p>
        <p>§  Le segment PRT sur le 1° groupe OBXNTE est Conditionnel et requis (cardinalité 1..*)</p>
        <p>§  Il n'y a plus de référence au format de CDA au niveau du segment OBXNTE</p>
        <p>§  Cardinalité passée à 10..* (au lieu de 0..*) pour les métadonnées</p>
        <p>§  Suppression de la référence au livre blanc « Harmonisation des modalités de communication des documents médicaux » v1.0 publié par Interop'Santé</p>
        <p>o   Section 12.2 Contraintes appliquées aux messages MDM et ORU : regroupement dans une section commune des contraintes</p>
        <p>o   Section 12.2.3 : données concernant les demandes de traitement sur les documents</p>
        <p>§  Le 1° segment PRT permet de préciser l'expéditeur de la demande de traitement sur le document (publication/remplacement/suppression) et non pas l'auteur du document. Ceci pour générer le VIHF du PS qui demande le traitement sur le DMP.</p>
        <p>§  Les tableaux listent l'ensemble des segments et des champs requis à renseigner obligatoirement, dans l'ordre indiqué.</p>
        <p>o   Section 12.2.3 : précisions sous forme d'un tableau des contraintes apportées sur le segment TXA (uniquement pour message MDM)</p>
        <p>o   Section 12.2.4 : description du segment ORC</p>
        <p>o   Section 12.2.5 : description du segment OBR</p>
        <p>o   Section 12.2.7 : métadonnées DMP/ MSSanté : ces segments OBX sont requis (sauf les 2 derniers : corps du mail patient et PS) et doivent apparaître dans l'ordre indiqué. La valeur doit être Y ou N.</p>
        <p>§  Précision sur la valeur d'OBX-5.1</p>
        <p>o   Section 12.3.2.3 : ajout de la description du segment ERR au niveau du message d'acquittement technique</p>
        <p>o   Section 12.3.2.4 : ajout d'exemples de messages d'acquittement</p>
        <p>o   Section 13 : modification du tableau, ajout de toutes les métadonnées requises</p>
        <p>·       Annexe 2 et Annexe 3 : correction des exemples de messages pour tenir compte de la contrainte ajouté sur les types de données CE et CWE (code+codeSystem dont est issu le code)</p>
        <p>·       Annexe 5 : proposition d'une liste de codes erreur SMTP</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>2.1</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="2">
        <p>Le 19/01/2024</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le</p>
      </td>
      <td colspan="3">
        <p>DNS</p>
      </td>
      <td colspan="3">
        <p>Le 29/02/2024</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td colspan="17">
        <p>Motif et nature de la modification : Prise en compte des retours de concertation publique (27/11/2023 au 08/12/2023) et prise en compte des modifications demandées par la DNS après clôture de la période de concertation publique.</p>
        <p>·       Rédaction des questions ouvertes</p>
        <p>·       Section 1.1 : référence au volet Transmission d'un document CDA provenant d'un courriel MSS de façon à mettre en exergue le lien entre le présent volet et le volet référencé</p>
        <p>·       Volume 1 - Etude fonctionnelle</p>
        <p>o   Section 2 : complétude des cas d'usage</p>
        <p>o   Section 4.1 : liste des acteurs et transactions, au niveau du CREATEUR, la demande de traitement sur le(s) document(s) est envoyée vers une BAL MSS qui n'est pas obligatoirement externe à l'établissement (elle peut être interne)</p>
        <p>o   Section 4.2 : diagramme des acteurs/transactions.</p>
        <p>§  Précision apportée pour expliquer que dans le cadre du SEGUR, la transaction Provide&amp;Register Document Set-b est implémentée par les transactions TD2.2 et TD3.3c.</p>
        <p>§  Précisions apportées sur les accusés métier de réception DMP, réception MSS et accusé de lecture MSS</p>
        <p>o   Section 4.3 : regroupement des acteurs</p>
        <p>§  Groupement de l'acteur CREATEUR avec l'acteur IHE Content Creator</p>
        <p>§  L'acteur GESTIONNAIRE fait référence au GI DMP dans le contexte du SEGUR</p>
        <p>o   Section 5 : améliorations de rédaction des processus. Précision, dans le cadre du SEGUR, le PDF est inclus dans une section dédiée du CDA Niv3</p>
        <p>·       Volume 2 - Etude technique</p>
        <p>o   Section 8 : rôle des acteurs, préciser au niveau de l'acteur CREATEUR que le retour des messages métiers n'est pas obligatoire dans le volet (obligatoires dans le cadre du SEGUR vague 2)</p>
        <p>o   Section 9 : choix des standards</p>
        <p>§  Référencement de la version 2.11 de la version française PAM.FR</p>
        <p>§  Référencement de la version 1.8 des types de données HL7 en France (passage de la longueur du champ ED-1 de 16 caractères à 128 caractères</p>
        <p>o   Section 11.2 : implémentation du message ORU. Ajout d'une phrase en dessous de la figure 14 pour expliquer que le type de demande de traitement du document est porté en particulier par le champ OBX-11. La figure 14 n'a pas été dupliquée pour chaque cas d'usage (demande d'intégration, de remplacement ou de suppression de(s) document(s)</p>
        <p>o   Section 11.3 : ajout des diagrammes de séquence pour le message MDM</p>
        <p>o   Section 12.1.1.1 : modification du profil de message ORU, suppression du segment SPECIMEN,</p>
        <p>o   Section 12.2.2 : segment PV1, les champs sont requis si connus pour permettre le calcul des indicateurs dans toute situation, non pas uniquement dans le contexte du SEGUR.</p>
        <p>o   Section 12.2.4 : segment ORC, préciser que la valeur ORC-1 doit être cohérente avec la valeur du champ OBX-11</p>
        <p>o   Section 12.2.6 : OBX contenant le document et la demande de traitement sur le document.</p>
        <p>§  Précision pour expliquer qu'il est préférable de renseigner uniquement les champs spécifiés dans cette section, de façon à ne pas introduire d'incohérences entre le message HL7 et le contenu du document CDA. En cas de précision d'autres éléments, le destinataire n'a pas l'obligation d'analyser ces champs supplémentaires.</p>
        <p>§  Précision apportée sur le PRT destinataire : le destinataire peut être le patient</p>
        <p>§  Ajout du champ PRT-8.1 (nom de l'organisation) sur l'expéditeur et le destinataire.</p>
        <p>§  PRT-4 : nom de table HL70136 remplacé par « participation »</p>
        <p>§  Exemple pour un CR d'imagerie : ajout de l'identifiant du PS</p>
        <p>o   Section 12.2.8.3.1 : suppression de la référence au profil de message CISIS_CDA_HL7_V2 au niveau du champ MSH-21 du message d'acquittement. MSH-18 : possibilité d'utiliser les 2 valeurs UNICODE UTF-8 ou 8859/15 quelle que soit la version d'HL7</p>
        <p>o   Segment 12.3.3.4 : ajout du segment ERR au message ZAM-Z03</p>
        <p>·       Annexe 2 et Annexe 3 : ajout de l'identifiant du PS dans les exemples et modification des exemples pour prendre en compte les modifications apportées par cette version</p>
        <p>·       Annexe 5 : proposition d'une table des codes d'erreur MSSanté</p>
        <p>·       Annexe 6 : table des erreurs de traitement du message HL7 MDM du volet « Transmission au LPS d'un document CDA provenant d'un courriel MSSanté »</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>2.1</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="2">
        <p>Le</p>
      </td>
      <td colspan="3">
        <p>ANS</p>
      </td>
      <td colspan="3">
        <p>Le</p>
      </td>
      <td colspan="3">
        <p>DNS</p>
      </td>
      <td colspan="3">
        <p>Le</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
    <tr>
      <td colspan="17">
        <p>Motif et nature de la modification : Prise en compte des retours de concertation (4 au 18 mars 2024)</p>
        <p>·       Ajout du paragraphe 1.2 : ce dont ne traite pas ce volet</p>
        <p>·       Partie fonctionnelle</p>
        <p>o   Cas d'usage 2.1 : correction de l'adresse mail du Dr Dupont : <a href="mailto:jean.dupont@hopital-A.mssante.fr">jean.dupont@hopital-A.mssante.fr</a></p>
        <p>o   Cas d'usage 2.2 : précision apportée : Le laboratoire d'analyse ainsi que le CH Martin sont dotés de PFI qui gèrent l'échange de courriel entre la BAL applicative du laboratoire et la BAL applicative du DPI de l'établissement consommateur.</p>
        <p>o   Paragraphe 2.3.1 : cas d'usage, transmission d'une BAL orga vers une BAL orga : précisions apportées sur le point d'attention juste avant la figure 4.</p>
        <p>o   Paragraphe 3.2 : processus, précisions apportées sur la mise à jour des métadonnées du document qui en France est limitée à la mise à jour des informations de masquage aux PS et de visibilité au patient ainsi qu'au statut du document.</p>
        <p>o   Paragraphe 4.2 : acteurs/transactions.</p>
        <p>§  La transaction Provide&amp;Register Document set-b est mise en œuvre via les transactions TD2.1 ou TD2.2 dans le cadre de l'alimentation du DMP.</p>
        <p>§  Suppression du caractère expérimental de l'accusé de lecture à la demande de la DNS. La réflexion concernant cet accusé de lecture est portée par le cas d'usage 2.3</p>
        <p>o   Paragraphe 5.1, 5.2 et 5.3 : processus collaboratifs</p>
        <p>§  Précision apportée pour la transmission via MSSanté : l'INS qualifié n'est pas obligatoire.</p>
        <p>·       Partie technique</p>
        <p>o   Paragraphe 12.1.1 et 12.2.1 : modification des profils de message ORU et MDM</p>
        <p>§  Le segment PRT est conditionnel et requis, il doit exister au moins un expéditeur ou un destinataire (en fonction de la demande exprimée par le créateur). La cardinalité du PRT passe de [0..*] à [1..*]</p>
        <p>o   Paragraphe 12.2.3 : segment TXA</p>
        <p>§  Ajout des règles de peuplement des sous champs TXA-12.1, TXA-12.2, TXA-12.3 et TXA-12.4 (idem pour TXA-13)</p>
        <p>o   Paragraphe 12.2.6 : segment OBX portant la demande de traitement sur document(s)</p>
        <p>§  Ajout PRT-5.2, PRT-5.3 et PRT-5.9 sur l'expéditeur</p>
        <p>§  Précision des OIDs pour les PS et organisations destinataires et sur les types d'identifiants d'organisations</p>
        <p>§  Précision apportée sur le PRT destinataires qui peut être un PS ou un patient</p>
        <p>o   Paragraphes 12.3.3.1, 12.3.3.2 et 12.3.3.3 :</p>
        <p>§  Ajout des contraintes sur le MSH sur les messages ZAM_Z01, ZAM_Z02 et ZAM_Z03.</p>
        <p>§  Remplacement des noms de tables HL70357 et HL70533 par messageErrorCode et applicationErrorCode</p>
        <p>§  Ajout du champ ERR-5 (erreurs applicatives) au message ZAM_Z03</p>
        <p>§  Ajout d'un texte explicatif en 12.3.3.3 sur la façon de générer le segment ERR pour l'accusé de lecture/traitement de la demande</p>
        <p>o   Paragraphe 13 : corrections d'erreurs</p>
        <p>·       Annexe 6 : codes erreurs de la demande de traitement à remonter dans le message HL7 ZAM_Z03 : table initiale scindée en 2 tables : codes d'erreur techniques et codes erreurs applicatifs</p>
      </td>
      <td colspan="2">
        <p> </p>
      </td>
    </tr>
  </tbody>
</table>