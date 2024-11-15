<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="text-align: left">Champs API LPS (MSS)</th>
      <th style="text-align: left">Commentaire</th>
      <th>Provenance de la donnée</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td style="text-align: left">FROM</td>
      <td style="text-align: left">Obligatoire, permet de préciser le courriel de la BAL Applicative</td>
      <td>courriel de la BAL Applicative qui transmet le message</td>
    </tr>
    <tr>
      <td style="text-align: left">SENDER</td>
      <td style="text-align: left">Optionnel, permet de préciser le courriel de l'émetteur initial du message</td>
      <td>Non transmis</td>
    </tr>
    <tr>
      <td style="text-align: left">REPLY TO</td>
      <td style="text-align: left">OOptionnel, permet de préciser le courriel pour répondre au message</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" >Segment optionnel qui permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre. <br><b>HL7V2</b> : PRT-15.4 (PRT-4 = ‘REPLY^Reply To^participation’)</pre></td>
    </tr>
   </tbody>
</table>