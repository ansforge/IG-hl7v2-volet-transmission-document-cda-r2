Les cas d'usages liés à une demande de transmission initiale/remplacement/suppression de document(s) clinique(s) d'un patient sont gérés différemment entre l'ORU et le MDM :

<table>
<tbody>
<tr>
<th>
<p><strong>Flux m&eacute;tier</strong></p>
</th>
<th>
<p><strong>Message de type ORU</strong></p>
</th>
<th>
<p><strong>Message de type MDM</strong></p>
</th>
</tr>
<tr>
<td>
<p>TransmissionDocuments&nbsp;: Demande de transmission initiale de document(s)</p>
</td>
<td width="217">
<p>ORU : L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le R01 &laquo;&nbsp;Unsolicited Observation Message&nbsp;&raquo;</p>

<p>&nbsp;-&gt; OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]</p>
</td>
<td width="217">
<p>MDM&nbsp;: L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le T02&nbsp;&laquo;&nbsp;Original document notification&nbsp;&raquo;</p>
<p>-&gt; <code>MDM^T02^MDM_T02</code></p>
<p>-&gt; OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]</p>
</td>
</tr>
<tr>
<td >
<p>TransmissionDocuments&nbsp;: Demande de suppression de document(s)</p>
</td>
<td >
<p> ORU : L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le R01 &laquo;&nbsp;Unsolicited Observation Message&nbsp;&raquo;</p>
<p>-&gt; OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]</p>
</td>
<td>
<p>MDM&nbsp;: L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le T04&nbsp;&laquo;&nbsp;Document status change notification and content&nbsp;&raquo;</p>
<p>-&gt; <code>MDM^T04^MDM_T02</code></p>
<p>-&gt; OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]</p>
</td>
</tr>
<tr>
<td>
<p>TransmissionDocuments&nbsp;: Demande de remplacement de document(s)</p>
</td>
<td>
<p>ORU : L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le R01 &laquo;&nbsp;Unsolicited Observation Message&nbsp;&raquo;</p>
<p>-&gt; OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]</p>
</td>
<td>
<p> MDM&nbsp;: L&rsquo;&eacute;v&egrave;nement utilis&eacute; sera le T10&nbsp;&laquo;&nbsp;Document replacement notification and content&nbsp;&raquo;</p>
<p>-&gt; <code>MDM^T10^MDM_T02</code><br /> </p>
<p>-&gt; OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]</p>
</td>
</tr>
<tr>
<td >
<p>R&eacute;ponseTransmissionDocuments&nbsp;</p>
</td>
<td >
<p>Acquittement technique du message HL7 ORU</p>
</td>
<td >
<p>Acquittement technique du message HL7 MDM</p>
</td>
</tr>
</tbody>
</table>
