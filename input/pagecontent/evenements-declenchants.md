Les cas d'usages liés à une demande de transmission initiale/remplacement/suppression de document(s) clinique(s) d'un patient sont gérés différemment entre l'ORU et le MDM :

<table>
  <tbody>
    <tr>
      <th>
        <p>Flux métier</p>
      </th>
      <th>
        <p>Message de type ORU</p>
      </th>
      <th>
        <p>Message de type MDM</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>TransmissionDocuments : Demande de transmission initiale de document(s)</p>
      </td>
      <td>
        <p>ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message »</p>
        <p> -&gt; OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]</p>
      </td>
      <td>
        <p>MDM : L'évènement utilisé sera le T02 « Original document notification »</p>
        <p>-&gt; MDM^T02^MDM_T02</p>
        <p>-&gt; OBX-11 = F (Final results; Can only be changed with a corrected result.) [HL7 Tables 0085]</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TransmissionDocuments : Demande de suppression de document(s)</p>
      </td>
      <td>
        <p>ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message »</p>
        <p>-&gt; OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]</p>
      </td>
      <td>
        <p>MDM : L'évènement utilisé sera le T04 « Document status change notification and content »</p>
        <p>-&gt; MDM^T04^MDM_T02</p>
        <p>-&gt; OBX-11 = D (Deletes the OBX record) [HL7 Tables 0085]</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>TransmissionDocuments : Demande de remplacement de document(s)</p>
      </td>
      <td>
        <p>ORU : L'évènement utilisé sera le R01 « Unsolicited Observation Message »</p>
        <p>-&gt; OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]</p>
      </td>
      <td>
        <p>MDM : L'évènement utilisé sera le T10 « Document replacement notification and content »</p>
        <p>-&gt; MDM^T10^MDM_T02</p>
        <p>-&gt; OBX-11 = C (Record coming over is a correction and thus replaces a final result) [HL7 Tables 0085]</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>RéponseTransmissionDocuments </p>
      </td>
      <td>
        <p>Acquittement technique du message HL7 ORU</p>
      </td>
      <td>
        <p>Acquittement technique du message HL7 MDM</p>
      </td>
    </tr>
  </tbody>
</table>