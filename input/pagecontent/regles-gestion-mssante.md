Ci-dessous la matrice de gestion pour les échanges MSSanté suivant les OBX valorisés. Le tableau présente une liste exhaustive des combinaisons possibles des OBX pour l'échange MSSANTE. Les cas non représentés génèrent un message d'erreur.

<table>
  <tbody>
    <tr>
      <th>
        <p>Balises OBX</p>
      </th>
      <th>
        <p>Echange MSSANTE</p>
      </th>
    </tr>
    <tr>
      <td>
        <p>MASQUE_PS : N</p>
        <p>INVISIBLE_PATIENT : N</p>
        <p>INVISIBLE_REP_LEGAUX : N</p>
        <p>CONNEXION_SECRETE : N</p>
        <p>MODIF_CONF_CODE : N ou Y</p>
        <p>DESTDMP : N ou Y</p>
        <p>DESTMSSANTEPS : Y DESTMSSANTEPAT : Y</p>
        <p>ACK_RECEPTION : N ou Y</p>
        <p>ACK_LECTURE_MSS : N ou Y</p>
      </td>
      <td>
        <p>Envoi du document sur la boite MSSanté du PS/organisation/BAL applicative du destinataire et du Patient</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MASQUE_PS :Y ou N&lt;</p>
        <p>INVISIBLE_PATIENT : Y</p>
        <p>INVISIBLE_REP_LEGAUX : N</p>
        <p>CONNEXION_SECRETE : N</p>
        <p>MODIF_CONF_CODE : N ou Y</p>
        <p>DESTDMP : N ou Y</p>
        <p>DESTMSSANTEPS : Y DESTMSSANTEPAT : N</p>
        <p>ACK_RECEPTION : N ou Y</p>
        <p>ACK_LECTURE_MSS : N ou Y</p>
      </td>
      <td>
        <p>Envoi du document sur la boite MSSanté du PS/organisation/BAL applicative du destinataire</p>
      </td>
    </tr>
    <tr>
      <td>
        <p>MASQUE_PS : Y ou N</p>
        <p>INVISIBLE_PATIENT : N</p>
        <p>INVISIBLE_REP_LEGAUX : N ou Y</p>
        <p>CONNEXION_SECRETE : N</p>
        <p>MODIF_CONF_CODE : N ou Y</p>
        <p>DESTDMP : N</p>
        <p>DESTMSSANTEPS : N DESTMSSANTEPAT : Y</p>
        <p>ACK_RECEPTION : N ou Y</p>
        <p>ACK_LECTURE_MSS : N ou Y</p>
      </td>
      <td>
        <p>Envoi du document sur la boite MSSanté du patient</p>
      </td>
    </tr>
  </tbody>
</table>