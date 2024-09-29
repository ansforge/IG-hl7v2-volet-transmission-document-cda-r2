### Mapping VIHF

style="white-space: normal;"
Ce mapping permet d'indiquer comment constiure le VIHF à partir du message HL7 V2 et du CDA

<table class="table table-bordered">
  <thead>
    <tr>
      <th style="text-align: left">Champs du VIHF</th>
      <th style="text-align: left">Commentaire</th>
      <th>Provenance de la donnée</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: left">//Assertion/ds:Signature</td>
      <td style="text-align: left">Signature XML-DSIG avec le certificat de cachet de la structure de soinsMode EJ</td>
      <td>Certificat</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Issuer</td>
      <td style="text-align: left">DN du certificat de cachet utilisé pour signer l’assertion de la structure de soins</td>
      <td>Certificat</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Issuer/@Format</td>
      <td style="text-align: left">Constante :”urn:oasis:names:tc:SAML:1.1:nameidformat:X509SubjectName”</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">Identifiant_Structure</td>
      <td style="text-align: left">Struct_IdNat de la structure de soins</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> : PRT-8.7 (PRT-4 = ‘SB^Send by^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">Secteur_Activite</td>
      <td style="text-align: left">Fourni par le LPS <br> valeur de  <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J61-HealthcareFacilityTypeCode-DMP.html">JDV_J61-HealthcareFacilityTypeCode-DMP</a></td>
      <td><blockquote class="stu-note">  Valeur non présente dans le message et le CDA   </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Subject/NameID</td>
      <td style="text-align: left">Fourni par le LPS <br>Pour un utilisateur humain : Identifiant du professionnel <br> Pour les traitements automatisés : Identifiant de la personne responsable du traitement</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PRT-5.1  (PRT-4 = ‘SB^Send by^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xspa:1.0:subject:subject-id</td>
      <td style="text-align: left">Pour un utilisateur humain : Nom, Prénom et Service de l’utilisateur <br> Pour les traitements automatisés : Nom du logiciel, Nom du modèle et Service</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PRT-5.2  et PRT-5.3   (PRT-4 = ‘SB^Send by^participation’) </pre> <br> <blockquote class="stu-note"> Service de l’utilisateur non présent : Ajout du champ PRT-9   </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xacml:2.0:subject:role</td>
      <td style="text-align: left">1re occurrence obligatoire
      <br>
        <b>Pour les professionnels :</b>
<br>- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de : <br> -  TRE TRE_G15-ProfessionSante <br> - TRE_G16_ProfessionFormation (Professions en formation (carte CPF))
 <br> <b>Pour les autres : </b>
 <br>- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de : <br> - TRE_A00_ProducteurDocNonPS <br> -  TRE_R95_UsagerTitre <br> - TRE_R94_ProfessionSocial <br> -  TRE_R291_AutreProfession
      </td>
      <td><br> <blockquote class="stu-note"> Information non présente : <br> - SI IDNATPS : Appel de l’annuaire (avec le problème d’un PS avec plusieurs exercice ) <br>- Sinon : Appel de l’annuaire interne de l’etablissement  <br> A priori  type de donnée non disponible dans le champ PRT </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xacml:2.0:subject:role</td>
      <td style="text-align: left">2e occurrence uniquement et obligatoirement pour les médecins  et pharmaciens
     <br>   <b>Pour les médecins :</b>
<br>- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de TRE_R01_EnsembleSavoirFaire_CISIS
 <br> <b>Pour les pharmacines  ; </b> 
 <br>- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de  TRE_G05_SousSectionTableauCNOP     
      </td>
      <td><br> <blockquote class="stu-note"> Information non présente : <br> - SI IDNATPS : Appel de l’annuaire  (avec le problème d’un PS avec plusieurs savoir faire ) <br>- Sinon : Appel de l’annuaire interne de l’etablissement  <br> A priori  type de donnée non disponible dans le champ PRT </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xacml:2.0:subject:role</td>
      <td style="text-align: left">Rôle - 3e occurrence obligatoire pour les professionnels caractérisés par leur rôle. Non requise pour les autres professionnels.
      <br>
      Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de   TRE_R85_RolePriseCharge
      </td>
      <td><br> <blockquote class="stu-note"> Information non présente : <br> - SI IDNATPS : Appel de l’annuaire <br>- Sinon : Appel de l’annuaire interne de l’etablissement  <br> A priori  type de donnée non disponible dans le champ PRT </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xacml:2.0:subject:role</td>
      <td style="text-align: left">Genre d’activité -4e occurrence facultative pour les professionnels caractérisés par leur rôle. Non renseignée pour les autres professionnels
      <br>
          <br>
      Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html">JDV_J65_SubjectRole_DMP</a> avec un codeSystem provenant de :  TRE_R22_GenreActivite 
      </td>
      <td><br> <blockquote class="stu-note"> Information non présente : <br> - SI IDNATPS : Appel de l’annuaire <br>- Sinon : Appel de l’annuaire interne de l’etablissement  <br> A priori  type de donnée non disponible dans le champ PRT </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/AuthnStatement/AuthnContext/AuthnContextClassRef</td>
      <td style="text-align: left">Prendre la valeur la plus appropriée parmi les valeurs possibles indiquées dans le document http://docs.oasis-open.org/security/saml/v2.0/samlauthn-context-2.0-os.pdf <br>La valeur utilisée doit être cohérente avec le mode d’authentification locale de l’utilisateur dans le LPS</td>
      <td><blockquote class="stu-note">  Valeur non présente dans le message et le CDA   </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/@xmnls</td>
      <td style="text-align: left">Constante :”urn:oasis:names:tc:SAML:2.0:assertion”</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/@ID</td>
      <td style="text-align: left">identifiant unique de l’assertion</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/@IssueInstant</td>
      <td style="text-align: left">Date et heure d’émission de l’assertion SAML</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/AuthnStatement/@AuthnInstant</td>
      <td style="text-align: left">Date/Heure de connexion de l’utilisateur dans le système source</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Conditions/AudienceRestriction</td>
      <td style="text-align: left">Ne pas renseigner</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Conditions/@NotBefore</td>
      <td style="text-align: left">Facultatif</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">//Assertion/Conditions/@NotAfter</td>
      <td style="text-align: left">Facultatif</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">VIHF_Version</td>
      <td style="text-align: left">Constante : “4.0”</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">Authentification_Mode</td>
      <td style="text-align: left">Constante : “INDIRECTE”</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xacml:2.0:resource:resource-id</td>
      <td style="text-align: left">INS du patient</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PID-3</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">Ressource_URN</td>
      <td style="text-align: left">Constante : “urn:dmp”</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xspa:1.0:subject:purposeofuse</td>
      <td style="text-align: left">code=”normal” : pour un accès normal</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">urn:oasis:names:tc:xspa:1.0:resource:patient:hl7:confidentiality-code</td>
      <td style="text-align: left">Obligatoire si la fonctionnalité est activée19 et si demande de connexion secrète au DMP.</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">LPS_ID</td>
      <td style="text-align: left">Facultatif</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">LPS_Nom</td>
      <td style="text-align: left">Nom du LPS qui génère le jeton VIHF</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">LPS_Version</td>
      <td style="text-align: left">N° de version du LPS qui génère le jeton VIHF</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">LPS_ID_HOMOLOGATION_DMP</td>
      <td style="text-align: left">N° d’homologation du LPS.</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>


### Mapping XDS

#### Lot de soummission 

<table class="table table-bordered">
  <thead>
    <tr>
      <th style="text-align: left">Metadonnées</th>
      <th style="text-align: left">Commentaire</th>
      <th>Contrainte</th>
      <th>Provenance de la donnée</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: left">authorInstitution</td>
      <td style="text-align: left">Cette métadonnée représente la structure émettrice du lot de soumission.</td>
      <td>requis si connu</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PRT-8.7 (PRT-4 = ‘SB^Send by^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">authorPerson</td>
      <td style="text-align: left">Cette métadonnée représente la personne physique ou le système émetteur du lot de soumission.</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PRT-5 (PRT-4 = ‘SB^Send by^participation’)</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">authorRole</td>
      <td style="text-align: left">Cette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission</td>
      <td>requis si connu</td>
      <td><blockquote class="stu-note"> Non connu et donnée non présente</blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">authorSpecialty</td>
      <td style="text-align: left">Cette métadonnée représente la profession éventuellement associée au savoir-faire de l’auteur du lot de soumission pour un auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité de l’auteur du lot de soumission pour un auteur professionnel caractérisé par son rôle</td>
      <td>requis si connu</td>
      <td><blockquote class="stu-note">  Non connu et donnée non présente </blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">availabilityStatus</td>
      <td style="text-align: left">Cette métadonnée représente la pertinence d’un lot de soumission</td>
      <td>requis si connu</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">contentTypeCode</td>
      <td style="text-align: left">Cette métadonnée contient le code correspondant au type d’activité associé à l’événement clinique ayant abouti à la constitution du lot de soumission.<br> Valeur de <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J59-ContentTypeCode-DMP.html">JDV_J59-ContentTypeCode-DMP</a></td>
      <td>requis</td>
      <td><blockquote class="stu-note">  Donnée non présente</blockquote> </td>
    </tr>
    <tr>
      <td style="text-align: left">patientId</td>
      <td style="text-align: left">Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient tel que défini dans le cadre juridique.</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PID-3</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">sourceId</td>
      <td style="text-align: left">Cette métadonnée représente l’identifiant unique global du système émetteur du lot de soumission.</td>
      <td>requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">submissionTime</td>
      <td style="text-align: left">Cette métadonnée représente la date et heure de soumission.</td>
      <td>requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">title</td>
      <td style="text-align: left">Cette métadonnée représente le titre du lot de soumission.</td>
      <td>Optionnel</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">uniqueId</td>
      <td style="text-align: left">Identifiant unique global affecté à ce lot de soumission par son créateur.</td>
      <td>requis</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>



#### Fiche

<table class="table table-bordered">
  <thead>
    <tr>
      <th style="text-align: left">Metadonnées</th>
      <th style="text-align: left">Commentaire</th>
      <th>Contrainte</th>
      <th>Provenance de la donnée</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: left">authorInstitution</td>
      <td style="text-align: left">Cet attribut représente la structure de l’auteur.</td>
      <td>requis si connu</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :PRT-8.7 (PRT-4 = ‘SB^Send by^participation’)</pre>
        <br><blockquote class="stu-note"> 
        Sur-contrainte par rapport au ci-sis l'authorInstitution de la fihe et du lot doivent être indentique.
        <br>Il faudrait enlever cette regle
        <br>Non possible => CDA : author/assignedAuthor/representedOrganization.
        </blockquote>  </td>
    </tr>
    <tr>
      <td style="text-align: left">authorPerson</td>
      <td style="text-align: left">Cet attribut représente l’auteur (humain ou système) ayant contribué au document</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : author/assignedAuthor</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">authorRole</td>
      <td style="text-align: left">Cet attribut représente le rôle fonctionnel joué par l’auteur vis-à-vis du patient lors de la création du document</td>
      <td>requis si connu</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : authorfunctionCode@displayName</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">authorSpecialty</td>
      <td style="text-align: left">Cet attribut représente la profession éventuellement associée au savoir-faire de l’auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité pour l’auteur professionnel caractérisé par son rôle</td>
      <td>requis si connu</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : author/assignedAuthor/code</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">availabilityStatus</td>
      <td style="text-align: left">Cette métadonnée représente la pertinence de la version de la fiche d’un document JDV_J52-AvailabilityStatus-CISIS</td>
      <td>requis si connu</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">classCode</td>
      <td style="text-align: left">Cet attribut représente le code de la classe du document   JDV_J57-ClassCode-DMP</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b>: classCode est déduit du CDA (champ code) selon la table de correspondance <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ConceptMap-ASS-X04-CorrespondanceType-Classe-CISIS.html">ASS_X04-CorrespondanceType-Classe</a></pre> </td>
    </tr>
    <tr>
      <td style="text-align: left">confidentialityCode</td>
      <td style="text-align: left">&nbsp;</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> ;  Premiere occurence du CDA confidentialityCode <br> 
       <b>HL7V2</b> :  les autres occurences du message HL7 V2 OBX-5  avec OBX-3.3=”MetaDMPMSS”</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">creationTime</td>
      <td style="text-align: left">Cette métadonnée représente la date et l’heure de la création du document.</td>
      <td>requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : effectiveTime@value</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">entryUUID</td>
      <td style="text-align: left">Identifiant unique affecté à la version de la fiche référençant le document</td>
      <td>requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">eventCodeList</td>
      <td style="text-align: left">Cet attribut contient le code représentant : <br>un évènement documenté ou une pathologie <br>une modalité d’acquisition<br> une région anatomique.</td>
      <td>Optionnel</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">formatCode</td>
      <td style="text-align: left">Cet attribut représente le code du format du document JDV_J60-FormatCode-DMP</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : 
      <br> - CDA N1 =>  “application/pdf”  
      <br> - CDA N3 =>  Utilisation de l’association <a href="https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ConceptMap-ASS-A11-CorresModeleCDA-XdsFormatCode-CISIS.html">ASS-A11-CorresModeleCDA-XdsFormatCode-CISIS</a></pre>  </td>
    </tr>
    <tr>
      <td style="text-align: left">hash</td>
      <td style="text-align: left">Cette métadonnée contient le résultat du hachage du document déposé</td>
      <td>Requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">healthcareFacilityTypeCode</td>
      <td style="text-align: left">Secteur d’activité lié à la prise en charge de la personne, en lien avec le document produit J DV_J61-HealthcareFacilityTypeCode-DMP</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : componentOf/encompassingEncounter/location/healthCareFacility/code@code</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">languageCode</td>
      <td style="text-align: left">Cette métadonnée représente le code de la langue dans laquelle le document est rédigé.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : languageCode@Code</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">legalAuthenticator</td>
      <td style="text-align: left">Cette métadonnée représente l’acteur validant le document et prenant la responsabilité du contenu médical de celui-ci.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : legalAuthenticator/assignedEntity</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">logicalID</td>
      <td style="text-align: left">&nbsp;</td>
      <td>Requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">mimeType</td>
      <td style="text-align: left">Cette métadonnée représente le type de contenu du document, défini par le standard MIME.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : 
      <br> - "text/xml” pour un document CDA 
      <br> - “application/xslt+xml” pour un document CDA auto-présentable</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">patientId</td>
      <td style="text-align: left">Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> : PID-3</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">practiceSettingCode</td>
      <td style="text-align: left">Code du contexte de l’acte qui a engendré la création du document</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/standardIndustryClassCode@code</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">referenceIdList</td>
      <td style="text-align: left">&nbsp;</td>
      <td>Optionnel</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">repositoryUniqueId</td>
      <td style="text-align: left">&nbsp;</td>
      <td>Requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">serviceStartTime</td>
      <td style="text-align: left">Cette métadonnée représente la date de début de l’acte de référence.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : documentationOf/serviceEvent/effectiveTime/low@value</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">serviceStopTime</td>
      <td style="text-align: left">Cette métadonnée correspond à la date de fin de l’acte de référence, si connue.</td>
      <td>Requis si connu</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : documentationOf/serviceEvent/effectiveTime/high@value</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">size</td>
      <td style="text-align: left">Cette métadonnée correspond à la taille du document déposé.</td>
      <td>Requis</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">sourcePatientId</td>
      <td style="text-align: left">Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) u l’INS, s’il n’y a pas d’identifiant secondaire.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> : PID-3</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">sourcePatientInfo</td>
      <td style="text-align: left">Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document</td>
      <td>Optionnel</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>HL7V2</b> :  PID</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">title</td>
      <td style="text-align: left">Cette métadonnée représente le titre du document.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : title</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">typeCode</td>
      <td style="text-align: left">Cet attribut représente le code spécifiant le type du document.</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : code@code</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">uniqueId</td>
      <td style="text-align: left">Identifiant unique affecté au document par son créateur</td>
      <td>Requis</td>
      <td><pre class="highlight language-plaintext"  style="white-space: normal;" ><b>CDA</b> : id@root</pre></td>
    </tr>
    <tr>
      <td style="text-align: left">version</td>
      <td style="text-align: left">&nbsp;</td>
      <td>R (Requis), si la transaction de mise à jour des métadonnées (Update document set ITI-57) est utilisée</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>