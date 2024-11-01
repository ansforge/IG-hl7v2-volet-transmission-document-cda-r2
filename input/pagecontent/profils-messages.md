
#### Description des messages ORU et MDM

La description des messages ORU et MDM est basée sur le contenu du
document et les métadonnées complémentaires à véhiculer dans le cadre du
partage et de l'échange.

Les données utiles pour publication sur le DMP et pour l'envoi par
MSSanté de(s) document(s) sont stockées à la fois dans le segment PID du
message HL7, dans le document CDA-R2 conforme au [volet du CI_SIS Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) et dans des segments OBX du message HL7 spécifiant les métadonnées complémentaires.

Le développeur doit valoriser tous les segments et champs obligatoires
des messages HL7v2 afin de répondre au standard d'interopérabilité des
messages.

Ci-dessous sont représentées les structures de messages HL7v2 proposées
pour la transmission de document(s) CDA-R2 en HL7v2.

##### Message ORU^R01^ORU_R01 en HL7v2.5

###### Profil du message ORU_R01

Le profil du message ORU_R01 est le suivant :
<table class="table-hl7v2">
  <tr>
    <th>
      <p>Segment</p>
    </th>
    <th>
      <p>Meaning</p>
    </th>
    <th>
      <p>Usage</p>
    </th>
    <th>
      <p>Card.</p>
    </th>
    <th>
      <p>§ HL7</p>
    </th>
  </tr>
  <tbody>
    <tr>
      <td>
        <p>MSH</p>
      </td>
      <td>
        <p>Message Header</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- PATIENT_RESULT begin</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- PATIENT begin</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> PID</p>
      </td>
      <td>
        <p>Patient Identification</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>3</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- PATIENT_VISIT begin</p>
      </td>
      <td>
        <p>RE</p>
      </td>
      <td>
        <p>[0..1]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>  PV1</p>
      </td>
      <td>
        <p>Patient Visit</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>3</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- PATIENT_VISIT end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- PATIENT end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>{</p>
      </td>
      <td>
        <p>--- ORDER_OBSERVATION begin</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..*]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> ORC</p>
      </td>
      <td>
        <p>Common Order : demande de traitement sur un document</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> OBR</p>
      </td>
      <td>
        <p>Observation Request</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> [{NTE}]</p>
      </td>
      <td>
        <p>Comments on the order</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>[{</p>
      </td>
      <td>
        <p>--- TIMING begin</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> TQ1</p>
      </td>
      <td>
        <p>Timing Quantity</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>}]</p>
      </td>
      <td>
        <p>--- TIMING end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> {</p>
      </td>
      <td>
        <p>--- OBSERVATION begin</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..*]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>  OBX</p>
      </td>
      <td>
        <p>Document et expression des métadonnées de document relatives au masquage du document aux PS et de visibilité au patient.</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>7</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>  [{PRT}] (note 1)</p>
      </td>
      <td>
        <p>Participation : Expéditeur du document, destinataire(s) MSSanté, adresse mail sur laquelle le destinataire peut répondre. Segment PRT pré-adopté de la version 2.9</p>
      </td>
      <td>
        <p>R/C</p>
      </td>
      <td>
        <p>[1..*]</p>
      </td>
      <td>
        <p>7 (v2.9)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>  [{NTE}]</p>
      </td>
      <td>
        <p>Comment of the result</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> }</p>
      </td>
      <td>
        <p>--- OBSERVATION end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
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
segments du message ORU sont décrites à la [section dédiée](profils-messages.html#contraintes-appliquées-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

###### Description fonctionnelle du message ORU

<div class="figure" style='text-align: center;'>
    <img src="fig17.png" alt="Figure 17" title="Figure 17 : Structure fonctionnelle du message ORU_R01" style="width:80%;">
    <figcaption><b>Figure 17 : Structure fonctionnelle du message ORU_R01</b></figcaption>
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

Les groupes de segments OBSERVATION suivants (répétables) véhiculent les métadonnées spécifiques à la publication sur le DMP et/ou à l'envoi par la MSSanté. Ces métadonnées sont communes aux deux formats du document. Ces métadonnées sont décrites dans la [section dédiée](profils-messages.html#contraintes-appliqu%C3%A9es-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

##### Message MDM en HL7v2.6

###### Profil du message MDM

Le profil du message MDM est le suivant :

<table class="table-hl7v2">
  <tr>
    <th>
      <p>Segment</p>
    </th>
    <th>
      <p>Meaning</p>
    </th>
    <th>
      <p>Usage</p>
    </th>
    <th>
      <p>Card.</p>
    </th>
    <th>
      <p>§ HL7</p>
    </th>
  </tr>
  <tbody>
    <tr>
      <td>
        <p>MSH</p>
      </td>
      <td>
        <p>Message Header</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>EVN</p>
      </td>
      <td>
        <p>Event type</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PID</p>
      </td>
      <td>
        <p>Patient Identification</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>3</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PV1</p>
      </td>
      <td>
        <p>Patient Visit</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>3</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- COMMON_ORDER begin</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p> &nbsp; ORC</p>
      </td>
      <td>
        <p>Common Order = demande de traitement sur le document</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;[{</p>
      </td>
      <td>
        <p>--- TIMING begin</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;&nbsp;TQ1</p>
      </td>
      <td>
        <p>Timing/Quantity</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;&nbsp;[{TQ2}]</p>
      </td>
      <td>
        <p>Timing/Quantity RelationShip</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;&nbsp;}]</p>
      </td>
      <td>
        <p>--- TIMING end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;&nbsp;OBR</p>
      </td>
      <td>
        <p>Observation Request segment</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>4</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;[{NTE}]</p>
      </td>
      <td>
        <p>Notes and comments</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p>--- COMMON_ORDER end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA</p>
      </td>
      <td>
        <p>Transcription document header</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>9</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>{</p>
      </td>
      <td>
        <p>OBXNTE : Document ou expression des métadonnées de document relatives au masquage du document aux PS et de visibilité au patient.</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..*]</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;OBX</p>
      </td>
      <td>
        <p>Observation/Result.</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>9</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;[{PRT}]</p>
        <p>(Note 1)</p>
      </td>
      <td>
        <p>Participation : Expéditeur, destinataire(s) MSSanté, adresse mail sur laquelle le destinataire peut répondre. Segment PRT pré-adopté de la version 2.9</p>
      </td>
      <td>
        <p>R/C</p>
      </td>
      <td>
        <p>[1.*]</p>
      </td>
      <td>
        <p>7 (v2.9)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&nbsp;[{NTE}]</p>
      </td>
      <td>
        <p>Notes and comments</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>}</p>
      </td>
      <td>
        <p>---OBXNTE end</p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
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
sont décrites à la [section dédiée](profils-messages.html#contraintes-appliquées-aux-messages-mdm-et-oru-dans-le-contexte-de-ce-volet).

###### Description fonctionnelle du message MDM

<div class="figure" style='text-align: center;'>
    <img src="fig18.png" alt="Figure 18" title="Figure 18 : Structure fonctionnelle du message MDM" style="width:80%;">
    <figcaption><b>Figure 18 : Structure fonctionnelle du message MDM</b></figcaption>
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
<table class="table-hl7v2"> 
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MSH-1</p>
      </td>
      <td>
        <p><span class="hl7-color">|</span> séparateur de champ</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-2</p>
      </td>
      <td>
        <p><span class="hl7-color">^~\&</span> : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-3</p>
      </td>
      <td>
        <p>Application émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-4</p>
      </td>
      <td>
        <p>Organisation émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-5</p>
      </td>
      <td>
        <p>Application réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-6</p>
      </td>
      <td>
        <p>Organisation réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-7</p>
      </td>
      <td>
        <p>Date/time du message</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-9</p>
      </td>
      <td>
        Type du message 
<br> <span class="hl7-color"> ORU^R01^ORU_R01 </span>
<br><span class="hl7-color">MDM^T02^MDM_T02 </span>
<br><span class="hl7-color">MDM^T10^MDM_T02 </span>
 <br><span class="hl7-color"> MDM^T04^MDM_T02</span>
      </td>
      <td>
        <p>MSG</p>
      </td>
      <td>
        <p>R</p>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-10</p>
      </td>
      <td>
        <p>Identifiant du message</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-11</p>
      </td>
      <td>
        <p>Processing Id 
<br><span class="hl7-color"> P </span> : en production 
<br><span class="hl7-color"> T </span> : message de test 
 <br><span class="hl7-color"> D </span>: environnement de debug</p>
      </td>
      <td>
        <p>PT</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-12</p>
      </td>
      <td>
        <p>Version du standard 
<br><span class="hl7-color"> 2.5</span> pour ORU 
  <br><span class="hl7-color"> 2.6</span> pour MDM</p>
      </td>
      <td>
        <p>VID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-17</p>
      </td>
      <td>
        <p><span class="hl7-color">FRA</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-18</p>
      </td>
      <td>
        <p>Jeux de caractères, valeurs possibles :</p>
        <p><span class="hl7-color">UNICODE UTF-8 ou 8859/15</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21</p>
      </td>
      <td>
        <p>Identifiant du profil de message</p>
        <p>MSH-21.1 : Entity Identifier (<span class="hl7-color">2.1</span>)</p>
        <p>MSH-21.2 : Namespace Id</p>
        <p><span class="hl7-color">CISIS_CDA_HL7_V2</span> </p>
      </td>
      <td>
        <p>EI</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

###### Exemples

Entête MSH d'un message MDM ou ORU émis par le CREATEUR :

`MSH|^~\&|SIL|CHU_X|PFI|CHU_X|202310030830||ORU^R01^ORU_R01|12345|P|2.5|||||FRA|8859/15|||2.1^ CISIS_CDA_HL7_V2`

##### Les données concernant le patient et la venue du patient

Le message HL7 (ORU ou MDM) est centré sur un seul patient. Les
informations concernant le patient sont décrites par le segment requis
PID. Le segment PV1, requis, représente la venue courante du patient.

Ces deux segments doivent être renseignés conformément à la
spécification « [PAM -- National extension France » version 2.11](https://old.interopsante.org/offres/doc_inline_src/412/Publication-IHE_FRANCE_PAM_National_Extension_v2.11.pdf) publiée
en 2024. Si l'INS est véhiculé, le segment PID doit suivre les
contraintes décrites dans l'annexe CI-SIS « [Prise en charge de
l'identifiant National de Santé (INS) dans les standards
d'interopérabilité et les volets du CI-SIS](https://esante.gouv.fr/sites/default/files/media_entity/documents/ans_cisis-tec_annexe-ins_1.5.pdf) ».

Pour le segment PID, ce volet ajoute une contrainte particulière sur le
PID-18 par rapport à PAM.FR. Il doit être renseigné si connu afin de
pouvoir calculer des indicateurs, dans le contexte de l'alimentation du
DMP.
<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>PID-3</p>
      </td>
      <td>
        <p>Identifiants du patient</p>
      </td>
      <td>
        <p>CX</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PID-5</p>
      </td>
      <td>
        <p>Nom du patient</p>
      </td>
      <td>
        <p>XPN</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PID-18 (<i>Note 1</i>)</p>
      </td>
      <td>
        <p>N° de dossier administratif</p>
      </td>
      <td>
        <p>CX</p>
      </td>
      <td>
        <p>RE</p>
      </td>
    </tr>
  </tbody>
</table>

Le PID-3 doit être identique aux identifiants de patient portés par le document CDA (recordTarget/patientRole/id).

Pour le segment PV1, ce volet ajoute les contraintes suivantes :


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>PV1-2</p>
      </td>
      <td>
        <p>Classe du patient </p>
      </td>
      <td>
        <p>IS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PV1-19 <i>(Note 1</i>) et (<i>Note 2</i>)</p>
      </td>
      <td>
        <p>Identifiant de la venue</p>
      </td>
      <td>
        <p>CX</p>
      </td>
      <td>
        <p> C (Note 2)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PV1-44 (<i>Note 1</i>)</p>
      </td>
      <td>
        <p>Date d'entrée du patient</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>RE</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PV1-45(<i>Note 1</i>)</p>
      </td>
      <td>
        <p>Date de sortie du patient</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>RE</p>
      </td>
    </tr>
  </tbody>
</table>

*Note 1* : _A noter que ces champs sont à renseigner, s'ils sont connus, par l'acteur CREATEUR afin de pouvoir calculer des indicateurs._

*Note 2* : _Le champ PV1-19 est requis lorsque le PV1-2 prend la valeur E, I, O ou R. Si PV1-2 prend la valeur N alors PV1-19 est requis si connu._

##### Les métadonnées du document [Uniquement pour le message MDM]

Le message MDM requiert l'utilisation du segment TXA qui porte les
métadonnées associées au document contenu dans le message. Les
contraintes apportées par ce volet sur le segment TXA sont les
suivantes :


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>TXA-1</p>
      </td>
      <td>
        <p>Set-ID TXA. Valeur = <span class="hl7-color">1</span></p>
      </td>
      <td>
        <p>SI</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA-2</p>
      </td>
      <td>
        <p>Type de document dont les valeurs sont à prendre dans</p>
        <p>le <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J07-XdsTypeCode-CISIS.html">JDV_J07-XdsTypeCode-CISIS</a> de la Nomenclature des Objets de Santé (NOS).</p>
        <p>Par ex : 11502-2</p>
      </td>
      <td>
        <p>IS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA-3</p>
      </td>
      <td>
        <p>Document Content Presentation</p>
        <p><span class="hl7-color">TEXT</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA-12 <i>(Note 1)</i></p>
      </td>
      <td>
        <p>Unique document number</p>
        <p>Si ClinicalDocument/id@extension est renseigné :</p>
        <p> ex : 58132^^1.2.250.2345.3245.13^ISO</p>
        <p>Si ClinicalDocument/id@extension n'est pas renseigné :</p>
        <p> ex : 1.2.250.2345.3245.13.58132</p>
      </td>
      <td>
        <p>EI</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA-13 <i>(Note 1)</i></p>
      </td>
      <td>
        <p>Parent document number</p>
        <p>Si ClinicalDocument/id@extension est renseigné :</p>
        <p> ex : 58131^^1.2.250.2345.3245.13^ISO</p>
        <p>Si ClinicalDocument/id@extension n'est pas renseigné :</p>
        <p> ex : 1.2.250.2345.3245.13.58131</p>
      </td>
      <td>
        <p>EI</p>
      </td>
      <td>
        <p>C Requis dans le cas d'une demande de remplacement</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TXA-17</p>
      </td>
      <td>
        <p>Document completion status dont la valeur est à prendre dans la table HL7 0271</p>
        <p><span class="hl7-color">AU</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

**(Note 1)** : _conformément au volet de [Structuration minimale des
documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante), l'identifiant du document au sein du document CDA
s'exprime soit par un OID complet identifiant complètement l'instance du
document (sans extension), soit par une racine d'OID commune à toutes
les instances de documents de l'émetteur associée à une extension propre
à l'instance du document._

La règle de peuplement des sous champs des champs TXA-12 et TXA-13 est
la suivante :

-   si ClinicalDocument/id@extension est renseigné :

    -   TXA-12.1 < = ClinicalDocument/id@extension

    -   TXA-12.2 < = Non renseigné

    -   TXA-12.3 < = ClinicalDocument/id@root

    -   TXA-12.4 < = ISO

-   si ClinicalDocument/id@extension n'est pas renseigné :

    -   TXA-12.1 < = ClinicalDocument/id@root

    -   TXA-12.2 < = Non renseigné

    -   TXA-12.3 < = Non renseigné

    -   TXA-12.4 < = Non renseigné


<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> La version actuelle du DMP ne supporte pas le format OID^Extension.
    </p>
</blockquote>

##### Le segment ORC

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment ORC : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment ORC</strong></p>
      </td>
      <td>
        <p><strong>Common Order</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ORC-1</p>
      </td>
      <td>
        <p>Order control</p>
      </td>
      <td>
        <p><span class="hl7-color">NW</span> (New order/service dans le cas d'une demande d'intégration de document(s)</p>
        <p><span class="hl7-color">RO</span> (Replace order) dans le cas d'une demande de remplacement</p>
        <p><span class="hl7-color">CA</span> (Canceled) dans le cas d'une demande de suppression</p>
      </td>
    </tr>
  </tbody>
</table>

La valeur du champ ORC-1 doit être cohérente avec la valeur du champ
OBX-11 et dans le cas du message MDM avec l'évènement déclenchant (T02,
T04 ou T10). En cas d'incohérence entre ces champs, le message HL7 sera
rejeté par la PFI.

##### Le segment OBR

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBR : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBR</strong></p>
      </td>
      <td>
        <p><strong>Observation Request</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBR-4</p>
      </td>
      <td>
        <p>Universal Service Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt;OBR-4.1</p>
      </td>
      <td>
        <p>Code du document</p>
      </td>
      <td rowspan="2">
        <p>Utiliser le <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J07-XdsTypeCode-CISIS.html">JDV_J07-XdsTypeCode-CISIS</a> de la Nomenclature des Objets de Santé (NOS).</p>
        <p>A noter qu'en cas d'envoi au DMP, le Gestionnaire doit contrôler que le type de document appartient au jeu de valeur défini par le DMP (<a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J66-TypeCode-DMP.html">JDV_J66-TypeCode-DMP</a>).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt;OBR-4.2</p>
      </td>
      <td>
        <p>Libellé du document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt;OBR-4.3</p>
      </td>
      <td>
        <p>Système de codage dont est issu le code</p>
      </td>
      <td>
        <p> <span class="hl7-color">LN</span> ou <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/CodeSystem-TRE-A05-TypeDocComplementaire.html">TRE_A05</a> en fonction de l'appartenance du code à l'un des systèmes de codage</p>
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
spécifications [« Contraintes sur les types de données HL7 v2.5
applicables aux profils d'intégration du cadre technique IT
Infrastructure dans le périmètre d'IHE France » release 1.8](https://old.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_V1.8.pdf).

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


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX (Requis)</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p>Contient un document au format CDA-R2 </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p> <span class="hl7-color">ED</span> (Encapsuled Data)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 = OBR-4</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1 </p>
      </td>
      <td>
        <p>Code du Document</p>
      </td>
      <td rowspan="2">
        <p>Utiliser le <a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a> de la Nomenclature des Objets de Santé (NOS).</p>
        <p>A noter qu'en cas d'envoi au DMP, le Gestionnaire doit contrôler que le type de document appartient au jeu de valeur défini par le DMP (<a href="https://mos.esante.gouv.fr/NOS/JDV_J66-TypeCode-DMP/">JDV_J66-TypeCode-DMP</a>).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2 </p>
      </td>
      <td>
        <p>Libellé du Document</p>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Système de codage dont est issu le code</p>
      </td>
      <td>
        <p>   <span class="hl7-color">LN</span> ou <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/CodeSystem-TRE-A05-TypeDocComplementaire.html">TRE_A05</a> en fonction de l'appartenance du code à l'un des systèmes de codage.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5 </p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Source Application</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.2</p>
      </td>
      <td>
        <p>Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">TEXT</span> (Machine readable text document)</p>
        <p>Pour le message MDM : <span class="hl7-color">text</span> (Text data)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Data Subtype</p>
      </td>
      <td>
        <p><span class="hl7-color">XML</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.4</p>
      </td>
      <td>
        <p>Encoding</p>
      </td>
      <td>
        <p><span class="hl7-color">Base64</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.5</p>
      </td>
      <td>
        <p>Data</p>
      </td>
      <td>
        <p>Intégrer le document CDA-R2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Statut du document pris dans la table HL7 0085 (Observation Result Status Codes Interpretation) :</p>
        <p>·       <span class="hl7-color">F</span> : Document validé</p>
        <p>·       <span class="hl7-color">D</span> : Document à supprimer</p>
        <p>·       <span class="hl7-color">C</span> : Remplacement du Document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Segment PRT (Conditionnel)</strong></p>
      </td>
      <td>
        <p>Participation Information Expéditeur</p>
      </td>
      <td>
        <p><strong>Ce segment est requis, en particulier dans le cas d'une publication du document sur le DMP,</strong> pour permettre à la PFI de générer le VIHF ainsi que l'auteur du lot de soumission.<a href="#_ftn2">[2]</a></p>
        <p>Ce segment contient les informations de l'expéditeur à l'origine de la demande de traitement sur le document et de la structure à laquelle il est rattaché.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-2 </p>
      </td>
      <td>
        <p>Action Code</p>
      </td>
      <td>
        <p><span class="hl7-color">UC</span> (Unchanged)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-4 </p>
      </td>
      <td>
        <p>Participation</p>
      </td>
      <td>
        <p><span class="hl7-color">SB^Send by^participation</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-5 (conditionnel)</p>
        <p> </p>
      </td>
      <td>
        <p>Participation Person</p>
      </td>
      <td>
        <p>Ce champ est requis si l'expéditeur est un professionnel</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.1</p>
      </td>
      <td>
        <p>Person Identifier</p>
      </td>
      <td>
        <p>Identifiant du professionnel qui fait la demande de traitement sur le(s) document(s)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.2</p>
      </td>
      <td>
        <p>Family Name</p>
      </td>
      <td>
        <p>Nom d'exercice du professionnel expéditeur</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.3</p>
      </td>
      <td>
        <p>Given Name</p>
      </td>
      <td>
        <p>Prénom d'exercice du professionnel expéditeur</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.9</p>
      </td>
      <td>
        <p>Assigning Authority</p>
      </td>
      <td>
        <p>Autorité d'affectation de l'identifiant du PS (OID de gestion de personnes) : <span class="hl7-color">1.2.250.1.71.4.2.1</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.13</p>
      </td>
      <td>
        <p>Identifier Type Code</p>
      </td>
      <td>
        <p>Type d'identifiant du professionnel (valeur issue de la <a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf">Table 0203 - Interop'Santé</a>)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-8</p>
      </td>
      <td>
        <p>Participation Organization</p>
      </td>
      <td>
        <p>Décrit l'organisation rattachée au professionnel ou au système à l'origine de la demande de traitement sur le(s) document(s)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.1</p>
      </td>
      <td>
        <p>OrganizationName</p>
      </td>
      <td>
        <p>Nom de l'organisation</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.6</p>
      </td>
      <td>
        <p>Assigning Authority</p>
      </td>
      <td>
        <p>Autorité d'affectation de l'identifiant de l'organisation dont dépend le PS ou le système à l'origine de la demande de traitement sur le(s) document(s).</p>
        <p><span class="hl7-color">1.2.250.1.71.4.2.2</span> (OID de gestion des structures pour un PS dans un établissement de santé).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.7</p>
      </td>
      <td>
        <p>Identifier Type Code</p>
      </td>
      <td>
        <p>Type d'identifiant de l'organisation (valeur issue de la <a href="https://github.com/Interop-Sante/ihe.iti.pam.fr/blob/main/Publication/IHE_France_Constraints_on_HL7_data_types_for_ITI_V1.7.3.pdf">Table 0203 - Interop'Santé</a>) : <span class="hl7-color">FINEJ</span> (FINESS d'entité juridique) ou <span class="hl7-color">FINEG</span> (FINESS d'entité géographique).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.10</p>
      </td>
      <td>
        <p>Organization number</p>
      </td>
      <td>
        <p>Identifiant de l'organisation à l'origine de la demande de traitement sur le(s) document(s)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-10 (conditionnel)</p>
      </td>
      <td>
        <p>Participation Device</p>
      </td>
      <td>
        <p>Ce champ est requis si l'auteur est un dispositif.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-10.1</p>
      </td>
      <td>
        <p>Entity Identifier</p>
      </td>
      <td>
        <p>Identifiant du dispositif expéditeur du document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Segment PRT (conditionnel)</strong></p>
      </td>
      <td>
        <p>Participation Information destinataire(s)</p>
      </td>
      <td>
        <p>Ce segment est répétable et <strong>requis si le document est échangé via MSSanté</strong>.</p>
        <p>Il contient l'adresse MSSanté d'un destinataire.</p>
        <p>Ce segment est répétable.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-2 </p>
      </td>
      <td>
        <p>Action Code</p>
      </td>
      <td>
        <p><span class="hl7-color">UC</span>(Unchanged)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-4 </p>
      </td>
      <td>
        <p>Participation</p>
      </td>
      <td>
        <p><span class="hl7-color">RCT^Result Copies To^participation</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-5 (conditionnel)</p>
      </td>
      <td>
        <p>Participation Person</p>
      </td>
      <td>
        <p>Ce champ est requis si le destinataire est un professionnel de santé ou un patient.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.1</p>
      </td>
      <td>
        <p>Person Identifier</p>
      </td>
      <td>
        <p>Identifiant du professionnel de santé destinataire/patient</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.2</p>
      </td>
      <td>
        <p>Family Name</p>
      </td>
      <td>
        <p>Nom d'exercice du PS destinataire/nom patient</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.3</p>
      </td>
      <td>
        <p>Given Name</p>
      </td>
      <td>
        <p>Prénom d'exercice du PS destinataire/prénom patient</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.9</p>
      </td>
      <td>
        <p>Assigning Authority</p>
      </td>
      <td>
        <p>Autorité d'affectation de l'identifiant du PS (OID de gestion de personnes) : <span class="hl7-color">1.2.250.1.71.4.2.1</span> ou du patient <span class="hl7-color">1.2.250.1.213.1.4.8</span> (INS-NIR) ou <span class="hl7-color">1.2.250.1.213.1.4.9</span> (INS-NIA).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-5.13</p>
      </td>
      <td>
        <p>Identifier Type Code</p>
      </td>
      <td>
        <p>Type d'identifiant (valeur issue de la <a href="https://github.com/Interop-Sante/ihe.iti.pam.fr/blob/main/Publication/IHE_France_Constraints_on_HL7_data_types_for_ITI_V1.7.3.pdf">Table 0203 - Interop'Santé</a>) : <span class="hl7-color">RPPS</span> ou <span class="hl7-color">INS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-8 (conditionnel)</p>
      </td>
      <td>
        <p>Participation Organization</p>
      </td>
      <td>
        <p>Ce champ est requis si le destinataire est une organisation (établissement, service, UF…).</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.1</p>
      </td>
      <td>
        <p>OrganizationName</p>
      </td>
      <td>
        <p>Nom de l'organisation</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.6</p>
      </td>
      <td>
        <p>Assigning Authority</p>
      </td>
      <td>
        <p>Autorité d'affectation de l'identifiant de l'organisation destinataire du document.</p>
        <p><span class="hl7-color">1.2.250.1.71.4.2.2</span> (OID de gestion des structures pour préciser une entité juridique ou une entité géographique), N° FINESS ou N° FINEG pour identifier une organisation intra-établissement (service, UF, pôle…).</p>
        <p>Cf Contraintes sur les types de données HL7 v2.5 applicables aux profils d'intégration du cadre technique IT Infrastructure dans le périmètre d'IHE France.[12] </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.7</p>
      </td>
      <td>
        <p>Identifier Type Code</p>
      </td>
      <td>
        <p>Type d'identifiant (valeur issue de la <a href="https://github.com/Interop-Sante/ihe.iti.pam.fr/blob/main/Publication/IHE_France_Constraints_on_HL7_data_types_for_ITI_V1.7.3.pdf">Table 0203 - Interop'Santé</a>) : <span class="hl7-color">FINEJ</span> (FINESS d'entité juridique) ou <span class="hl7-color">FINEG</span> (FINESS d'entité géographique) ou <span class="hl7-color">UF</span> (UF), <span class="hl7-color">SVR</span> (service)...</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-8.10</p>
      </td>
      <td>
        <p>Organization number</p>
      </td>
      <td>
        <p>Identifiant de l'organisation destinataire du document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-10 (conditionnel)</p>
      </td>
      <td>
        <p>Participation Device</p>
      </td>
      <td>
        <p>Ce champ est requis si le destinataire est une application.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-10.1</p>
      </td>
      <td>
        <p>Entity Identifier</p>
      </td>
      <td>
        <p>Identifiant de l'application destinataire du document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-15 </p>
      </td>
      <td>
        <p>Participant Telecommunication Address</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-15.3</p>
      </td>
      <td>
        <p>Telecommunication Equipment Type</p>
      </td>
      <td>
        <p>X.400 (X.400 email address)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-15.4</p>
      </td>
      <td>
        <p>Communication Address</p>
      </td>
      <td>
        <p>Intégrer l'adresse mail MSSanté</p>
      </td>
    </tr>
    <tr>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Segment PRT (segment optionnel)</strong></p>
      </td>
      <td>
        <p>Participation Information Adresse de réponse</p>
      </td>
      <td>
        <p>Ce segment optionnel permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-2 </p>
      </td>
      <td>
        <p>Action Code</p>
      </td>
      <td>
        <p><span class="hl7-color">UC</span> (Unchanged)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-4 </p>
      </td>
      <td>
        <p>Participation</p>
      </td>
      <td>
        <p><span class="hl7-color">REPLY^Reply To^participation</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>PRT-15 </p>
      </td>
      <td>
        <p>Participant Telecommunication Address</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-15.3</p>
      </td>
      <td>
        <p>Telecommunication Equipment Type</p>
      </td>
      <td>
        <p><span class="hl7-color">X.400</span> (X.400 email address)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; PRT-15.4</p>
      </td>
      <td>
        <p>Communication Address</p>
      </td>
      <td>
        <p>Intégrer l'adresse mail de réponse</p>
      </td>
    </tr>
  </tbody>
</table>


<p class="MsoFootnoteText"><a href="#_ftnref2" name="_ftn2" title=""><span class="MsoFootnoteReference"><span class="MsoFootnoteReference"><span style="font-size:10.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif">[2]</span></span></span></a>
<span class="cf01"><span style="font-size:8.0pt;line-height:107%">SC.DMP/CONF.12&nbsp;:
«&nbsp;Le système DOIT transmettre à la PFI les informations d'identification nécessaires à la constitution du jeton VIHF : FINESS géographique de
l'établissement et l'identifiant du professionnel ou du dispositif à l'origine de la demande d'alimentation du DMP&nbsp;». </span></span></p>

**Exemple pour un Compte-Rendu d'imagerie médicale :**

Compte-rendu d'imagerie médicale à transmettre à 4 destinataires (le
patient, le médecin HODA Adam, le service radiologie de l'hôpital A, une
application). Une adresse mail de réponse est indiquée.

```
OBX|1|ED|18748-4^CR d’imagerie médicale^LN||^Text^XML^Base64^RG9jdW1lbnQgbcOpZGljYWwgYX
UgZm9ybWF0IENEQQ||||||F|
PRT||UC||SB^Send By^participation|801234567866^Dupont^Jean^^^^^^ASIP-SANTE- PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS |||Organisation-X^^^^^ASIP-SANTE-ST&1.2.250.1.71.4.2.2&ISO^FINEG^^^300017985                  
PRT||UC||RCT^results Copies To^participation|||||||||||^^X.400^146026322000196@patient.mssante.fr
PRT||UC||RCT^results Copies To^participation|101234567897^Hoda^Adam^^^^^^ASIP-SANTE- PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|||||||||||^^X.400^adam.hoda@test-ci-sis.mssante.fr PRT||UC||RCT^results Copies To^participation||||Radiologie^^^^^120456789^UF^^^3435|||||||^^X.400^radiologie@hopitalA.mssante.fr
PRT||UC||RCT^results Copies To^participation||||||12|||||^^X.400^appliExemple@hopitalB.mssante.fr
PRT||UC||REPLY^Reply to^participation|||||||||||^^X.400^adam.hoda@test-ci-sis.mssante.fr
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

-   (1) informationRecipient contient les destinataires d'une copie du
    document désignés [au moment de la création du
    document]{.underline},

-   (2) informationRecipient ne permet pas de spécifier les
    destinataires auxquels le document est transmis ultérieurement à sa
    création,

-   (3) informationRecipient permet de spécifier le destinataire
    principal (prescripteur de l'examen) et les destinataires
    secondaires.

En conséquence, l'envoi ultérieur du document CDA à un destinataire non
prévu au moment de la création du document ne doit pas donner lieu à la
mise à jour de l'élément informationRecipient et donc à une nouvelle
version du document.

Concernant le point (3), le « [Volet Structuration minimale des documents
de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) » a été modifié de façon à lever la contrainte existante sur
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
ses valeurs dans la table « MétaDMP/MSS » disponible [sur cette page](meta-dmp-mss.html).

Le champ OBX-11 étant requis par le standard HL7v2, la valeur de ce
champ est arbitrairement fixée à « F ».

L'ensemble de ces métadonnées est identique pour les 2 formats de
documents pouvant être contenus dans le message ORU.

###### Document Masqué aux professionnels de Santé 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est masqué aux professionnels de santé.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">MASQUE_PS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Masqué aux professionnels de Santé</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color"><span class="hl7-color">MetaDMPMSS</span></span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>·      <span class="hl7-color"> Y</span> (Yes) ->MASQUE_PS actif</p>
        <p>·       <span class="hl7-color">N</span> (No) -> MASQUE_PS non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<!-- supprimer en 2.1.1 voir CDA_HL7_Q2
<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> Un document stocké dans le DMP, pour lequel le patient a fait le choix de ne pas partager ce document aux PS, ne doit pas faire l’objet d’un échange entre PS au travers de la MSSanté.
    </p>
</blockquote> -->

###### Document Non visible par le patient 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué au patient.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">INVISIBLE_PATIENT</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Document Non Visible par le patient</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p> <span class="hl7-color"> MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>·       <span class="hl7-color">Y</span> (YES) -> INVISIBLE_PATIENT actif</p>
        <p>·       <span class="hl7-color">N</span> (No) -> INVISIBLE_PATIENT non actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>


<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> un document clinique masqué au patient ne doit pas être envoyé au patient par MSSanté.
    </p>
</blockquote>

###### Document Non visible par les représentants légaux du patient  

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué aux représentants légaux du patient.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">INVISIBLE_REP_LEGAUX</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Non visible par les représentants Légaux du patient</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>·       <span class="hl7-color">Y</span> (YES) -> INVISIBLE_ REP_LEGAUX actif</p>
        <p>·       <span class="hl7-color">N</span> (No) -> INVISIBLE_ REP_LEGAUX non actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> un document clinique masqué aux représentants légaux du patient ne doit pas être envoyé aux représentants légaux du patient par MSSanté.
    </p>
</blockquote>

###### Connexion Secrète

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP « connexion secrète » ([cf SESAM-VITALE : Service DMP intégré aux LPS - Version 2.10.0 – 07/07/2023](https://industriels.sesam-vitale.fr/))


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1 </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">CONNEXION_SECRETE</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Connexion Secrete</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) -> CONNEXION_SECRETE actif</p>
        <p>-        <span class="hl7-color">N</span> (No) -> CONNEXION_SECRETE non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>


###### Modification Confidentiality Code

Cet OBX permet d'informer l'acteur GESTIONNAIRE que la transaction porte
une modification du CONFIDENTIALITY CODE indiquant une mise à jour des
métadonnées de masquage/démasquage aux PS et/ou de visibilité du
document au patient ou à ses représentants légaux.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">MODIF_CONF_CODE</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Modification Confidentiality Code</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) -> MODIF_CONF_CODE actif</p>
        <p>-        <span class="hl7-color">N</span> (No) ->  MODIF_CONF_CODE non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

###### Alimentation DMP

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP.


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">DESTDMP</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2 </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Destinataire DMP</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->DESTDMP actif</p>
        <p>-        <span class="hl7-color">N</span> (No) -> DESTDMP non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

###### Echange MSSanté Professionnel de Santé/Organisation/BAL applicative

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être envoyé vers un PS, une organisation ou une Boîte aux lettres (BAL)
applicative.


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">DESTMSSANTEPS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Destinataire (Professionnel de Santé, organisation ou BAL applicative)</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->DESTMSSANTEPS actif</p>
        <p>-        <span class="hl7-color">N</span> (No) -> DESTMSSANTEPS non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>


<blockquote class="stu-note">
    <p>
    <b>Point d’attention :</b> Les adresses mails MSSanté sont valorisées dans les segments PRT (Participation Information) du message HL7v2, dont l'élément PRT-4 (Participation) prend la valeur « RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans l'élément PRT-15 (Participant Telecommunication Address).
    </p>
</blockquote>

###### Echange MSSanté Patient 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être échangé vers le mail MSSanté du Patient.

Si l'utilisateur ne souhaite pas que le patient puisse répondre à son
message, un segment NTE avec la valeur « FIN » doit être ajouté.


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1 </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">DESTMSSANTEPAT</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Destinataire Patient</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) -> DESTMSSANTEPAT actif</p>
        <p>-        <span class="hl7-color">N</span> (No) -> DESTMSSANTEPAT non Actif</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Segment NTE</strong> (conditionnel)</p>
      </td>
      <td>
        <p><strong>Notes And Comments</strong></p>
      </td>
      <td>
        <p>Ce segment doit être renseigné avec la valeur « FIN » si l'utilisateur ne souhaite pas que le patient puisse répondre au courriel.</p>
      </td>
    </tr>
  </tbody>
</table>

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> L'adresse mail MSSanté du patient est valorisée dans un segment PRT (Participation Information) du message HL7v2, dont l'élément PRT-4 (Participation) prend la valeur « RCT (Results Copies To) ». L'adresse mail MSSanté est à récupérer dans l'élément PRT-15 (Participant Telecommunication Address).
    </p>
</blockquote>

###### Transmission de l'accusé de réception DMP/MSSanté

Cet OBX permet d'informer le GESTIONNAIRE que l'utilisateur souhaite
recevoir un accusé de réception provenant du DMP et un accusé de
réception provenant du serveur de messagerie de chaque destinataire
MSSanté.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <td colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]</strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Elément requis :</strong></p>
      </td>
      <td>
        <p><strong>Description :</strong></p>
      </td>
      <td>
        <p><strong>Valeur :</strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">ACK_RECEPTION</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Accusé de réception</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 :</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->ack de réception DMP/MSSanté souhaité</p>
        <p>-        <span class="hl7-color">N</span> (No) -> accusé de réception DMP/MSSanté non souhaité</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>



###### Transmission de l'accusé de lecture

Cet OBX permet d'informer le GESTIONNAIRE que l'utilisateur souhaite
recevoir un accusé de lecture pour chaque destinataire MSSanté. En
fonction de l'organisation choisie, cet accusé de lecture atteste soit
de la lecture du courrier électronique présent dans la BAL pour chacun
des destinataires MSSanté, soit du résultat du traitement automatique du
courrier électronique par le GESTIONNAIRE destinataire.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p>Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [1..1]</p>
      </th>
    </tr>
    <tr>
      <th>
        <p>Elément requis :</p>
      </th>
      <th>
        <p>Description :</p>
      </th>
      <th>
        <p>Valeur :</p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p>Pour le message ORU : <span class="hl7-color">CE</span> (Coded Entry)</p>
        <p>Pour le message MDM : <span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p> <span class="hl7-color"> ACK_LECTURE_MSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color"> Accusé de lecture</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->accusé de lecture MSSanté souhaité</p>
        <p>-        <span class="hl7-color">N</span> (No) -> accusé de lecture MSSanté non souhaité</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

###### Corps du mail à destination d'un professionnel de santé

Cet OBX permet à l'acteur CREATEUR de documents d'ajouter un texte à
intégrer dans le corps du mail à destination des professionnels de santé
via MSSanté. Cette métadonnée est optionnelle :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p>Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]</p>
      </th>
    </tr>
    <tr>
      <th>
        <p>Elément requis :</p>
      </th>
      <th>
        <p>Description :</p>
      </th>
      <th>
        <p>Valeur :</p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">ED</span> (Encapsulated Data)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">CORPSMAIL_PS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2 </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Corps du mail pour un PS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p>Indiquer le texte à intégrer dans le corps du mail</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> Si ce segment OBX est renseigné, le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR
    pour l'envoi par MSSanté aux professionnels de santé. A défaut, dans le cadre d'une suppression ou d'un remplacement de document, le GESTIONNAIRE renseigne un corps de mail par défaut.
    </p>
</blockquote>

###### Corps du mail à destination du patient

Cet OBX permet au CREATEUR de documents d'ajouter un texte à intégrer
dans le corps du mail à destination du patient via MSSanté. Cette
métadonnée est optionnelle :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du groupe OBSERVATION/OBXNTE : Usage = Optional / Cardinalité = [0..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Elément requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><strong>Segment OBX</strong></p>
      </td>
      <td>
        <p><strong>Observation/Result</strong></p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2</p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">ED</span> (Encapsulated Data)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3</p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p><strong> </strong></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Code </p>
      </td>
      <td>
        <p><span class="hl7-color">CORPSMAIL_PATIENT</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Libellé </p>
      </td>
      <td>
        <p><span class="hl7-color">Corps du mail pour le patient</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3 </p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">MetaDMPMSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p>Indiquer le texte à intégrer dans le corps du mail</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>




<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> Si ce segment OBX est renseigné,le GESTIONNAIRE doit récupérer le corps du mail proposé par le CREATEUR pour l'envoi par MSSanté au patient. A défaut, dans le cadre d'une suppression ou d'un remplacement de document, le GESTIONNAIRE renseigne un corps de mail par défaut.
    </p>
</blockquote>

Quelques exemples sont disponibles [ici](exemples.html).

##### Le message d'acquittement du message HL7v2 

Après réception du message ORU/MDM, le Gestionnaire va acquitter ce
message HL7.

###### Profil du message ACK

Le profil du message ACK est le suivant :

<table class="table-hl7v2">
  <tr>
    <th>
      <p>Segment</p>
    </th>
    <th>
      <p>Meaning</p>
    </th>
    <th>
      <p>Usage</p>
    </th>
    <th>
      <p>Card.</p>
    </th>
    <th>
      <p>HL7 §</p>
    </th>
  </tr>
  <tbody>
    <tr>
      <td>
        <p>MSH</p>
      </td>
      <td>
        <p>Message header</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>[{SFT}]</p>
      </td>
      <td>
        <p>Software segment</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>[UAC]</p>
      </td>
      <td>
        <p>User Authentication credential- Utilisé uniquement dans la version 2.6</p>
      </td>
      <td>
        <p>O</p>
      </td>
      <td>
        <p>[0..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSA</p>
      </td>
      <td>
        <p>Message Acknowledgement</p>
      </td>
      <td>
        <p>R</p>
      </td>
      <td>
        <p>[1..1]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>[{ERR}]</p>
      </td>
      <td>
        <p>Error</p>
      </td>
      <td>
        <p>C</p>
      </td>
      <td>
        <p>[0..*]</p>
      </td>
      <td>
        <p>2</p>
      </td>
    </tr>
  </tbody>
</table>

###### Structure fonctionnelle du message ACK

La structure du message ACK est représentée ci-dessous :

<div class="figure" style='text-align: center;'>
    <img src="image26.png" alt="Figure 19" title="Figure 19 : Structure fonctionnelle du message ACK" style="width:80%;">
    <figcaption><b>Figure 19 : Structure fonctionnelle du message ACK</b></figcaption>
</div>
<br>

Ces segments doivent être conformes au standard HL7v2.5 pour le message
ORU et HL7v2.6 pour MDM.

###### Description des contraintes à appliquer sur l'acquittement

####### Segment MSH

Le segment MSH reprend une partie des informations du message initial :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="2">
        <p><strong>Message initial</strong></p>
      </th>
      <th colspan="2">
        <p><strong>Message d'acquittement</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Champ</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3">MSH.3</a> - Sending Application​</p>
      </td>
      <td>
        <p>Application source du message à acquitter</p>
      </td>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5">MSH.5</a> - Receiving Application​</p>
      </td>
      <td>
        <p>Application destinatrice de l'acquittement</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4">MSH.4</a> - Sending Facility​</p>
      </td>
      <td>
        <p>Etablissement source du message à acquitter</p>
      </td>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6">MSH.6</a> - Receiving Facility​</p>
      </td>
      <td>
        <p>Etablissement destinataire de l'acquittement</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5">MSH.5</a> - Receiving Application​</p>
      </td>
      <td>
        <p>Application destinatrice du message à acquitter</p>
      </td>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3">MSH.3</a> - Sending Application​</p>
      </td>
      <td>
        <p>Application source de l'acquittement</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6">MSH.6</a> - Receiving Facility​</p>
      </td>
      <td>
        <p>Etablissement destinataire du message à acquitter</p>
      </td>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4">MSH.4</a> - Sending Facility​</p>
      </td>
      <td>
        <p>Etablissement source de l'acquittement</p>
      </td>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11">MSH.11</a> - Processing Id​</p>
      </td>
      <td>
        <p>Identifiant de traitement</p>
      </td>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11">MSH.11</a> - Processing Id​</p>
      </td>
      <td>
        <p>Identifiant de traitement</p>
      </td>
    </tr>
  </tbody>
</table>

Le segment MSH doit être conforme au standard HL7v2.5 ou HL7v2.6 selon
le type du message (ORU ou MDM) :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MSH-1</p>
      </td>
      <td>
        <p><span class="hl7-color">|</span> séparateur de champ</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-2</p>
      </td>
      <td>
        <p><span class="hl7-color">^~\&</span> : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-3</p>
      </td>
      <td>
        <p>Application émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-4</p>
      </td>
      <td>
        <p>Organisation émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-5</p>
      </td>
      <td>
        <p>Application réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-6</p>
      </td>
      <td>
        <p>Organisation réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-7</p>
      </td>
      <td>
        <p>Date/time du message</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-9</p>
      </td>
      <td>
        <p>Type du message, selon l'évènement du message initial : 
          <br><span class="hl7-color">ACK^R01^ACK</span>
          <br><span class="hl7-color">ACK^T02^ACK</span>
          <br><span class="hl7-color">ACK^T04^ACK</span>  
          <br><span class="hl7-color">ACK^T10^ACK</span>
        </p>
        
      </td>
      <td>
        <p>MSG</p>
      </td>
      <td>
        <p>R</p>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-10</p>
      </td>
      <td>
        <p>Identifiant du message</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-11</p>
      </td>
      <td>
        <p>Processing Id 
        <br><span class="hl7-color">P</span> : en production 
        <br><span class="hl7-color">T</span> : message de test 
        <br><span class="hl7-color">D</span> : environnement de debug
        </p>
      </td>
      <td>
        <p>PT</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-12</p>
      </td>
      <td>
        <p>Version du standard 
        <br><span class="hl7-color">2.5</span> pour ORU 
        <br><span class="hl7-color">2.6</span> pour MDM
        </p>
      </td>
      <td>
        <p>VID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-17</p>
      </td>
      <td>
        <p>FRA</p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-18</p>
      </td>
      <td>
        <p>Jeux de caractères, valeurs possibles :</p>
        <p><span class="hl7-color">UNICODE UTF-8</span> ou <span class="hl7-color">8859/15</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>



####### Segment MSA

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Contenu</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.1">MSA.1</a> - Acknowledgment Code</p>
      </td>
      <td>
        <p>Code d'acquittement du message autorisé :</p>
        <p>·       <span class="hl7-color">AA</span>(Original mode: Application Accept - Enhanced mode: Application acknowledgment: Accept) : le message a été compris et intégré par l'application destinatrice qui prend la responsabilité du message et libère ainsi l'application productrice de toute obligation de le renvoyer.</p>
        <p>·       <span class="hl7-color">AE</span> (Original mode: Application Error - Enhanced mode: Application acknowledgment: Error) : le message contient des erreurs de syntaxe.   </p>
        <p>·       <span class="hl7-color">AR</span> (Original mode: Application Reject - Enhanced mode: Application acknowledgment: Reject)  : le message est rejeté pour une raison circonstancielle. Il peut être réémis plus tard. </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.2">MSA.2</a> - Message Control Id</p>
      </td>
      <td>
        <p>Rappel l'identifiant du message acquitté correspondant au champ MSH.10 du message initial.</p>
      </td>
    </tr>
  </tbody>
</table>


####### Segment ERR

Ce segment est utilisé au niveau des messages d'acquittement dans le cas
où le champ MSA-1 prend la valeur AE (Application error) ou AR
(Application reject).

Le tableau ci-dessous liste les champs à renseigner pour le segment
ERR :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>ERR-2</p>
      </td>
      <td>
        <p>Localisation de l'erreur dans le cas d'une erreur de syntaxe du message initial.</p>
      </td>
      <td>
        <p>ERL</p>
      </td>
      <td>
        <p>O</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR-3</p>
      </td>
      <td>
        <p>Code erreur HL7 dont les valeurs sont à prendre dans la table HL7 0357 (nom symbolique messageErrorCondition)</p>
      </td>
      <td>
        <p>CWE</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR-4</p>
      </td>
      <td>
        <p>Sévérité de l'erreur dont les valeurs sont à prendre dans la table HL7 0516 (nom symbolique errorSeverity)</p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

####### Exemple

Entête MSH d'un message MDM ou ORU émis par le CREATEUR :

```
MSH|^~\&|SIL|CHU_X|PFI|CHU_X|202310030830||ORU^R01^ORU_R01|12345|P|2.5|||||FRA|8859/15|||2.1^ CISIS_CDA_HL7_V2
```
Un acquittement positif retourné par le GESTIONNAIRE :

```
MSH|^~\&|PFI|CHU_X|SIL|CHU_X|202310030831||ACK^R01^ACK|12346|P|2.5|||||FRA|8859/15
MSA|AA|12345

```
Un acquittement négatif retourné par le GESTIONNAIRE : version d'HL7
inconnue

```
MSH|^~\&|PFI|CHU_X|SIL|CHU_X|202310030831||ACK^R01^ACK|12347|P|2.5|||||FRA|8859/15
MSA|AE|12345
ERR||MSH^1^12|203^ Unsupported version^messageErrorCondition| E

```

#### Description des messages HL7 d'accusés métier

##### Evènements déclenchants des messages d'accusés métier HL7v2

Après réception du (des) document(s), le GESTIONNAIRE le(s)
distribue(nt) au consommateur de documents (DMP/MSSanté). Lorsque le
GESTIONNAIRE reçoit un retour du consommateur, il en informe le CREATEUR
au moyen d'accusés métier HL7.

A noter qu'aucun accusé de réception métier n'est prévu dans la
spécification lors de la réception par la DRIMbox Source du message
HL7v2 ORU ou MDM avec le Compte-Rendu d'Imagerie. Par contre, un message
d'acquittement technique ([voir section dédiée](https://ansforge.github.io/IG-hl7v2-volet-transmission-document-cda-r2/sd-tranfo-pdf-to-ig/ig/profils-messages.html#le-message-dacquittement-du-message-hl7v2)) permettra à la DRIMbox de
communiquer au GESTIONNAIRE qu'elle a bien pris la responsabilité des
traitements associés au compte-rendu qui lui a été transmis
(AA (Original mode: Application Accept - Enhanced mode: Application
acknowledgment: Accept dans MSA-1)).

Pour couvrir ce besoin de retour d'accusés métiers, un nouveau type de
message HL7 a été créé : HL7v2.6 ZAM -- Accusé Métier.

Ce type de message est utilisé par trois évènements différents :

<table>
  <tbody>
    <tr>
      <th>
        <p><strong>Flux métier</strong></p>
      </th>
      <th>
        <p><strong>Evènement déclenchant au niveau du GESTIONNAIRE</strong></p>
      </th>
      <th>
        <p><strong>Message métier HL7</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>AccuseMetierReceptionDMP : Accusé de réception de(s) document(s) par le DMP.</p>
      </td>
      <td>
        <p>Réception du retour du DMP (Provide And Register Document Set-b Response)</p>
      </td>
      <td>
        <p>-        ZAM : L'évènement utilisé sera le Z01</p>
        <p>« Accusé de réception DMP »</p>
        <p>-> ZAM^Z01^ZAM_Z01</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>AccuseMetierReceptionMSS : Accusé de réception de la demande par le serveur de messagerie du destinataire MSSanté</p>
      </td>
      <td>
        <p>Réception du message DSN (RFC 3461 à 3464 et 6522)</p>
      </td>
      <td>
        <p>-        ZAM : L'évènement utilisé sera le Z02</p>
        <p>« Accusé de réception MSSanté »</p>
        <p>-> ZAM^Z02^ZAM_Z01</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>AccuseMetierLectureMSS : Accusé de lecture du courriel (traitement automatique du courriel ou lecture du courriel par un utilisateur dans sa boîte aux lettres)</p>
      </td>
      <td>
        <p>Réception du courriel MDN (RFC 8098)</p>
      </td>
      <td>
        <p>-        ZAM : L'évènement utilisé sera le Z03</p>
        <p>« Accusé de lecture MSSanté »</p>
        <p>-> ZAM^Z03^ZAM_Z01</p>
      </td>
    </tr>
  </tbody>
</table>


##### Structure des messages accusés métier HL7

L'accusé de réception du document par le DMP, l'accusé de réception du
courriel MSSanté et l'accusé de lecture MSSanté seront transmis en
utilisant la structure de message HL7v2.6 ZAM_Z01 :


<div class="figure" style='text-align: center;'>
    <img src="image27.png" alt="Figure 20" title="Figure 20 : Structure fonctionnelle des messages accusé métier" style="width:80%;">
    <figcaption><b>Figure 20 : Structure fonctionnelle des messages accusé métier</b></figcaption>
</div>
<br>

Ces segments doivent être conformes au standard HL7v2.6. Les contraintes
concernant les segments en rouge sur le schéma sont décrites dans la
section suivante.

##### Description des contraintes à appliquer sur les accusés métiers

Pour l'ensemble des OBX listés dans cette section, le champ OBX-3 prend
ses valeurs dans la table « AckMetierZAM » disponible [ici](ack-metier-zam.html).

###### Contraintes à appliquer au message ZAM^Z01^ZAM_Z01 - Accusé de réception DMP

<b>Segment MSH</b>

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z01^ZAM_Z01`.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MSH-1</p>
      </td>
      <td>
        <p><span class="hl7-color">|</span> séparateur de champ</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-2</p>
      </td>
      <td>
        <p><span class="hl7-color">^~\&</span> : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-3</p>
      </td>
      <td>
        <p>Application émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-4</p>
      </td>
      <td>
        <p>Organisation émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-5</p>
      </td>
      <td>
        <p>Application réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-6</p>
      </td>
      <td>
        <p>Organisation réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-7</p>
      </td>
      <td>
        <p>Date/time du message</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-9</p>
      </td>
      <td>
        <p>Type du message : <span class="hl7-color">ZAM^Z01^ZAM_Z01</span></p>
      </td>
      <td>
        <p>MSG</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-10</p>
      </td>
      <td>
        <p>Identifiant du message</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-11</p>
      </td>
      <td>
        <p>Processing Id 
          <br><span class="hl7-color">P</span> : en production 
          <br><span class="hl7-color">T</span> : message de test 
          <br><span class="hl7-color">D</span> : environnement de debug
      </p>
      </td>
      <td>
        <p>PT</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-12.1</p>
      </td>
      <td>
        <p>Version du standard <span class="hl7-color">2.6</span></p>
      </td>
      <td>
        <p>VID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-17</p>
      </td>
      <td>
        <p><span class="hl7-color">FRA</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-18</p>
      </td>
      <td>
        <p>Jeux de caractères, valeurs possibles :</p>
        <p><span class="hl7-color">UNICODE UTF-8</span> ou <span class="hl7-color">8859/15</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.1</p>
      </td>
      <td>
        <p>Version du présent volet du CI_SIS :</p>
        <p><span class="hl7-color">2.1</span> </p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.2</p>
      </td>
      <td>
        <p>Identifiant du profil de message :</p>
        <p><span class="hl7-color">CISIS_CDA_HL7_V2</span></p>
      </td>
      <td>
        <p>IS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

<b>Segment OBX portant le statut de d'accusé de réception</b>

Le premier segment OBX renseigne le statut de l'accusé de réception :


<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBX : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
        <p><span class="hl7-color">1</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">CWE</span> (Coded with Exceptions)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 </p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Identifier</p>
      </td>
      <td>
        <p><span class="hl7-color">ACK_RECEPTION_DMP</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Text</p>
      </td>
      <td>
        <p><span class="hl7-color">Accusé de réception DMP</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">AckMetierZAM</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-4</p>
      </td>
      <td>
        <p>Observation Sub-ID</p>
      </td>
      <td>
        <p>Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Statut de l'accusé de réception - Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->Succès</p>
        <p>-        <span class="hl7-color">N</span> (No) -> Erreur</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<b>Segment ERR</b>

Si une erreur intervient lors du dépôt du document sur le DMP, ce segment contient sa description.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N)</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>ERR - 3</p>
      </td>
      <td>
        <p>Hl7 Error Code</p>
      </td>
      <td>
        <p><span class="hl7-color">207^Application error^messageErrorCondition</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 4</p>
      </td>
      <td>
        <p>Severity</p>
      </td>
      <td>
        <p><span class="hl7-color">Error, Fatal Error, Information, Warning</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 5</p>
      </td>
      <td>
        <p>Application Error Code (CWE)</p>
      </td>
      <td>
        <p>Code erreur de DMP       </p>
        <p>à Utiliser les codes et libellés de codes de l'annexe A7-1 « Liste des codes d'erreurs » de la spécification « <a href="https://industriels.sesam-vitale.fr">Service DMP intégré aux LPS » v.2.10.0</a></p>
        <p>Code^libellé du code^<span class="hl7-color">DMP_ERROR_CODE</span></p>
      </td>
    </tr>
  </tbody>
</table>

###### Contraintes à appliquer au message ZAM^Z02^ZAM_Z01 -- Accusé de réception MSSanté

<b>Segment MSH</b>

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z02^ZAM_Z01`.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MSH-1</p>
      </td>
      <td>
        <p><span class="hl7-color">|</span> séparateur de champ</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-2</p>
      </td>
      <td>
        <p><span class="hl7-color">^~\&</span> : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-3</p>
      </td>
      <td>
        <p>Application émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-4</p>
      </td>
      <td>
        <p>Organisation émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-5</p>
      </td>
      <td>
        <p>Application réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-6</p>
      </td>
      <td>
        <p>Organisation réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-7</p>
      </td>
      <td>
        <p>Date/time du message</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-9</p>
      </td>
      <td>
        <p>Type du message : <span class="hl7-color">ZAM^Z02^ZAM_Z01</span></p>
      </td>
      <td>
        <p>MSG</p>
      </td>
      <td>
        <p>R</p>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-10</p>
      </td>
      <td>
        <p>Identifiant du message</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-11</p>
      </td>
      <td>
        <p>Processing Id 
          <br><span class="hl7-color">P</span> : en production 
          <br><span class="hl7-color">T</span> : message de test 
          <br><span class="hl7-color">D</span> : environnement de debug
      </p>
      </td>
      <td>
        <p>PT</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-12.1</p>
      </td>
      <td>
        <p>Version du standard <span class="hl7-color">2.6</span></p>
      </td>
      <td>
        <p>VID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-17</p>
      </td>
      <td>
        <p><span class="hl7-color">FRA</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-18</p>
      </td>
      <td>
        <p>Jeux de caractères, valeurs possibles :</p>
        <p><span class="hl7-color">UNICODE UTF-8</span> ou <span class="hl7-color">8859/15</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.1</p>
      </td>
      <td>
        <p>Version du présent volet du CI_SIS :</p>
        <p><span class="hl7-color">2.1</span> </p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.2</p>
      </td>
      <td>
        <p>Identifiant du profil de message :</p>
        <p><span class="hl7-color">CISIS_CDA_HL7_V2<span class="hl7-color"></p>
      </td>
      <td>
        <p>IS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

<b> Segment OBX portant le statut de d'accusé de réception</b>

Le premier segment OBX renseigne le statut de l'accusé de réception
MSSanté :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBX : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
        <p><span class="hl7-color">1</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">CWE</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 </p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Identifier</p>
      </td>
      <td>
        <p><span class="hl7-color">ACK_RECEPTION_MSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Text</p>
      </td>
      <td>
        <p><span class="hl7-color">Accusé de réception MSSanté</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">AckMetierZAM</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-4</p>
      </td>
      <td>
        <p>Observation Sub-ID</p>
      </td>
      <td>
        <p>Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Statut de l'accusé de réception - Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->Succès</p>
        <p>-        <span class="hl7-color">N</span> (No) -> Erreur</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<b> Segment OBX portant les informations du destinataire MSSanté</b>

Le deuxième segment OBX renseigne les informations du destinataire du
courriel MSSanté :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBX : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
        <p> <span class="hl7-color">2</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">XTN</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 </p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Identifier</p>
      </td>
      <td>
        <p><span class="hl7-color">DESTINATAIRE_MSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Text</p>
      </td>
      <td>
        <p><span class="hl7-color">Destinataire MSSanté</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">AckMétierZAM</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-4 (optionnel)</p>
      </td>
      <td>
        <p>Observation Sub-ID</p>
      </td>
      <td>
        <p>Indiquer l'identifiant du destinataire</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Telecommunication Equipment Type</p>
      </td>
      <td>
        <p><span class="hl7-color">X.400</span> (X.400 email address)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.4</p>
      </td>
      <td>
        <p>Communication Address</p>
      </td>
      <td>
        <p>Intégrer l'adresse MSSanté du destinataire</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<b> Segment ERR</b>

Si une erreur intervient lors de la distribution du ou des document(s)
par MSSanté dans le serveur de messagerie du destinataire MSSanté, ce
segment contient sa description.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N)</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>ERR - 3</p>
      </td>
      <td>
        <p>Hl7 Error Code</p>
      </td>
      <td>
        <p><span class="hl7-color">207^Application error^messageErrorCondition</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 4</p>
      </td>
      <td>
        <p>Severity</p>
      </td>
      <td>
        <p><span class="hl7-color">Error, Fatal Error, Information, Warning</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 5</p>
      </td>
      <td>
        <p>Application Error Code</p>
      </td>
      <td>
        <p>Code erreur de MSSanté. Cf <a href="error-codes.html#table--smtperrorcode-">Table « SMTPERRORCODE »</a></p>
        <p>Code SMTP^libellé du code^<span class="hl7-color">SMTPERRORCODE</span></p>
      </td>
    </tr>
  </tbody>
</table>


###### Contraintes à appliquer au message ZAM^Z03^ZAM_Z01 -- Accusé de lecture MSSanté 

<b> Segment MSH</b>

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z03^ZAM_Z01`.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th>
        <p>Champ</p>
      </th>
      <th>
        <p>Contenu</p>
      </th>
      <th>
        <p>Type donnée</p>
      </th>
      <th>
        <p>Caractère optionnel/obligatoire</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MSH-1</p>
      </td>
      <td>
        <p><span class="hl7-color">|</span> séparateur de champ</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-2</p>
      </td>
      <td>
        <p>^~\& : séparateur de composant, répétition, caractère d'échappement, séparateur de sous-composants</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-3</p>
      </td>
      <td>
        <p>Application émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-4</p>
      </td>
      <td>
        <p>Organisation émettrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-5</p>
      </td>
      <td>
        <p>Application réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-6</p>
      </td>
      <td>
        <p>Organisation réceptrice</p>
      </td>
      <td>
        <p>HD</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-7</p>
      </td>
      <td>
        <p>Date/time du message</p>
      </td>
      <td>
        <p>TS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-9</p>
      </td>
      <td>
        <p>Type du message : <span class="hl7-color">ZAM^Z03^ZAM_Z01</span></p>
      </td>
      <td>
        <p>MSG</p>
      </td>
      <td>
        <p>R</p>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-10</p>
      </td>
      <td>
        <p>Identifiant du message</p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-11</p>
      </td>
      <td>
        <p>Processing Id 
          <br><span class="hl7-color">P</span> : en production 
          <br><span class="hl7-color">T</span> : message de test 
          <br><span class="hl7-color">D</span> : environnement de debug
        </p>
      </td>
      <td>
        <p>PT</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-12.1</p>
      </td>
      <td>
        <p>Version du standard <span class="hl7-color">2.6</span></p>
      </td>
      <td>
        <p>VID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-17</p>
      </td>
      <td>
        <p>FRA</p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-18</p>
      </td>
      <td>
        <p>Jeux de caractères, valeurs possibles :</p>
        <p><span class="hl7-color">UNICODE UTF-8</span> ou <span class="hl7-color">8859/15</span></p>
      </td>
      <td>
        <p>ID</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.1</p>
      </td>
      <td>
        <p>Version du présent volet du CI_SIS :</p>
        <p><span class="hl7-color">2.1</span> </p>
      </td>
      <td>
        <p>ST</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MSH-21.2</p>
      </td>
      <td>
        <p>Identifiant du profil de message :</p>
        <p><span class="hl7-color">CISIS_CDA_HL7_V2</span></p>
      </td>
      <td>
        <p>IS</p>
      </td>
      <td>
        <p>R</p>
      </td>
    </tr>
  </tbody>
</table>

<b> Segment OBX portant le statut de d'accusé de lecture MSSanté</b>

Le premier segment OBX renseigne le statut de l'accusé de lecture :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBX : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
        <p><span class="hl7-color">1</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">CWE</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 </p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Identifier</p>
      </td>
      <td>
        <p><span class="hl7-color">ACK_LECTURE_MSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Text</p>
      </td>
      <td>
        <p><span class="hl7-color">Accusé de lecture</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">AckMetierZAM</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-4</p>
      </td>
      <td>
        <p>Observation Sub-ID</p>
      </td>
      <td>
        <p>Indiquer l'identifiant du message (ORU/MDM) ayant transmis le document</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.1</p>
      </td>
      <td>
        <p>Code :</p>
      </td>
      <td>
        <p>Statut de l'accusé de lecture - Table HL7 : 0136 :</p>
        <p>-        <span class="hl7-color">Y</span> (Yes) ->Succès</p>
        <p>-        <span class="hl7-color">N</span> (No) -> Erreur</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Name Of Coding System</p>
      </td>
      <td>
        <p><span class="hl7-color">expandedYes-NoIndicator</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<b>Segment OBX portant les informations du lecteur</b>

Le deuxième segment OBX renseigne les informations du lecteur du
courriel MSSanté :

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment OBX : Usage = Required / Cardinalité = [1..1]</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>OBX-1</p>
      </td>
      <td>
        <p>Set Id - Obx</p>
      </td>
      <td>
        <p>Numéro de séquence du segment</p>
        <p><span class="hl7-color">2</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-2 </p>
      </td>
      <td>
        <p>Value Type</p>
      </td>
      <td>
        <p><span class="hl7-color">XTN</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-3 </p>
      </td>
      <td>
        <p>Observation Identifier</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.1  </p>
      </td>
      <td>
        <p>Identifier</p>
      </td>
      <td>
        <p><span class="hl7-color">LECTEUR_MSS</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.2  </p>
      </td>
      <td>
        <p>Text</p>
      </td>
      <td>
        <p><span class="hl7-color">Lecteur du courriel MSSanté</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-3.3</p>
      </td>
      <td>
        <p>Name of Coding system</p>
      </td>
      <td>
        <p><span class="hl7-color">AckMetierZAM</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-4 (optionnel)</p>
      </td>
      <td>
        <p>Observation Sub-ID</p>
      </td>
      <td>
        <p>Indiquer l'identifiant du professionnel de santé</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-5</p>
      </td>
      <td>
        <p>Observation Value</p>
      </td>
      <td>
        <p> </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.3</p>
      </td>
      <td>
        <p>Telecommunication Equipment Type</p>
      </td>
      <td>
        <p><span class="hl7-color">X.400</span> (X.400 email address)</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>&gt; OBX-5.4</p>
      </td>
      <td>
        <p>Communication Address</p>
      </td>
      <td>
        <p>Intégrer l'adresse de la BAL qui a lu le courriel.</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>OBX-11</p>
      </td>
      <td>
        <p>Observation Result Status</p>
      </td>
      <td>
        <p>Valeur fixée à « <span class="hl7-color">F</span> » </p>
      </td>
    </tr>
  </tbody>
</table>

<b>Segment ERR</b

Si une erreur intervient lors du traitement de la demande réceptionnée
par le destinataire, ce segment contient sa description.

<table class="table-hl7v2">
  <tbody>
    <tr>
      <th colspan="3">
        <p><strong>Composition du segment ERR : Usage = Conditional / Cardinalité = [0..1] (Requis si le champ 5 du premier OBX prend la valeur N)</strong></p>
      </th>
    </tr>
    <tr>
      <th>
        <p><strong>Champ requis</strong></p>
      </th>
      <th>
        <p><strong>Description</strong></p>
      </th>
      <th>
        <p><strong>Valeur</strong></p>
      </th>
    </tr>
    <tr>
      <td>
        <p>ERR - 3</p>
      </td>
      <td>
        <p>Hl7 Error Code</p>
      </td>
      <td>
        <p><span class="hl7-color">207^Application error^messageErrorCondition</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 4</p>
      </td>
      <td>
        <p>Severity</p>
      </td>
      <td>
        <p><span class="hl7-color">Error</span>, <span class="hl7-color">Fatal Error</span>, <span class="hl7-color">Information</span>, <span class="hl7-color">Warning</span></p>
      </td>
    </tr>
    <tr>
      <td>
        <p>ERR - 5</p>
      </td>
      <td>
        <p>Application Error Code (CWE)</p>
      </td>
      <td>
        <p>Sélection d'un code erreur dans la table HL70533 (nom symbolique : applicationErrorCode)          </p>
        <p>à Utiliser les codes et libellés de <a href="error-codes.html#codes-erreurs-de-laccus%C3%A9-m%C3%A9tier-de-lecturetraitement-de-la-demande">Codes erreurs de l'accusé métier de lecture/traitement de la demande</a>.</p>
        <p>Code^libellé du code^<span class="hl7-color">applicationErrorCondition</span></p>
      </td>
    </tr>
  </tbody>
</table>

Seules les erreurs de niveau applicatif du traitement automatique sur le document au niveau du destinataire final sont remontées au travers du courriel MDN et réceptionnées par le GESTIONNAIRE (la PFI expéditrice).
Les erreurs de type technique (erreurs de syntaxe du message HL7) sont généralement traitées localement, côté du destinataire, par une des intervenants techniques. Dans ces conditions, le segment ERR-3 prend la valeur 207 et le segment ERR-5 contient l'erreur applicative remontée au
 travers du courriel MDN. Le message HL7 `ZAM^Z03^ZAM_Z01` est généré ple GESTIONNAIRE à partir des informations contenues dans le courriel MDN
(cf structure du MDN -- Message Disposition Notification) décrit en Annexe 4 du volet « [Transmission au LPS d'un document CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) ».

##### Message d'acquittement technique des accusés métiers

Le message d'acquittement est identique à celui spécifié dans la [partie dédiée](profils-messages.html#le-message-dacquittement-du-message-hl7v2), à l'exception du champ MSH-9 qui prend la valeur `ACK^Z01^ACK` ou `ACK^Z02^ACK` ou `ACK^Z03^ACK` selon l'évènement du message initial.



















