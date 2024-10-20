
#### Description des messages ORU et MDM

La description des messages ORU et MDM est basée sur le contenu du
document et les métadonnées complémentaires à véhiculer dans le cadre du
partage et de l'échange.

Les données utiles pour publication sur le DMP et pour l'envoi par
MSSanté de(s) document(s) sont stockées à la fois dans le segment PID du
message HL7, dans le document CDA-R2 conforme au [volet du CI_SIS Structuration minimale des documents de santé](https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_contenu_volet-structuration-minimale_v1.15.pdf) et dans des segments OBX du message HL7 spécifiant les métadonnées complémentaires.

Le développeur doit valoriser tous les segments et champs obligatoires
des messages HL7v2 afin de répondre au standard d'interopérabilité des
messages.

Ci-dessous sont représentées les structures de messages HL7v2 proposées
pour la transmission de document(s) CDA-R2 en HL7v2.

##### Message ORU^R01^ORU_R01 en HL7v2.5

###### Profil du message ORU_R01

Le profil du message ORU_R01 est le suivant :
<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
 <thead>
  <tr>
   <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
   background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Segment</span></p>
   </td>
   <td width="274" valign="top" style="width:205.5pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Meaning</span></p>
   </td>
   <td width="64" valign="top" style="width:48.25pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Usage</span></p>
   </td>
   <td width="59" valign="top" style="width:43.9pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Card.</span></p>
   </td>
   <td width="66" valign="top" style="width:49.6pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">§ HL7</span></p>
   </td>
  </tr>
 </thead>
 <tbody><tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">MSH</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Message Header</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- PATIENT_RESULT begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- PATIENT begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;PID</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Patient Identification</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">3</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- PATIENT_VISIT begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">RE</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp; PV1</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Patient Visit</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">3</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- PATIENT_VISIT end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- PATIENT end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">{</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- ORDER_OBSERVATION begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;ORC</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Common Order : demande de traitement sur un document</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;OBR</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Observation Request</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;[{NTE}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Comments on the order</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">[{</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- TIMING begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;TQ1</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Timing Quantity</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- TIMING end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;{</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- OBSERVATION begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp; OBX</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Document et expression des métadonnées de document
  relatives au masquage du document aux PS et de visibilité au patient.</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">7</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;
  [{PRT}] (note 1)</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Participation : Expéditeur du document, destinataire(s) MSSanté,
  adresse mail sur laquelle le destinataire peut répondre. Segment PRT
  pré-adopté de la version 2.9</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R/C</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">7 (v2.9)</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;
  [{NTE}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Comment of the result</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;}</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- OBSERVATION end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>
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

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
 <thead>
  <tr>
   <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
   background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Segment</span></p>
   </td>
   <td width="274" valign="top" style="width:205.5pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Meaning</span></p>
   </td>
   <td width="64" valign="top" style="width:48.25pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Usage</span></p>
   </td>
   <td width="59" valign="top" style="width:43.9pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">Card.</span></p>
   </td>
   <td width="66" valign="top" style="width:49.6pt;border:solid windowtext 1.0pt;
   border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
   <p class="TableEntryHeader"><span lang="EN-US" style="color:black">§ HL7</span></p>
   </td>
  </tr>
 </thead>
 <tbody><tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">MSH</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Message Header</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">EVN</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Event type</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">PID</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Patient Identification</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">3</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">PV1</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Patient Visit</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">3</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- COMMON_ORDER begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;ORC</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Common Order = demande de traitement sur le document</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;[{</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- TIMING begin</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp; TQ1</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Timing/Quantity</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;
  [{TQ2}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Timing/Quantity RelationShip</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- TIMING end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;OBR</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Observation Request segment</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">4</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;[{NTE}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Notes and comments</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">--- COMMON_ORDER end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">TXA</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Transcription document header</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">9</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">{</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">OBXNTE : Document ou expression des métadonnées de
  document relatives au masquage du document aux PS et de visibilité au
  patient.</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;OBX</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Observation/Result. </p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1..1]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">9</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;[{PRT}]</span></p>
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">(Note
  1)</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry">Participation : Expéditeur, destinataire(s) MSSanté,
  adresse mail sur laquelle le destinataire peut répondre. Segment PRT
  pré-adopté de la version 2.9</p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">R/C</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[1.*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">7 (v2.9)</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&nbsp;[{NTE}]</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">Notes and comments</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">O</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">[0..*]</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">2</span></p>
  </td>
 </tr>
 <tr>
  <td width="104" valign="top" style="width:77.75pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US" style="font-family:&quot;Courier New&quot;">}</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">---OBXNTE end</span></p>
  </td>
  <td width="64" valign="top" style="width:48.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="59" valign="top" style="width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
  <td width="66" valign="top" style="width:49.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="TableEntry"><span lang="EN-US">&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>

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
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
 <tbody><tr style="height:46.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Champ</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Contenu</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Type donnée</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Caractère optionnel/obligatoire</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-1</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">|</span><span style="color:black"> séparateur de champ</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-2</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">^~\&amp;</span><span style="color:black">&nbsp;:
  séparateur de composant, répétition, caractère d’échappement, séparateur de
  sous-composants</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-3</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application émettrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-4</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Organisation émettrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-5</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application réceptrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-6</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Organisation réceptrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-7</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Date/time du message</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TS</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-9</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Type du message<br>
  </span><span style="color:#4472C4">ORU^R01^ORU_R01<br>
  MDM^T02^MDM_T02<br>
  MDM^T10^MDM_T02<br>
  MDM^T04^MDM_T02</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSG</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-10</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiant du message</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-11</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Processing Id<br>
  </span><span style="color:#4472C4">P&nbsp;</span>: en production<span style="color:#4472C4"><br>
  T&nbsp;</span>: message de test<span style="color:#4472C4"><br>
  D&nbsp;</span>: environnement de debug</p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PT</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-12</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Version du standard<br>
  </span><span style="color:#4472C4">2.5 </span>pour ORU<span style="color:
  #4472C4"><br>
  2.6 </span>pour MDM</p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">VID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-17</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">FRA</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-18</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Jeux de caractères, valeurs possibles&nbsp;:</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">UNICODE UTF-8 ou 8859/15 <br>
  <br>
  </span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-21</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiant du profil de message</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-21.1&nbsp;: Entity Identifier (</span><span style="color:#4472C4">2.1</span><span style="color:black">)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span lang="EN-US" style="color:black">MSH-21.2&nbsp;: Namespace Id</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span lang="EN-US" style="font-size:9.0pt;color:#4472C4">CISIS_CDA_HL7_V2</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">EI</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
</tbody></table>

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
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="699" style="width:524.25pt;border-collapse:collapse;border:none">
 <tbody><tr style="height:23.5pt">
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Champ</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Contenu</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Type donnée</span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Caractère optionnel/obligatoire
  </span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PID-3</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiants du patient</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">CX</span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PID-5</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Nom du
  patient</p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">XPN</span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PID-18 (<i>Note 1</i>)</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">N° de dossier
  administratif</p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">CX</span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">RE</span></p>
  </td>
 </tr>
</tbody></table>

Le PID-3 doit être identique aux identifiants de patient portés par le document CDA (recordTarget/patientRole/id).

Pour le segment PV1, ce volet ajoute les contraintes suivantes :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="699" style="width:524.25pt;border-collapse:collapse;border:none">
 <tbody><tr style="height:23.5pt">
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Champ</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Contenu</span></p>
  </td>
  <td width="104" valign="top" style="width:78.0pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Type donnée</span></p>
  </td>
  <td width="217" valign="top" style="width:163.0pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Caractère optionnel/obligatoire</span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PV1-2</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Classe du patient&nbsp;</span></p>
  </td>
  <td width="104" valign="top" style="width:78.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">IS</span></p>
  </td>
  <td width="217" valign="top" style="width:163.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R </span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PV1-19 <i>(Note 1</i>) et (<i>Note 2</i>)</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Identifiant
  de la venue</p>
  </td>
  <td width="104" valign="top" style="width:78.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">CX</span></p>
  </td>
  <td width="217" valign="top" style="width:163.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;C (Note 2)</span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PV1-44 (<i>Note 1</i>)</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Date d’entrée
  du patient</p>
  </td>
  <td width="104" valign="top" style="width:78.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TS</span></p>
  </td>
  <td width="217" valign="top" style="width:163.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">RE</span></p>
  </td>
 </tr>
 <tr>
  <td width="113" valign="top" style="width:84.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PV1-45(<i>Note 1</i>)</span></p>
  </td>
  <td width="265" valign="top" style="width:7.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Date de
  sortie du patient</p>
  </td>
  <td width="104" valign="top" style="width:78.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TS</span></p>
  </td>
  <td width="217" valign="top" style="width:163.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">RE</span></p>
  </td>
 </tr>
</tbody></table>

*Note 1* : _A noter que ces champs sont à renseigner, s'ils sont connus, par l'acteur CREATEUR afin de pouvoir calculer des indicateurs._

*Note 2* : _Le champ PV1-19 est requis lorsque le PV1-2 prend la valeur E, I, O ou R. Si PV1-2 prend la valeur N alors PV1-19 est requis si connu._

##### Les métadonnées du document [Uniquement pour le message MDM]

Le message MDM requiert l'utilisation du segment TXA qui porte les
métadonnées associées au document contenu dans le message. Les
contraintes apportées par ce volet sur le segment TXA sont les
suivantes :
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="699" style="width:524.25pt;border-collapse:collapse;border:none">
 <tbody><tr style="height:23.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Champ</span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Contenu</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Type donnée</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Caractère optionnel/obligatoire</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-1</span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set-ID TXA. Valeur = </span><span style="color:#2E74B5">1</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">SI</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-2</span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Type de
  document dont les valeurs sont à prendre dans </p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">le </span><a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a>
  d<span style="color:black">e la Nomenclature des Objets de Santé (NOS). </span></p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Par ex&nbsp;: 11502-2</p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">IS</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-3</span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Document
  Content Presentation</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal"><span style="color:#0070C0">TEXT</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-12 <i>(Note 1)</i></span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Unique
  document number</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Si <span style="color:black">ClinicalDocument/id@extension
  est renseigné :</span></p>
  <p class="MsoNormal" align="left" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:35.4pt;text-align:left;line-height:normal">&nbsp;ex&nbsp;:
  58132^^1.2.250.2345.3245.13^ISO</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Si <span style="color:black">ClinicalDocument/id@extension
  n’est pas renseigné :</span></p>
  <p class="MsoNormal" align="left" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:35.4pt;text-align:left;line-height:normal">&nbsp;ex&nbsp;:
  1.2.250.2345.3245.13.58132</p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">EI</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-13 <i>(Note 1)</i></span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Parent
  document number</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Si <span style="color:black">ClinicalDocument/id@extension
  est renseigné :</span></p>
  <p class="MsoNormal" align="left" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:35.4pt;text-align:left;line-height:normal">&nbsp;ex&nbsp;:
  58131^^1.2.250.2345.3245.13^ISO</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Si <span style="color:black">ClinicalDocument/id@extension
  n’est pas renseigné :</span></p>
  <p class="MsoNormal" align="left" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:35.4pt;text-align:left;line-height:normal">&nbsp;ex&nbsp;:
  1.2.250.2345.3245.13.58131</p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">EI</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">C Requis dans le cas d’une demande de remplacement</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TXA-17</span></p>
  </td>
  <td width="350" valign="top" style="width:262.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal">Document completion status dont la valeur est à prendre
  dans la table HL7 0271</p>
  <p class="MsoNormal" align="left" style="margin-bottom:0cm;text-align:left;
  line-height:normal"><span style="color:#0070C0">AU</span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
</tbody></table>

**(Note 1)** : _conformément au volet de [Structuration minimale des
documents de santé](https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_contenu_volet-structuration-minimale_v1.15.pdf), l'identifiant du document au sein du document CDA
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

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du segment ORC&nbsp;: Usage&nbsp;= Required /
  Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment ORC</span></b></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Common Order</span></b></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ORC-1</span></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Order control</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">NW</span><span style="color:black"> (New order/service
  dans le cas d’une demande d’intégration de document(s)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">RO </span><span style="color:black">(Replace order)
  dans le cas d’une demande de remplacement</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">CA </span><span style="color:black">(Canceled) dans le
  cas d’une demande de suppression</span></p>
  </td>
 </tr>
</tbody></table>

La valeur du champ ORC-1 doit être cohérente avec la valeur du champ
OBX-11 et dans le cas du message MDM avec l'évènement déclenchant (T02,
T04 ou T10). En cas d'incohérence entre ces champs, le message HL7 sera
rejeté par la PFI.

##### Le segment OBR

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du segment OBR&nbsp;: Usage&nbsp;= Required /
  Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E5E5E5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBR</span></b></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation Request</span></b></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBR-4</span></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Universal Service Identifier</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt;OBR-4.1</span></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code du document</span></p>
  </td>
  <td width="274" rowspan="2" valign="top" style="width:205.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Utiliser le </span><a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a>
  d<span style="color:black">e la Nomenclature des Objets de Santé (NOS). </span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">A noter qu’en cas d’envoi au DMP, le Gestionnaire doit
  contrôler que le type de document appartient au jeu de valeur défini par le
  DMP (</span><a href="https://mos.esante.gouv.fr/NOS/JDV_J66-TypeCode-DMP/">JDV_J66-TypeCode-DMP</a><span style="color:black">).</span></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt;OBR-4.2</span></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé du document</span></p>
  </td>
 </tr>
 <tr>
  <td width="201" valign="top" style="width:150.8pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt;OBR-4.3</span></p>
  </td>
  <td width="177" valign="top" style="width:132.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Système de codage dont est issu le code</span></p>
  </td>
  <td width="274" valign="top" style="width:205.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">LN </span><span style="color:#4472C4">ou </span><span style="color:#0070C0">TRE_A05 </span><span style="color:black">en fonction de
  l’appartenance du code à l’un des systèmes de codage</span></p>
  </td>
 </tr>
</tbody></table>

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
  professionnel<o:p></o:p></span></span></span></span></span></p>
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
  text1;mso-bidi-font-weight:bold">Identifiant du professionnel qui fait
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
  text1;mso-bidi-font-weight:bold">Nom d’exercice du professionnel expéditeur<span style="background:yellow;mso-highlight:yellow"><o:p></o:p></span></span></span></span></span></span></p>
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
  text1;mso-bidi-font-weight:bold">Prénom d’exercice du professionnel expéditeur<o:p></o:p></span></span></span></span></span></p>
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
  text1;mso-bidi-font-weight:bold">Type d’identifiant du professionnel
  (valeur issue de la</span></span></span></span></span><span style="mso-bookmark:
  _Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">
  </span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"></span></span></span></span><a href="http://www.interopsante.org/offres/doc_inline_src/412/IHE_France_Constraints_on_HL7_data_types_for_ITI_v.1.7.3.pdf"><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:windowtext;
  mso-bidi-font-weight:bold">Table 0203 – <span class="SpellE">Interop’Santé</span></span></span></span></span></span></a><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">)</span></span></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"></span></span></span><span style="mso-bookmark:_Toc518305025"><span style="mso-bookmark:_Toc494980146"><span style="mso-bookmark:_Toc486516985"><span style="mso-bookmark:_Toc486516539"><span style="font-size:9.0pt;mso-bidi-font-family:
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
  professionnel ou au système à l'origine de la demande de traitement
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
de santé](https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_contenu_volet-structuration-minimale_v1.15.pdf) » a été modifié de façon à lever la contrainte existante sur
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

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué aux professionnels de santé.
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;=
  Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de
  séquence du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;:</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MASQUE_PS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Masqué aux professionnels de Santé</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr style="height:39.45pt">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.45pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:39.45pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:39.45pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y&nbsp;</span><span style="color:black">(Yes)&nbsp;</span><span style="font-family:Wingdings;
  color:black">à</span><span style="color:black">MASQUE_PS actif </span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)&nbsp;</span><span style="font-family:Wingdings;color:black">à</span><span style="color:black">
  MASQUE_PS non Actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>
<!-- supprimer en 2.1.1 voir CDA_HL7_Q2
<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> Un document stocké dans le DMP, pour lequel le patient a fait le choix de ne pas partager ce document aux PS, ne doit pas faire l’objet d’un échange entre PS au travers de la MSSanté.
    </p>
</blockquote> -->

###### Document Non visible par le patient 

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué au patient.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de
  séquence du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">INVISIBLE_PATIENT</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Document Non Visible par le patient</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y </span><span style="color:black">(YES)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> INVISIBLE_PATIENT actif</span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> INVISIBLE_PATIENT non actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>

<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> un document clinique masqué au patient ne doit pas être envoyé au patient par MSSanté.
    </p>
</blockquote>

###### Document Non visible par les représentants légaux du patient  

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document est
masqué aux représentants légaux du patient.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de séquence
  du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">INVISIBLE_REP_LEGAUX</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Non visible par les représentants Légaux du patient</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" align="left" style="margin-top:0cm;
  margin-right:0cm;margin-bottom:0cm;margin-left:18.0pt;text-align:left;
  text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;
  color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y </span><span style="color:black">(YES)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> INVISIBLE_ REP_LEGAUX actif</span></p>
  <p class="MsoListParagraphCxSpLast" align="left" style="margin-top:0cm;
  margin-right:0cm;margin-bottom:0cm;margin-left:18.0pt;text-align:left;
  text-indent:-18.0pt;line-height:normal"><span style="font-family:Symbol;
  color:black">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> INVISIBLE_ REP_LEGAUX non actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="170" valign="top" style="width:127.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="302" valign="top" style="width:8.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>
<blockquote class="stu-note">
    <p>
    <b>Point d'attention :</b> un document clinique masqué aux représentants légaux du patient ne doit pas être envoyé aux représentants légaux du patient par MSSanté.
    </p>
</blockquote>

###### Connexion Secrète

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP « connexion secrète » ([cf SESAM-VITALE : Service DMP intégré aux LPS - Version 2.10.0 – 07/07/2023](https://industriels.sesam-vitale.fr/))

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de
  séquence du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:1.0pt;line-height:normal"><span style="color:#0070C0">CONNEXION_SECRETE</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Connexion Secrete</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y </span><span style="color:black">(Yes)&nbsp;</span><span style="font-family:Wingdings;color:black">à</span><span style="color:black">
  CONNEXION_SECRETE actif</span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> CONNEXION_SECRETE non Actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="179" valign="top" style="width:134.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="294" valign="top" style="width:220.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>
###### Modification Confidentiality Code

Cet OBX permet d'informer l'acteur GESTIONNAIRE que la transaction porte
une modification du CONFIDENTIALITY CODE indiquant une mise à jour des
métadonnées de masquage/démasquage aux PS et/ou de visibilité du
document au patient ou à ses représentants légaux.
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de
  séquence du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MODIF_CONF_CODE</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Modification Confidentiality Code</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y </span><span style="color:black">(Yes)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> MODIF_CONF_CODE actif</span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> &nbsp;MODIF_CONF_CODE non Actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «</span><span style="color:#4472C4">&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>

###### Alimentation DMP

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être utilisé pour une transaction DMP.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Composition du groupe OBSERVATION/OBXNTE&nbsp;:
  Usage&nbsp;= Required / Cardinalité&nbsp;= [1..1]</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Elément requis&nbsp;:</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Description&nbsp;: </span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Valeur&nbsp;: </span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Segment OBX</span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">Observation/Result</span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Set Id - Obx</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">Numéro de
  séquence du segment</p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-2</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Value Type </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message ORU : </span><span style="color:#0070C0">CE
  </span><span style="color:black">(Coded Entry)</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Pour le message MDM : </span><span style="color:#0070C0">CWE
  </span><span style="color:black">(Coded with Exceptions)</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Identifier </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b><span style="color:black">&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.1&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">DESTDMP</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.2&nbsp;:&nbsp; </span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Libellé&nbsp;:</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">Destinataire DMP</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-3.3&nbsp;:</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name of Coding system</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">MetaDMPMSS</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-5</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Value</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.1</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Code&nbsp;: </span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Table HL7 : 0136&nbsp;:</span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">Y </span><span style="color:black">(Yes)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> DESTDMP actif</span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;text-indent:-18.0pt;
  line-height:normal"><span style="color:black">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span><span style="color:#0070C0">N </span><span style="color:black">(No)
  </span><span style="font-family:Wingdings;color:black">à</span><span style="color:black"> DESTDMP non Actif</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&gt; OBX-5.3</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Name Of Coding System</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="font-size:9.0pt;color:#0070C0">expandedYes-NoIndicator</span></p>
  </td>
 </tr>
 <tr>
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">OBX-11</span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Observation Result Status</span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Valeur fixée à «&nbsp;</span><span style="color:#0070C0">F&nbsp;</span><span style="color:black">»&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>

###### Echange MSSanté Professionnel de Santé/Organisation/BAL applicative

Cet OBX permet d'informer l'acteur GESTIONNAIRE que le document doit
être envoyé vers un PS, une organisation ou une Boîte aux lettres (BAL)
applicative.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span>
  / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message ORU : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> Entry)<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message MDM : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CWE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> <span class="SpellE">with</span>
  Exceptions)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">DESTMSSANTEPS</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Destinataire
  (Professionnel de Santé, organisation ou BAL applicative)</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">&gt; OBX-5.1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Table HL7 : 0136&nbsp;:<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Y </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> DESTMSSANTEPS actif<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">N </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> DESTMSSANTEPS non Actif<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.3</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name Of Coding System</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status</span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5">&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

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


<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span>
  / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message ORU : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> Entry)<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message MDM : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CWE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> <span class="SpellE">with</span>
  Exceptions)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">DESTMSSANTEPAT</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Destinataire
  Patient</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:
  Arial;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Table HL7 : 0136&nbsp;:<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l4 level1 lfo11"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Y </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes)&nbsp;:
  DESTMSSANTEPAT actif</span><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l4 level1 lfo11"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">N </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No)&nbsp;:
  DESTMSSANTEPAT non Actif<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name Of Coding System<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «&nbsp;</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment NTE</span></b><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"> (conditionnel) <o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Notes And <span class="SpellE">Comments</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Ce segment doit être renseigné avec la valeur «&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial">FIN&nbsp;<span style="color:black;mso-themecolor:text1">» si l’utilisateur ne souhaite pas
  que le patient puisse répondre au courriel. <o:p></o:p></span></span></p>
  </td>
 </tr>
</tbody></table>

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

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Optional</span>
  / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message ORU : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> Entry)<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message MDM : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CWE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> <span class="SpellE">with</span>
  Exceptions)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">ACK_RECEPTION</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Accusé
  de réception</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:
  Arial;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Table HL7 : 0136&nbsp;:<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Y </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> <span class="SpellE">ack</span> de réception DMP/MSSanté
  souhaité<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">N </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> accusé de réception DMP/MSSanté non souhaité<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name Of Coding System<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «&nbsp;</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
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

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Optional</span>
  / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message ORU : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> Entry)<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Pour le message MDM : </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">CWE </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> <span class="SpellE">with</span>
  Exceptions)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">ACK_LECTURE_MSS</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Accusé
  de lecture</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:
  Arial;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Table HL7 : 0136&nbsp;:<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Y </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> accusé de lecture MSSanté souhaité<o:p></o:p></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-bottom:0cm;mso-add-space:
  auto;text-indent:-18.0pt;line-height:normal;mso-list:l20 level1 lfo10"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">N </span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No) </span><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"> accusé de lecture MSSanté non souhaité<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-5.3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name Of Coding System<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «&nbsp;</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

###### Corps du mail à destination d'un professionnel de santé

Cet OBX permet à l'acteur CREATEUR de documents d'ajouter un texte à
intégrer dans le corps du mail à destination des professionnels de santé
via MSSanté. Cette métadonnée est optionnelle :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Optional</span>
  / Cardinalité&nbsp;= [<span class="GramE">0..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#E5E5E5;mso-shading:windowtext;mso-pattern:gray-10 auto;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<span style="color:#4472C4;mso-themecolor:
  accent5"><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">ED </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Encapsulated</span> Data)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:1.0pt;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">CORPSMAIL_PS</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Corps
  du mail pour un PS </span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:
  Arial;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Indiquer le texte à intégrer dans le corps du mail<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «&nbsp;</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

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

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="652" colspan="3" valign="top" style="width:488.8pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Composition du
  groupe OBSERVATION/OBXNTE&nbsp;: Usage&nbsp;= <span class="SpellE">Optional</span>
  / Cardinalité&nbsp;= [<span class="GramE">0..</span>1]<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#E5E5E5;mso-shading:windowtext;mso-pattern:gray-10 auto;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Elément
  requis&nbsp;:<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Description&nbsp;:
  <o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#E5E5E5;mso-shading:windowtext;
  mso-pattern:gray-10 auto;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Segment OBX<o:p></o:p></span></b></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Observation/<span class="SpellE">Result</span><o:p></o:p></span></b></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-1<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Numéro de séquence du segment<span style="color:#4472C4;mso-themecolor:
  accent5"><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-2<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Value Type<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0;
  mso-bidi-font-weight:bold">ED </span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Encapsulated</span> Data)</span><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-3<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation Identifier <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Code&nbsp;: <o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">CORPSMAIL_PATIENT</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Libellé&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">Corps
  du mail pour le patient</span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">&gt; OBX-3.3&nbsp;:<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Name of Coding system<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;color:#0070C0">MetaDMPMSS</span></span><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-5<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Observation Value<o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Indiquer le texte à intégrer dans le corps du mail<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">OBX-11<o:p></o:p></span></p>
  </td>
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">Observation <span class="SpellE">Result</span> Status</span><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="293" valign="top" style="width:220.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur fixée à «&nbsp;</span><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">»&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

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

<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <thead>
  <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid">
   <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
   background:#D9D9D9;mso-shading:#D9D9D9;mso-pattern:solid #D9D9D9;padding:
   0cm 0cm 0cm 0cm">
   <p class="TableEntryHeader" align="left" style="text-align:left;mso-pagination:
   widow-orphan lines-together"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">Segment</span></span></p>
   </td>
   
   <td width="312" valign="top" style="width:233.9pt;border:solid black 1.0pt;
   border-left:none;mso-border-left-alt:solid black 1.0pt;background:#D9D9D9;
   mso-shading:#D9D9D9;mso-pattern:solid #D9D9D9;padding:0cm 0cm 0cm 0cm">
   <p class="TableEntryHeader" align="left" style="text-align:left;mso-pagination:
   widow-orphan lines-together"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">Meaning</span></span></p>
   </td>
   
   <td width="57" valign="top" style="width:42.5pt;border:solid black 1.0pt;
   border-left:none;mso-border-left-alt:solid black 1.0pt;background:#D9D9D9;
   mso-shading:#D9D9D9;mso-pattern:solid #D9D9D9;padding:0cm 0cm 0cm 0cm">
   <p class="TableEntryHeader" align="left" style="text-align:left;mso-pagination:
   widow-orphan lines-together"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">Usage</span></span></p>
   </td>
   
   <td width="47" valign="top" style="width:35.45pt;border:solid black 1.0pt;
   border-left:none;mso-border-left-alt:solid black 1.0pt;background:#D9D9D9;
   mso-shading:#D9D9D9;mso-pattern:solid #D9D9D9;padding:0cm 0cm 0cm 0cm">
   <p class="TableEntryHeader" align="left" style="text-align:left;mso-pagination:
   widow-orphan lines-together"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">Card.</span></span></p>
   </td>
   
   <td width="57" valign="top" style="width:42.5pt;border:solid black 1.0pt;
   border-left:none;mso-border-left-alt:solid black 1.0pt;background:#D9D9D9;
   mso-shading:#D9D9D9;mso-pattern:solid #D9D9D9;padding:0cm 0cm 0cm 0cm">
   <p class="TableEntryHeader" align="left" style="text-align:left;mso-pagination:
   widow-orphan lines-together"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">HL7 §</span></span></p>
   </td>
   
  </tr>
 </thead>
 <tbody><tr style="mso-yfti-irow:1">
  <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
  border-top:none;mso-border-top-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">MSH</span></span></p>
  </td>
  
  <td width="312" valign="top" style="width:233.9pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">Message header</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">R</span></span></p>
  </td>
  
  <td width="47" valign="top" style="width:35.45pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[<span class="GramE">1..</span>1]</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">2</span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
  border-top:none;mso-border-top-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[{SFT}]</span></span></p>
  </td>
  
  <td width="312" valign="top" style="width:233.9pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span style="mso-ansi-language:FR">Software segment <o:p></o:p></span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">O</span></span></p>
  </td>
  
  <td width="47" valign="top" style="width:35.45pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[<span class="GramE">0..</span>*]</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">2</span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
  border-top:none;mso-border-top-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[UAC]</span></span></p>
  </td>
  
  <td width="312" valign="top" style="width:233.9pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span style="mso-ansi-language:FR">User <span class="SpellE">Authentication</span> <span class="SpellE">credential</span>– Utilisé uniquement dans la version 2.6<o:p></o:p></span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">O</span></span></p>
  </td>
  
  <td width="47" valign="top" style="width:35.45pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[<span class="GramE">0..</span>1]</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">2</span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
  border-top:none;mso-border-top-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">MSA</span></span></p>
  </td>
  
  <td width="312" valign="top" style="width:233.9pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">Message Acknowledgement</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">R</span></span></p>
  </td>
  
  <td width="47" valign="top" style="width:35.45pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[<span class="GramE">1..</span>1]</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">2</span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5;mso-yfti-lastrow:yes">
  <td width="132" valign="top" style="width:98.75pt;border:solid black 1.0pt;
  border-top:none;mso-border-top-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[{ERR}]</span></span></p>
  </td>
  
  <td width="312" valign="top" style="width:233.9pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">Error</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">C </span></span></p>
  </td>
  
  <td width="47" valign="top" style="width:35.45pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;
  padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">[<span class="GramE">0..</span>*]</span></span></p>
  </td>
  
  <td width="57" valign="top" style="width:42.5pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black 1.0pt;mso-border-left-alt:solid black 1.0pt;padding:0cm 0cm 0cm 0cm">
  <p class="TableEntry" style="mso-pagination:widow-orphan lines-together;
  page-break-after:avoid"><span style="mso-bookmark:_Hlk120874764"><span lang="EN-US">2</span></span></p>
  </td>
  
 </tr>
</tbody></table>

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

######## Segment MSH

Le segment MSH reprend une partie des informations du message initial :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="652" style="width:488.8pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="324" colspan="2" valign="top" style="width:242.65pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Message initial</span></b></p>
  </td>
  <td width="328" colspan="2" valign="top" style="width:246.15pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Message d’acquittement</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Champ</span></b></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Description</span></b></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Champ</span></b></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="color:black">Description</span></b></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.3</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Sending Application</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application source du message à acquitter </span></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.5</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Receiving Application</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application destinatrice de l’acquittement</span></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.4</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Sending Facility</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Etablissement source du message à acquitter</span></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.6</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Receiving Facility</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Etablissement destinataire de l’acquittement</span></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.5" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.5</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Receiving Application</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application destinatrice du message à acquitter</span></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.3" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.3</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Sending Application</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application source de l’acquittement</span></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.6" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.6</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Receiving Facility</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Etablissement destinataire du message à acquitter</span></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.4" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.4</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Sending Facility</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Etablissement source de l’acquittement</span></p>
  </td>
 </tr>
 <tr>
  <td width="161" valign="top" style="width:121.05pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.11</span></a><span style="position:relative;top:.5pt">&nbsp;<span style="color:black">- Processing Id</span></span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="162" valign="top" style="width:121.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiant de traitement </span></p>
  </td>
  <td width="149" valign="top" style="width:111.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSH.11" target="_blank"><span style="color:windowtext;position:relative;top:.5pt">MSH.11</span></a><span style="color:black;position:relative;top:.5pt">&nbsp;- Processing Id</span><span style="color:black">&ZeroWidthSpace;</span></p>
  </td>
  <td width="180" valign="top" style="width:134.65pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiant de traitement</span></p>
  </td>
 </tr>
</tbody></table>

Le segment MSH doit être conforme au standard HL7v2.5 ou HL7v2.6 selon
le type du message (ORU ou MDM) :

<table style="border-collapse:collapse;border:none" cellpadding="0" cellspacing="0" border="1" class="MsoTableGrid">
 <tbody><tr style="height:46.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Champ</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Contenu</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Type donnée</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="color:black">Caractère optionnel/obligatoire</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-1</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">|</span><span style="color:black"> séparateur de champ</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-2</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#4472C4">^~\&amp;</span><span style="color:black">&nbsp;:
  séparateur de composant, répétition, caractère d’échappement, séparateur de
  sous-composants</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-3</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application émettrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-4</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Organisation émettrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-5</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Application réceptrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-6</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Organisation réceptrice</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">HD</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-7</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Date/time du message</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">TS</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-9</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Type du message, selon l’évènement du message
  initial&nbsp;:<br>
  </span><span style="color:#0070C0">ACK^R01^ACK</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span lang="EN-US" style="color:#0070C0">ACK^T02^ACK&nbsp; ACK^T04^ACK&nbsp; ACK^T10^ACK.</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span lang="EN-US" style="color:black">&nbsp;</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSG</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-10</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Identifiant du message</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ST</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-11</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Processing Id<br>
  </span><span style="color:#0070C0">P&nbsp;</span>: en production<span style="color:#4472C4"><br>
  </span><span style="color:#0070C0">T&nbsp;</span>: message de test<span style="color:#4472C4"><br>
  </span><span style="color:#0070C0">D&nbsp;</span>: environnement de debug</p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">PT</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-12</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Version du standard<br>
  </span><span style="color:#0070C0">2.5 </span>pour ORU<span style="color:
  #4472C4"><br>
  </span><span style="color:#0070C0">2.6 </span>pour MDM</p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">VID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-17</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">FRA</span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">MSH-18</span></p>
  </td>
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">Jeux de caractères, valeurs possibles&nbsp;:</span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:#0070C0">UNICODE UTF-8 </span>ou <span style="color:#0070C0">8859/15
  </span><span style="color:#4472C4"><br>
  <br>
  </span></p>
  </td>
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">ID</span></p>
  </td>
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="color:black">R</span></p>
  </td>
 </tr>
</tbody></table>

######## Segment MSA
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="170" valign="top" style="width:127.35pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Champ requis
  </span></b></span><span style="mso-bookmark:_Hlk120874764"></span><span style="mso-bookmark:_Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt"><o:p></o:p></span></b></span></p>
  </td>
  
  <td width="480" valign="top" style="width:359.75pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Contenu</span></b></span><span style="mso-bookmark:_Hlk120874764"></span><span style="mso-bookmark:_Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="170" valign="top" style="width:127.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Hlk120874764"></span><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.1"><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  color:windowtext">MSA.1</span></span></a><span style="mso-bookmark:_Hlk120874764"><span class="cx-body"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"> - <span class="SpellE">Acknowledgment</span> Code</span></span></span><span style="mso-bookmark:_Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
  <td width="480" valign="top" style="width:359.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR">Code d’acquittement du message autorisé&nbsp;:
  <o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l1 level1 lfo5"><span style="mso-bookmark:_Hlk120874764"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;font-family:Symbol;mso-fareast-font-family:
  Symbol;mso-bidi-font-family:Symbol;color:black"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="mso-bidi-font-family:Arial;color:#0070C0">AA </span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-bidi-font-family:Arial;color:black;mso-fareast-language:FR">(Original <span class="GramE">mode:</span> Application <span class="SpellE">Accept</span> - <span class="SpellE">Enhanced</span> mode:</span></span><span style="mso-bookmark:
  _Hlk120874764"><span style="mso-bidi-font-size:10.0pt;mso-fareast-font-family:
  &quot;Times New Roman&quot;;mso-bidi-font-family:Arial;color:black;mso-fareast-language:
  FR"> </span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR">Application <span class="SpellE">acknowledgment</span>:
  <span class="SpellE">Accept</span>) </span></span><span style="mso-bookmark:
  _Hlk120874764"><span style="mso-bidi-font-family:Arial;color:black">: le
  message a été compris et intégré par&nbsp;l’application</span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR"> destinatrice qui prend la
  responsabilité du message et libère ainsi l’application productrice de toute
  obligation de le renvoyer.</span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black"><o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpMiddle" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l1 level1 lfo5"><span style="mso-bookmark:_Hlk120874764"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;font-family:Symbol;mso-fareast-font-family:
  Symbol;mso-bidi-font-family:Symbol;color:black"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="mso-bidi-font-family:Arial;color:#0070C0">AE </span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR">(</span></span><span style="mso-bookmark:
  _Hlk120874764"><span style="mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-bidi-font-family:Arial;color:black;mso-fareast-language:FR">Original <span class="GramE">mode:</span> Application <span class="SpellE">Error</span> - <span class="SpellE">Enhanced</span> mode: Application <span class="SpellE">acknowledgment</span>:
  <span class="SpellE">Error</span>) </span></span><span style="mso-bookmark:
  _Hlk120874764"><span style="mso-bidi-font-family:Arial;color:black">: le
  message contient des erreurs de syntaxe.&nbsp;&nbsp;</span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-bidi-font-family:Arial;color:black">&nbsp;</span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black"><o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l1 level1 lfo5"><span style="mso-bookmark:_Hlk120874764"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;font-family:Symbol;mso-fareast-font-family:
  Symbol;mso-bidi-font-family:Symbol;color:black;mso-fareast-language:FR"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:#0070C0;mso-fareast-language:FR">AR </span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR">(Original <span class="GramE">mode:</span>
  Application <span class="SpellE">Reject</span> - <span class="SpellE">Enhanced</span>
  mode: Application <span class="SpellE">acknowledgment</span>: <span class="SpellE">Reject</span>)  : le message est rejeté pour une raison circonstancielle.
  Il peut être réémis plus tard.&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes">
  <td width="170" valign="top" style="width:127.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Hlk120874764"></span><a href="https://hl7-definition.caristix.com/v2/HL7v2.8/Fields/MSA.2"><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  color:windowtext">MSA.2</span></span></a><span style="mso-bookmark:_Hlk120874764"><span class="cx-body"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"> - Message Control Id</span></span></span><span style="mso-bookmark:
  _Hlk120874764"><b><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
  <td width="480" valign="top" style="width:359.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
  color:black;mso-fareast-language:FR">Rappel l’identifiant du message acquitté
  correspondant au champ MSH.10 du message initial.</span></span><span style="mso-bookmark:_Hlk120874764"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"> </span></span><span style="mso-bookmark:
  _Hlk120874764"><span style="font-size:11.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment ERR

Ce segment est utilisé au niveau des messages d'acquittement dans le cas
où le champ MSA-1 prend la valeur AE (Application error) ou AR
(Application reject).

Le tableau ci-dessous liste les champs à renseigner pour le segment
ERR :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="699" style="width:524.25pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:23.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;
  height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Champ<o:p></o:p></span></p>
  </td>
  <td width="283" valign="top" style="width:212.6pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Contenu<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Type donnée<o:p></o:p></span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:23.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Caractère optionnel/obligatoire<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">ERR-2<o:p></o:p></span></p>
  </td>
  <td width="283" valign="top" style="width:212.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black">Localisation
  de l’erreur dans le cas d’une erreur de syntaxe du message initial.<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">ERL<o:p></o:p></span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">O<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">ERR-3<o:p></o:p></span></p>
  </td>
  <td width="283" valign="top" style="width:212.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt">Code erreur HL7 dont les valeurs sont à
  prendre dans la table HL7 0357 (nom symbolique <span class="SpellE">messageErrorCondition</span>)<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">CWE<o:p></o:p></span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">R<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3;mso-yfti-lastrow:yes">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">ERR-4<o:p></o:p></span></p>
  </td>
  <td width="283" valign="top" style="width:212.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt">Sévérité de l’erreur dont les valeurs sont
  à prendre dans la table HL7 0516 (nom symbolique <span class="SpellE">errorSeverity</span>)<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:2.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">ID<o:p></o:p></span></p>
  </td>
  <td width="246" valign="top" style="width:184.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">R<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>
  
######## Exemple

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

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="671" style="width:503.25pt;margin-left:-14.45pt;border-collapse:collapse;
 border:none;mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="212" valign="top" style="width:158.65pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Flux métier</span></b><b><span style="mso-bidi-font-size:
  10.0pt"><o:p></o:p></span></b></p>
  </td>
  <td width="165" valign="top" style="width:124.0pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-themecolor:text1">Evènement déclenchant au niveau du GESTIONNAIRE<o:p></o:p></span></b></p>
  </td>
  <td width="294" valign="top" style="width:220.6pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><b><span style="mso-bidi-font-size:10.0pt;color:black;
  mso-color-alt:windowtext">Message métier HL7</span></b><b><span style="mso-bidi-font-size:10.0pt"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="212" valign="top" style="width:158.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">AccuseMetierReceptionDMP</span></span><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&nbsp;: Accusé de réception de(s) document(s) par le DMP.</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="165" valign="top" style="width:124.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Réception du retour du DMP (<span class="SpellE">Provide</span> And <span class="SpellE">Register</span> Document Set-b <span class="SpellE">Response</span>)<o:p></o:p></span></p>
  </td>
  <td width="294" valign="top" style="width:220.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l10 level1 lfo14"><!--[if !supportLists]--><span style="mso-bidi-font-size:9.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">ZAM&nbsp;:
  L’évènement utilisé sera le Z01<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">«&nbsp;Accusé de réception DMP&nbsp;»<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">à</span><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"> ZAM^Z01^ZAM_Z01<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="212" valign="top" style="width:158.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="pf0"><span class="SpellE"><span style="font-size:10.0pt;font-family:
  &quot;Arial&quot;,sans-serif;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">AccuseMetierReceptionMSS</span></span><span style="font-size:10.0pt;
  font-family:&quot;Arial&quot;,sans-serif;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&nbsp;</span><span style="mso-bidi-font-size:9.0pt;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold">: </span><span class="cf01"><span style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:
  &quot;Yu Gothic Light&quot;;mso-fareast-theme-font:major-fareast;color:black;
  mso-themecolor:text1">Accusé de réception de la demande par le serveur de messagerie
  du destinataire MSSanté</span></span><span style="font-size:10.0pt;
  font-family:&quot;Arial&quot;,sans-serif;color:black;mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="165" valign="top" style="width:124.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Réception du message DSN (RFC 3461 à 3464 et 6522) <o:p></o:p></span></p>
  </td>
  <td width="294" valign="top" style="width:220.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l10 level1 lfo14"><!--[if !supportLists]--><span style="mso-bidi-font-size:9.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">ZAM : L’évènement
  utilisé sera le Z02 <o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">«&nbsp;Accusé de réception MSSanté&nbsp;»<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">à</span><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"> ZAM^Z02^ZAM_Z01</span><b style="mso-bidi-font-weight:normal"><u><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></u></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3;mso-yfti-lastrow:yes">
  <td width="212" valign="top" style="width:158.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span class="SpellE"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:
  text1;mso-bidi-font-weight:bold">AccuseMetierLectureMSS</span></span><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&nbsp;: Accusé de lecture du courriel (traitement automatique du
  courriel ou lecture du courriel par un utilisateur dans sa boîte aux lettres)</span><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></p>
  </td>
  <td width="165" valign="top" style="width:124.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Réception du courriel MDN (RFC 8098)<o:p></o:p></span></p>
  </td>
  <td width="294" valign="top" style="width:220.6pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:0cm;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:normal;mso-list:l10 level1 lfo14"><!--[if !supportLists]--><span style="mso-bidi-font-size:9.0pt;mso-fareast-font-family:Arial;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">ZAM : L’évènement
  utilisé sera le Z03 <o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">«&nbsp;Accusé de lecture&nbsp;MSSanté »<o:p></o:p></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bidi-font-size:9.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">à</span><span style="mso-bidi-font-size:9.0pt;
  color:black;mso-themecolor:text1;mso-bidi-font-weight:bold"> ZAM^Z03^ZAM_Z01<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

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

######## Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z01^ZAM_Z01`.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:46.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;
  height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Contenu<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Type
  donnée<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Caractère
  optionnel/obligatoire<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">|</span></span><span style="mso-bookmark:
  _Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"> séparateur de champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">^~\&amp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">&nbsp;: séparateur de composant,
  répétition, caractère d’échappement, séparateur de sous-composants<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-3<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-6<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-7<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Date/time du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">TS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-9<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Type du message&nbsp;: </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">ZAM^Z01^ZAM_Z01</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSG<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-10<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:black;mso-themecolor:text1">Processing</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"> Id<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">P&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">: en production<span style="color:#4472C4;
  mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">T&nbsp;</span>: message de test<span style="color:#4472C4;mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">D&nbsp;</span>: environnement de <span class="SpellE">debug</span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">PT<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-12.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du standard<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">2.6 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">VID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-17<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">FRA</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:13">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-18<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Jeux de caractères, valeurs
  possibles&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">UNICODE UTF-8 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">ou <span style="color:#0070C0">8859/15 </span><span style="color:#4472C4;mso-themecolor:accent5"><br style="mso-special-character:
  line-break">
  <!--[if !supportLineBreakNewLine]--><br style="mso-special-character:line-break">
  <!--[endif]--></span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:14">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du présent volet du CI_SIS&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">2.1<span style="mso-spacerun:yes">&nbsp; </span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><br style="mso-special-character:line-break">
  <!--[if !supportLineBreakNewLine]--><br style="mso-special-character:line-break">
  <!--[endif]--></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:15;mso-yfti-lastrow:yes">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du profil de message&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0;mso-bidi-font-weight:bold">CISIS_CDA_HL7_V2</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">IS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment OBX portant le statut de d'accusé de réception

Le premier segment OBX renseigne le statut de l'accusé de réception :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment OBX&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro de séquence du
  segment<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">1</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-2&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Value Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">CWE </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">(<span class="SpellE">Coded</span> <span class="SpellE">with</span>
  Exceptions)<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-3&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">ACK_RECEPTION_DMP<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Text<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Accusé de réception DMP</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name of Coding system<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0;mso-fareast-language:FR">AckMetierZAM</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Sub</span>-ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Indiquer
  l’identifiant du message (ORU/MDM) ayant transmis le document</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Value<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Code&nbsp;: <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Statut de
  l’accusé de réception - </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial">Table HL7 :
  0136&nbsp;<span style="color:black;mso-themecolor:text1">:<o:p></o:p></span></span></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">Y </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Succès <o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">N </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Erreur<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name Of Coding System<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur fixée à
  «&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">»&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment ERR

Si une erreur intervient lors du dépôt du document sur le DMP, ce
segment contient sa description.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment ERR&nbsp;: Usage&nbsp;= <span class="SpellE">Conditional</span> / Cardinalité&nbsp;= [<span class="GramE">0..</span>1]
  (Requis si le champ 5 du premier OBX prend la valeur N)<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Hl7 <span class="SpellE">Error</span> Code<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">207^Application
  <span class="SpellE">error^messageErrorCondition</span></span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Severity</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span lang="EN-GB" style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-ansi-language:EN-GB;
  mso-bidi-font-weight:bold">Error, Fatal Error, Information, Warning<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Application <span class="SpellE">Error</span> Code (CWE)<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Code erreur de DMP<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"> Utiliser les codes et
  libellés de codes de l’annexe A7-1 «&nbsp;Liste des codes d’erreurs&nbsp;» de
  la spécification «&nbsp;<a href=https://industriels.sesam-vitale.fr>Service DMP intégré aux LPS » v.2.10.0</a><o:p></o:p></sup></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Code^libellé</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold"> du <span class="SpellE">code<span style="color:#0070C0">^</span><span class="cf01"><span style="mso-ansi-font-size:10.0pt;mso-bidi-font-size:10.0pt;
  font-family:&quot;Arial&quot;,sans-serif;color:#0070C0;mso-bidi-font-weight:normal">DMP_ERROR_CODE</span></span></span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
 </tr>
</tbody></table>

###### Contraintes à appliquer au message ZAM^Z02^ZAM_Z01 -- Accusé de réception MSSanté

######## Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z02^ZAM_Z01`.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:46.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;
  height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Contenu<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Type
  donnée<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Caractère
  optionnel/obligatoire<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">|</span></span><span style="mso-bookmark:
  _Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"> séparateur de champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">^~\&amp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">&nbsp;: séparateur de composant,
  répétition, caractère d’échappement, séparateur de sous-composants<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-3<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-6<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-7<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Date/time du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">TS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-9<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Type du message&nbsp;: </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">ZAM^Z02^ZAM_Z01</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSG<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-10<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:black;mso-themecolor:text1">Processing</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"> Id<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">P&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">: en production<span style="color:#4472C4;
  mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">T&nbsp;</span>: message de test<span style="color:#4472C4;mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">D&nbsp;</span>: environnement de <span class="SpellE">debug</span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">PT<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-12.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du standard<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">2.6 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">VID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-17<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">FRA</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:13">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-18<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Jeux de caractères, valeurs
  possibles&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">UNICODE UTF-8 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">ou <span style="color:#0070C0">8859/15 </span><span style="color:#4472C4;mso-themecolor:accent5"><br style="mso-special-character:
  line-break">
  <!--[if !supportLineBreakNewLine]--><br style="mso-special-character:line-break">
  <!--[endif]--></span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:14">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du présent volet du CI_SIS&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">2.1<span style="mso-spacerun:yes">&nbsp; </span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:15;mso-yfti-lastrow:yes">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du profil de message&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0;mso-bidi-font-weight:bold">CISIS_CDA_HL7_V2</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">IS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment OBX portant le statut de d'accusé de réception

Le premier segment OBX renseigne le statut de l'accusé de réception
MSSanté :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment OBX&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro de séquence du
  segment<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">1</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-2&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Value Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">CWE</span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-3&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">ACK_RECEPTION_MSS<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Text<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Accusé de réception MSSanté<span style="mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name of Coding system<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0;mso-fareast-language:FR">AckMetierZAM</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Sub</span>-ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Indiquer
  l’identifiant du message (ORU/MDM) ayant transmis le document</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Value<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Code&nbsp;: <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Statut de
  l’accusé de réception </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial">- Table HL7 :
  0136&nbsp;<span style="color:black;mso-themecolor:text1">:<o:p></o:p></span></span></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">Y </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Succès <o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">N </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Erreur<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name Of Coding System<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur fixée à
  «&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">»&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment OBX portant les informations du destinataire MSSanté

Le deuxième segment OBX renseigne les informations du destinataire du
courriel MSSanté :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment OBX&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro de séquence du
  segment<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">2</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-2&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Value Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">XTN</span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-3&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">DESTINATAIRE_MSS</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Text<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Destinataire MSSanté<span style="mso-bidi-font-weight:bold"><o:p></o:p></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name of Coding system<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0;mso-fareast-language:FR">AckMétierZAM</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-4 (optionnel)<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Sub</span>-ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Indiquer
  l’identifiant du destinataire</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Value<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Telecommunication</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"> Equipment Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">X.400 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">(X</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-weight:bold">.400 <span class="GramE">email</span> <span class="SpellE">address</span>)</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Communication <span class="SpellE">Address</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Intégrer
  l’adresse MSSanté du destinataire<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur fixée à
  «&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">»&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment ERR

Si une erreur intervient lors de la distribution du ou des document(s)
par MSSanté dans le serveur de messagerie du destinataire MSSanté, ce
segment contient sa description.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment ERR&nbsp;: Usage&nbsp;= <span class="SpellE">Conditional</span> / Cardinalité&nbsp;= [<span class="GramE">0..</span>1]
  (Requis si le champ 5 du premier OBX prend la valeur N)<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Hl7 <span class="SpellE">Error</span> Code<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">207^Application
  <span class="SpellE">error^messageErrorCondition</span></span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#4472C4;
  mso-themecolor:accent5"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Severity</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span lang="EN-GB" style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-ansi-language:EN-GB;
  mso-bidi-font-weight:bold">Error, Fatal Error, Information, Warning<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Application <span class="SpellE">Error</span> Code<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Code erreur de
  MSSanté. Cf </span></span><span style="mso-bookmark:_Toc23346674"></span><a href="error-codes.html#table--smtperrorcode-"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial">Table « SMTPERRORCODE »</span></span></a><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"> <o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Code <span class="SpellE">SMTP^libellé</span> du <span class="SpellE">code<span style="color:#0070C0">^</span><span style="color:#0070C0;mso-bidi-font-weight:
  normal">SMTPERRORCODE</span></span></span></span><span style="mso-bookmark:
  _Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:
  Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

###### Contraintes à appliquer au message ZAM^Z03^ZAM_Z01 -- Accusé de lecture MSSanté 

######## Segment MSH

Le segment MSH doit être conforme au standard HL7v2.6. Dans le cadre de
ces spécifications, le champ MSH-9 « Message Type » prend la valeur
`ZAM^Z03^ZAM_Z01`.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:46.5pt">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;
  height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Contenu<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Type
  donnée<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:background1;
  mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt;height:46.5pt">
  <p class="MsoNormal" align="center" style="margin-bottom:0cm;text-align:center;
  line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1">Caractère
  optionnel/obligatoire<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">|</span></span><span style="mso-bookmark:
  _Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"> séparateur de champ<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5">^~\&amp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">&nbsp;: séparateur de composant,
  répétition, caractère d’échappement, séparateur de sous-composants<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-3<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation émettrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Application réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-6<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Organisation réceptrice<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">HD<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-7<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Date/time du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">TS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-9<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Type du message&nbsp;: </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">ZAM^Z03^ZAM_Z01</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSG<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  <span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-10<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du message<o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:black;mso-themecolor:text1">Processing</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"> Id<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">P&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">: en production<span style="color:#4472C4;
  mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">T&nbsp;</span>: message de test<span style="color:#4472C4;mso-themecolor:accent5"><br>
  </span><span style="color:#0070C0">D&nbsp;</span>: environnement de <span class="SpellE">debug</span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">PT<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-12.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du standard<br>
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0">2.6 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">VID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-17<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">FRA</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:13">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-18<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Jeux de caractères, valeurs
  possibles&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">UNICODE UTF-8 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt">ou <span style="color:#0070C0">8859/15 </span><span style="color:#4472C4;mso-themecolor:accent5"><br style="mso-special-character:
  line-break">
  <!--[if !supportLineBreakNewLine]--><br style="mso-special-character:line-break">
  <!--[endif]--></span><span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:14">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Version du présent volet du CI_SIS&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#0070C0">2.1<span style="mso-spacerun:yes">&nbsp; </span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">ST<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:15;mso-yfti-lastrow:yes">
  <td width="94" valign="top" style="width:70.65pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">MSH-21.2<o:p></o:p></span></span></p>
  </td>
  
  <td width="196" valign="top" style="width:147.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">Identifiant du profil de message&nbsp;:<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="font-size:9.0pt;mso-bidi-font-family:
  Arial;color:#0070C0;mso-bidi-font-weight:bold">CISIS_CDA_HL7_V2</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
  <td width="87" valign="top" style="width:65.45pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">IS<o:p></o:p></span></span></p>
  </td>
  
  <td width="161" valign="top" style="width:120.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1">R<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment OBX portant le statut de d'accusé de lecture MSSanté

Le premier segment OBX renseigne le statut de l'accusé de lecture :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment OBX&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro de séquence du
  segment<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">1</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-2&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Value Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">CWE</span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-3&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">ACK_LECTURE_MSS</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Text<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Accusé de lecture</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name of Coding system<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0;mso-fareast-language:FR">AckMetierZAM</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Sub</span>-ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Indiquer l’identifiant
  du message (ORU/MDM) ayant transmis le document</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Value<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Code&nbsp;: <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Statut de
  l’accusé de lecture </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial">- Table HL7 :
  0136&nbsp;<span style="color:black;mso-themecolor:text1">:<o:p></o:p></span></span></span></p>
  <p class="MsoListParagraphCxSpFirst" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">Y </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(Yes)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Succès <o:p></o:p></span></span></p>
  <p class="MsoListParagraphCxSpLast" style="margin-top:0cm;margin-right:0cm;
  margin-bottom:6.0pt;margin-left:18.0pt;mso-add-space:auto;text-indent:-18.0pt;
  line-height:115%;mso-list:l2 level1 lfo15"><span style="mso-bookmark:_Toc23346674"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.0pt;line-height:115%;mso-fareast-font-family:
  Arial;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:#0070C0">N </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">(No)
  </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:
  10.0pt;line-height:115%;font-family:Wingdings;mso-fareast-font-family:Wingdings;
  mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  line-height:115%;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">
  Erreur<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name Of Coding System<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span class="GramE"><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">expandedYes</span></span><span style="font-size:9.0pt;mso-bidi-font-family:Arial;color:#0070C0">-NoIndicator</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur fixée à
  «&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">»&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment OBX portant les informations du lecteur

Le deuxième segment OBX renseigne les informations du lecteur du
courriel MSSanté :

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment OBX&nbsp;: Usage&nbsp;= <span class="SpellE">Required</span> / Cardinalité&nbsp;= [<span class="GramE">1..</span>1]<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-1<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Set Id - <span class="SpellE">Obx</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">Numéro de séquence du
  segment<o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">2</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-2&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Value Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">XTN</span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-3&nbsp;<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.1&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Identifier <o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">LECTEUR_MSS</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.2&nbsp;:<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Text<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0">Lecteur du courriel MSSanté</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#4472C4;mso-themecolor:accent5;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-3.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Name of Coding system<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;color:#0070C0;mso-fareast-language:FR">AckMetierZAM</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-4 (optionnel)<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Sub</span>-ID<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Indiquer
  l’identifiant du professionnel de santé</span></span><span style="mso-bookmark:
  _Toc23346674"><span style="mso-bidi-font-size:10.0pt;color:black;mso-themecolor:
  text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation Value<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Toc23346674"></span>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Telecommunication</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"> Equipment Type<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">X.400 </span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;mso-bidi-font-weight:bold">(X</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-weight:bold">.400 <span class="GramE">email</span> <span class="SpellE">address</span>)</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&gt; OBX-5.4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Communication <span class="SpellE">Address</span><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Intégrer
  l’adresse de la BAL qui a lu le courriel.<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">OBX-11<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Observation <span class="SpellE">Result</span> Status<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">Valeur fixée à
  «&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:#0070C0">F&nbsp;</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1">»&nbsp;<o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

######## Segment ERR

Si une erreur intervient lors du traitement de la demande réceptionnée
par le destinataire, ce segment contient sa description.

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="680" style="width:510.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="680" colspan="3" valign="top" style="width:510.05pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Composition du segment ERR&nbsp;: Usage&nbsp;= <span class="SpellE">Conditional</span> / Cardinalité&nbsp;= [<span class="GramE">0..</span>1]
  (Requis si le champ 5 du premier OBX prend la valeur N)<o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  background:#D9D9D9;mso-background-themecolor:background1;mso-background-themeshade:
  217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Champ requis&nbsp;:<o:p></o:p></span></b></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Description&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;background:#D9D9D9;mso-background-themecolor:
  background1;mso-background-themeshade:217;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Valeur&nbsp;: <o:p></o:p></span></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 3<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Hl7 <span class="SpellE">Error</span> Code<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:#0070C0;mso-bidi-font-weight:bold">207^Application
  <span class="SpellE">error^messageErrorCondition</span></span></span><span style="mso-bookmark:_Toc23346674"><b style="mso-bidi-font-weight:normal"><sup><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial"><o:p></o:p></span></sup></b></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 4<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">Severity</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span lang="EN-GB" style="mso-bidi-font-size:
  10.0pt;mso-bidi-font-family:Arial;color:#0070C0;mso-ansi-language:EN-GB;
  mso-bidi-font-weight:bold">Error, Fatal Error, Information, Warning<o:p></o:p></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4;mso-yfti-lastrow:yes">
  <td width="179" valign="top" style="width:134.35pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">ERR - 5<o:p></o:p></span></span></p>
  </td>
  
  <td width="179" valign="top" style="width:134.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Application <span class="SpellE">Error</span> Code (CWE)<o:p></o:p></span></span></p>
  </td>
  
  <td width="322" valign="top" style="width:241.35pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1">Sélection d’un code erreur dans la table HL70533 (nom
  symbolique&nbsp;: <span class="SpellE">applicationErrorCode</span>)<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;font-family:Wingdings;mso-fareast-font-family:
  Wingdings;mso-bidi-font-family:Wingdings;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">à</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;color:black;
  mso-themecolor:text1;mso-bidi-font-weight:bold"> Utiliser les codes et
  libellés de <a href="error-codes.html#codes-erreurs-de-laccus%C3%A9-m%C3%A9tier-de-lecturetraitement-de-la-demande">Codes erreurs de l’accusé métier de lecture/traitement de la demande</a>.<sup><o:p></o:p></sup></span></span></p>
  <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal;tab-stops:
  center 115.25pt"><span style="mso-bookmark:_Toc23346674"><span class="SpellE"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold">Code^libellé</span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;mso-bidi-font-family:Arial;mso-bidi-font-weight:
  bold"> du code^</span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt"> <span class="SpellE"><span style="color:
  #0070C0">applicationErrorCondition</span></span></span></span><span style="mso-bookmark:_Toc23346674"><span style="mso-bidi-font-size:10.0pt;
  mso-bidi-font-family:Arial;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold"><o:p></o:p></span></span></p>
  </td>
  
 </tr>
</tbody></table>

Seules les erreurs de niveau applicatif du traitement automatique sur le document au niveau du destinataire final sont remontées au travers du courriel MDN et réceptionnées par le GESTIONNAIRE (la PFI expéditrice).
Les erreurs de type technique (erreurs de syntaxe du message HL7) sont généralement traitées localement, côté du destinataire, par une des intervenants techniques. Dans ces conditions, le segment ERR-3 prend la valeur 207 et le segment ERR-5 contient l'erreur applicative remontée au
 travers du courriel MDN. Le message HL7 `ZAM^Z03^ZAM_Z01` est généré ple GESTIONNAIRE à partir des informations contenues dans le courriel MDN
(cf structure du MDN -- Message Disposition Notification) décrit en Annexe 4 du volet « [Transmission au LPS d'un document CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) ».

##### Message d'acquittement technique des accusés métiers

Le message d'acquittement est identique à celui spécifié dans la [partie dédiée](profils-messages.html#le-message-dacquittement-du-message-hl7v2), à l'exception du champ MSH-9 qui prend la valeur `ACK^Z01^ACK` ou `ACK^Z02^ACK` ou `ACK^Z03^ACK` selon l'évènement du message initial.
