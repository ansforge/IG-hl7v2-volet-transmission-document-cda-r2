#### Liste des Acteurs et systèmes concernés

Le présent volet met en œuvre les Acteurs IHE suivants, représentant le
rôle joué par un ou plusieurs composants du système d'information :
<table>
  <tbody>
    <tr>
      <th>
        <p>Acteur</p>
      </th>
      <th>
        <p>Description</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>CREATEUR</p>
      </td>
      <td>
        <p>Système à l'origine de la création de document(s). Il transmet au système GESTIONNAIRE des demandes de transmission initiale/de remplacement/de suppression de document(s) pour publication sur le DMP et/ou envoi vers une ou plusieurs BAL MSSanté. Le CREATEUR précise également les retours métiers attendus du DMP et/ou de la MSSanté. Le CREATEUR réceptionne, le cas échéant, les retours métiers du DMP et/ou de la MSSanté demandés et renvoyés par le GESTIONNAIRE (accusé de réception DMP, accusé de réception MSSanté et accusé de lecture MSSanté).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>GESTIONNAIRE</p>
      </td>
      <td>
        <p>Le GESTIONNAIRE réceptionne les demandes de transmission initiale/remplacement/suppression de document(s) provenant du CREATEUR et envoie le(s) document(s) vers le DMP et/ou la MSSanté (1) en fonction des informations portées par la transaction.</p>
        <p>Le GESTIONNAIRE réceptionne, gère et redistribue vers le CREATEUR, le cas échéant, les retours métiers provenant du DMP et/ou de la MSSanté.</p>
      </td>
    </tr>
  </tbody>
</table>

**Note (1):** _l'acteur CREATEUR, relayé par le GESTIONNAIRE peut décider
d'envoyer un courriel en direction d'une BAL personnelle (par exemple,
le médecin traitant du patient), d'une BAL organisationnelle (par
exemple, un cabinet médical en ville, le service de cardiologie de
l'établissement destinataire) ou d'une BAL applicative (par exemple, la
BAL applicative du DPI d'un établissement hospitalier destinataire)._

Le tableau suivant liste, pour chacun des acteurs, les systèmes du SIH concernés :
<table>
  <tbody>
    <tr>
      <th>
        <p>Acteur</p>
      </th>
      <th>
        <p>Systèmes concernés</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>CREATEUR</p>
      </td>
      <td>
        <p>-        Les systèmes informatiques de gestion des laboratoires (SGL), de gestion de radiologie (RIS), de gestion de cardiologie (SIC), tout système du SIH de production de documents pour un patient.</p>
        <p>-        Les logiciels de dossier patient informatisé (DPI) en établissement et tout logiciel de spécialité créateur de documents cliniques.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>GESTIONNAIRE</p>
      </td>
      <td>
        <p>-        Les Plateformes d'Intermédiation (PFI) qui assurent la transmission de document(s) cliniques vers les services socles.</p>
        <p>-        Les DRIMBox-Source qui publient sur le DMP le document de référence d'objets d'examen d'imagerie (KOS).</p>
        <p>La DRIMBox-Source gère l'accusé technique de la transaction de transmission par le RIS du compte-rendu d'imagerie en CDA. Elle transmet ensuite le document KOS correspondant au DMP. L'accusé de réception du document KOS par le DMP n'est pas à transmettre au système Créateur de documents.</p>
      </td>
    </tr>
  </tbody>
</table>


#### Diagramme des Acteurs/Transactions

<div class="figure" style='text-align: center;'>
    <img src="image12.png" alt="Figure 7" title="Figure 7 : Diagramme des Acteurs/Transactions." style="width:80%;">
    <figcaption><b>Figure 7 : Diagramme des Acteurs/Transactions</b></figcaption>
</div>    
<br>

Dans le contexte du SEGUR, le flux Provide&Register Document Set-b (hors
périmètre de ce volet) est mis en œuvre par :

-   La transaction TD2.2 (Alimentation d'un DMP par CPE) ou TD2.1
    (Alimentation du DMP en authentification indirecte) pour une demande
    d'intégration ou de remplacement d'un document dans le DMP,

-   La transaction TD3.3c (Gestion des attributs d'un document) pour une
    demande de suppression d'un document du DMP.

Le tableau ci-dessous représente l'ensemble des acteurs directement
impliqués dans ce volet ainsi que les transactions entre ces acteurs.

Pour être en conformité avec ce volet, chaque acteur doit supporter les
transactions obligatoires (R-Required) et peut supporter les
transactions optionnelles (O-Optional).

<table>
  <tbody>
    <tr>
      <th>
        <p>Acteur</p>
      </th>
      <th>
        <p>Transaction</p>
      </th>
      <th>
        <p>Caractère requis/optionnel</p>
      </th>
    </tr>
    <tr>
      <td rowspan="5">
        <p>CREATEUR</p>
      </td>
      <td>
        <p>Flux 1 en émission :  Demande de transmission/remplacement/suppression de document(s) CDA (Flux HL7-ORU -&gt;)</p>
      </td>
      <td>
        <p>O</p>
        <p>(Note 1)</p>
        <p>(Note 4)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 2 en émission : Demande de transmission/remplacement/suppression d'un document CDA (Flux HL7- MDM -&gt;)</p>
      </td>
      <td>
        <p>O</p>
        <p>(Note 1)</p>
        <p>(Note 4)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 3 en réception : Accusé métier de réception DMP</p>
      </td>
      <td>
        <p>O (Note 2)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 4 en réception : Accusé métier de réception MSSanté</p>
      </td>
      <td>
        <p>O (Note 2)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 5 en réception : Accusé métier de lecture MSSanté</p>
      </td>
      <td>
        <p>O (Note 3)</p>
      </td>
    </tr>
    <tr>
      <td rowspan="5">
        <p>GESTIONNAIRE</p>
      </td>
      <td>
        <p>Flux 1 en réception : Demande de transmission/remplacement/suppression de document(s) CDA par un message HL7v2.5 ORU (Flux HL7-ORU)</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 2 en réception : Demande de transmission/remplacement/suppression d'un document CDA par un message HL7v2.6 MDM (Flux HL7- MDM)</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 3 en émission : Accusé métier de réception DMP</p>
      </td>
      <td>
        <p>O (Note 2)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 4 en émission : Accusé métier de réception MSSanté</p>
      </td>
      <td>
        <p>O (Note 2)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Flux 5 en émission : Accusé métier de lecture MSSanté</p>
      </td>
      <td>
        <p>O (Note 3)</p>
      </td>
    </tr>
  </tbody>
</table>
**Figure 8 : Tableau des Acteurs/Transactions**

**[Note 1]** : _l'acteur CREATEUR choisit d'implémenter l'une ou l'autre des transactions : le Flux 1 (Flux HL7-ORU) ou le flux 2 (Flux HL7-MDM) en émission. L'acteur GESTIONNAIRE DOIT implémenter les deux transactions Flux HL7-ORU et Flux HL7-MDM en réception._

**[Note 2]** : _dans le contexte du SEGUR vague 2, couloirs DPI et PFI, l'accusé métier de réception DMP ainsi que l'accusé métier de réception MSSanté sont requis.
L'accusé métier de réception DMP est généré par le GESTIONNAIRE à partir de la réponse du DMP à une requête d'alimentation, de remplacement ou de suppression de document(s). La réponse du DMP contient le statut du
résultat de la transaction (Success ou Failure) ainsi que le code erreur en cas de problème. Ces informations sont relayées par le GESTIONNAIRE au CREATEUR au travers du flux 3.
L'accusé métier de réception MSSanté est généré par le GESTIONNAIRE à
partir de la réponse du serveur de messagerie du destinataire qui
atteste de la réception du courriel (mécanisme Delivery Status
Notification -- DSN -- RFC 3461 à 3464 et 6522 qui permet de savoir si
un courriel a été remis avec succès dans la BAL du destinataire). Il est
relayé au CREATEUR au travers du flux 4._

**[Note 3]** : _l'accusé métier de lecture MSSanté n'est requis
ni dans ce volet du CI_SIS ni dans le contexte du SEGUR vague2.
Le flux d'accusé métier de lecture MSSanté est généré par le
GESTIONNAIRE conformément au Message Disposition Notification -- MDN de
la RFC 8098. Il permet de savoir quel traitement a été effectué sur le
courriel réceptionné (lecture du courriel par un utilisateur, courriel
dispatché, courriel traité, courriel détruit) et de préciser les causes
d'erreur éventuelles de traitement. Il est relayé au CREATEUR au travers
du flux 5.
La gestion de cet accusé de lecture MSSanté (MDN) va dépendre de
l'organisation choisie par l'établissement pour réceptionner les
courriels.
Ce flux d'accusé de lecture MSSanté (courriel MDN) rend compte de la
lecture du courriel par le destinataire lorsque ce courriel est traité
de façon manuelle. Dans le cas d'un traitement automatique du courriel
par la PFI de l'établissement destinataire, ce flux d'accusé de lecture
rend compte de la réalisation de la demande de traitement sur le
document contenu dans le courriel par le logiciel métier associé à la
BAL destinatrice du courriel._

**[Note 4]** : _Le Flux HL7-MDM permet de transmettre un document unique.
Le Flux HL7-ORU peut, le cas échéant, transporter deux documents, un
CDAr2 Niv1 et un CDAr2 Niv3, dans la même transaction. Dans ce cas, il
s'agit de deux instances de documents dont le contenu clinique est
identique. Ce besoin de transmettre dans une même transaction les deux
formats CDAr2 Niv1 et CDAr2 Niv3 d'un même document clinique a été
exprimé, en particulier par les biologistes, afin de permettre à
l'utilisateur du système consommateur de visualiser le document tel
qu'il a été remis au patient (PDF). Chaque format de document a son
identifiant propre._

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> dans le contexte de la vague 2 du SEGUR, le compte-rendu de biologie, le volet de synthèse médicale ainsi que la prescription de produits de santé sont spécifiés sous la forme d'un CDAr2 Niv3 intégrant le document remis au patient sous forme papier (format PDF) dans une section dédiée. Pour ces cas d'usage, un seul document sera donc produit.
    Néanmoins cette version du présent volet conserve la possibilité de transmettre les 2 formats de documents (CDAr2 Niv1 et CDAr2 Niv3) dans la transaction HL7-ORU permettant ainsi de ne pas limiter l'implémentation du volet seulement aux SGL référencés SEGUR.
    </p>
</blockquote>

#### Regroupement requis des Acteurs

Cette section décrit les exigences en termes de regroupement d'acteurs pour chacun des acteurs identifiés précédemment.

<table>
  <tbody>
    <tr>
      <th>
        <p>Acteur de ce volet</p>
      </th>
      <th>
        <p>Groupé avec un autre acteur</p>
      </th>
      <th>
        <p>Référence</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>CREATEUR</p>
      </td>
      <td>
        <p>Content Creator <a href="https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_TF_Vol1.pdf">(TF PCC : Patient Care Coordination - Appendix A : Actors definition)</a></p>
      </td>
      <td>
        <p>TF Patient Care Coordination (PCC) d'IHE - Annexe A : définition des acteurs</p>
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <p>GESTIONNAIRE</p>
      </td>
      <td>
        <p>Producteur (Document Source) XDS-b</p>
      </td>
      <td>
        <p><a href="https://esante.gouv.fr/volet-partage-de-documents-de-sante">Volet Partage de documents de santé</a> dans un contexte général ou le Référentiel Service DMP intégré aux LPS dans le contexte du SEGUR.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Système initiateur (Portable Media Creator) XDM</p>
      </td>
      <td>
        <p><a href="https://esante.gouv.fr/volet-echange-de-documents-de-sante">Volet Echange de documents de santé</a></p>
      </td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>

L'acteur CREATEUR est groupé avec l'acteur CONTENT CREATOR définit dans le Technical Framework PCC d'IHE pour permettre la création du document CDA.

L'acteur GESTIONNAIRE est groupé avec :

-   L'acteur Producteur (Document Source) du [volet de Partage de document de santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante), pour permettre à la PFI d'implémenter la transaction ITI-41 Provide & Register Document Set dans un contexte général ou les transactions TDT2.1/TD2.2 (Alimentation du DMP) ou TD3.3c (Gestion des attributs d'un document) dans le contexte SEGUR (pour intégration/remplacement/suppression de document(s) dans le DMP en tenant compte des spécificités ajoutées par le référentiel Service DMP intégré aux LPS),

-   L'acteur Système initiateur du volet d'[Echange de documents de santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante), pour permettre à la PFI de construire l'archive IHE_XDM inclue dans le courriel émis vers le destinataire,
