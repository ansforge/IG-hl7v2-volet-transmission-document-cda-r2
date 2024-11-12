Pour l'ensemble des processus décrits :

-   L'accusé de réception MSSanté correspond à la prise en compte du courriel par le serveur de messagerie du destinataire du courriel,

-   L'accusé de lecture MSSanté défini par la [RFC 8098](https://datatracker.ietf.org/doc/html/rfc8098) (Message Disposition Notification) comprend un élément dénommé Disposition types qui rend compte à l'expéditeur du courriel du traitement advenu sur ce courriel au niveau du destinataire : lecture du courriel, transfert du courriel, traitement automatique du courriel, suppression du courriel.

#### Processus collaboratif « Demande de transmission initiale de document(s) »

<div class="figure" style='text-align: center;'>
    <img src="image13.png" alt="Figure 9" title="Figure 9 : Processus collaboratif « Demande de transmission initiale de document(s) » pour publication sur DMP et envoi par MSS" style="width:60%;">
    <figcaption><b>Figure 9 : Processus collaboratif « Demande de transmission initiale de document(s) » pour publication sur DMP et envoi par MSS</b></figcaption>
</div>    
<br>

<table>
  <tbody>
    <tr>
      <th>
        <p>Service Attendu</p>
      </th>
      <td>
        <p>Le CREATEUR émet le(s) document(s) validé(s) vers le GESTIONNAIRE qui publie ce(s) document(s) sur le DMP et/ou réalise un envoi par MSSanté.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Pré-Conditions</p>
      </th>
      <td>
        <p>Les métadonnées de contexte DMP/MSSanté doivent être renseignées (soit par paramétrage de l'application soit par l'utilisateur) et l'utilisateur doit valider ce(s) document(s) au niveau de l'application métier dans laquelle il a été généré via un statut de validation géré en interne. Chaque document CDA doit être valide et disponible.</p>
        <p>L'INS du patient est obligatoirement qualifiée dans le cas où la publication sur le DMP est demandée.</p>
        <p>Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Post-Conditions</p>
      </th>
      <td>
        <p>Le document est partagé sur le DMP et/ou reçu par le(s) destinataire(s) via MSSanté.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Contraintes fonctionnelles</p>
      </th>
      <td>
        <p>Dans le cas où le CREATEUR de documents transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), ces 2 documents sont transmis simultanément dans la même transaction. (Note1)</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Scénario Nominal</p>
      </th>
      <td>
        <p>Le CREATEUR transmet une demande de transmission initiale de document(s) au GESTIONNAIRE en précisant si ce(s) document(s) doit(vent) être transmis au DMP et/ou à un ou plusieurs destinataire(s) via la MSSanté.</p>
        <p>Le CREATEUR permet également à l'utilisateur de préciser les métadonnées DMP/MSSanté : masquage au(x) PS, visibilité au patient, visibilité au(x) représentant(s) légaux. Il permet également à l'utilisateur de préciser s'il souhaite recevoir un accusé de réception DMP/MSSanté et/ou un accusé de lecture MSSanté.</p>
        <p>Le GESTIONNAIRE réceptionne cette demande et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction d'alimentation du DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSSanté (i.e. ; produire les métadonnées XDS).</p>
        <p>En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.</p>
        <p>Dans le cas de la DrimBox, seule l'alimentation du DMP avec le document de référence d'objets d'examen d'imagerie (KOS) est réalisée. La DRIMBox-Source n'est pas concernée par la MSSanté.</p>
      </td>
    </tr>
  </tbody>
</table>

**(Note 1)** : _les systèmes référencés SEGUR vague 2 ne sont pas concernés car, dans ce cas, le PDF est inclus dans une section du CDA Niv3._

#### Processus collaboratif « Demande de remplacement de document(s) »

<div class="figure" style='text-align: center;'>
    <img src="image14.png" alt="Figure 10" title="Figure 10 : Processus collaboratif « Demande de remplacement de document(s) » pour publication sur DMP et envoi par MSSanté" style="width:60%;">
    <figcaption><b>Figure 10 : Processus collaboratif « Demande de remplacement de document(s) » pour publication sur DMP et envoi par MSSanté</b></figcaption>
</div>    
<br>

Le processus « Demande de remplacement de document(s) permet également
de gérer la mise à jour des métadonnées associées au(x) document(s). En
effet, la PFI, en authentification indirecte vis-à-vis du DMP, n'a pas
la possibilité d'utiliser la transaction « TD3.3 Gestion des attributs
d'un document » du profil Alimentation du DMP car celle-ci nécessite une
authentification directe.

Ainsi, dans le cas d'une demande de mise à jour des métadonnées de
masquage/démasquage aux PS et de visibilité du document au patient, une
nouvelle version de document est générée par le CREATEUR de documents.
Cette nouvelle version vient remplacer la précédente au niveau du
consommateur (DMP et/ou application métier destinatrice).

<table>
  <tbody>
    <tr>
      <th>
        <p>Service Attendu</p>
      </th>
      <td>
        <p>Le CREATEUR émet une demande de remplacement de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Replace et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) remplaçant le(s) document(s) initialement envoyés.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Pré-Conditions</p>
      </th>
      <td>
        <p>Le document CDA doit être disponible, validé et identifié comme remplaçant un document précédemment envoyé par MSSanté et/ou publié sur le DMP.</p>
        <p>L'INS du patient doit être obligatoirement qualifié dans le cas où le remplacement du document est demandé au niveau du DMP.</p>
        <p>Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Post-Conditions</p>
      </th>
      <td>
        <p>La nouvelle version de document est publiée sur le DMP et envoyée par MSSanté (Patient et/ou PS). L'ancienne version de document est mise au statut « Deprecated » au niveau du CONSOMMATEUR MSSanté et/ou sur le DMP.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Contraintes fonctionnelles</p>
      </th>
      <td>
        <p>Dans le cas où le CREATEUR de document(s) transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), le remplacement (ou de la mise à jour des métadonnées) d'un des formats doit s'accompagner du remplacement (ou de la mise à jour des métadonnées) du format lié. La transaction doit contenir les 2 nouvelles versions de documents. Cf Note 1</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Scénario Nominal</p>
      </th>
      <td>
        <p>Le CREATEUR transmet une demande de remplacement de document(s) au GESTIONNAIRE. Il peut s'agir de mettre jour le document, de masquer/démasquer le document aux PS, de rendre visible le document au patient ou de rendre visible le document aux représentants légaux.</p>
        <p> </p>
        <p>Le GESTIONNAIRE réceptionne cette demande de remplacement et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction d'alimentation du DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSS (i.e. ; produire les métadonnées XDS).</p>
        <p>Le code RPLC dans clinicalDocument/relatedDocument@typeCode dans le CDA-R2 <a href="https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante">[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]</a> permet de constituer l'association RPLC dans la soumission XDS sur le DMP pour le remplacement <a href="https://industriels.sesam-vitale.fr">[cf: SESAM-VITALE : Service DMP intégré aux LPS]</a>.</p>
        <p> </p>
        <p>En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.</p>
      </td>
    </tr>
  </tbody>
</table>

**Note 1** : _les systèmes référencés SEGUR vague 2 ne sont pas concernés car, dans ce cas, le PDF est inclus dans une section du CDA Niv3._

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> La mise à jour du document ou de ses métadonnées de masquage/visibilité a pour impact la création d'une nouvelle version du document avec un nouvel identifiant et une nouvelle séquence hash.
    </p>
</blockquote>

#### Processus collaboratif « Demande de suppression de document(s) »

<div class="figure" style='text-align: center;'>
    <img src="image15.png" alt="Figure 11" title="Figure 11 : Processus collaboratif « Demande de suppression de document(s) » pour publication sur DMP et envoi par MSSanté" style="width:60%;">
    <figcaption><b>Figure 11 : Processus collaboratif « Demande de suppression de document(s) » pour publication sur DMP et envoi par MSSanté</b></figcaption>
</div>    
<br>

<table>
  <tbody>
    <tr>
      <th>
        <p>Service Attendu</p>
      </th>
      <td>
        <p>Le CREATEUR émet une demande de suppression de document(s) vers le GESTIONNAIRE. Celui-ci réalisera ensuite le relais vers le DMP pour réaliser un Delete et vers MSSanté pour réaliser un nouvel envoi contenant le(s) document(s) à supprimer.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Pré-Conditions</p>
      </th>
      <td>
        <p>Le document a été envoyé préalablement pour soumission au DMP et/ou pour envoi par MSSanté.</p>
        <p>L'INS du patient doit obligatoirement être qualifié dans le cas où la suppression du document du DMP est demandée.</p>
        <p>Une dérogation valable jusqu'à fin 2023, puis renouvelable jusqu'à sa révocation qui sera indiquée dans les futures versions du référentiel socle MSSanté#2, permet d'échanger un courriel par MSSanté en l'absence d'un INS qualifié.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Post-Conditions</p>
      </th>
      <td>
        <p>Le document est supprimé du DMP (availabilityStatus = Deleted) <a href="https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante">[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]</a></p>
        <p>TD3.3 (Supprimer un document) <a href="https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante">[cf: volet CI-SIS : CONTENU_VOLET-STRUCTURATION-MINIMALE]</a></p>
        <p>Le document est également supprimé au niveau de chacun des destinataire(s) de l'envoi par MSS.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Contraintes fonctionnelles</p>
      </th>
      <td>
        <p>Dans le cas où le CREATEUR de documents transmet les 2 formats de documents séparément (CDA Niv1 et CDA Niv3), la suppression d'un des formats doit s'accompagner de la suppression du format lié. La transaction doit contenir les 2 formats de document à supprimer. Hors périmètre SEGUR.</p>
      </td>
    </tr>
    <tr>
      <th>
        <p>Scénario Nominal</p>
      </th>
      <td>
        <p>Une erreur détectée nécessite la suppression du document sans qu'il soit remplacé par une autre version (ex. erreur d'association entre le CR et le patient).</p>
        <p>Le CREATEUR transmet une demande de suppression de document(s) au GESTIONNAIRE.</p>
        <p>Le GESTIONNAIRE réceptionne cette demande de suppression et utilise les informations portées par la transaction ainsi que les informations contenues dans le(s) document(s) CDA pour réaliser la transaction de suppression du document sur le DMP et/ou l'envoi vers le(s) destinataire(s) (Patient et/ou PS) via la MSS (i.e. ; produire les métadonnées XDS).</p>
        <p>Un message est envoyé par le GESTIONNAIRE vers le(s) destinataire(s) MSSanté indiquant dans le corps du mail que le document doit être supprimé.</p>
        <p><a href="https://esante.gouv.fr/volet-echange-de-documents-de-sante">cf : Volet Echange de Documents de Santé</a>.</p>
        <p>En fonction de la demande, le GESTIONNAIRE transmet au CREATEUR l'accusé de réception DMP, l'accusé de réception MSSanté et/ou l'accusé de lecture MSSanté.</p>
      </td>
    </tr>
  </tbody>
</table>
