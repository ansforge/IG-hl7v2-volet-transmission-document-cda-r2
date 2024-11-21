<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="text-align: left">Champs message MSS</th>
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
      <td style="text-align: left">Optionnel, permet de préciser le courriel pour répondre au message</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" >Segment optionnel qui permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre. <br><b>HL7V2</b> : PRT-15.4 (PRT-4 = ‘REPLY^Reply To^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">TO</td>
      <td style="text-align: left">Requis, permet de préciser l'adresse MSSanté d'un destinataire</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" >Segment est répétable et requis si le document est échangé via MSSanté. Il contient l'adresse MSSanté d'un destinataire. <br><b>HL7V2</b> : PRT-15.4 (PRT-4 = ‘RCT^Result Copies To^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">Body</td>
      <td style="text-align: left">Texte à intégrer dans le corps du mail à destination des professionnels de santé et/ou du patient via MSSanté. Cette métadonnée est optionnelle</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" >Segment pour indiquer le texte à intégrer dans le corps du mail. <br><b>HL7V2</b> : OBX-5</pre></td>
    </tr>
   </tbody>
</table>