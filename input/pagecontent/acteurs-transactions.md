### Liste des Acteurs et systèmes concernés

Le présent volet met en œuvre les Acteurs IHE suivants, représentant le
rôle joué par un ou plusieurs composants du système d'information :
<table>
<tbody>
<tr>
<td width="141">
<p><strong>Acteur&nbsp;:</strong></p>
</td>
<td width="508">
<p><strong>Description&nbsp;:</strong></p>
</td>
</tr>
<tr>
<td width="141">
<p>CREATEUR</p>
</td>
<td width="508">
<p>Syst&egrave;me &agrave; l&rsquo;origine de la cr&eacute;ation de document(s). Il transmet au syst&egrave;me GESTIONNAIRE des demandes de transmission initiale/de remplacement/de suppression de document(s) pour publication sur le DMP et/ou envoi vers une ou plusieurs BAL MSSant&eacute;. Le CREATEUR pr&eacute;cise &eacute;galement les retours m&eacute;tiers attendus du DMP et/ou de la MSSant&eacute;.<br /> Le CREATEUR r&eacute;ceptionne, le cas &eacute;ch&eacute;ant, les retours m&eacute;tiers du DMP et/ou de la MSSant&eacute; demand&eacute;s et renvoy&eacute;s par le GESTIONNAIRE (accus&eacute; de r&eacute;ception DMP, accus&eacute; de r&eacute;ception MSSant&eacute; et accus&eacute; de lecture MSSant&eacute;).</p>
</td>
</tr>
<tr>
<td width="141">
<p>GESTIONNAIRE</p>
</td>
<td width="508">
<p>Le GESTIONNAIRE r&eacute;ceptionne les demandes de transmission initiale/remplacement/suppression de document(s) provenant du CREATEUR et envoie le(s) document(s) vers le DMP et/ou la MSSant&eacute; <sup>(1)</sup> en fonction des informations port&eacute;es par la transaction.</p>
<p>Le GESTIONNAIRE r&eacute;ceptionne, g&egrave;re et redistribue vers le CREATEUR, le cas &eacute;ch&eacute;ant, les retours m&eacute;tiers provenant du DMP et/ou de la MSSant&eacute;.</p>
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
<td width="141">
<p><strong>Acteur&nbsp;:</strong></p>
</td>
<td width="508">
<p><strong>Syst&egrave;mes concern&eacute;s&nbsp;:</strong></p>
</td>
</tr>
<tr>
<td width="141">
<p>CREATEUR</p>
</td>
<td width="508">
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les syst&egrave;mes informatiques de gestion des laboratoires (SGL), de gestion de radiologie (RIS), de gestion de cardiologie (SIC), tout syst&egrave;me du SIH de production de documents pour un patient.</p>
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les logiciels de dossier patient informatis&eacute; (DPI) en &eacute;tablissement et tout logiciel de sp&eacute;cialit&eacute; cr&eacute;ateur de documents cliniques.</p>
</td>
</tr>
<tr>
<td width="141">
<p>GESTIONNAIRE</p>
</td>
<td width="508">
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les Plateformes d&rsquo;Interm&eacute;diation (PFI) qui assurent la transmission de document(s) cliniques vers les services socles.</p>
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les DRIMBox-Source qui publient sur le DMP le document de r&eacute;f&eacute;rence d&rsquo;objets d&rsquo;examen d&rsquo;imagerie (KOS).</p>
<p>La DRIMBox-Source g&egrave;re l&rsquo;accus&eacute; technique de la transaction de transmission par le RIS du compte-rendu d&rsquo;imagerie en CDA. Elle transmet ensuite le document KOS correspondant au DMP. L&rsquo;accus&eacute; de r&eacute;ception du document KOS par le DMP n&rsquo;est pas &agrave; transmettre au syst&egrave;me Cr&eacute;ateur de documents.</p>
</td>
</tr>
</tbody>
</table>

### Diagramme des Acteurs/Transactions

<div class="figure">
    <img src="image12.png" alt="Figure 7" title="Figure 7 : Diagramme des Acteurs/Transactions." style="width:100%;">
    <figcaption>Figure 7 : Diagramme des Acteurs/Transactions.</figcaption>
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

<table width="652">
<tbody>
<tr>
<td width="113">
<p><strong>Acteur</strong></p>
</td>
<td width="406">
<p><strong>Transaction</strong></p>
</td>
<td width="132">
<p><strong>Caract&egrave;re requis/optionnel</strong></p>
</td>
</tr>
<tr>
<td rowspan="5" width="113">
<p>CREATEUR</p>
</td>
<td width="406">
<p>Flux 1 en &eacute;mission&nbsp;:&nbsp; Demande de transmission/remplacement/suppression de document(s) CDA (Flux HL7-ORU &agrave;)</p>
</td>
<td width="132">
<p>O</p>
<p>(Note 1)</p>
<p>(Note 4)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 2 en &eacute;mission : Demande de transmission/remplacement/suppression d&rsquo;un document CDA (Flux HL7- MDM &agrave;)</p>
</td>
<td width="132">
<p>O</p>
<p>(Note 1)</p>
<p>(Note 4)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 3 en r&eacute;ception&nbsp;: Accus&eacute; m&eacute;tier de r&eacute;ception DMP</p>
</td>
<td width="132">
<p>O (Note 2)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 4&nbsp;en r&eacute;ception : Accus&eacute; m&eacute;tier de r&eacute;ception MSSant&eacute;</p>
</td>
<td width="132">
<p>O (Note 2)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 5&nbsp;en r&eacute;ception : Accus&eacute; m&eacute;tier de lecture MSSant&eacute;</p>
</td>
<td width="132">
<p>O (Note 3)</p>
</td>
</tr>
<tr>
<td rowspan="5" width="113">
<p>GESTIONNAIRE</p>
</td>
<td width="406">
<p>Flux 1 en r&eacute;ception : Demande de transmission/remplacement/suppression de document(s) CDA par un message HL7v2.5 ORU (Flux HL7-ORU)</p>
</td>
<td width="132">
<p>R</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 2 en r&eacute;ception : Demande de transmission/remplacement/suppression d&rsquo;un document CDA par un message HL7v2.6 MDM (Flux HL7- MDM)</p>
</td>
<td width="132">
<p>R</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 3 en &eacute;mission&nbsp;: Accus&eacute; m&eacute;tier de r&eacute;ception DMP</p>
</td>
<td width="132">
<p>O (Note 2)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 4 en &eacute;mission&nbsp;: Accus&eacute; m&eacute;tier de r&eacute;ception MSSant&eacute;</p>
</td>
<td width="132">
<p>O (Note 2)</p>
</td>
</tr>
<tr>
<td width="406">
<p>Flux 5&nbsp;en &eacute;mission : Accus&eacute; m&eacute;tier de lecture MSSant&eacute;</p>
</td>
<td width="132">
<p>O (Note 3)</p>
</td>
</tr>
</tbody>
</table>
Figure 8 : Tableau des Acteurs/Transactions

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
Ce flux d'accusé de lecture MSSanté (message MDN) rend compte de la
lecture du courriel par le destinataire lorsque ce courriel est traité
de façon manuelle. Dans le cas d'un traitement automatique du courriel
par la PFI de l'établissement destinataire, ce flux d'accusé de lecture
rend compte de la réalisation de la demande de traitement sur le
document contenu dans le courriel par le logiciel métier associé à la
BAL destinatrice du courriel._

**[Note 4]** : _Le Flux HL7-MDM permet de transmettre undocument unique.
Le Flux HL7-ORU peut, le cas échéant, transporter deux documents, un
CDAr2 Niv1 et un CDAr2 Niv3, dans la même transaction. Dans ce cas, il
s'agit de deux instances de documents dont le contenu clinique est
identique. Ce besoin de transmettre dans une même transaction les deux
formats CDAr2 Niv1 et CDAr2 Niv3 d\'un même document clinique a été
exprimé, en particulier par les biologistes, afin de permettre à
l\'utilisateur du système consommateur de visualiser le document tel
qu\'il a été remis au patient (PDF). Chaque format de document a son
identifiant propre._

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> dans le contexte de la vague 2 du SEGUR, le compte-rendu de biologie, le volet de synthèse médicale ainsi que la prescription de produits de santé sont spécifiés sous la forme d'un CDAr2 Niv3 intégrant le document remis au patient sous forme papier (format PDF) dans une section dédiée. Pour ces cas d'usage, un seul document sera donc produit.
    Néanmoins cette version du présent volet conserve la possibilité de transmettre les 2 formats de documents (CDAr2 Niv1 et CDAr2 Niv3) dans la transaction HL7-ORU permettant ainsi de ne pas limiter l'implémentation du volet seulement aux SGL référencés SEGUR.
    </p>
</blockquote>

### Regroupement requis des Acteurs

Cette section décrit les exigences en termes de regroupement d'acteurs pour chacun des acteurs identifiés précédemment.

<table>
<tbody>
<tr>
<td width="216">
<p><strong>Acteur de ce volet</strong></p>
</td>
<td width="216">
<p><strong>Group&eacute; avec un autre acteur</strong></p>
</td>
<td width="217">
<p><strong>R&eacute;f&eacute;rence</strong></p>
</td>
</tr>
<tr>
<td width="216">
<p>CREATEUR</p>
</td>
<td width="216">
<p>Content Creator <a href="https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_TF_Vol1.pdf">(TF PCC : Patient Care Coordination – Appendix A : Actors definition)</a></p>
</td>
<td width="217">
<p>TF Patient Care Coordination (PCC) d&rsquo;IHE &ndash; Annexe A : d&eacute;finition des acteurs</p>
</td>
</tr>
<tr>
<td rowspan="2" width="216">
<p>GESTIONNAIRE</p>
</td>
<td width="216">
<p>Producteur (Document Source) XDS-b</p>
</td>
<td width="217">
<p><a href="https://esante.gouv.fr/sites/default/files/media_entity/documents/CISIS_SERVICE_SPECIFICATIONS_TECHNIQUES_PARTAGE_DOCUMENTS_DE_SANTE_V1.13.pdf">Volet Partage de documents de sant&eacute;</a> dans un contexte g&eacute;n&eacute;ral ou le R&eacute;f&eacute;rentiel Service DMP int&eacute;gr&eacute; aux LPS dans le contexte du SEGUR.</p>
</td>
</tr>
<tr>
<td width="216">
<p>Syst&egrave;me initiateur (Portable Media Creator) XDM</p>
</td>
<td width="217">
<p><a href="https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_service_volet-echange-documents-sante_v1.8.pdf">Volet Echange de documents de sant&eacute;</a></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>

L'acteur CREATEUR est groupé avec l'acteur CONTENT CREATOR définit dans
le Technical Framework PCC d'IHE pour permettre la création du document
CDA.

L'acteur GESTIONNAIRE est groupé avec :

-   L'acteur Producteur (Document Source) du volet de *Partage de
    document de santé*, pour permettre à la PFI d'implémenter la
    transaction ITI-41 Provide & Register Document Set dans un contexte
    général ou les transactions TDT2.1/TD2.2 (Alimentation du DMP) ou
    TD3.3c (Gestion des attributs d'un document) dans le contexte SEGUR
    (pour intégration/remplacement/suppression de document(s) dans le
    DMP en tenant compte des spécificités ajoutées par le référentiel
    Service DMP intégré aux LPS),

-   L'acteur Système initiateur du volet *d'Echange de documents de
    santé*, pour permettre à la PFI de construire l'archive IHE_XDM
    inclue dans le courriel émis vers le destinataire,