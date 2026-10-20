# Mapping VIHF et XDS - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Mapping VIHF et XDS**

## Mapping VIHF et XDS

Ce mapping permet d’indiquer comment construire le VIHF à partir du message HL7 V2 et du CDA.

### Mapping VIHF pour le DMP

| | | |
| :--- | :--- | :--- |
| //Assertion/ds:Signature | Signature XML-DSIG avec le certificat de cachet de la structure de soins | Certificat |
| //Assertion/Issuer | DN du certificat de cachet utilisé pour signer l’assertion de la structure de soins | Certificat |
| //Assertion/Issuer/@Format | Constante :”urn:oasis:names:tc:SAML:1.1:nameidformat:X509SubjectName” |   |
| Identifiant_Structure | Struct_IdNat de la structure de soins | ```**HL7V2** : PRT-8.10 (PRT-4 = ‘SB^Send by^participation’)``` |
| Secteur_Activite | Fourni par le LPSvaleur de[JDV_J61-HealthcareFacilityTypeCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J61-HealthcareFacilityTypeCode-DMP.html) | Provenance de la donnée :- Paramétrage dans la PFI- Interrogation du DPI- Interrogation de l'annuaire à partir du FINESS```Récupération du FINESS **HL7V2** : PRT-8.10 (PRT-4 = ‘SB^Send by^participation’)``` |
| //Assertion/Subject/NameID | Fourni par le LPSPour un utilisateur humain : Identifiant du professionnelPour les traitements automatisés : Identifiant de la personne responsable du traitement | ```**HL7V2** :PRT-5.1 (PRT-4 = ‘SB^Send by^participation’)``` |
| urn:oasis:names:tc:xspa:1.0:subject:subject-id | Pour un utilisateur humain : Nom, Prénom de l’utilisateurPour les traitements automatisés : Nom du logiciel, Nom du modèle | ```**HL7V2** :PRT-5.2 et PRT-5.3 (PRT-4 = ‘SB^Send by^participation’) ``` |
| urn:oasis:names:tc:xacml:2.0:subject:role | 1re occurrence obligatoire**Pour les professionnels de santé :**- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs[JDV_J65_SubjectRole_DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html)avec un codeSystem provenant de :- TRE TRE_G15-ProfessionSante- TRE_G16_ProfessionFormation (Professions en formation (carte CPF))**Pour les autres : **- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs[JDV_J65_SubjectRole_DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html)avec un codeSystem provenant de :- TRE_A00_ProducteurDocNonPS- TRE_R95_UsagerTitre- TRE_R94_ProfessionSocial- TRE_R291_AutreProfession | Provenance de la donnée :- Interrogation du DPI à partir de l'identifiant du PS- Interogation de l'annuaire (pour les identifiants nationaux)- Valeur "AUTOMATE" quand les autres cas ne sont pas possibles```Récupération de l'identifiant **HL7V2** :PRT-5.1 (PRT-4 = ‘SB^Send by^participation’)``` |
| urn:oasis:names:tc:xacml:2.0:subject:role | 2e occurrence uniquement et obligatoirement pour les médecins et pharmaciens**Pour les médecins :**- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs[JDV_J65_SubjectRole_DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html)avec un codeSystem provenant de TRE_R01_EnsembleSavoirFaire_CISIS**Pour les pharmacines ; **- Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs[JDV_J65_SubjectRole_DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html)avec un codeSystem provenant de TRE_G05_SousSectionTableauCNOP | Provenance de la donnée :- Interogation du DPI à partir de l'identifiant du PS- Interogation de l'annuaire (pour les identifiants nationaux)```Récupération de l'identifiant **HL7V2** :PRT-5.1 (PRT-4 = ‘SB^Send by^participation’)``` |
| urn:oasis:names:tc:xacml:2.0:subject:role | Rôle - 2e occurrence obligatoire pour les professionnels caractérisés par leur rôle. Non requise pour les autres professionnels.Prendre la valeur de code la plus appropriée parmi les codes du jeu de valeurs[JDV_J65_SubjectRole_DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J65-SubjectRole-DMP.html)avec un codeSystem provenant de TRE_R85_RolePriseCharge | Provenance de la donnée : Provenance de la donnée :- Interogation du DPI à partir de l'identifiant du PS```Récupération de l'identifiant **HL7V2** :PRT-5.1 (PRT-4 = ‘SB^Send by^participation’)``` |
| //Assertion/AuthnStatement/AuthnContext/AuthnContextClassRef | Prendre la valeur la plus appropriée parmi les valeurs possibles indiquées dans le document http://docs.oasis-open.org/security/saml/v2.0/samlauthn-context-2.0-os.pdfLa valeur utilisée doit être cohérente avec le mode d’authentification locale de l’utilisateur dans le LPS | Paramétrage dans la PFI en fonction du flux qui alimente |
| //Assertion/@xmnls | Constante :”urn:oasis:names:tc:SAML:2.0:assertion” |   |
| //Assertion/@ID | identifiant unique de l’assertion |   |
| //Assertion/@IssueInstant | Date et heure d’émission de l’assertion SAML |   |
| //Assertion/AuthnStatement/@AuthnInstant | Date/Heure de connexion de l’utilisateur dans le système source |   |
| //Assertion/Conditions/AudienceRestriction | Ne pas renseigner |   |
| //Assertion/Conditions/@NotBefore | Facultatif |   |
| //Assertion/Conditions/@NotAfter | Facultatif |   |
| VIHF_Version | Constante : “4.0” |   |
| Authentification_Mode | Constante : “INDIRECTE” |   |
| urn:oasis:names:tc:xacml:2.0:resource:resource-id | Matricule INS-NIR du patient | ```**HL7V2** : Exploitation du PID-3``` |
| Ressource_URN | Constante : “urn:dmp” |   |
| urn:oasis:names:tc:xspa:1.0:subject:purposeofuse | code=”normal” : pour un accès normal |   |
| urn:oasis:names:tc:xspa:1.0:resource:patient:hl7:confidentiality-code | Obligatoire si la fonctionnalité est activée19 et si demande de connexion secrète au DMP. |   |
| LPS_ID | Facultatif |   |
| LPS_Nom | Nom du LPS qui génère le jeton VIHF |   |
| LPS_Version | N° de version du LPS qui génère le jeton VIHF |   |
| LPS_ID_HOMOLOGATION_DMP | N° d’homologation du LPS. |   |

### Mapping XDS

#### Lot de soumission

| | | | |
| :--- | :--- | :--- | :--- |
| authorInstitution | Cette métadonnée représente la structure émettrice du lot de soumission. | requis si connu | ```**HL7V2** : Exploitation du PRT-8 (PRT-4 = ‘SB^Send by^participation’)``` |
| authorPerson | Cette métadonnée représente la personne physique ou le système émetteur du lot de soumission. | requis | ```**HL7V2** :PRT-5 (PRT-4 = ‘SB^Send by^participation’)``` |
| authorRole | Cette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission | requis si connu |  |
| authorSpecialty | Cette métadonnée représente la profession éventuellement associée au savoir-faire de l’auteur du lot de soumission pour un auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité de l’auteur du lot de soumission pour un auteur professionnel caractérisé par son rôle | requis si connu |  |
| contentTypeCode | Cette métadonnée contient le code correspondant au type d’activité associé à l’événement clinique ayant abouti à la constitution du lot de soumission.Valeur de[JDV_J59-ContentTypeCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J59-ContentTypeCode-DMP.html) | requis | ```**HL7V2** :Proposition de mapping sur le PV1-2 :  I => 03;  O => 07;  R => 19;  N => 97;  E => 07 ``` |
| patientId | Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS(NIR) du patient tel que défini dans le cadre juridique. | requis | ```**HL7V2** : Exploitation du PID-3``` |
| sourceId | Cette métadonnée représente l’identifiant unique global du système émetteur du lot de soumission. | requis |   |
| submissionTime | Cette métadonnée représente la date et heure de soumission. | requis |   |
| title | Cette métadonnée représente le titre du lot de soumission. | Optionnel |   |
| uniqueId | Identifiant unique global affecté à ce lot de soumission par son créateur. | requis |   |

#### Fiche

| | | | |
| :--- | :--- | :--- | :--- |
| authorInstitution | Cet attribut représente la structure de l’auteur. | requis si connu | ```**CDA ** : author/assignedAuthor/representedOrganization ``` |
| authorPerson | Cet attribut représente l’auteur (humain ou système) ayant contribué au document | requis | ```**CDA** : author/assignedAuthor``` |
| authorRole | Cet attribut représente le rôle fonctionnel joué par l’auteur vis-à-vis du patient lors de la création du document | requis si connu | ```**CDA** : authorfunctionCode@displayName``` |
| authorSpecialty | Cet attribut représente la profession éventuellement associée au savoir-faire de l’auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité pour l’auteur professionnel caractérisé par son rôle | requis si connu | ```**CDA** : author/assignedAuthor/code``` |
| availabilityStatus | Cette métadonnée représente la pertinence de la version de la fiche d’un document JDV_J52-AvailabilityStatus-CISIS | requis si connu |   |
| classCode | Cet attribut représente le code de la classe du document JDV_J57-ClassCode-DMP | requis | ```**CDA**: classCode est déduit du CDA (champ code) selon la table de correspondance [ASS_X04-CorrespondanceType-Classe](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ConceptMap-ASS-X04-CorrespondanceType-Classe-CISIS.html)``` |
| confidentialityCode |   | requis | ```**CDA** ; Premiere occurence du CDA confidentialityCode  **HL7V2** : les autres occurences du message HL7 V2 OBX-5 avec OBX-3.3=”MetaDMPMSS”``` |
| creationTime | Cette métadonnée représente la date et l’heure de la création du document. | requis | ```**CDA** : effectiveTime@value``` |
| entryUUID | Identifiant unique affecté à la version de la fiche référençant le document | requis |   |
| eventCodeList | Cet attribut contient le code représentant :un évènement documenté ou une pathologieune modalité d’acquisitionune région anatomique. | Optionnel |   |
| formatCode | Cet attribut représente le code du format du document[JDV_J60-FormatCode-DMP](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ValueSet-JDV-J60-FormatCode-DMP.html) | Requis | ```**CDA** :  - CDA N1 => “urn:ihe:iti:xds-sd:pdf:2008”  - CDA N3 => Utilisation de l’association [ASS-A11-CorresModeleCDA-XdsFormatCode-CISIS](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/ConceptMap-ASS-A11-CorresModeleCDA-XdsFormatCode-CISIS.html)``` |
| hash | Cette métadonnée contient le résultat du hachage du document déposé | Requis |   |
| healthcareFacilityTypeCode | Secteur d’activité lié à la prise en charge de la personne, en lien avec le document produit J DV_J61-HealthcareFacilityTypeCode-DMP | Requis | ```**CDA** : componentOf/encompassingEncounter/location/healthCareFacility/code@code``` |
| languageCode | Cette métadonnée représente le code de la langue dans laquelle le document est rédigé. | Requis | ```**CDA** : languageCode@Code``` |
| legalAuthenticator | Cette métadonnée représente l’acteur validant le document et prenant la responsabilité du contenu médical de celui-ci. | Requis | ```**CDA** : legalAuthenticator/assignedEntity``` |
| logicalID |   | Requis |   |
| mimeType | Cette métadonnée représente le type de contenu du document, défini par le standard MIME. | Requis | ```**CDA** :  - "text/xml” pour un document CDA  - “application/xslt+xml” pour un document CDA auto-présentable``` |
| patientId | identifiant du patient, en l’occurrence, le matricule INS (NIR) du patient tel que défini dans le cadre juridique | Requis | ```**CDA** : recordTarget/patientRole/id``` |
| practiceSettingCode | Code du contexte de l’acte qui a engendré la création du document | Requis | ```**CDA** : documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/standardIndustryClassCode@code``` |
| referenceIdList |   | Optionnel |   |
| serviceStartTime | Cette métadonnée représente la date de début de l’acte de référence. | Requis | ```**CDA** : documentationOf/serviceEvent/effectiveTime/low@value``` |
| serviceStopTime | Cette métadonnée correspond à la date de fin de l’acte de référence, si connue. | Requis si connu | ```**CDA** : documentationOf/serviceEvent/effectiveTime/high@value``` |
| size | Cette métadonnée correspond à la taille du document déposé. | Requis |   |
| sourcePatientId | Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. | Requis | ```**CDA** : recordTarget/patientRole/id``` |
| sourcePatientInfo | Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document | Optionnel | ```**CDA** : recordTarget/patientRole/patient``` |
| title | Cette métadonnée représente le titre du document. | Requis | ```**CDA** : title``` |
| typeCode | Cet attribut représente le code spécifiant le type du document. | Requis | ``` **CDA** : code@code ``` |
| uniqueId | Identifiant unique affecté au document par son créateur | Requis | ```**CDA** : id@root ``` |
| version |   | R (Requis), si la transaction de mise à jour des métadonnées (Update document set ITI-57) est utilisée |   |

### Exemple d’un VIHF avec automate

Pour anonymiser cet exemple , certaines valeurs ont été remplacés par des X.

```
    <Security xmlns="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
      <Assertion xmlns="urn:oasis:names:tc:SAML:2.0:assertion" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ID="_09cd372d-da9e-4d8c-a225-b7304defd6fb" IssueInstant="2024-09-02T13:22:25.789Z" Version="2.0">
        <Issuer Format="urn:oasis:names:tc:SAML:1.1:nameid-format:X509SubjectName">C=FR, ST=Paris (75), O=XXXXXX, OU=XXXXXXXX, CN=DMP SIGN</Issuer>
        <Signature xmlns="http://www.w3.org/2000/09/xmldsig#">
          <SignedInfo>
            <CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#" />
            <SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256" />
            <Reference URI="#_09cd372d-da9e-4d8c-a225-b7304defd6fb">
              <Transforms>
                <Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" />
                <Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
                  <InclusiveNamespaces PrefixList="ds saml #default xsi" xmlns="http://www.w3.org/2001/10/xml-exc-c14n#" />
                </Transform>
              </Transforms>
              <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256" />
              <DigestValue>uJdsyFXkRfDf+fXb8G4hrj1t3v4fsxY0Bpz1nkn+dPE=</DigestValue>
            </Reference>
          </SignedInfo>
          <SignatureValue>XXXXXXX</SignatureValue>
          <KeyInfo>
            <X509Data>
              <X509Certificate>WWWW</X509Certificate>
            </X509Data>
          </KeyInfo>
        </Signature>
        <Subject>
          <!--Pour les traitements automatisés : Identifiant de la personne responsable du traitement-->
          <NameID>XXXXX/XXXXXX</NameID>
        </Subject>
        <AuthnStatement AuthnInstant="2024-09-02T13:22:25.789Z">
          <AuthnContext>
            <!--valeur : unspecified-->
            <AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:unspecified</AuthnContextClassRef>
          </AuthnContext>
        </AuthnStatement>
        <AttributeStatement>
          <Attribute Name="VIHF_Version">
            <AttributeValue>3.0</AttributeValue>
          </Attribute>
          <Attribute Name="Authentification_Mode">
            <AttributeValue>INDIRECTE</AttributeValue>
          </Attribute>
          <Attribute Name="Secteur_Activite">
             <!--Secteur d'activité paramétré dans la PFI-->
            <AttributeValue>SA41^1.2.250.1.71.4.2.4</AttributeValue>
          </Attribute>
          <Attribute Name="urn:oasis:names:tc:xacml:2.0:resource:resource-id">
            <AttributeValue>XXXXXXX^^^&amp;1.2.250.1.213.1.4.10&amp;ISO^NH</AttributeValue>
          </Attribute>
          <Attribute Name="Ressource_URN">
            <AttributeValue>urn:dmp</AttributeValue>
          </Attribute>
          <Attribute Name="urn:oasis:names:tc:xspa:1.0:subject:subject-id">
              <!--Pour les traitements automatisés : Nom du logiciel, Nom du modèle et Service.-->
            <AttributeValue>XX,XX, XX</AttributeValue>
          </Attribute>
          <Attribute Name="Identifiant_Structure">
            <AttributeValue>xxxxxxx</AttributeValue>
          </Attribute>
          <Attribute Name="LPS_Version">
            <AttributeValue>1.2.0</AttributeValue>
          </Attribute>
          <Attribute Name="LPS_ID">
            <AttributeValue>1.2.250.1.259.1.1.1234567890</AttributeValue>
          </Attribute>
          <Attribute Name="LPS_Nom">
            <AttributeValue>EVOSIPS</AttributeValue>
          </Attribute>
          <Attribute Name="LPS_ID_HOMOLOGATION_DMP">
            <AttributeValue>XXXXXX</AttributeValue>
          </Attribute>
          <Attribute Name="urn:oasis:names:tc:xspa:1.0:subject:purposeofuse">
            <AttributeValue>
              <PurposeOfUse code="normal" codeSystem="1.2.250.1.213.1.1.4.248" codeSystemName="mode acces VIHF 1.0" displayName="Accès normal" xsi:type="CE" xmlns="urn:hl7-org:v3" />
            </AttributeValue>
          </Attribute>
          <Attribute Name="urn:oasis:names:tc:xacml:2.0:subject:role">
            <AttributeValue>
              <Role code="AUTOMATE" codeSystem="1.2.250.1.213.1.1.4.6" displayName="AUTOMATE" xsi:type="CE" xmlns="urn:hl7-org:v3" />
            </AttributeValue>
          </Attribute>
        </AttributeStatement>
      </Assertion>
    </Security>

```

### Mapping message MSS

| | | |
| :--- | :--- | :--- |
| FROM | Obligatoire, permet de préciser le courriel de la BAL Applicative | courriel de la BAL Applicative qui transmet le message |
| SENDER | Optionnel, permet de préciser le courriel de l'émetteur initial du message | Non transmis |
| REPLY TO | Optionnel, permet de préciser le courriel pour répondre au message | ```Segment optionnel qui permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre. **HL7V2** : PRT-15.4 (PRT-4 = ‘REPLY^Reply To^participation’)``` |
| TO | Requis, permet de préciser l'adresse MSSanté d'un destinataire | ```Segment répétable et requis si le document est échangé via MSSanté. Il contient l'adresse MSSanté d'un destinataire. **HL7V2** : PRT-15.4 (PRT-4 = ‘RCT^Result Copies To^participation’)``` |
| SMTP "X-MSS-MES" | Le système DOIT pouvoir positionner un entête SMTP "X-MSS-MES", dans les messages envoyés vers un usager (Mon espace santé), avec la valeur "FIN" (3 caractères en majuscules), lorsque le professionnel émetteur ne souhaite pas que l’usager puisse lui répondre en retour | ``` HL7V2 : NTE-4 (OBX-3.1 = ‘DESTMSSANTEPAT’)``` |
| Body | Texte à intégrer dans le corps du mail à destination des professionnels de santé et/ou du patient via MSSanté. Cette métadonnée est optionnelle | ```Segment pour indiquer le texte à intégrer dans le corps du mail. **HL7V2** : OBX-5(OBX-3.1 = 'CORPSMAIL_PS' ou OBX-3.1='CORPSMAIL_PATIENT')``` |

