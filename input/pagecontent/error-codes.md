### Table « SMTPERRORCODE »

La table « SMTPERRORCODE » utilisé dans le champ ERR-5 du message ZAM^Z02^ZAM_Z01 contient le code d’erreur remonté lors de la distribution du ou des document(s) par MSSanté dans le serveur de messagerie du destinataire MSSanté : 

<table>
 <tbody><tr>
  <td>
  <p><b>Code<o></o:p></b></p>
  </td>
  <td>
  <p><b>Libellé<o></o:p></b></p>
  </td>
  <td>
  <p><b>CodeSystem</b><b><o></o:p></b></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>101</b><o></o:p></p>
  </td>
  <td>
  <p>Le serveur n'arrive pas à se connecter.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>111</b><o></o:p></p>
  </td>
  <td>
  <p>Connexion
  refusée ou impossibilité d’ouvrir un flux SMTP.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>251</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Le compte du
  destinataire n’est pas sur le serveur actuel. L'envoi sera donc relayé à un
  autre serveur.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>252<o></o:p></b></p>
  </td>
  <td>
  <p>Le serveur ne
  peut pas vérifier l’utilisateur. Il confirme cependant qu'il essaiera de
  transmettre le message malgré tout<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>420</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>« Problème de
  connexion de temporisation » : il y a eu des problèmes pendant le transfert
  du message.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>421<o></o:p></b></p>
  </td>
  <td>
  <p>Le service
  est indisponible en raison d’un problème de connexion.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>422</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>La boîte aux lettres
  du destinataire a dépassé sa limite de stockage.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>431<o></o:p></b></p>
  </td>
  <td>
  <p>Espace
  insuffisant sur le disque, ou état de mémoire insuffisante en raison d’une
  surcharge de fichiers.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>432</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Mot de passe de
  transition nécessaire<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>441<o></o:p></b></p>
  </td>
  <td>
  <p>Le serveur du
  destinataire ne répond pas<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>442</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>La connexion a été interrompue pendant la transmission<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>450<o></o:p></b></p>
  </td>
  <td>
  <p>Action non
  effectuée: boîte-aux-lettres non disponible [Ex., bloquée<br>
  par un autre utilisateur]<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>451</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Action arrêtée:
  erreur de traitement<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>452<o></o:p></b></p>
  </td>
  <td>
  <p>Action non
  effectuée: manque de ressources système.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>500</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Erreur de syntaxe,
  commande non reconnue [y compris des erreurs de<br>
  type «ligne de commande trop longue»]<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>501<o></o:p></b></p>
  </td>
  <td>
  <p>Erreur de
  syntaxe dans des paramètres ou arguments de commande<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>502</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Commande non
  implémentée<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>503<o></o:p></b></p>
  </td>
  <td>
  <p>Mauvaise
  séquence de commandes<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>504</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Paramètre de commande
  non implémenté<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>510<o></o:p></b></p>
  </td>
  <td>
  <p>Mauvaise adresse courriel<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>512</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Ce code indique une
  erreur DNS. Le serveur hôte du nom de domaine du destinataire est
  introuvable.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>513<o></o:p></b></p>
  </td>
  <td>
  <p>Le type
  d’adresse est incorrect. Souvent un problème lié à une faute
  d’orthographe. Dans de rares cas, il peut être lié à un problème
  d’authentification.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>523</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>La taille totale de
  votre mailing dépasse les limites du serveur destinataire.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>530<o></o:p></b></p>
  </td>
  <td>
  <p>L'authentification
  est requise. Vous devez authentifier votre compte de messagerie avant
  d'envoyer un e-mail<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>541</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>L’adresse du
  destinataire a rejeté votre message. Dans la plupart des cas, c’est une
  erreur causée par un filtre anti-spam.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>550<o></o:p></b></p>
  </td>
  <td>
  <p>Action non
  effectuée: boîte aux lettres non disponible (ex.:
  boîte-aux-lettres<br>
  non trouvée, pas d’accès).<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>551</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>Un relais peut être
  interrompu car votre adresse et celle du destinataire ne sont pas hébergées localement
  par le serveur.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>552<o></o:p></b></p>
  </td>
  <td>
  <p>Action
  abandonnée – Allocation de stockage dépassée. La boîte aux lettres du
  destinataire a dépassé ses limites.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>553</b><b><o></o:p></b></p>
  </td>
  <td>
  <p>La commande a été
  abandonnée car le nom de la boîte aux lettres n'est pas valide.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
 <tr>
  <td>
  <p><b>554<o></o:p></b></p>
  </td>
  <td>
  <p>Cela signifie
  que l'envoi a échoué. Ce code indique une erreur permanente et le serveur
  n’essaiera pas d’envoyer le message à nouveau.<o></o:p></p>
  </td>
  <td>
  <p>SMTPERRORCODE<o></o:p></p>
  </td>
 </tr>
</tbody>
</table>
