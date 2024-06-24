
#### Description des messages ORU et MDM

La description des messages ORU et MDM est basée sur le contenu du
document et les métadonnées complémentaires à véhiculer dans le cadre du
partage et de l'échange.

Les données utiles pour publication sur le DMP et pour l'envoi par
MSSanté de(s) document(s) sont stockées à la fois dans le segment PID du
message HL7, dans le document CDA-R2 conforme au volet du CI_SIS
Structuration minimale des documents de santé ^\[3\]^ et dans des
segments OBX du message HL7 spécifiant les métadonnées complémentaires.

Le développeur doit valoriser tous les segments et champs obligatoires
des messages HL7v2 afin de répondre au standard d'interopérabilité des
messages.

Ci-dessous sont représentées les structures de messages HL7v2 proposées
pour la transmission de document(s) CDA-R2 en HL7v2.

##### Message ORU\^R01\^ORU_R01 en HL7v2.5

###### Profil du message ORU_R01

Le profil du message ORU_R01 est le suivant :
<table>
<thead>
<tr>
<td width="104">
<p>Segment</p>
</td>
<td width="274">
<p>Meaning</p>
</td>
<td width="64">
<p>Usage</p>
</td>
<td width="59">
<p>Card.</p>
</td>
<td width="66">
<p>&sect; HL7</p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td width="104">
<p>MSH</p>
</td>
<td width="274">
<p>Message Header</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- PATIENT_RESULT begin</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- PATIENT begin</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;PID</p>
</td>
<td width="274">
<p>Patient Identification</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>3</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- PATIENT_VISIT begin</p>
</td>
<td width="64">
<p>RE</p>
</td>
<td width="59">
<p>[0..1]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; PV1</p>
</td>
<td width="274">
<p>Patient Visit</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>3</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- PATIENT_VISIT end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- PATIENT end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>{</p>
</td>
<td width="274">
<p>--- ORDER_OBSERVATION begin</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..*]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;ORC</p>
</td>
<td width="274">
<p>Common Order : demande de traitement sur un document</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;OBR</p>
</td>
<td width="274">
<p>Observation Request</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;[{NTE}]</p>
</td>
<td width="274">
<p>Comments on the order</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>[{</p>
</td>
<td width="274">
<p>--- TIMING begin</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;TQ1</p>
</td>
<td width="274">
<p>Timing Quantity</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>}]</p>
</td>
<td width="274">
<p>--- TIMING end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;{</p>
</td>
<td width="274">
<p>--- OBSERVATION begin</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..*]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; OBX</p>
</td>
<td width="274">
<p>Document et expression des m&eacute;tadonn&eacute;es de document relatives au masquage du document aux PS et de visibilit&eacute; au patient.</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>7</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; [{PRT}] (note 1)</p>
</td>
<td width="274">
<p>Participation : Exp&eacute;diteur du document, destinataire(s) MSSant&eacute;, adresse mail sur laquelle le destinataire peut r&eacute;pondre. Segment PRT pr&eacute;-adopt&eacute; de la version 2.9</p>
</td>
<td width="64">
<p>R/C</p>
</td>
<td width="59">
<p>[1..*]</p>
</td>
<td width="66">
<p>7 (v2.9)</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; [{NTE}]</p>
</td>
<td width="274">
<p>Comment of the result</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;}</p>
</td>
<td width="274">
<p>--- OBSERVATION end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
**Note (1) :** _le segment PRT est utilisé uniquement avec l'OBX qui porte la
demande de traitement sur le document. Dans ce cas il est requis et
conditionnel (sa valeur dépend de la demande exprimée : envoi de la
demande de traitement sur le DMP et/ou envoi vers un ou des
destinataire(s) via MSSanté)._

Le message ORU peut transmettre une ou deux instances de documents
CDA-R2. Le CREATEUR peut ainsi transmettre un document au format CDA-R2
niveau 1 et un deuxième document de contenu clinique identique au format
CDA-R2 niveau 3. Chaque document possède son propre identifiant
(fonctionnalité non applicable au SEGUR vague 2).

Dans le cadre de ce volet, spécifique à un échange entre un système
(CREATEUR) et une PFI (GESTIONNAIRE), l'occurrence ORDER_OBSERVATION est
utilisée pour transmettre une demande de traitement sur le(s)
document(s) : transmission initiale/remplacement/suppression de
document(s). Seuls les segments ORC, OBR et le groupe de segments
OBSERVATION de l'occurrence ORDER_OBSERVATION sont à renseigner.

Les contraintes apportées par ce volet sur les données des différents
segments du message ORU sont décrites à la section 12.2 LIEN.

###### Description fonctionnelle du message ORU

<div class="figure">
    <img src="fig17.png" alt="Figure 17" title="Figure 17 : Structure fonctionnelle du message ORU_R01" style="width:100%;">
    <figcaption>Figure 17 : Structure fonctionnelle du message ORU_R01</figcaption>
</div>
<br>

Les groupes en rouge sur le schéma représentent les éléments spécifiques à ce volet :

-   Un premier groupe de segments OBSERVATION contenant le document
    médical au format CDA-R2 codé en base64 suivi de segments PRT,
    pré-adoptés depuis la version 2.9 du standard, permettant ainsi de
    renseigner le cas échéant les informations de l'expéditeur, le(s)
    destinataire(s) MSSanté et l'adresse mail de réponse.

-   Un deuxième groupe OBSERVATION contenant le cas échéant le même
    document médical spécifié dans un autre format, codé en base64. Le
    contenu clinique des documents est identique, seul le format est
    différent. Cette possibilité n'est pas utilisée dans le contexte du
    SEGUR vague2 (la version PDF du compte-rendu est insérée dans une
    section dédiée du document CDA Niv3).

Les groupes de segments OBSERVATION suivants (répétables) véhiculent les métadonnées spécifiques à la publication sur le DMP et/ou à l'envoi par la MSSanté. Ces métadonnées sont communes aux deux formats du document. Ces métadonnées sont décrites dans la section 12.2.

##### Message MDM en HL7v2.6

###### Profil du message MDM

Le profil du message MDM est le suivant :

<table>
<thead>
<tr>
<td width="104">
<p>Segment</p>
</td>
<td width="274">
<p>Meaning</p>
</td>
<td width="64">
<p>Usage</p>
</td>
<td width="59">
<p>Card.</p>
</td>
<td width="66">
<p>&sect; HL7</p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td width="104">
<p>MSH</p>
</td>
<td width="274">
<p>Message Header</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>EVN</p>
</td>
<td width="274">
<p>Event type</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>PID</p>
</td>
<td width="274">
<p>Patient Identification</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>3</p>
</td>
</tr>
<tr>
<td width="104">
<p>PV1</p>
</td>
<td width="274">
<p>Patient Visit</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>3</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- COMMON_ORDER begin</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;ORC</p>
</td>
<td width="274">
<p>Common Order = demande de traitement sur le document</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;[{</p>
</td>
<td width="274">
<p>--- TIMING begin</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; TQ1</p>
</td>
<td width="274">
<p>Timing/Quantity</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp; [{TQ2}]</p>
</td>
<td width="274">
<p>Timing/Quantity RelationShip</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;}]</p>
</td>
<td width="274">
<p>--- TIMING end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;OBR</p>
</td>
<td width="274">
<p>Observation Request segment</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>4</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;[{NTE}]</p>
</td>
<td width="274">
<p>Notes and comments</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;</p>
</td>
<td width="274">
<p>--- COMMON_ORDER end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>TXA</p>
</td>
<td width="274">
<p>Transcription document header</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>9</p>
</td>
</tr>
<tr>
<td width="104">
<p>{</p>
</td>
<td width="274">
<p>OBXNTE : Document ou expression des m&eacute;tadonn&eacute;es de document relatives au masquage du document aux PS et de visibilit&eacute; au patient.</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..*]</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;OBX</p>
</td>
<td width="274">
<p>Observation/Result.</p>
</td>
<td width="64">
<p>R</p>
</td>
<td width="59">
<p>[1..1]</p>
</td>
<td width="66">
<p>9</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;[{PRT}]</p>
<p>(Note 1)</p>
</td>
<td width="274">
<p>Participation : Exp&eacute;diteur, destinataire(s) MSSant&eacute;, adresse mail sur laquelle le destinataire peut r&eacute;pondre. Segment PRT pr&eacute;-adopt&eacute; de la version 2.9</p>
</td>
<td width="64">
<p>R/C</p>
</td>
<td width="59">
<p>[1.*]</p>
</td>
<td width="66">
<p>7 (v2.9)</p>
</td>
</tr>
<tr>
<td width="104">
<p>&nbsp;[{NTE}]</p>
</td>
<td width="274">
<p>Notes and comments</p>
</td>
<td width="64">
<p>O</p>
</td>
<td width="59">
<p>[0..*]</p>
</td>
<td width="66">
<p>2</p>
</td>
</tr>
<tr>
<td width="104">
<p>}</p>
</td>
<td width="274">
<p>---OBXNTE end</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="59">
<p>&nbsp;</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

**Note (1)** : _le segment PRT est utilisé conjointement avec l'OBX qui porte
la demande de traitement sur le document. Dans ce cas il est requis et
conditionnel (sa valeur dépend de la demande exprimée : envoi de la
demande de traitement sur le DMP et/ou envoi vers un ou des
destinataire(s) via MSSanté)._

Le message MDM ne peut transmettre qu'un seul document médical au format
CDAr2.

Les contraintes apportées par ce volet sur les données du message MDM
sont décrites à la section 12.2 [LIEN].

###### Description fonctionnelle du message MDM

<div class="figure">
    <img src="fig18.png" alt="Figure 18" title="Figure 18 : Structure fonctionnelle du message MDM" style="width:100%;">
    <figcaption>Figure 18 : Structure fonctionnelle du message MDM</figcaption>
</div>
<br>


Les groupes de segments en rouge sur le schéma représentent les éléments
spécifiques à ce volet :

-   Un groupe OBXNTE, requis, contenant le document médical au format
    CDA-R2 codé en base64 suivi de segments PRT, pré-adoptés depuis la
    version 2.9 du standard, permettant ainsi de renseigner si
    nécessaire les informations de l'expéditeur, le(s) destinataire(s)
    MSSanté et l'adresse mail de réponse.

-   Les groupes OBXNTE suivants (répétables) véhiculent les métadonnées
    spécifiques à la publication sur le DMP et à l'envoi par la MSSanté.

Dans le message MDM, le document est accompagné de quelques métadonnées à renseigner au niveau du segment TXA. Il s'agit à minima du type de document (TXA-2), de la présentation du contenu du document (TXA-3), de l'identifiant unique du document (TXA-12), de l'identifiant unique du document remplacé (TXA-13) lorsque l'évènement est à T10 et du statut indiquant la complétude du document (TXA-17).

#### Contraintes appliquées aux messages MDM et ORU dans le contexte de ce volet

Dans la suite de cette section, les valeurs indiquées en bleu dans les
tableaux indiquent les valeurs fixes à insérer dans le champ du message.

##### Eléments de contrôle du message ORU ou MDM

###### Le segment MSH -- Header du message

Les éléments de contrôle du message HL7 sont portés par le segment
d'entête MSH. Le tableau ci-dessous liste les champs à renseigner pour
le segment MSH :
<table>
<tbody>
<tr>
<td width="94">
<p>Champ</p>
</td>
<td width="196">
<p>Contenu</p>
</td>
<td width="87">
<p>Type donn&eacute;e</p>
</td>
<td width="161">
<p>Caract&egrave;re optionnel/obligatoire</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-1</p>
</td>
<td width="196">
<p>| s&eacute;parateur de champ</p>
</td>
<td width="87">
<p>ST</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-2</p>
</td>
<td width="196">
<p>^~\&amp;&nbsp;: s&eacute;parateur de composant, r&eacute;p&eacute;tition, caract&egrave;re d&rsquo;&eacute;chappement, s&eacute;parateur de sous-composants</p>
</td>
<td width="87">
<p>ST</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-3</p>
</td>
<td width="196">
<p>Application &eacute;mettrice</p>
</td>
<td width="87">
<p>HD</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-4</p>
</td>
<td width="196">
<p>Organisation &eacute;mettrice</p>
</td>
<td width="87">
<p>HD</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-5</p>
</td>
<td width="196">
<p>Application r&eacute;ceptrice</p>
</td>
<td width="87">
<p>HD</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-6</p>
</td>
<td width="196">
<p>Organisation r&eacute;ceptrice</p>
</td>
<td width="87">
<p>HD</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-7</p>
</td>
<td width="196">
<p>Date/time du message</p>
</td>
<td width="87">
<p>TS</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-9</p>
</td>
<td width="196">
<p>Type du message<br /> ORU^R01^ORU_R01<br /> MDM^T02^MDM_T02<br /> MDM^T10^MDM_T10<br /> MDM^T04^MDM_T04</p>
</td>
<td width="87">
<p>MSG</p>
</td>
<td width="161">
<p>R</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-10</p>
</td>
<td width="196">
<p>Identifiant du message</p>
</td>
<td width="87">
<p>ST</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-11</p>
</td>
<td width="196">
<p>Processing Id<br /> P&nbsp;: en production<br /> T&nbsp;: message de test<br /> D&nbsp;: environnement de debug</p>
</td>
<td width="87">
<p>PT</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-12</p>
</td>
<td width="196">
<p>Version du standard<br /> 2.5 pour ORU<br /> 2.6 pour MDM</p>
</td>
<td width="87">
<p>VID</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-17</p>
</td>
<td width="196">
<p>FRA</p>
</td>
<td width="87">
<p>ID</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-18</p>
</td>
<td width="196">
<p>Jeux de caract&egrave;res, valeurs possibles&nbsp;:</p>
<p>UNICODE UTF-8 ou 8859/15 <br /> </p>
</td>
<td width="87">
<p>ID</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>MSH-21</p>
</td>
<td width="196">
<p>Identifiant du profil de message</p>
<p>MSH-21.1&nbsp;: Entity Identifier (2.1)</p>
<p>MSH-21.2&nbsp;: Namespace Id</p>
<p>CISIS_CDA_HL7_V2</p>
</td>
<td width="87">
<p>EI</p>
</td>
<td width="161">
<p>R</p>
</td>
</tr>
</tbody>
</table>

###### Exemples

Entête MSH d'un message MDM ou ORU émis par le CREATEUR :

`MSH\|\^\~\\&\|SIL\|CHU_X\|PFI\|CHU_X\|202310030830\|\|ORU\^R01\^ORU_R01\|12345\|P\|2.5\|\|\|\|\|FRA\|8859/15\|\|\|2.1\^
CISIS_CDA_HL7_V2`

##### Les données concernant le patient et la venue du patient

Le message HL7 (ORU ou MDM) est centré sur un seul patient. Les
informations concernant le patient sont décrites par le segment requis
PID. Le segment PV1, requis, représente la venue courante du patient.

Ces deux segments doivent être renseignés conformément à la
spécification « PAM -- National extension France » version 2.11 publiée
en 2024^\[18\]^ [LIEN]. Si l'INS est véhiculé, le segment PID doit suivre les
contraintes décrites dans l'annexe CI-SIS « Prise en charge de
l'identifiant National de Santé (INS) dans les standards
d'interopérabilité et les volets du CI-SIS » ^\[10\]^ [LIEN].

Pour le segment PID, ce volet ajoute une contrainte particulière sur le
PID-18 par rapport à PAM.FR. Il doit être renseigné si connu afin de
pouvoir calculer des indicateurs, dans le contexte de l'alimentation du
DMP.
<table width="699">
<tbody>
<tr>
<td width="113">
<p>Champ</p>
</td>
<td width="265">
<p>Contenu</p>
</td>
<td width="76">
<p>Type donn&eacute;e</p>
</td>
<td width="246">
<p>Caract&egrave;re optionnel/obligatoire</p>
</td>
</tr>
<tr>
<td width="113">
<p>PID-3</p>
</td>
<td width="265">
<p>Identifiants du patient</p>
</td>
<td width="76">
<p>CX</p>
</td>
<td width="246">
<p>R</p>
</td>
</tr>
<tr>
<td width="113">
<p>PID-5</p>
</td>
<td width="265">
<p>Nom du patient</p>
</td>
<td width="76">
<p>XPN</p>
</td>
<td width="246">
<p>R</p>
</td>
</tr>
<tr>
<td width="113">
<p>PID-18 (<em>Note 1</em>)</p>
</td>
<td width="265">
<p>N&deg; de dossier administratif</p>
</td>
<td width="76">
<p>CX</p>
</td>
<td width="246">
<p>RE</p>
</td>
</tr>
</tbody>
</table>

Le PID-3 doit être identique aux identifiants de patient portés par le document CDA (recordTarget/patientRole/id).

Pour le segment PV1, ce volet ajoute les contraintes suivantes :

<table width="699">
<tbody>
<tr>
<td width="113">
<p>Champ</p>
</td>
<td width="265">
<p>Contenu</p>
</td>
<td width="104">
<p>Type donn&eacute;e</p>
</td>
<td width="217">
<p>Caract&egrave;re optionnel/obligatoire</p>
</td>
</tr>
<tr>
<td width="113">
<p>PV1-2</p>
</td>
<td width="265">
<p>Classe du patient&nbsp;</p>
</td>
<td width="104">
<p>IS</p>
</td>
<td width="217">
<p>R</p>
</td>
</tr>
<tr>
<td width="113">
<p>PV1-19 <em>(Note 1</em>) et (<em>Note 2</em>)</p>
</td>
<td width="265">
<p>Identifiant de la venue</p>
</td>
<td width="104">
<p>CX</p>
</td>
<td width="217">
<p>&nbsp;C (Note 2)</p>
</td>
</tr>
<tr>
<td width="113">
<p>PV1-44 (<em>Note 1</em>)</p>
</td>
<td width="265">
<p>Date d&rsquo;entr&eacute;e du patient</p>
</td>
<td width="104">
<p>TS</p>
</td>
<td width="217">
<p>RE</p>
</td>
</tr>
<tr>
<td width="113">
<p>PV1-45(<em>Note 1</em>)</p>
</td>
<td width="265">
<p>Date de sortie du patient</p>
</td>
<td width="104">
<p>TS</p>
</td>
<td width="217">
<p>RE</p>
</td>
</tr>
</tbody>
</table>

*Note 1* : _A noter que ces champs sont à renseigner, s'ils sont connus, par l'acteur CREATEUR afin de pouvoir calculer des indicateurs._

*Note 2* : _Le champ PV1-19 est requis lorsque le PV1-2 prend la valeur E, I, O ou R. Si PV1-2 prend la valeur N alors PV1-19 est requis si connu._

##### Les métadonnées du document \[Uniquement pour le message MDM\]

Le message MDM requiert l'utilisation du segment TXA qui porte les
métadonnées associées au document contenu dans le message. Les
contraintes apportées par ce volet sur le segment TXA sont les
suivantes :
<table width="699">
<tbody>
<tr>
<td width="94">
<p>Champ</p>
</td>
<td width="350">
<p>Contenu</p>
</td>
<td width="76">
<p>Type donn&eacute;e</p>
</td>
<td width="180">
<p>Caract&egrave;re optionnel/obligatoire</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-1</p>
</td>
<td width="350">
<p>Set-ID TXA. Valeur = 1</p>
</td>
<td width="76">
<p>SI</p>
</td>
<td width="180">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-2</p>
</td>
<td width="350">
<p>Type de document dont les valeurs sont &agrave; prendre dans</p>
<p>le <a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a> de la Nomenclature des Objets de Sant&eacute; (NOS).</p>
<p>Par ex&nbsp;: 11502-2</p>
</td>
<td width="76">
<p>IS</p>
</td>
<td width="180">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-3</p>
</td>
<td width="350">
<p>Document Content Presentation</p>
<p>TEXT</p>
</td>
<td width="76">
<p>ID</p>
</td>
<td width="180">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-12 <em>(Note 1)</em></p>
</td>
<td width="350">
<p>Unique document number</p>
<p>Si ClinicalDocument/id@extension est renseign&eacute; :</p>
<p>&nbsp;ex&nbsp;: 58132^^1.2.250.2345.3245.13^ISO</p>
<p>Si ClinicalDocument/id@extension n&rsquo;est pas renseign&eacute; :</p>
<p>&nbsp;ex&nbsp;: 1.2.250.2345.3245.13.58132</p>
</td>
<td width="76">
<p>EI</p>
</td>
<td width="180">
<p>R</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-13 <em>(Note 1)</em></p>
</td>
<td width="350">
<p>Parent document number</p>
<p>Si ClinicalDocument/id@extension est renseign&eacute; :</p>
<p>&nbsp;ex&nbsp;: 58131^^1.2.250.2345.3245.13^ISO</p>
<p>Si ClinicalDocument/id@extension n&rsquo;est pas renseign&eacute; :</p>
<p>&nbsp;ex&nbsp;: 1.2.250.2345.3245.13.58131</p>
</td>
<td width="76">
<p>EI</p>
</td>
<td width="180">
<p>C Requis dans le cas d&rsquo;une demande de remplacement</p>
</td>
</tr>
<tr>
<td width="94">
<p>TXA-17</p>
</td>
<td width="350">
<p>Document completion status dont la valeur est &agrave; prendre dans la table HL7 0271</p>
<p>AU</p>
</td>
<td width="76">
<p>ID</p>
</td>
<td width="180">
<p>R</p>
</td>
</tr>
</tbody>
</table>

*(Note 1)* : _conformément au volet de *Structuration minimale des
documents de santé*, l'identifiant du document au sein du document CDA
s'exprime soit par un OID complet identifiant complètement l'instance du
document (sans extension), soit par une racine d'OID commune à toutes
les instances de documents de l'émetteur associée à une extension propre
à l'instance du document._

La règle de peuplement des sous champs des champs TXA-12 et TXA-13 est
la suivante :

-   si ClinicalDocument/id@extension est renseigné :

    -   TXA-12.1 \< = ClinicalDocument/id@extension

    -   TXA-12.2 \< = Non renseigné

    -   TXA-12.3 \< = ClinicalDocument/id@root

    -   TXA-12.4 \< = ISO

-   si ClinicalDocument/id@extension n'est pas renseigné :

    -   TXA-12.1 \< = ClinicalDocument/id@root

    -   TXA-12.2 \< = Non renseigné

    -   TXA-12.3 \< = Non renseigné

    -   TXA-12.4 \< = Non renseigné

***[Point d'attention]{.underline}*** : 

<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> La version actuelle du DMP ne supporte pas le format OID\^Extension.
    </p>
</blockquote>

##### Le segment ORC
<table width="652">
<tbody>
<tr>
<td colspan="3" width="652">
<p><strong>Composition du segment ORC&nbsp;: Usage&nbsp;= Required / Cardinalit&eacute;&nbsp;= [1..1]</strong></p>
</td>
</tr>
<tr>
<td width="201">
<p><strong>El&eacute;ment requis&nbsp;:</strong></p>
</td>
<td width="177">
<p><strong>Description&nbsp;: </strong></p>
</td>
<td width="274">
<p><strong>Valeur&nbsp;: </strong></p>
</td>
</tr>
<tr>
<td width="201">
<p><strong>Segment ORC</strong></p>
</td>
<td width="177">
<p><strong>Common Order</strong></p>
</td>
<td width="274">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="201">
<p>ORC-1</p>
</td>
<td width="177">
<p>Order control</p>
</td>
<td width="274">
<p>NW (New order/service dans le cas d&rsquo;une demande d&rsquo;int&eacute;gration de document(s)</p>
<p>RO (Replace order) dans le cas d&rsquo;une demande de remplacement</p>
<p>CA (Canceled) dans le cas d&rsquo;une demande de suppression</p>
</td>
</tr>
</tbody>
</table>

La valeur du champ ORC-1 doit être cohérente avec la valeur du champ
OBX-11 et dans le cas du message MDM avec l'évènement déclenchant (T02,
T04 ou T10). En cas d'incohérence entre ces champs, le message HL7 sera
rejeté par la PFI.

##### Le segment OBR
<table width="652">
<tbody>
<tr>
<td colspan="3" width="652">
<p><strong>Composition du segment OBR&nbsp;: Usage&nbsp;= Required / Cardinalit&eacute;&nbsp;= [1..1]</strong></p>
</td>
</tr>
<tr>
<td width="201">
<p><strong>El&eacute;ment requis&nbsp;:</strong></p>
</td>
<td width="177">
<p><strong>Description&nbsp;: </strong></p>
</td>
<td width="274">
<p><strong>Valeur&nbsp;: </strong></p>
</td>
</tr>
<tr>
<td width="201">
<p><strong>Segment OBR</strong></p>
</td>
<td width="177">
<p><strong>Observation Request</strong></p>
</td>
<td width="274">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="201">
<p>OBR-4</p>
</td>
<td width="177">
<p>Universal Service Identifier</p>
</td>
<td width="274">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="201">
<p>&gt;OBR-4.1</p>
</td>
<td width="177">
<p>Code du document</p>
</td>
<td rowspan="2" width="274">
<p>Utiliser le <a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a> de la Nomenclature des Objets de Sant&eacute; (NOS).</p>
<p>A noter qu&rsquo;en cas d&rsquo;envoi au DMP, le Gestionnaire doit contr&ocirc;ler que le type de document appartient au jeu de valeur d&eacute;fini par le DMP (<a href="https://mos.esante.gouv.fr/NOS/JDV_J66-TypeCode-DMP/">JDV_J66-TypeCode-DMP</a>).</p>
</td>
</tr>
<tr>
<td width="201">
<p>&gt;OBR-4.2</p>
</td>
<td width="177">
<p>Libell&eacute; du document</p>
</td>
</tr>
<tr>
<td width="201">
<p>&gt;OBR-4.3</p>
</td>
<td width="177">
<p>Syst&egrave;me de codage dont est issu le code</p>
</td>
<td width="274">
<p>LN ou TRE_A05 en fonction de l&rsquo;appartenance du code &agrave; l&rsquo;un des syst&egrave;mes de codage</p>
</td>
</tr>
</tbody>
</table>

##### Les données concernant la demande de traitement sur le(s) document(s)

Les messages ORU/MDM utilisés contiennent un premier groupe,
respectivement OBSERVATION/OBXNTE composé :

-   D'un segment OBX contenant un document au format CDA-R2 dont le type
    MIME est précisé en OBX-5.2.

-   D'un segment PRT conditionnel, pré-adopté de la version 2.9 du
    standard, permettant de renseigner les informations concernant
    l'expéditeur de la demande de traitement sur le document
    (publication/remplacement/suppression) et la structure à laquelle
    l'expéditeur est attaché. Ce segment est requis dans le cas d'une
    publication du document sur le DMP. Il permet à la PFI de générer le
    jeton VIHF lors de l'alimentation du DMP ainsi que la métadonnée
    représentant l'auteur et la structure de l'auteur du lot de
    soumission.

-   D'un segment PRT conditionnel, pré-adopté de la version 2.9 du
    standard, permettant de renseigner les informations du ou des
    destinataires MSSanté. Ce segment est requis dans le cas d'un
    échange de document(s) via le canal MSSanté.

-   D'un segment PRT optionnel, pré-adopté de la version 2.9 du
    standard, permettant de renseigner l'adresse mail sur laquelle le
    destinataire peut répondre.

Les champs des segments PRT doivent être renseignés conformément aux
spécifications « Contraintes sur les types de données HL7 v2.5
applicables aux profils d'intégration du cadre technique IT
Infrastructure dans le périmètre d'IHE France » release 1.8^\[19\]^.

Les tableaux suivants listent l'ensemble des **segments et des champs à
renseigner obligatoirement**, dans l'ordre indiqué, à l'exception du
dernier segment PRT permettant de préciser l'adresse mail de réponse
(qui est optionnel).

De façon à éviter les incohérences entre les données spécifiées dans
le(s) document(s) et le message ORU/MDM et de façon privilégiée, seuls
les segments et les champs indiqués dans les tableaux suivants sont à
renseigner dans le message ORU/MDM. Néanmoins, dans le cas où un champ
ou un segment autre que ceux indiqués dans le tableau serait renseigné,
l'expéditeur du message prend la responsabilité de la cohérence des
données entre le message et le(s) document(s) et le récepteur n'a pas
l'obligation de gérer le contenu de ces champs ou segments.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#E5E5E5;mso-shading:windowtext;mso-pattern:gray-10 auto;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Elément requis&nbsp;:<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Segment OBX (Requis)<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Contient un document au format CDA-R2<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro
  de séquence du segment<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">OBX-2&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Value Type<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">ED </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(<span class="SpellE">Encapsuled</span> Data)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">OBX-3&nbsp;= OBR-4<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Code du Document<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" rowspan="2" valign="top" style="width:205.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Utiliser le </span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt">JDV_J07-XdsTypeCode-CISIS</span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539">
  d</span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">e la Nomenclature des Objets de Santé
  (NOS). <o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">A noter qu’en cas d’envoi au DMP, le Gestionnaire doit contrôler que
  le type de document appartient au jeu de valeur défini par le DMP (</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="https://mos.esante.gouv.fr/NOS/JDV_J66-TypeCode-DMP/"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial">JDV_J66-TypeCode-DMP</span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">).</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"> </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><sup><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></sup></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Libellé du Document<o:p></o:p></span></span></span></span></span></p>
  <span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;text-indent:35.4pt;line-height:
  normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:
  _Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt;OBX-3.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Système de codage dont est issu le code<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">LN ou TRE_A05 </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">en fonction de l’appartenance du code à l’un
  de ces systèmes de codage.</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">OBX-5&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-5.1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Source Application<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-5.2<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Type<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Pour le message ORU : </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">TEXT </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(Machine <span class="SpellE">readable</span> text document)<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Pour le message MDM&nbsp;: </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">text </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(Text data)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-5.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Data <span class="SpellE">Subtype</span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">XML</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:13">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-5.4<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">Encoding</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">Base64</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:14">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; OBX-5.5<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Data<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Intégrer le document CDA-R2 <o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:15">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span>
  Status<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Statut du document pris dans la table HL7 0085 (Observation <span class="SpellE">Result</span> Status Codes <span class="SpellE">Interpretation</span>)&nbsp;:
  <o:p></o:p></span></span></span></span></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l11 level1 lfo7"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><!--[if !supportLists]--><span style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
  mso-bidi-font-family:Symbol;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">F&nbsp;</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">: Document validé<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoListParagraphCxSpMiddle" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l11 level1 lfo7"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><!--[if !supportLists]--><span style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
  mso-bidi-font-family:Symbol;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">D&nbsp;</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">: Document à supprimer<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l11 level1 lfo7"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><!--[if !supportLists]--><span style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
  mso-bidi-font-family:Symbol;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">C&nbsp;</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">: Remplacement du Document<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:16">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Segment PRT (Conditionnel)</span></b></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">P<span style="mso-bidi-font-weight:bold">articipation Information<br>
  Expéditeur<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Ce segment est requis, en particulier
  dans le cas d’une publication du document sur le DMP, </span></b></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">pour permettre à la PFI de générer le VIHF ainsi
  que l’auteur du lot de soumission.</span></span></span></span></span><a style="mso-footnote-id:ftn2" href="#_ftn2" name="_ftnref2" title=""><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="MsoFootnoteReference"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"><span style="mso-special-character:footnote"><!--[if !supportFootnotes]--><span class="MsoFootnoteReference"><span style="font-size:9.0pt;line-height:107%;
  font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
  minor-latin;color:black;mso-themecolor:text1;mso-ansi-language:FR;mso-fareast-language:
  EN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold">[2]</span></span><!--[endif]--></span></span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></b></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce segment contient les informations de l’expéditeur
  à l’origine de la demande de traitement sur le document et de la structure à
  laquelle il est rattaché.</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:17">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-2&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Action Code</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">UC </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(<span class="SpellE">Unchanged</span>)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:18">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-4&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Participation <o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;
  color:#0070C0;mso-bidi-font-weight:bold">SB^Send</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold"> <span class="SpellE">by^participation</span> </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:19">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-5 (conditionnel)<o:p></o:p></span></span></span></span></span></p>
  <span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  Person</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce champ est requis si l’expéditeur est un
  professionnel de santé<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:20">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Person
  Identifier</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifiant du professionnel de santé qui fait
  la demande de traitement sur le(s) document(s)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:21">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.2 <span style="background:yellow;
  mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Family Name<span style="background:yellow;
  mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Nom d’exercice du PS expéditeur<span style="background:yellow;mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:22">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">Given</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"> Name<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Prénom d’exercice du PS expéditeur<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:23">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.9<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Assigning</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">Authority</span><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Autorité d’affectation de l’identifiant du
  PS (OID de gestion de personnes)&nbsp;: </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">1.2.250.1.71.4.2.1</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:24">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.13<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifier Type Code<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Type d’identifiant du professionnel de santé
  (valeur issue de la</span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">
  </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:windowtext;
  mso-bidi-font-weight:bold">Table 0203 – <span class="SpellE">Interop’Santé</span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">)&nbsp;: </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">RPPS</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"> <o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:25">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-8<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  <span class="SpellE">Organization</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Décrit l’organisation rattachée au
  professionnel de santé ou au système à l'origine de la demande de traitement
  sur le(s) document(s)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:26">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.1</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">OrganizationName</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Nom de l’organisation <o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:27">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.6<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Assigning</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">Authority</span><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Autorité d’affectation de l’identifiant de
  l’organisation dont dépend le PS ou le système </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">à
  l’origine de la <span style="color:black;mso-themecolor:text1">demande de traitement
  sur le(s) document(s).<o:p></o:p></span></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">1.2.250.1.71.4.2.2 </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">(OID de gestion des structures pour un PS
  dans un établissement de santé).<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:28">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.7<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Identifier
  Type Code<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Type d’identifiant de l’organisation (valeur
  issue de </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;mso-bidi-font-weight:bold">la </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:windowtext;
  mso-bidi-font-weight:bold">Table 0203 – <span class="SpellE">Interop’Santé</span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">)&nbsp;: </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">FINEJ </span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">(FINESS
  d’entité juridique) <span style="color:black;mso-themecolor:text1">ou </span><span style="color:#0070C0">FINEG </span>(FINESS d’entité géographique).<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:29">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.10<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Organization</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">number</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="Default"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;font-family:
  &quot;Arial&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
  minor-latin;color:black;mso-themecolor:text1;mso-fareast-language:EN-US;
  mso-bidi-font-weight:bold">Identifiant de l’organisation à l’origine de la
  demande de traitement sur le(s) document(s)</span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:30">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-10 (conditionnel)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  <span class="SpellE">Device</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce champ est requis si l’auteur est un
  dispositif.<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:31">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-10.1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Entity</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  Identifier</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifiant du dispositif expéditeur du
  document<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:32">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Segment PRT (conditionnel)<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">P<span style="mso-bidi-font-weight:bold">articipation Information
  destinataire(s)</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><b><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce segment est répétable et </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">requis si le document est échangé via
  MSSanté</span></b></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Il contient l’adresse MSSanté d’un
  destinataire. <o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce segment est répétable.<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:33">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-2&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Action Code</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">UC </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(<span class="SpellE">Unchanged</span>)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:34">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-4&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Participation </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0;mso-ansi-language:EN-US;mso-bidi-font-weight:bold">RCT^Result</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-ansi-language:EN-US;mso-bidi-font-weight:bold"> Copies <span class="SpellE">To^participation</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-ansi-language:EN-US"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:35">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-5 (conditionnel)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  Person</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce champ est requis si le destinataire est
  un professionnel de santé ou un patient.<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:36">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Person
  Identifier</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifiant du professionnel de santé
  destinataire/patient<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:37">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.2 <span style="background:yellow;
  mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Family Name<span style="background:yellow;
  mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Nom d’exercice du PS destinataire/nom
  patient<span style="background:yellow;mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:38">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">Given</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"> Name<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Prénom d’exercice du PS destinataire/prénom
  patient<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:39">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.9<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Assigning</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">Authority</span><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Autorité d’affectation de l’identifiant du
  PS (OID de gestion de personnes)&nbsp;: </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">1.2.250.1.71.4.2.1
  </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial">ou du patient <span style="color:#0070C0">1.2.250.1.213.1.4.8 </span>(INS-NIR)
  ou <span style="color:#0070C0">1.2.250.1.213.1.4.9 </span>(INS-NIA).<span style="color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:40">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-5.13<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifier Type Code<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Type d’identifiant (valeur issue de la </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:windowtext;
  mso-bidi-font-weight:bold">Table 0203 – <span class="SpellE">Interop’Santé</span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">)&nbsp;:
  <span style="color:#0070C0">RPPS ou INS</span><span style="color:black;
  mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:41">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-8 (conditionnel)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  <span class="SpellE">Organization</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce champ est requis si le destinataire est
  une organisation (établissement, service, UF…).<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:42">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.1</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">OrganizationName</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Nom de l’organisation <o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:43">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.6<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Assigning</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">Authority</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Autorité d’affectation de l’identifiant de
  l’organisation destinataire du document.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">1.2.250.1.71.4.2.2 </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">(OID de gestion des structures pour préciser
  une entité juridique ou une entité géographique), N° FINESS ou N° FINEG pour
  identifier une organisation intra-établissement (service, UF, pôle…). <o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Cf </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Contraintes sur les types de données HL7 v2.5</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;color:black;mso-themecolor:text1"> </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">applicables aux profils d’intégration du cadre technique</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;color:black;mso-themecolor:text1"> </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:8.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">IT Infrastructure dans le périmètre d’IHE France.<sup>[12]</sup></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">&nbsp;</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:44">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.7<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Identifier
  Type Code<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Type d’identifiant (valeur issue de la </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:windowtext;
  mso-bidi-font-weight:bold">Table 0203 – <span class="SpellE">Interop’Santé</span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">)&nbsp;:
  <span style="color:#0070C0">FINEJ </span>(FINESS d’entité juridique) <span style="color:black;mso-themecolor:text1">ou </span><span style="color:#0070C0">FINEG
  </span>(FINESS d’entité géographique) ou <span style="color:#0070C0">UF </span>(UF),
  <span style="color:#0070C0">SVR </span>(service)...<span style="color:black;
  mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:45">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-8.10<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Organization</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  <span class="SpellE">number</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifiant de l’organisation destinataire
  du document<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:46">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-10 (conditionnel)<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Participation
  <span class="SpellE">Device</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce champ est requis si le destinataire est
  une application.<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:47">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-10.1<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Entity</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  Identifier</span></span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Identifiant de l’application destinataire du
  document<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:48">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-15&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Participant <span class="SpellE">Telecommunication</span>
  <span class="SpellE">Address</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:49">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-15.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Telecommunication</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  Equipment Type<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">X.400 </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial">(X</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt">.400 <span class="GramE">email</span> <span class="SpellE">address</span>)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:50">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-15.4<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Communication
  <span class="SpellE">Address</span><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Intégrer l’adresse <span class="GramE">mail</span> MSSanté<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:51">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:52">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1">Segment PRT (segment optionnel)</span></b></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">P<span style="mso-bidi-font-weight:bold">articipation Information<br>
  </span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Adresse de réponse<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Ce segment optionnel permet d’indiquer
  l’adresse <span class="GramE">mail</span> sur laquelle le destinataire peut
  répondre. </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:53">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-2&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Action Code</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold">UC </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">(<span class="SpellE">Unchanged</span>)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:54">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-4&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">Participation </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;
  color:#0070C0;mso-bidi-font-weight:bold">REPLY^Reply</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:
  bold"> <span class="SpellE">To^participation</span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:55">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">PRT-15&nbsp;<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Participant <span class="SpellE">Telecommunication</span>
  <span class="SpellE">Address</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:56">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-15.3<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="SpellE"><span class="cx-body"><span style="font-size:9.0pt;color:black;
  mso-themecolor:text1">Telecommunication</span></span></span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">
  Equipment Type<o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">X.400 </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial">(X</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt">.400 <span class="GramE">email</span> <span class="SpellE">address</span>)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:57;mso-yfti-lastrow:yes">
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">&gt; PRT-15.4<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span class="cx-body"><span style="font-size:9.0pt;color:black;mso-themecolor:text1">Communication
  <span class="SpellE">Address</span><o:p></o:p></span></span></span></span></span></span></p>
  </td>
  
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1">Intégrer l’adresse <span class="GramE">mail</span> de réponse<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
</tbody>
</table>

**Exemple pour un Compte-Rendu d'imagerie médicale :**

Compte-rendu d'imagerie médicale à transmettre à 4 destinataires (le
patient, le médecin HODA Adam, le service radiologie de l'hôpital A, une
application). Une adresse mail de réponse est indiquée.

```
OBX\|1\|ED\|18748-4\^CR d'imagerie
médicale\^LN\|\|\^Text\^XML\^Base64\^RG9jdW1lbnQgbcOpZGljYWwgYX

UgZm9ybWF0IENEQQ\|\|\|\|\|\|F\|

PRT\|\|UC\|\|SB\^Send
By\^participation\|801234567866\^Dupont\^Jean\^\^\^\^\^\^ASIP-SANTE-
PS&1.2.250.1.71.4.2.1&ISO\^D\^\^\^RPPS
\|\|\|Organisation-X\^\^\^\^\^ASIP-SANTE-ST&1.2.250.1.71.4.2.2&ISO\^FINEG\^\^\^[300017985](https://finess.sante.gouv.fr/fininter/jsp/actionDetailEntiteJuridique.do?noFiness=300017985&oldFiness=300780152)

PRT\|\|UC\|\|RCT\^results Copies
To\^participation\|\|\|\|\|\|\|\|\|\|\|\^\^X.400\^146026322000196@patient.mssante.fr

PRT\|\|UC\|\|RCT\^results Copies
To\^participation\|101234567897\^Hoda\^Adam\^\^\^\^\^\^ASIP-SANTE-
PS&1.2.250.1.71.4.2.1&ISO\^D\^\^\^RPPS\|\|\|\|\|\|\|\|\|\|\|\^\^X.400\^adam.hoda@medecin.mssante.fr
[PRT\|\|UC\|\|RCT\^results Copies
To\^participation\|\|\|\|Radiologie\^\^\^\^\^120456789\^UF\^\^\^3435\|\|\|\|\|\|\|\^\^X.400\^radiologie@hopitalA.mssante.fr](mailto:PRT||UC||RCT||||||||||%5e%5eX.400%5eserviceA@hopitalA.mssante.fr)

PRT\|\|UC\|\|RCT\^results Copies
To\^participation\|\|\|\|\|\|12\|\|\|\|\|\^\^X.400\^appliExemple@hopitalB.mssante.fr

PRT\|\|UC\|\|REPLY\^Reply
to\^participation\|\|\|\|\|\|\|\|\|\|\|\^\^X.400\^adam.hoda@medecin.mssante.fr

```

**Expéditeur MSSanté :** Le segment PRT est également
utilisé pour renseigner les informations sur l'expéditeur du courriel en
fixant le champ PRT-4 « Participation » à SB « Send by ».

La version précédente du présent volet valorisait les adresses email
MSSanté des professionnels de santé directement dans le document CDA au
niveau de l'élément informationRecipient/intendedRecipient/telecom@Value
(Type : url).

Les retours d'expérience du SEGUR ont mis en évidence qu'il ne
s'agissait pas d'une bonne pratique. En effet, le contenu de l'élément
informationRecipient ne rend pas forcément compte de la réalité des
échanges. Rien ne permet par la suite, de certifier que le document a
réellement été envoyé à ce(s) destinataire(s). D'autre part, certains
médecins n'acceptent pas la dématérialisation des échanges. Cette
information doit être prise en compte par les Créateurs de documents
lors de l'envoi du message HL7v2.

Pour ces raisons, il a été décidé de dissocier l'information
« médicale » portée par l'élément informationRecipient au sein du
document CDA de l'information « technique ». La constitution
« technique » de cette liste consiste à sélectionner au niveau du
Créateur de documents, à partir de l'annuaire des professionnels de
santé, la liste des destinataires MSSanté souhaitée au moment de la
génération du message HL7v2.

La liste des destinataires MSSanté et l'expéditeur sont ainsi insérés
dans le message HL7v2 au travers du segment PRT tel que décrit
ci-dessus.

Pour information, la norme CDA r2 précise les points suivants,
concernant l'élément informationRecipient :

-   \(1\) informationRecipient contient les destinataires d'une copie du
    document désignés [au moment de la création du
    document]{.underline},

-   \(2\) informationRecipient ne permet pas de spécifier les
    destinataires auxquels le document est transmis ultérieurement à sa
    création,

-   \(3\) informationRecipient permet de spécifier le destinataire
    principal (prescripteur de l'examen) et les destinataires
    secondaires.

En conséquence, l'envoi ultérieur du document CDA à un destinataire non
prévu au moment de la création du document ne doit pas donner lieu à la
mise à jour de l'élément informationRecipient et donc à une nouvelle
version du document.

Concernant le point (3), le « Volet Structuration minimale des documents
de santé » a été modifié de façon à lever la contrainte existante sur
l'élément « participant ». Il est prévu de modifier la prochaine version
du « Volet CR-BIO -- Compte-rendu d'examens de biologie médicale » dans
le même sens.

##### Les métadonnées DMP/MSSanté

Cette section présente les métadonnées de restriction indispensables aux
échanges avec le DMP et/ou la MSSanté. Ces métadonnées doivent être
valorisées avec Y ou N suivant qu'elles sont activées ou non au moment
de la validation du document.

Ces métadonnées sont spécifiées au niveau des groupes de segments
OBSERVATION/OBXNTE des messages HL7, respectivement ORU/MDM.

**Ces métadonnées sont requises** sauf les deux dernières (Corps du mail
proposé au PS ou au patient) qui sont proposées de façon optionnelle
afin de véhiculer des informations complémentaires à intégrer dans le
courriel MSSanté. Le caractère obligatoire de chaque métadonnée est
indiqué en entête des tableaux.

Les métadonnées doivent apparaître dans le message HL7 dans l'ordre
indiqué ci-dessous.

Pour l'ensemble des OBX listés dans cette section, le champ OBX-3 prend
ses valeurs dans la table « MétaDMP/MSS » disponible en [annexe
1](#_Toc163119996).

Le champ OBX-11 étant requis par le standard HL7v2, la valeur de ce
champ est arbitrairement fixée à « F ».

L'ensemble de ces métadonnées est identique pour les 2 formats de
documents pouvant être contenus dans le message ORU.

###### Document Masqué aux professionnels de Santé 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué aux professionnels de santé.

+------------------+-----------------+--------------------------------+
| **Composition du |                 |                                |
| groupe           |                 |                                |
| OBSE             |                 |                                |
| RVATION/OBXNTE : |                 |                                |
| Usage = Required |                 |                                |
| / Cardinalité =  |                 |                                |
| \[1..1\]**       |                 |                                |
+==================+=================+================================+
| **Elément        | **              | **Valeur :**                   |
| requis :**       | Description :** |                                |
+------------------+-----------------+--------------------------------+
| **Segment OBX**  | **Obser         |                                |
|                  | vation/Result** |                                |
+------------------+-----------------+--------------------------------+
| OBX-1            | Set Id - Obx    | Numéro de séquence du segment  |
+------------------+-----------------+--------------------------------+
| OBX-2            | Value Type      | Pour le message ORU : CE       |
|                  |                 | (Coded Entry)                  |
|                  |                 |                                |
|                  |                 | Pour le message MDM : CWE      |
|                  |                 | (Coded with Exceptions)        |
+------------------+-----------------+--------------------------------+
| OBX-3            | Observation     |                                |
|                  | Identifier      |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-3.1 :     | Code :          | MASQUE_PS                      |
+------------------+-----------------+--------------------------------+
| \> OBX-3.2 :     | Libellé :       | Masqué aux professionnels de   |
|                  |                 | Santé                          |
+------------------+-----------------+--------------------------------+
| \> OBX-3.3 :     | Name of Coding  | MetaDMPMSS                     |
|                  | system          |                                |
+------------------+-----------------+--------------------------------+
| OBX-5            | Observation     |                                |
|                  | Value           |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-5.1       | Code            | Table HL7 : 0136 :             |
|                  |                 |                                |
|                  |                 | -   Y (Yes) àMASQUE_PS actif   |
|                  |                 |                                |
|                  |                 | -   N (No) à MASQUE_PS non     |
|                  |                 |     Actif                      |
+------------------+-----------------+--------------------------------+
| \> OBX-5.3       | Name Of Coding  | expandedYes-NoIndicator        |
|                  | System          |                                |
+------------------+-----------------+--------------------------------+
| OBX-11           | Observation     | Valeur fixée à « F »           |
|                  | Result Status   |                                |
+------------------+-----------------+--------------------------------+

[**Point d'attention :**]{.underline} un document clinique masqué aux PS
ne doit pas être envoyé aux PS par MSSanté.

###### Document Non visible par le patient 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué au patient[.]{.underline}

+------------------+-----------------+--------------------------------+
| **Composition du |                 |                                |
| groupe           |                 |                                |
| OBSE             |                 |                                |
| RVATION/OBXNTE : |                 |                                |
| Usage = Required |                 |                                |
| / Cardinalité =  |                 |                                |
| \[1..1\]**       |                 |                                |
+==================+=================+================================+
| **Elément        | **              | **Valeur :**                   |
| requis :**       | Description :** |                                |
+------------------+-----------------+--------------------------------+
| **Segment OBX**  | **Obser         |                                |
|                  | vation/Result** |                                |
+------------------+-----------------+--------------------------------+
| OBX-1            | Set Id - Obx    | Numéro de séquence du segment  |
+------------------+-----------------+--------------------------------+
| OBX-2            | Value Type      | Pour le message ORU : CE       |
|                  |                 | (Coded Entry)                  |
|                  |                 |                                |
|                  |                 | Pour le message MDM : CWE      |
|                  |                 | (Coded with Exceptions)        |
+------------------+-----------------+--------------------------------+
| OBX-3            | Observation     |                                |
|                  | Identifier      |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-3.1 :     | Code :          | INVISIBLE_PATIENT              |
+------------------+-----------------+--------------------------------+
| \> OBX-3.2 :     | Libellé :       | Document Non Visible par le    |
|                  |                 | patient                        |
+------------------+-----------------+--------------------------------+
| \> OBX-3.3 :     | Name of Coding  | MetaDMPMSS                     |
|                  | system          |                                |
+------------------+-----------------+--------------------------------+
| OBX-5            | Observation     |                                |
|                  | Value           |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-5.1       | Code :          | Table HL7 : 0136 :             |
|                  |                 |                                |
|                  |                 | -   Y (YES) à                  |
|                  |                 |     INVISIBLE_PATIENT actif    |
|                  |                 |                                |
|                  |                 | -   N (No) à INVISIBLE_PATIENT |
|                  |                 |     non actif                  |
+------------------+-----------------+--------------------------------+
| \> OBX-5.3       | Name Of Coding  | expandedYes-NoIndicator        |
|                  | System          |                                |
+------------------+-----------------+--------------------------------+
| OBX-11           | Observation     | Valeur fixée à « F »           |
|                  | Result Status   |                                |
+------------------+-----------------+--------------------------------+

[**Point d'attention :**]{.underline} un document clinique masqué au
patient ne doit pas être envoyé au patient par MSSanté.

###### Document Non visible par les représentants légaux du patient  

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué aux représentants légaux du patient.

+------------------+-----------------+--------------------------------+
| **Composition du |                 |                                |
| groupe           |                 |                                |
| OBSE             |                 |                                |
| RVATION/OBXNTE : |                 |                                |
| Usage = Required |                 |                                |
| / Cardinalité =  |                 |                                |
| \[1..1\]**       |                 |                                |
+==================+=================+================================+
| **Elément        | **              | **Valeur :**                   |
| requis :**       | Description :** |                                |
+------------------+-----------------+--------------------------------+
| **Segment OBX**  | **Obser         |                                |
|                  | vation/Result** |                                |
+------------------+-----------------+--------------------------------+
| OBX-1            | Set Id - Obx    | Numéro de séquence du segment  |
+------------------+-----------------+--------------------------------+
| OBX-2            | Value Type      | Pour le message ORU : CE       |
|                  |                 | (Coded Entry)                  |
|                  |                 |                                |
|                  |                 | Pour le message MDM : CWE      |
|                  |                 | (Coded with Exceptions)        |
+------------------+-----------------+--------------------------------+
| OBX-3            | Observation     |                                |
|                  | Identifier      |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-3.1 :     | Code :          | INVISIBLE_REP_LEGAUX           |
+------------------+-----------------+--------------------------------+
| \> OBX-3.2 :     | Libellé :       | Non visible par les            |
|                  |                 | représentants Légaux du        |
|                  |                 | patient                        |
+------------------+-----------------+--------------------------------+
| \> OBX-3.3 :     | Name of Coding  | MetaDMPMSS                     |
|                  | system          |                                |
+------------------+-----------------+--------------------------------+
| OBX-5            | Observation     |                                |
|                  | Value           |                                |
+------------------+-----------------+--------------------------------+
| \> OBX-5.1       | Code :          | Table HL7 : 0136 :             |
|                  |                 |                                |
|                  |                 | -   Y (YES) à INVISIBLE\_      |
|                  |                 |     REP_LEGAUX actif           |
|                  |                 |                                |
|                  |                 | -   N (No) à INVISIBLE\_       |
|                  |                 |     REP_LEGAUX non actif       |
+------------------+-----------------+--------------------------------+
| \> OBX-5.3       | Name Of Coding  | expandedYes-NoIndicator        |
|                  | System          |                                |
+------------------+-----------------+--------------------------------+
| OBX-11           | Observation     | Valeur fixée à « F »           |
|                  | Result Status   |                                |
+------------------+-----------------+--------------------------------+

[**Point d'attention :**]{.underline} un document clinique masqué aux
représentants légaux du patient ne doit pas être envoyé aux
représentants légaux du patient par MSSanté.

###### Connexion Secrète

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP « connexion secrète » ^\[7\]^

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Required |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | CONNEXION_SECRETE             |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Connexion Secrete             |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à                 |
|                  |                  |     CONNEXION_SECRETE actif   |
|                  |                  |                               |
|                  |                  | -   N (No) à                  |
|                  |                  |     CONNEXION_SECRETE non     |
|                  |                  |     Actif                     |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

###### Modification Confidentiality Code

Cet OBX permet d'informer l'acteur GESTIONNAIRE que la transaction porte
une modification du CONFIDENTIALITY CODE indiquant une mise à jour des
métadonnées de masquage/démasquage aux PS et/ou de visibilité du
document au patient ou à ses représentants légaux.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Required |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | MODIF_CONF_CODE               |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Modification Confidentiality  |
|                  |                  | Code                          |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à MODIF_CONF_CODE |
|                  |                  |     actif                     |
|                  |                  |                               |
|                  |                  | -   N (No) MODIF_CONF_CODE    |
|                  |                  |     non Actif                 |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

###### Alimentation DMP

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Required |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | DESTDMP                       |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Destinataire DMP              |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à DESTDMP actif   |
|                  |                  |                               |
|                  |                  | -   N (No) à DESTDMP non      |
|                  |                  |     Actif                     |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

###### Echange MSSanté Professionnel de Santé/Organisation/BAL applicative

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être envoyé vers un PS, une organisation ou une Boîte aux lettres (BAL)
applicative.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Required |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | DESTMSSANTEPS                 |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Destinataire (Professionnel   |
|                  |                  | de Santé, organisation ou BAL |
|                  |                  | applicative)                  |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à DESTMSSANTEPS   |
|                  |                  |     actif                     |
|                  |                  |                               |
|                  |                  | -   N (No) à DESTMSSANTEPS    |
|                  |                  |     non Actif                 |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

**[Point D'attention :]{.underline}** Les adresses mails MSSanté sont
valorisées dans les segments PRT (Participation Information) du message
HL7v2, dont l'élément PRT-4 (Participation) prend la valeur
« RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans
l'élément PRT-15 (Participant Telecommunication Address).

###### Echange MSSanté Patient 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être échangé vers le mail MSSanté du Patient.

Si l'utilisateur ne souhaite pas que le patient puisse répondre à son
message, un segment NTE avec la valeur « FIN » doit être ajouté.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Required |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | DESTMSSANTEPAT                |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Destinataire Patient          |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) : DESTMSSANTEPAT  |
|                  |                  |     actif                     |
|                  |                  |                               |
|                  |                  | -   N (No) : DESTMSSANTEPAT   |
|                  |                  |     non Actif                 |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+
| **Segment NTE**  | **Notes And      | Ce segment doit être          |
| (conditionnel)   | Comments**       | renseigné avec la valeur      |
|                  |                  | « FIN » si l'utilisateur ne   |
|                  |                  | souhaite pas que le patient   |
|                  |                  | puisse répondre au courriel.  |
+------------------+------------------+-------------------------------+

**[Point D'attention :]{.underline}** L'adresse mail MSSanté du patient
est valorisée dans un segment PRT (Participation Information) du message
HL7v2, dont l'élément PRT-4 (Participation) prend la valeur
« RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans
l'élément PRT-15 (Participant Telecommunication Address).

###### Transmission de l'accusé de réception DMP/MSSanté

Cet OBX permet d'informer le GESTIONNAIRE que l'utilisateur souhaite
recevoir un accusé de réception provenant du DMP et un accusé de
réception provenant du serveur de messagerie de chaque destinataire
MSSanté.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Optional |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | ACK_RECEPTION                 |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Accusé de réception           |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à ack de          |
|                  |                  |     réception DMP/MSSanté     |
|                  |                  |     souhaité                  |
|                  |                  |                               |
|                  |                  | -   N (No) à accusé de        |
|                  |                  |     réception DMP/MSSanté non |
|                  |                  |     souhaité                  |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

###### Transmission de l'accusé de lecture

Cet OBX permet d'informer le GESTIONNAIRE que l'utilisateur souhaite
recevoir un accusé de lecture pour chaque destinataire MSSanté. En
fonction de l'organisation choisie, cet accusé de lecture atteste soit
de la lecture du courrier électronique présent dans la BAL pour chacun
des destinataires MSSanté, soit du résultat du traitement automatique du
courrier électronique par le GESTIONNAIRE destinataire.

+------------------+------------------+-------------------------------+
| **Composition du |                  |                               |
| groupe           |                  |                               |
| OBSE             |                  |                               |
| RVATION/OBXNTE : |                  |                               |
| Usage = Optional |                  |                               |
| / Cardinalité =  |                  |                               |
| \[1..1\]**       |                  |                               |
+==================+==================+===============================+
| **Elément        | *                | **Valeur :**                  |
| requis :**       | *Description :** |                               |
+------------------+------------------+-------------------------------+
| **Segment OBX**  | **Obse           |                               |
|                  | rvation/Result** |                               |
+------------------+------------------+-------------------------------+
| OBX-1            | Set Id - Obx     | Numéro de séquence du segment |
+------------------+------------------+-------------------------------+
| OBX-2            | Value Type       | Pour le message ORU : CE      |
|                  |                  | (Coded Entry)                 |
|                  |                  |                               |
|                  |                  | Pour le message MDM : CWE     |
|                  |                  | (Coded with Exceptions)       |
+------------------+------------------+-------------------------------+
| OBX-3            | Observation      |                               |
|                  | Identifier       |                               |
+------------------+------------------+-------------------------------+
| \> OBX-3.1 :     | Code :           | ACK_LECTURE_MSS               |
+------------------+------------------+-------------------------------+
| \> OBX-3.2 :     | Libellé :        | Accusé de lecture             |
+------------------+------------------+-------------------------------+
| \> OBX-3.3 :     | Name of Coding   | MetaDMPMSS                    |
|                  | system           |                               |
+------------------+------------------+-------------------------------+
| OBX-5            | Observation      |                               |
|                  | Value            |                               |
+------------------+------------------+-------------------------------+
| \> OBX-5.1       | Code :           | Table HL7 : 0136 :            |
|                  |                  |                               |
|                  |                  | -   Y (Yes) à accusé de       |
|                  |                  |     lecture MSSanté souhaité  |
|                  |                  |                               |
|                  |                  | -   N (No) à accusé de        |
|                  |                  |     lecture MSSanté non       |
|                  |                  |     souhaité                  |
+------------------+------------------+-------------------------------+
| \> OBX-5.3       | Name Of Coding   | expandedYes-NoIndicator       |
|                  | System           |                               |
+------------------+------------------+-------------------------------+
| OBX-11           | Observation      | Valeur fixée à « F »          |
|                  | Result Status    |                               |
+------------------+------------------+-------------------------------+

###### Corps du mail à destination d'un professionnel de santé

Cet OBX permet à l'acteur CREATEUR de documents d'ajouter un texte à
intégrer dans le corps du mail à destination des professionnels de santé
via MSSanté. Cette métadonnée est optionnelle :

  -------------------------------------------------------------------------------
  **Composition du                                
  groupe                                          
  OBSERVATION/OBXNTE :                            
  Usage = Optional /                              
  Cardinalité =                                   
  \[0..1\]**                                      
  ---------------------- ------------------------ -------------------------------
  **Elément requis :**   **Description :**        **Valeur :**

  **Segment OBX**        **Observation/Result**   

  OBX-1                  Set Id - Obx             Numéro de séquence du segment

  OBX-2                  Value Type               ED (Encapsulated Data)

  OBX-3                  Observation Identifier   

  \> OBX-3.1 :           Code :                   CORPSMAIL_PS

  \> OBX-3.2 :           Libellé :                Corps du mail pour un PS

  \> OBX-3.3 :           Name of Coding system    MetaDMPMSS

  OBX-5                  Observation Value        Indiquer le texte à intégrer
                                                  dans le corps du mail

  OBX-11                 Observation Result       Valeur fixée à « F » 
                         Status                   
  -------------------------------------------------------------------------------

**[Point D'attention :]{.underline}** Si ce segment OBX est renseigné,
le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR
pour l'envoi par MSSanté aux professionnels de santé. A défaut, dans le
cadre d'une suppression ou d'un remplacement de document, le
GESTIONNAIRE renseigne un corps de mail par défaut.

###### Corps du mail à destination du patient

Cet OBX permet au CREATEUR de documents d'ajouter un texte à intégrer
dans le corps du mail à destination du patient via MSSanté. Cette
métadonnée est optionnelle :

  -------------------------------------------------------------------------------
  **Composition du                                
  groupe                                          
  OBSERVATION/OBXNTE :                            
  Usage = Optional /                              
  Cardinalité =                                   
  \[0..1\]**                                      
  ---------------------- ------------------------ -------------------------------
  **Elément requis :**   **Description :**        **Valeur :**

  **Segment OBX**        **Observation/Result**   

  OBX-1                  Set Id - Obx             Numéro de séquence du segment

  OBX-2                  Value Type               ED (Encapsulated Data)

  OBX-3                  Observation Identifier   

  \> OBX-3.1 :           Code :                   CORPSMAIL_PATIENT

  \> OBX-3.2 :           Libellé :                Corps du mail pour le patient

  \> OBX-3.3 :           Name of Coding system    MetaDMPMSS

  OBX-5                  Observation Value        Indiquer le texte à intégrer
                                                  dans le corps du mail

  OBX-11                 Observation Result       Valeur fixée à « F » 
                         Status                   
  -------------------------------------------------------------------------------

**[Point D'attention :]{.underline}** Si ce segment OBX est renseigné,
le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR
pour l'envoi par MSSanté au patient. A défaut, dans le cadre d'une
suppression ou d'un remplacement de document, le GESTIONNAIRE renseigne
un corps de mail par défaut.

Quelques exemples sont disponibles en [annexe 2](#Annexe2) et [annexe
3](#Annexe3).

##### Le message d'acquittement du message HL7v2 

Après réception du message ORU/MDM, le Gestionnaire va acquitter ce
message HL7.

###### Profil du message ACK

Le profil du message ACK est le suivant :

  -------------------------------------------------------------------------------
  Segment         Meaning                              Usage   Card.       HL7 §
  --------------- ------------------------------------ ------- ----------- ------
  MSH             Message header                       R       \[1..1\]    2

  \[{SFT}\]       Software segment                     O       \[0..\*\]   2

  \[UAC\]         User Authentication credential--     O       \[0..1\]    2
                  Utilisé uniquement dans la version                       
                  2.6                                                      

  MSA             Message Acknowledgement              R       \[1..1\]    2

  \[{ERR}\]       Error                                C       \[0..\*\]   2
  -------------------------------------------------------------------------------

###### Structure fonctionnelle du message ACK

La structure du message ACK est représentée ci-dessous :

![Une image contenant texte Description générée
automatiquement](./images/media/image26.png){width="4.854549431321085in"
height="1.886165791776028in"}

Figure 19 : Structure fonctionnelle du message ACK

Ces segments doivent être conformes au standard HL7v2.5 pour le message
ORU et HL7v2.6 pour MDM.

###### Description des contraintes à appliquer sur l'acquittement

####### Segment MSH

Le segment MSH reprend une partie des informations du message initial :

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Message initial**                                                                                        **Message d'acquittement**                                                               
  ---------------------------------------------------------------------------------------- ----------------- ---------------------------------------------------------------------------------------- -------------------
  **Champ**                                                                                **Description**   **Champ**                                                                                **Description**

  [[MSH.3]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3) -     Application       [[MSH.5]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5) -     Application
  Sending Application​                                                                      source du message Receiving Application​                                                                    destinatrice de
                                                                                           à acquitter                                                                                                l'acquittement

  [[MSH.4]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4) -     Etablissement     [[MSH.6]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6) -     Etablissement
  Sending Facility​                                                                         source du message Receiving Facility​                                                                       destinataire de
                                                                                           à acquitter                                                                                                l'acquittement

  [[MSH.5]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5) -     Application       [[MSH.3]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3) -     Application source
  Receiving Application​                                                                    destinatrice du   Sending Application​                                                                      de l'acquittement
                                                                                           message à                                                                                                  
                                                                                           acquitter                                                                                                  

  [[MSH.6]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6) -     Etablissement     [[MSH.4]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4) -     Etablissement
  Receiving Facility​                                                                       destinataire du   Sending Facility​                                                                         source de
                                                                                           message à                                                                                                  l'acquittement
                                                                                           acquitter                                                                                                  

  [[MSH.11]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11) -   Identifiant de    [[MSH.11]{.underline}](https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11) -   Identifiant de
  Processing Id​                                                                            traitement        Processing Id​                                                                            traitement
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Le segment MSH doit être conforme au standard HL7v2.5 ou HL7v2.6 selon
le type du message (ORU ou MDM) :

+-----------+-------------------------+----------+--------------------+
| Champ     | Contenu                 | Type     | Caractère          |
|           |                         | donnée   | opt                |
|           |                         |          | ionnel/obligatoire |
+===========+=========================+==========+====================+
| MSH-1     | \| séparateur de champ  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-2     | \^\~\\& : séparateur de | ST       | R                  |
|           | composant, répétition,  |          |                    |
|           | caractère               |          |                    |
|           | d'échappement,          |          |                    |
|           | séparateur de           |          |                    |
|           | sous-composants         |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-3     | Application émettrice   | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-4     | Organisation émettrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-5     | Application réceptrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-6     | Organisation réceptrice | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-7     | Date/time du message    | TS       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-9     | Type du message, selon  | MSG      | R                  |
|           | l'évènement du message  |          |                    |
|           | initial :\              |          |                    |
|           | ACK\^R01\^ACK           |          |                    |
|           |                         |          |                    |
|           | ACK\^T02\^ACK           |          |                    |
|           | ACK\^T04\^ACK           |          |                    |
|           | ACK\^T10\^ACK.          |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-10    | Identifiant du message  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-11    | Processing Id\          | PT       | R                  |
|           | P : en production\      |          |                    |
|           | T : message de test\    |          |                    |
|           | D : environnement de    |          |                    |
|           | debug                   |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-12    | Version du standard\    | VID      | R                  |
|           | 2.5 pour ORU\           |          |                    |
|           | 2.6 pour MDM            |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-17    | FRA                     | ID       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-18    | Jeux de caractères,     | ID       | R                  |
|           | valeurs possibles :     |          |                    |
|           |                         |          |                    |
|           | UNICODE UTF-8 ou        |          |                    |
|           | 8859/15                 |          |                    |
+-----------+-------------------------+----------+--------------------+

####### Segment MSA

+-----------------+----------------------------------------------------+
| **Champ         | **Contenu**                                        |
| requis**        |                                                    |
+=================+====================================================+
| [MSA.1](ht      | Code d'acquittement du message autorisé :          |
| tps://hl7-defin |                                                    |
| ition.caristix. | -   AA (Original mode: Application Accept -        |
| com/v2/HL7v2.8/ |     Enhanced mode: Application acknowledgment:     |
| Fields/MSA.1) - |     Accept) : le message a été compris et intégré  |
| Acknowledgment  |     par l'application destinatrice qui prend la    |
| Code            |     responsabilité du message et libère ainsi      |
|                 |     l'application productrice de toute obligation  |
|                 |     de le renvoyer.                                |
|                 |                                                    |
|                 | -   AE (Original mode: Application Error -         |
|                 |     Enhanced mode: Application acknowledgment:     |
|                 |     Error) : le message contient des erreurs de    |
|                 |     syntaxe.                                       |
|                 |                                                    |
|                 | -   AR (Original mode: Application Reject -        |
|                 |     Enhanced mode: Application acknowledgment:     |
|                 |     Reject)  : le message est rejeté pour une      |
|                 |     raison circonstancielle. Il peut être réémis   |
|                 |     plus tard.                                     |
+-----------------+----------------------------------------------------+
| [MSA.2](ht      | Rappel l'identifiant du message acquitté           |
| tps://hl7-defin | correspondant au champ MSH.10 du message initial.  |
| ition.caristix. |                                                    |
| com/v2/HL7v2.8/ |                                                    |
| Fields/MSA.2) - |                                                    |
| Message Control |                                                    |
| Id              |                                                    |
+-----------------+----------------------------------------------------+

####### Segment ERR

Ce segment est utilisé au niveau des messages d'acquittement dans le cas
où le champ MSA-1 prend la valeur AE (Application error) ou AR
(Application reject).

Le tableau ci-dessous liste les champs à renseigner pour le segment
ERR :

  ------------------------------------------------------------------------
  Champ     Contenu                      Type     Caractère
                                         donnée   optionnel/obligatoire
  --------- ---------------------------- -------- ------------------------
  ERR-2     Localisation de l'erreur     ERL      O
            dans le cas d'une erreur de           
            syntaxe du message initial.           

  ERR-3     Code erreur HL7 dont les     CWE      R
            valeurs sont à prendre dans           
            la table HL7 0357 (nom                
            symbolique                            
            messageErrorCondition)                

  ERR-4     Sévérité de l'erreur dont    ID       R
            les valeurs sont à prendre            
            dans la table HL7 0516 (nom           
            symbolique errorSeverity)             
  ------------------------------------------------------------------------

####### Exemple

Entête MSH d'un message MDM ou ORU émis par le CREATEUR :

MSH\|\^\~\\&\|SIL\|CHU_X\|PFI\|CHU_X\|202310030830\|\|ORU\^R01\^ORU_R01\|12345\|P\|2.5\|\|\|\|\|FRA\|8859/15\|\|\|2.1\^
CISIS_CDA_HL7_V2

Un acquittement positif retourné par le GESTIONNAIRE :

MSH\|\^\~\\&\|PFI\|CHU_X\|SIL\|CHU_X\|202310030831\|\|ACK\^R01\^ACK\|12346\|P\|2.5\|\|\|\|\|FRA\|8859/15\|\|\|2.1\^
CISIS_CDA_HL7_V2

MSA\|AA\|12345

Un acquittement négatif retourné par le GESTIONNAIRE : version d'HL7
inconnue

MSH\|\^\~\\&\|PFI\|CHU_X\|SIL\|CHU_X\|202310030831\|\|ACK\^R01\^ACK\|12347\|P\|2.5\|\|\|\|\|FRA\|8859/15\|\|\|2.1\^
CISIS_CDA_HL7_V2

MSA\|AE\|12345

ERR\|\|MSH\^1\^12\|203\^ Unsupported version\^messageErrorCondition\| E

#### Description des messages HL7 d'accusés métier

##### Evènements déclenchants des messages d'accusés métier HL7v2

Après réception du (des) document(s), le GESTIONNAIRE le(s)
distribue(nt) au consommateur de documents (DMP/MSSanté). Lorsque le
GESTIONNAIRE reçoit un retour du consommateur, il en informe le CREATEUR
au moyen d'accusés métier HL7.

A noter qu'aucun accusé de réception métier n'est prévu dans la
spécification lors de la réception par la DRIMbox Source du message
HL7v2 ORU ou MDM avec le Compte-Rendu d'Imagerie. Par contre, un message
d'acquittement technique (voir section 12.3) permettra à la DRIMbox de
communiquer au GESTIONNAIRE qu'elle a bien pris la responsabilité des
traitements associés au compte-rendu qui lui a été transmis
(AA (Original mode: Application Accept - Enhanced mode: Application
acknowledgment: Accept dans MSA-1)).

Pour couvrir ce besoin de retour d'accusés métiers, un nouveau type de
message HL7 a été créé : HL7v2.6 ZAM -- Accusé Métier.

Ce type de message est utilisé par trois évènements différents :

+---------------------+----------------+------------------------------+
| **Flux métier**     | **Evènement    | **Message métier HL7**       |
|                     | déclenchant au |                              |
|                     | niveau du      |                              |
|                     | GESTIONNAIRE** |                              |
+=====================+================+==============================+
| AccuseM             | Réception du   | -   ZAM : L'évènement        |
| etierReceptionDMP : | retour du DMP  |     utilisé sera le Z01      |
| Accusé de réception | (Provide And   |                              |
| de(s) document(s)   | Register       | « Accusé de réception DMP »  |
| par le DMP.         | Document Set-b |                              |
|                     | Response)      | à ZAM\^Z01\^ZAM_Z01          |
+---------------------+----------------+------------------------------+
| AccuseM             | Réception du   | -   ZAM : L'évènement        |
| etierReceptionMSS : | message DSN    |     utilisé sera le Z02      |
| Accusé de réception | (RFC 3461 à    |                              |
| de la demande par   | 3464 et 6522)  | « Accusé de réception        |
| le serveur de       |                | MSSanté »                    |
| messagerie du       |                |                              |
| destinataire        |                | à ZAM\^Z02\^ZAM_Z01          |
| MSSanté             |                |                              |
+---------------------+----------------+------------------------------+
| Accus               | Réception du   | -   ZAM : L'évènement        |
| eMetierLectureMSS : | message MDN    |     utilisé sera le Z03      |
| Accusé de lecture   | (RFC 8098)     |                              |
| du courriel         |                | « Accusé de lecture MSSanté  |
| (traitement         |                | »                            |
| automatique du      |                |                              |
| courriel ou lecture |                | à ZAM\^Z03\^ZAM_Z01          |
| du courriel par un  |                |                              |
| utilisateur dans sa |                |                              |
| boîte aux lettres)  |                |                              |
+---------------------+----------------+------------------------------+

##### Structure des messages accusés métier HL7

L'accusé de réception du document par le DMP, l'accusé de réception du
courriel MSSanté et l'accusé de lecture MSSanté seront transmis en
utilisant la structure de message HL7v2.6 ZAM_Z01 :

![Une image contenant table Description générée
automatiquement](./images/media/image27.png){width="5.484276027996501in"
height="3.295102799650044in"}

Figure 20 : Structure fonctionnelle des messages accusé métier

Ces segments doivent être conformes au standard HL7v2.6. Les contraintes
concernant les segments en rouge sur le schéma sont décrites dans la
section suivante.

##### Description des contraintes à appliquer sur les accusés métiers

Pour l'ensemble des OBX listés dans cette section, le champ OBX-3 prend
ses valeurs dans la table « AckMetierZAM » disponible en [annexe
4](#Annexe4).

###### Contraintes à appliquer au message ZAM\^Z01\^ZAM_Z01 - Accusé de réception DMP

####### Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
ZAM\^Z01\^ZAM_Z01.

+-----------+-------------------------+----------+--------------------+
| Champ     | Contenu                 | Type     | Caractère          |
|           |                         | donnée   | opt                |
|           |                         |          | ionnel/obligatoire |
+===========+=========================+==========+====================+
| MSH-1     | \| séparateur de champ  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-2     | \^\~\\& : séparateur de | ST       | R                  |
|           | composant, répétition,  |          |                    |
|           | caractère               |          |                    |
|           | d'échappement,          |          |                    |
|           | séparateur de           |          |                    |
|           | sous-composants         |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-3     | Application émettrice   | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-4     | Organisation émettrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-5     | Application réceptrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-6     | Organisation réceptrice | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-7     | Date/time du message    | TS       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-9     | Type du message :       | MSG      | R                  |
|           | ZAM\^Z01\^ZAM_Z01       |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-10    | Identifiant du message  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-11    | Processing Id\          | PT       | R                  |
|           | P : en production\      |          |                    |
|           | T : message de test\    |          |                    |
|           | D : environnement de    |          |                    |
|           | debug                   |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-12.1  | Version du standard\    | VID      | R                  |
|           | 2.6                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-17    | FRA                     | ID       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-18    | Jeux de caractères,     | ID       | R                  |
|           | valeurs possibles :     |          |                    |
|           |                         |          |                    |
|           | UNICODE UTF-8 ou        |          |                    |
|           | 8859/15                 |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.1  | Version du présent      | ST       | R                  |
|           | volet du CI_SIS :       |          |                    |
|           |                         |          |                    |
|           | 2.1                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.2  | Identifiant du profil   | IS       | R                  |
|           | de message :            |          |                    |
|           |                         |          |                    |
|           | CISIS_CDA_HL7_V2        |          |                    |
+-----------+-------------------------+----------+--------------------+

####### Segment OBX portant le statut de d'accusé de réception

Le premier segment OBX renseigne le statut de l'accusé de réception :

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| OBX : Usage =   |                 |                                 |
| Required /      |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[1..1\]**      |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-1           | Set Id - Obx    | Numéro de séquence du segment   |
|                 |                 |                                 |
|                 |                 | 1                               |
+-----------------+-----------------+---------------------------------+
| OBX-2           | Value Type      | CWE (Coded with Exceptions)     |
+-----------------+-----------------+---------------------------------+
| OBX-3           | Observation     |                                 |
|                 | Identifier      |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.1 :    | Identifier      | ACK_RECEPTION_DMP               |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.2 :    | Text            | Accusé de réception DMP         |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.3      | Name of Coding  | AckMetierZAM                    |
|                 | system          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-4           | Observation     | Indiquer l'identifiant du       |
|                 | Sub-ID          | message (ORU/MDM) ayant         |
|                 |                 | transmis le document            |
+-----------------+-----------------+---------------------------------+
| OBX-5           | Observation     |                                 |
|                 | Value           |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.1      | Code :          | Statut de l'accusé de           |
|                 |                 | réception - Table HL7 : 0136 :  |
|                 |                 |                                 |
|                 |                 | -   Y (Yes) à Succès            |
|                 |                 |                                 |
|                 |                 | -   N (No) à Erreur             |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.3      | Name Of Coding  | expandedYes-NoIndicator         |
|                 | System          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-11          | Observation     | Valeur fixée à « F »            |
|                 | Result Status   |                                 |
+-----------------+-----------------+---------------------------------+

####### Segment ERR

Si une erreur intervient lors du dépôt du document sur le DMP, ce
segment contient sa description.

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| ERR : Usage =   |                 |                                 |
| Conditional /   |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[0..1\]        |                 |                                 |
| (Requis si le   |                 |                                 |
| champ 5 du      |                 |                                 |
| premier OBX     |                 |                                 |
| prend la valeur |                 |                                 |
| N)**            |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| ERR - 3         | Hl7 Error Code  | 207\^Application                |
|                 |                 | error\^messageErrorCondition    |
+-----------------+-----------------+---------------------------------+
| ERR - 4         | Severity        | Error, Fatal Error,             |
|                 |                 | Information, Warning            |
+-----------------+-----------------+---------------------------------+
| ERR - 5         | Application     | Code erreur de DMP              |
|                 | Error Code      |                                 |
|                 | (CWE)           | à Utiliser les codes et         |
|                 |                 | libellés de codes de l'annexe   |
|                 |                 | A7-1 « Liste des codes          |
|                 |                 | d'erreurs » de la spécification |
|                 |                 | « Service DMP intégré aux LPS » |
|                 |                 | v.2.10.0 ^\[7\]^                |
|                 |                 |                                 |
|                 |                 | Code\^libellé du                |
|                 |                 | code\^DMP_ERROR_CODE            |
+-----------------+-----------------+---------------------------------+

###### Contraintes à appliquer au message ZAM\^Z02\^ZAM_Z01 -- Accusé de réception MSSanté

####### Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
ZAM\^Z02\^ZAM_Z01.

+-----------+-------------------------+----------+--------------------+
| Champ     | Contenu                 | Type     | Caractère          |
|           |                         | donnée   | opt                |
|           |                         |          | ionnel/obligatoire |
+===========+=========================+==========+====================+
| MSH-1     | \| séparateur de champ  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-2     | \^\~\\& : séparateur de | ST       | R                  |
|           | composant, répétition,  |          |                    |
|           | caractère               |          |                    |
|           | d'échappement,          |          |                    |
|           | séparateur de           |          |                    |
|           | sous-composants         |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-3     | Application émettrice   | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-4     | Organisation émettrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-5     | Application réceptrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-6     | Organisation réceptrice | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-7     | Date/time du message    | TS       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-9     | Type du message :       | MSG      | R                  |
|           | ZAM\^Z02\^ZAM_Z01       |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-10    | Identifiant du message  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-11    | Processing Id\          | PT       | R                  |
|           | P : en production\      |          |                    |
|           | T : message de test\    |          |                    |
|           | D : environnement de    |          |                    |
|           | debug                   |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-12.1  | Version du standard\    | VID      | R                  |
|           | 2.6                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-17    | FRA                     | ID       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-18    | Jeux de caractères,     | ID       | R                  |
|           | valeurs possibles :     |          |                    |
|           |                         |          |                    |
|           | UNICODE UTF-8 ou        |          |                    |
|           | 8859/15                 |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.1  | Version du présent      | ST       | R                  |
|           | volet du CI_SIS :       |          |                    |
|           |                         |          |                    |
|           | 2.1                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.2  | Identifiant du profil   | IS       | R                  |
|           | de message :            |          |                    |
|           |                         |          |                    |
|           | CISIS_CDA_HL7_V2        |          |                    |
+-----------+-------------------------+----------+--------------------+

####### Segment OBX portant le statut de d'accusé de réception

Le premier segment OBX renseigne le statut de l'accusé de réception
MSSanté :

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| OBX : Usage =   |                 |                                 |
| Required /      |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[1..1\]**      |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-1           | Set Id - Obx    | Numéro de séquence du segment   |
|                 |                 |                                 |
|                 |                 | 1                               |
+-----------------+-----------------+---------------------------------+
| OBX-2           | Value Type      | CWE                             |
+-----------------+-----------------+---------------------------------+
| OBX-3           | Observation     |                                 |
|                 | Identifier      |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.1 :    | Identifier      | ACK_RECEPTION_MSS               |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.2 :    | Text            | Accusé de réception MSSanté     |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.3      | Name of Coding  | AckMetierZAM                    |
|                 | system          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-4           | Observation     | Indiquer l'identifiant du       |
|                 | Sub-ID          | message (ORU/MDM) ayant         |
|                 |                 | transmis le document            |
+-----------------+-----------------+---------------------------------+
| OBX-5           | Observation     |                                 |
|                 | Value           |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.1      | Code :          | Statut de l'accusé de           |
|                 |                 | réception - Table HL7 : 0136 :  |
|                 |                 |                                 |
|                 |                 | -   Y (Yes) à Succès            |
|                 |                 |                                 |
|                 |                 | -   N (No) à Erreur             |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.3      | Name Of Coding  | expandedYes-NoIndicator         |
|                 | System          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-11          | Observation     | Valeur fixée à « F »            |
|                 | Result Status   |                                 |
+-----------------+-----------------+---------------------------------+

####### Segment OBX portant les informations du destinataire MSSanté

Le deuxième segment OBX renseigne les informations du destinataire du
courriel MSSanté :

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| OBX : Usage =   |                 |                                 |
| Required /      |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[1..1\]**      |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-1           | Set Id - Obx    | Numéro de séquence du segment   |
|                 |                 |                                 |
|                 |                 | 2                               |
+-----------------+-----------------+---------------------------------+
| OBX-2           | Value Type      | XTN                             |
+-----------------+-----------------+---------------------------------+
| OBX-3           | Observation     |                                 |
|                 | Identifier      |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.1 :    | Identifier      | DESTINATAIRE_MSS                |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.2 :    | Text            | Destinataire MSSanté            |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.3      | Name of Coding  | AckMétierZAM                    |
|                 | system          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-4           | Observation     | Indiquer l'identifiant du       |
| (optionnel)     | Sub-ID          | destinataire                    |
+-----------------+-----------------+---------------------------------+
| OBX-5           | Observation     |                                 |
|                 | Value           |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.3      | Te              | X.400 (X.400 email address)     |
|                 | lecommunication |                                 |
|                 | Equipment Type  |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.4      | Communication   | Intégrer l'adresse MSSanté du   |
|                 | Address         | destinataire                    |
+-----------------+-----------------+---------------------------------+
| OBX-11          | Observation     | Valeur fixée à « F »            |
|                 | Result Status   |                                 |
+-----------------+-----------------+---------------------------------+

####### Segment ERR

Si une erreur intervient lors de la distribution du ou des document(s)
par MSSanté dans le serveur de messagerie du destinataire MSSanté, ce
segment contient sa description.

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| ERR : Usage =   |                 |                                 |
| Conditional /   |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[0..1\]        |                 |                                 |
| (Requis si le   |                 |                                 |
| champ 5 du      |                 |                                 |
| premier OBX     |                 |                                 |
| prend la valeur |                 |                                 |
| N)**            |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| ERR - 3         | Hl7 Error Code  | 207\^Application                |
|                 |                 | error\^messageErrorCondition    |
+-----------------+-----------------+---------------------------------+
| ERR - 4         | Severity        | Error, Fatal Error,             |
|                 |                 | Information, Warning            |
+-----------------+-----------------+---------------------------------+
| ERR - 5         | Application     | Code erreur de MSSanté. Cf      |
|                 | Error Code      | [annexe 5](#Annexe5)            |
|                 |                 |                                 |
|                 |                 | Code SMTP\^libellé du           |
|                 |                 | code\^SMTPERRORCODE             |
+-----------------+-----------------+---------------------------------+

###### Contraintes à appliquer au message ZAM\^Z03\^ZAM_Z01 -- Accusé de lecture MSSanté 

####### Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
ZAM\^Z03\^ZAM_Z01.

+-----------+-------------------------+----------+--------------------+
| Champ     | Contenu                 | Type     | Caractère          |
|           |                         | donnée   | opt                |
|           |                         |          | ionnel/obligatoire |
+===========+=========================+==========+====================+
| MSH-1     | \| séparateur de champ  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-2     | \^\~\\& : séparateur de | ST       | R                  |
|           | composant, répétition,  |          |                    |
|           | caractère               |          |                    |
|           | d'échappement,          |          |                    |
|           | séparateur de           |          |                    |
|           | sous-composants         |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-3     | Application émettrice   | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-4     | Organisation émettrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-5     | Application réceptrice  | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-6     | Organisation réceptrice | HD       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-7     | Date/time du message    | TS       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-9     | Type du message :       | MSG      | R                  |
|           | ZAM\^Z03\^ZAM_Z01       |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-10    | Identifiant du message  | ST       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-11    | Processing Id\          | PT       | R                  |
|           | P : en production\      |          |                    |
|           | T : message de test\    |          |                    |
|           | D : environnement de    |          |                    |
|           | debug                   |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-12.1  | Version du standard\    | VID      | R                  |
|           | 2.6                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-17    | FRA                     | ID       | R                  |
+-----------+-------------------------+----------+--------------------+
| MSH-18    | Jeux de caractères,     | ID       | R                  |
|           | valeurs possibles :     |          |                    |
|           |                         |          |                    |
|           | UNICODE UTF-8 ou        |          |                    |
|           | 8859/15                 |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.1  | Version du présent      | ST       | R                  |
|           | volet du CI_SIS :       |          |                    |
|           |                         |          |                    |
|           | 2.1                     |          |                    |
+-----------+-------------------------+----------+--------------------+
| MSH-21.2  | Identifiant du profil   | IS       | R                  |
|           | de message :            |          |                    |
|           |                         |          |                    |
|           | CISIS_CDA_HL7_V2        |          |                    |
+-----------+-------------------------+----------+--------------------+

####### Segment OBX portant le statut de d'accusé de lecture MSSanté

Le premier segment OBX renseigne le statut de l'accusé de lecture :

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| OBX : Usage =   |                 |                                 |
| Required /      |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[1..1\]**      |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-1           | Set Id - Obx    | Numéro de séquence du segment   |
|                 |                 |                                 |
|                 |                 | 1                               |
+-----------------+-----------------+---------------------------------+
| OBX-2           | Value Type      | CWE                             |
+-----------------+-----------------+---------------------------------+
| OBX-3           | Observation     |                                 |
|                 | Identifier      |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.1 :    | Identifier      | ACK_LECTURE_MSS                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.2 :    | Text            | Accusé de lecture               |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.3      | Name of Coding  | AckMetierZAM                    |
|                 | system          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-4           | Observation     | Indiquer l'identifiant du       |
|                 | Sub-ID          | message (ORU/MDM) ayant         |
|                 |                 | transmis le document            |
+-----------------+-----------------+---------------------------------+
| OBX-5           | Observation     |                                 |
|                 | Value           |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.1      | Code :          | Statut de l'accusé de lecture - |
|                 |                 | Table HL7 : 0136 :              |
|                 |                 |                                 |
|                 |                 | -   Y (Yes) à Succès            |
|                 |                 |                                 |
|                 |                 | -   N (No) à Erreur             |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.3      | Name Of Coding  | expandedYes-NoIndicator         |
|                 | System          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-11          | Observation     | Valeur fixée à « F »            |
|                 | Result Status   |                                 |
+-----------------+-----------------+---------------------------------+

####### Segment OBX portant les informations du lecteur

Le deuxième segment OBX renseigne les informations du lecteur du
courriel MSSanté :

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| OBX : Usage =   |                 |                                 |
| Required /      |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[1..1\]**      |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-1           | Set Id - Obx    | Numéro de séquence du segment   |
|                 |                 |                                 |
|                 |                 | 2                               |
+-----------------+-----------------+---------------------------------+
| OBX-2           | Value Type      | XTN                             |
+-----------------+-----------------+---------------------------------+
| OBX-3           | Observation     |                                 |
|                 | Identifier      |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.1 :    | Identifier      | LECTEUR_MSS                     |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.2 :    | Text            | Lecteur du courriel MSSanté     |
+-----------------+-----------------+---------------------------------+
| \> OBX-3.3      | Name of Coding  | AckMetierZAM                    |
|                 | system          |                                 |
+-----------------+-----------------+---------------------------------+
| OBX-4           | Observation     | Indiquer l'identifiant du       |
| (optionnel)     | Sub-ID          | professionnel de santé          |
+-----------------+-----------------+---------------------------------+
| OBX-5           | Observation     |                                 |
|                 | Value           |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.3      | Te              | X.400 (X.400 email address)     |
|                 | lecommunication |                                 |
|                 | Equipment Type  |                                 |
+-----------------+-----------------+---------------------------------+
| \> OBX-5.4      | Communication   | Intégrer l'adresse de la BAL    |
|                 | Address         | qui a lu le courriel.           |
+-----------------+-----------------+---------------------------------+
| OBX-11          | Observation     | Valeur fixée à « F »            |
|                 | Result Status   |                                 |
+-----------------+-----------------+---------------------------------+

####### Segment ERR

Si une erreur intervient lors du traitement de la demande réceptionnée
par le destinataire, ce segment contient sa description.

+-----------------+-----------------+---------------------------------+
| **Composition   |                 |                                 |
| du segment      |                 |                                 |
| ERR : Usage =   |                 |                                 |
| Conditional /   |                 |                                 |
| Cardinalité =   |                 |                                 |
| \[0..1\]        |                 |                                 |
| (Requis si le   |                 |                                 |
| champ 5 du      |                 |                                 |
| premier OBX     |                 |                                 |
| prend la valeur |                 |                                 |
| N)**            |                 |                                 |
+=================+=================+=================================+
| **Champ         | **              | **Valeur :**                    |
| requis :**      | Description :** |                                 |
+-----------------+-----------------+---------------------------------+
| ERR - 3         | Hl7 Error Code  | 207\^Application                |
|                 |                 | error\^messageErrorCondition    |
+-----------------+-----------------+---------------------------------+
| ERR - 4         | Severity        | Error, Fatal Error,             |
|                 |                 | Information, Warning            |
+-----------------+-----------------+---------------------------------+
| ERR - 5         | Application     | Sélection d'un code erreur dans |
|                 | Error Code      | la table HL70533 (nom           |
|                 | (CWE)           | symbolique :                    |
|                 |                 | applicationErrorCode)           |
|                 |                 |                                 |
|                 |                 | à Utiliser les codes et         |
|                 |                 | libellés de codes de l'annexe 6 |
|                 |                 | « Codes erreurs de l'accusé     |
|                 |                 | métier de lecture/traitement de |
|                 |                 | la demande ».                   |
|                 |                 |                                 |
|                 |                 | Code\^libellé du code\^         |
|                 |                 | applicationErrorCondition       |
+-----------------+-----------------+---------------------------------+

Seules les erreurs de niveau applicatif du traitement automatique sur le
document au niveau du destinataire final sont remontées au travers du
courriel MDN et réceptionnées par le GESTIONNAIRE (la PFI expéditrice).
Les erreurs de type technique (erreurs de syntaxe du message HL7) sont
généralement traitées localement, côté du destinataire, par une des
intervenants techniques. Dans ces conditions, le segment ERR-3 prend la
valeur 207 et le segment ERR-5 contient l'erreur applicative remontée au
travers du courriel MDN. Le message HL7 ZAM\^Z03\^ZAM_Z01 est généré par
le GESTIONNAIRE à partir des informations contenues dans le courriel MDN
(cf structure du MDN -- Message Disposition Notification) décrit en
Annexe 4 du volet « Transmission au LPS d'un document CDA provenant d'un
courriel MSSanté ».

##### Message d'acquittement technique des accusés métiers

Le message d'acquittement est identique à celui spécifié dans la partie
12.2.8, à l'exception du champ MSH-9 qui prend la valeur ACK\^Z01\^ACK
ou ACK\^Z02\^ACK ou ACK\^Z03\^ACK selon l'évènement du message initial.
