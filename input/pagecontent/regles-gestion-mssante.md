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

**Lien entre l'EN-TETE CDA et les métadonnées XDS**

Une annexe disponible sur le CI-SIS indique la correspondance entre les données d'en-tête d'un document CDA définies dans le volet structuration minimale des documents de Santé et les métadonnées XDS définies dans le [volet partage de documents de Santé](https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_service_volet-partage-documents-sante_v1.15.pdf).

-   **[Annexe -- Lien Entre l'en-tête CDA et les métadonnées XDS](https://esante.gouv.fr/sites/default/files/media_entity/documents/CI-SIS_ANX_LIENS-CDA-METADONNEES-XDS_V1.6.pdf)**
