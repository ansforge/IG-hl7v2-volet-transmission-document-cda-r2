<table>
<tbody>
<tr>
<th>
<p><strong>Acteur</strong></p>
</th>
<th>
<p>CREATEUR</p>
</th>
</tr>
<tr>
<th>
<p><strong>Rôle</strong></p>
</th>
<td >
<p>Envoie les demandes de transmission initiale/remplacement/suppression de document(s) clinique(s) associ&eacute;(s) &agrave; un patient au GESTIONNAIRE, pr&eacute;cise la destination de ce(s) document(s) (DMP et/ou MSSant&eacute;), pr&eacute;cise le cas &eacute;ch&eacute;ant le(s) destinataire(s) du courriel et pr&eacute;cise les m&eacute;tadonn&eacute;es de masquage aux PS et de visibilit&eacute; de(s) document(s) au patient et aux repr&eacute;sentants l&eacute;gaux.</p>
<p> Re&ccedil;oit optionnellement les messages HL7 m&eacute;tier de retour du DMP et/ou MSSant&eacute; (accus&eacute; r&eacute;ception DMP, accus&eacute; r&eacute;ception MSSant&eacute;, accus&eacute; de lecture MSSant&eacute;).</p>
</td>
</tr>
<tr>
<th>
<p><strong>Acteur</strong></p>
</th>
<th>
<p>GESTIONNAIRE</p>
</th>
</tr>
<tr>
<th>
<p><strong>Rôle</strong></p>
</th>
<td>
<p>Re&ccedil;oit et g&egrave;re la demande re&ccedil;ue du CREATEUR.</p>
<p> Le GESTIONNAIRE construit, le cas &eacute;ch&eacute;ant la requ&ecirc;te d&rsquo;alimentation du DMP et/ou le corps de mail, l&rsquo;archive IHE_XDM et le(s) PDF(s) correspondant aux documents CDA de l&rsquo;archive &agrave; transmettre au(x) destinataire(s) du courriel.</p>
<p> Le GESTIONNAIRE r&eacute;ceptionne le retour du DMP et/ou de la MSSant&eacute; et construit, le cas &eacute;ch&eacute;ant, les messages m&eacute;tiers HL7 de r&eacute;ception DMP, r&eacute;ception MSSant&eacute; et de lecture MSSant&eacute; qu&rsquo;il renvoie en direction du CREATEUR.</p>
</td>
</tr>
</tbody>
</table>
