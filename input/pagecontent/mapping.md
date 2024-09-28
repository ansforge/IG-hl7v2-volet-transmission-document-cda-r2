### Mapping VIHF


Ce mapping permet d'indiquer comment constiure le VIHF à partir du message HL7 V2 et du CDA

| Champs du VIHF  | Commentaire          | Provenance de la donnée |
| :--------------- |:---------------| -----|
| //Assertion/ds:Signature |   Signature XML-DSIG avec le certificat de cachet de la structure de soinsMode EJ       |  Certificat|
| //Assertion/Issuer | DN du certificat de cachet utilisé pour signer l’assertion de la structure de soins           |   Certificat|
| //Assertion/Issuer/@Format | Constante :"urn:oasis:names:tc:SAML:1.1:nameidformat:X509SubjectName"   |     |
| Identifiant_Structure | Struct_IdNat de la structure de soins  |    PRT-8.7 (PRT-4 = 'SB^Send by^participation') | 
| Secteur_Activite| Fourni par le LPS <br> valeur de  [JDV_J61-HealthcareFacilityTypeCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J61-HealthcareFacilityTypeCode-DMP.html) | <span style="color:red"> Valeur non présente dans le message et le CDA   </span> |
| //Assertion/Subject/NameID| Fourni par le LPS <br>Pour un utilisateur humain : Identifiant du professionnel <br> Pour les traitements automatisés : Identifiant de la personne responsable du traitement|  PRT-5.1  (PRT-4 = 'SB^Send by^participation') |
| urn:oasis:names:tc:xspa:1.0:subject:subject-id| Pour un utilisateur humain : Nom, Prénom et Service de l’utilisateur <br> Pour les traitements automatisés : Nom du logiciel, Nom du modèle et Service |   PRT-5.2  et PRT-5.3   (PRT-4 = 'SB^Send by^participation')  <br> <span style="color:red">Service de l'utilisateur non présent : Ajout du champ PRT-9   </span>|
| urn:oasis:names:tc:xacml:2.0:subject:role| 1re occurrence obligatoire  |    <br> <span style="color:red">Information non présente : <br> - SI IDNATPS : Appel de l'annuaire (avec le problème d'un PS avec plusieurs exercice ) <br>- Sinon : Appel de l'annuaire interne de l'etablissement  <br> A priori pas type de donnée non disponible dans le champ PRT </span>|
| urn:oasis:names:tc:xacml:2.0:subject:role| 2e occurrence uniquement et obligatoirement pour les médecins  et pharmaciens|    <br> <span style="color:red">Information non présente : <br> - SI IDNATPS : Appel de l'annuaire  (avec le problème d'un PS avec plusieurs savoir faire ) <br>- Sinon : Appel de l'annuaire interne de l'etablissement  <br> A priori pas type de donnée non disponible dans le champ PRT </span>|
| urn:oasis:names:tc:xacml:2.0:subject:role| Rôle - 3e occurrence obligatoire pour les professionnels caractérisés par leur rôle. Non requise pour les autres professionnels.|    <br> <span style="color:red">Information non présente : <br> - SI IDNATPS : Appel de l'annuaire <br>- Sinon : Appel de l'annuaire interne de l'etablissement  <br> A priori pas type de donnée non disponible dans le champ PRT </span>|
| urn:oasis:names:tc:xacml:2.0:subject:role |Genre d’activité -4e occurrence facultative pour les professionnels caractérisés par leur rôle. Non renseignée pour les autres professionnels|    <br> <span style="color:red">Information non présente : <br> - SI IDNATPS : Appel de l'annuaire <br>- Sinon : Appel de l'annuaire interne de l'etablissement  <br> A priori pas type de donnée non disponible dans le champ PRT </span>|
| //Assertion/AuthnStatement/AuthnContext/AuthnContextClassRef | Prendre la valeur la plus appropriée parmi les valeurs possibles indiquées dans le document http://docs.oasis-open.org/security/saml/v2.0/samlauthn-context-2.0-os.pdf <br>La valeur utilisée doit être cohérente avec le mode d’authentification locale de l’utilisateur dans le LPS | <span style="color:red"> Valeur non présente dans le message et le CDA   </span>    |
| //Assertion/@xmnls| Constante :"urn:oasis:names:tc:SAML:2.0:assertion" |   |
| //Assertion/@ID| identifiant unique de l’assertion |   |
| //Assertion/@IssueInstant| Date et heure d’émission de l’assertion SAML|   |
| //Assertion/AuthnStatement/@AuthnInstant| Date/Heure de connexion de l’utilisateur dans le système source|   |
| //Assertion/Conditions/AudienceRestriction| Ne pas renseigner|   |
| //Assertion/Conditions/@NotBefore| Facultatif|   |
| //Assertion/Conditions/@NotAfter| Facultatif|   |
| VIHF_Version| Constante : "4.0"|   |
| Authentification_Mode| Constante : "INDIRECTE"|   |
| urn:oasis:names:tc:xacml:2.0:resource:resource-id| INS du patient| PID-3  |
| Ressource_URN| Constante : "urn:dmp"|  |
| urn:oasis:names:tc:xspa:1.0:subject:purposeofuse| code="normal" : pour un accès normal|  |
| urn:oasis:names:tc:xspa:1.0:resource:patient:hl7:confidentiality-code| Obligatoire si la fonctionnalité est activée19 et si demande de connexion secrète au DMP.|  |
| LPS_ID| Facultatif|  |
| LPS_Nom| Nom du LPS qui génère le jeton VIHF|  |
| LPS_Version| N° de version du LPS qui génère le jeton VIHF|  |
| LPS_ID_HOMOLOGATION_DMP| N° d’homologation du LPS.|  |


### Mapping XDS

#### Lot de soummission 

| Metadonnées   | Commentaire          | Contrainte | Provenance de la donnée |
| :--------------- |:---------------|-----| -----|
| authorInstitution| Cette métadonnée représente la structure émettrice du lot de soumission.| requis si connu  |
| authorPerson| Cette métadonnée représente la personne physique ou le système émetteur du lot de soumission.| requis |
| authorRole| Cette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission|  requis si connu|<span style="color:red">Non connu et donnée non présente</span>| 
| authorSpecialty| Cette métadonnée représente la profession éventuellement associée au savoir-faire de l’auteur du lot de soumission pour un auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité de l’auteur du lot de soumission pour un auteur professionnel caractérisé par son rôle| requis si connu  | <span style="color:red"> Non connu et donnée non présente </span>|
| availabilityStatus| Cette métadonnée représente la pertinence d’un lot de soumission| requis si connu | 
| contentTypeCode|Cette métadonnée contient le code correspondant au type d’activité associé à l’événement clinique ayant abouti à la constitution du lot de soumission. JDV_J59-ContentTypeCode-DMP| requis  |  <span style="color:red"> Donnée non présente</span>|
| patientId|Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient tel que défini dans le cadre juridique.| requis  | 
| sourceId|Cette métadonnée représente l’identifiant unique global du système émetteur du lot de soumission.| requis  | 
| submissionTime|Cette métadonnée représente la date et heure de soumission.| requis  | 
| title|Cette métadonnée représente le titre du lot de soumission.| Optionnel  | 
| uniqueId|Identifiant unique global affecté à ce lot de soumission par son créateur.| requis  | 

#### Fiche

| Metadonnées   | Commentaire          | Contrainte | Provenance de la donnée |
| :--------------- |:---------------|-----| -----|
| authorInstitution| Cet attribut représente la structure de l’auteur.| requis si connu  | CDA : author/assignedAuthor/representedOrganization.
| authorPerson| Cet attribut représente l’auteur (humain ou système) ayant contribué au document | requis | CDA : author/assignedAuthor/
| authorRole| Cet attribut représente le rôle fonctionnel joué par l’auteur vis-à-vis du patient lors de la création du document|  requis si connu|  CDA : authorfunctionCode@displayName
| authorSpecialty| Cet attribut représente la profession éventuellement associée au savoir-faire de l’auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité pour l’auteur professionnel caractérisé par son rôle | requis si connu | CDA : author/assignedAuthor/code
| availabilityStatus| Cette métadonnée représente la pertinence de la version de la fiche d’un document JDV_J52-AvailabilityStatus-CISIS| requis si connu | 
| classCode| Cet attribut représente le code de la classe du document   JDV_J57-ClassCode-DMP| requis  | classCode est déduit du CDA (champ code) selon la table de correspondance entre ces deux métadonnées référencée dans les Nomenclatures des Objets de Santé (NOS) : ASS_X04-CorrespondanceType-Classe.
| confidentialityCode| | requis  | Premiere occurence du CDA confidentialityCode <br> les autres occurences du message HL7 V2 OBX-5  avec OBX-3.3="MetaDMPMSS"
| creationTime|Cette métadonnée représente la date et l’heure de la création du document. | requis  |  CDA : effectiveTime@value
| entryUUID| Identifiant unique affecté à la version de la fiche référençant le document | requis  | 
| eventCodeList| Cet attribut contient le code représentant : <br>un évènement documenté ou une pathologie <br>une modalité d’acquisition<br> une région anatomique. | Optionnel  | 
| formatCode| Cet attribut représente le code du format du document JDV_J60-FormatCode-DMP| Requis  |  "application/pdf" pour les CDA N1 <br> Utilisation de l'association https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ConceptMap-ASS-A11-CorresModeleCDA-XdsFormatCode-CISIS.html  pour les CDA N3 
| hash| Cette métadonnée contient le résultat du hachage du document déposé | Requis  | 
| healthcareFacilityTypeCode| Secteur d'activité lié à la prise en charge de la personne, en lien avec le document produit J DV_J61-HealthcareFacilityTypeCode-DMP| Requis  | CDA : componentOf/encompassingEncounter/location/healthCareFacility/code@code
| languageCode| Cette métadonnée représente le code de la langue dans laquelle le document est rédigé. | Requis  |  CDA ; languageCode@Code
| legalAuthenticator| Cette métadonnée représente l’acteur validant le document et prenant la responsabilité du contenu médical de celui-ci.| Requis  | CDA : legalAuthenticator/assignedEntity
| logicalID| | Requis  | 
| mimeType|Cette métadonnée représente le type de contenu du document, défini par le standard MIME. | Requis  | "text/xml" pour un document CDA<br> "application/xslt+xml" pour un document CDA auto-présentable
| patientId|Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient. | Requis  | PID
| practiceSettingCode| Code du contexte de l’acte qui a engendré la création du document| Requis  | CDA : documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/standardIndustryClassCode@code
| referenceIdList| | Optionnel  | 
| repositoryUniqueId| | Requis  | 
| serviceStartTime| Cette métadonnée représente la date de début de l’acte de référence.| Requis  | CDA : documentationOf/serviceEvent/effectiveTime/low@value
| serviceStopTime| Cette métadonnée correspond à la date de fin de l’acte de référence, si connue.| Requis si connu | CDA : documentationOf/serviceEvent/effectiveTime/high@value
| size| Cette métadonnée correspond à la taille du document déposé.| Requis | 
| sourcePatientId| Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) u l’INS, s’il n’y a pas d’identifiant secondaire.| Requis | PID-3
| sourcePatientInfo|Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document | Optionnel | PID
| title| Cette métadonnée représente le titre du document.| Requis | CDA : title
| typeCode| Cet attribut représente le code spécifiant le type du document. | Requis | CDA : code@code
| uniqueId|Identifiant unique affecté au document par son créateur | Requis | CDA : id@root 
| version| | Requis | 

