### Table « SMTPERRORCODE »

La table « SMTPERRORCODE » utilisé dans le champ ERR-5 du message `ZAM^Z02^ZAM_Z01` contient le code d’erreur remonté lors de la distribution du ou des document(s) par MSSanté dans le serveur de messagerie du destinataire MSSanté : 

<table>
  <tbody>
    <tr>
      <th>
        <p>Code</p>
      </th>
      <th>
        <p>Libellé</p>
      </th>
      <th>
        <p>CodeSystem</p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>101</strong></p>
      </td>
      <td>
        <p>Le serveur n'arrive pas à se connecter.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>111</strong></p>
      </td>
      <td>
        <p>Connexion refusée ou impossibilité d'ouvrir un flux SMTP.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>251</strong></p>
      </td>
      <td>
        <p>Le compte du destinataire n'est pas sur le serveur actuel. L'envoi sera donc relayé à un autre serveur.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>252</strong></p>
      </td>
      <td>
        <p>Le serveur ne peut pas vérifier l'utilisateur. Il confirme cependant qu'il essaiera de transmettre le message malgré tout</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>420</strong></p>
      </td>
      <td>
        <p>« Problème de connexion de temporisation » : il y a eu des problèmes pendant le transfert du message.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>421</strong></p>
      </td>
      <td>
        <p>Le service est indisponible en raison d'un problème de connexion.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>422</strong></p>
      </td>
      <td>
        <p>La boîte aux lettres du destinataire a dépassé sa limite de stockage.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>431</strong></p>
      </td>
      <td>
        <p>Espace insuffisant sur le disque, ou état de mémoire insuffisante en raison d'une surcharge de fichiers.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>432</strong></p>
      </td>
      <td>
        <p>Mot de passe de transition nécessaire</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>441</strong></p>
      </td>
      <td>
        <p>Le serveur du destinataire ne répond pas</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>442</strong></p>
      </td>
      <td>
        <p>La connexion a été interrompue pendant la transmission</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>450</strong></p>
      </td>
      <td>
        <p>Action non effectuée : boîte-aux-lettres non disponible [Ex., bloquée par un autre utilisateur]</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>451</strong></p>
      </td>
      <td>
        <p>Action arrêtée : erreur de traitement</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>452</strong></p>
      </td>
      <td>
        <p>Action non effectuée : manque de ressources système.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>500</strong></p>
      </td>
      <td>
        <p>Erreur de syntaxe, commande non reconnue [y compris des erreurs de type « ligne de commande trop longue »]</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>501</strong></p>
      </td>
      <td>
        <p>Erreur de syntaxe dans des paramètres ou arguments de commande</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>502</strong></p>
      </td>
      <td>
        <p>Commande non implémentée</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>503</strong></p>
      </td>
      <td>
        <p>Mauvaise séquence de commandes</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>504</strong></p>
      </td>
      <td>
        <p>Paramètre de commande non implémenté</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>510</strong></p>
      </td>
      <td>
        <p>Mauvaise adresse courriel</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>512</strong></p>
      </td>
      <td>
        <p>Ce code indique une erreur DNS. Le serveur hôte du nom de domaine du destinataire est introuvable.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>513</strong></p>
      </td>
      <td>
        <p>Le type d'adresse est incorrect. Souvent un problème lié à une faute d'orthographe. Dans de rares cas, il peut être lié à un problème d'authentification.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>523</strong></p>
      </td>
      <td>
        <p>La taille totale de votre mailing dépasse les limites du serveur destinataire.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>530</strong></p>
      </td>
      <td>
        <p>L'authentification est requise. Vous devez authentifier votre compte de messagerie avant d'envoyer un e-mail</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>541</strong></p>
      </td>
      <td>
        <p>L'adresse du destinataire a rejeté votre message. Dans la plupart des cas, c'est une erreur causée par un filtre anti-spam.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>550</strong></p>
      </td>
      <td>
        <p>Action non effectuée : boîte aux lettres non disponible (ex. : boîte-aux-lettres non trouvée, pas d'accès).</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>551</strong></p>
      </td>
      <td>
        <p>Un relais peut être interrompu car votre adresse et celle du destinataire ne sont pas hébergées localement par le serveur.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>552</strong></p>
      </td>
      <td>
        <p>Action abandonnée - Allocation de stockage dépassée. La boîte aux lettres du destinataire a dépassé ses limites.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>553</strong></p>
      </td>
      <td>
        <p>La commande a été abandonnée car le nom de la boîte aux lettres n'est pas valide.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>554</strong></p>
      </td>
      <td>
        <p>Cela signifie que l'envoi a échoué. Ce code indique une erreur permanente et le serveur n'essaiera pas d'envoyer le message à nouveau.</p>
      </td>
      <td>
        <p>SMTPERRORCODE </p>
      </td>
    </tr>
  </tbody>
</table>

### Codes erreurs de l’accusé métier de lecture/traitement de la demande

Les tables **HL70357** (dont le nom symbolique est messageErrorCondition) et **HL70533** (dont le nom symbolique est applicationErrorCode) sont décrites dans le volet « [Transmission au LPS d’un document CDA provenant d’un courriel MSsanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » du CI_SIS.

La table HL7 **messageErrorCondition** est utilisée par l’acteur CONSOMMATEUR (DPI/RIS…) en cas d’erreur technique du message HL7 MDM (erreur de syntaxe).
La nature de l’erreur est renseignée dans le champ ERR-3 de la structure du message ACK renvoyé par le CONSOMMATEUR au niveau du GESTIONNAIRE (PFI).


<table>
  <tbody>
    <tr>
      <th>
        <p>Code</p>
      </th>
      <th>
        <p>Libellé</p>
      </th>
      <th>
        <p>Description</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>0</p>
      </td>
      <td>
        <p>Message accepted</p>
      </td>
      <td>
        <p>Message accepté</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>100</p>
      </td>
      <td>
        <p>Segment sequence error</p>
      </td>
      <td>
        <p>Les segments ne sont pas dans le bon ordre ou il manque un ou plusieurs segments requis</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>101</p>
      </td>
      <td>
        <p>Required field missing</p>
      </td>
      <td>
        <p>Un champ requis dans un segment est manquant</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>102</p>
      </td>
      <td>
        <p>Data type error</p>
      </td>
      <td>
        <p>Erreur sur un type de donnée</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>103</p>
      </td>
      <td>
        <p>Table value not found</p>
      </td>
      <td>
        <p>Table non trouvée</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>198</p>
      </td>
      <td>
        <p>Non-conformant cardinality</p>
      </td>
      <td>
        <p>Erreur de cardinalité sur un champ du message</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>199</p>
      </td>
      <td>
        <p>Other HL7 Error</p>
      </td>
      <td>
        <p>Autre type d'erreur concernant la syntaxe du message HL7</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>200</p>
      </td>
      <td>
        <p>Unsupported message type</p>
      </td>
      <td>
        <p>Type de message non supporté</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>201</p>
      </td>
      <td>
        <p>Unsupported event code</p>
      </td>
      <td>
        <p>Code évènement non supporté</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>202</p>
      </td>
      <td>
        <p>Unsupported processing</p>
      </td>
      <td>
        <p>Code process non supporté</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>203</p>
      </td>
      <td>
        <p>Unsupported version</p>
      </td>
      <td>
        <p>Version HL7 non supportée</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>207</p>
      </td>
      <td>
        <p>Application error</p>
      </td>
      <td>
        <p>Erreur de niveau applicatif dont le contenu est détaillé dans le champ ERR-5</p>
      </td>
    </tr>
  </tbody>
</table>
La table **user-defined applicationErrorCondition** est utilisée par l’acteur CONSOMMATEUR (DPI/RIS…) en cas d’erreur d’intégration/de remplacement ou de suppression du document CDA au niveau du CONSOMMATEUR.
La nature de l’erreur applicative est renseignée dans le champ ERR-5 de la structure du message ACK renvoyé par le CONSOMMATEUR au niveau du GESTIONNAIRE de l’établissement.
Cette table est fournie à titre indicatif et pourra être enrichie si besoin, en fonction des retours d’implémentation.

<table>
  <tbody>
    <tr>
      <td>
        <p><strong>Code</strong></p>
      </td>
      <td>
        <p><strong>Libellé</strong></p>
      </td>
      <td>
        <p><strong>Description</strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>900</p>
      </td>
      <td>
        <p>Version du document incorrecte lors d'une demande de remplacement/suppression</p>
      </td>
      <td>
        <p>Lors d'une demande de remplacement ou suppression d'un document, la version de document transmise dans le message HL7 ne correspond pas à la version la plus récente du document existant au niveau de l'application réceptrice (consommateur)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>901</p>
      </td>
      <td>
        <p>Auteur non autorisé à remplacer ou supprimer un document</p>
      </td>
      <td>
        <p>Lors d'une demande de remplacement ou suppression d'un document, l'acteur qui demande le traitement sur le document doit être l'auteur du document ou un acteur qui appartient à la même organisation que l'auteur du document original. Dans le cas contraire, le message est rejeté.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>902</p>
      </td>
      <td>
        <p>Identifiant patient inconnu</p>
      </td>
      <td>
        <p>Le patient pour lequel le traitement sur le document est demandé est inconnu de l'application réceptrice (consommateur)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>903</p>
      </td>
      <td>
        <p>INS non présent dans le document</p>
      </td>
      <td>
        <p>Le document CDA contenu dans le message contient une liste d'identifiants de patient mais pas l'INS. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>904</p>
      </td>
      <td>
        <p>L'INS transmis ne correspond pas exactement à celui stocké dans la base du consommateur</p>
      </td>
      <td>
        <p>L'INS du patient est présent dans le document CDA contenu dans le message HL7 mais les traits ou le matricule ne correspondent pas exactement à ceux stockés dans le système consommateur. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>905</p>
      </td>
      <td>
        <p>L’INS transmis n’est pas complet</p>
      </td>
      <td>
        <p>Le matricule INS du patient est présent dans le document CDA contenu dans le message HL7 mais l'ensemble des traits de l’INS ne sont pas présents. Dans ce cas, la demande de traitement sur le document (intégration/remplacement/suppression) ne peut pas être réalisée de façon automatique par le système consommateur.</p>
      </td>
    </tr>
   <tr>
      <td>
        <p>906</p>
      </td>
      <td>
        <p>Erreur 'Autre'</p>
      </td>
      <td>
        <p>Si les autres codes erreurs ne correspondent pas au cas d'erreur rencontré ce code erreur peut être utilisé.</p>
      </td>
    </tr>
  </tbody>
</table>
