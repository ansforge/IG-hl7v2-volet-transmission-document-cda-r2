
![Logo_LEF_CI-SIS](https://user-images.githubusercontent.com/48218773/227532484-eff82649-4e42-49c6-966a-dc3ea78cf59c.png)

[![Workflow Init](https://github.com/ansforge/IG-fhir-partage-de-documents-de-sante/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/ansforge/IG-fhir-partage-de-documents-de-sante/actions/workflows/fhir-workflows.yml)

Ce repository est un test pour transformer la version pdf du volet de transmission d’un document CDA-R2 en HL7v2 en guide d'implémentation.

**Il ne se substitue pas au volet officiel du CI-SIS publié ici : https://esante.gouv.fr/volet-de-transmission-dun-document-cda-r2-en-hl7v2**


# Contexte

## Contexte métier du projet

Ce volet standardise la transmission de document(s) d'une application métier (SGL/RIS/DPI, dossier de spécialité…) à destination d'une plateforme d’intermédiation (PFI) chargée d’alimenter le DMP et/ou d'envoyer le(s) document(s) en pièce jointe d’un courrier électronique MSSanté à des destinataires.

L’objectif de cette spécification est de permettre une harmonisation des modes de communication des documents médicaux concernant un patient, quelle que soit leur origine (CR de laboratoire, CR de radiologie, CR d’anatomie pathologique, CR de cardiologie, Lettre de sortie, etc..).

L’application destinatrice (PFI ou DPI possédant le rôle de PFI) réceptionne les documents médicaux des patients pris en charge au sein de l’établissement, elle peut jouer différents rôles tels que la conversation des documents, le partage intra-établissement, le partage vers l’extérieur en assurant l’alimentation du Dossier Médical Personnel et l’échange vers des destinataires désignés via une messagerie sécurisée de santé conforme au référentiel MSSanté.

Ce volet est élaboré dans le cadre du SEGUR du Numérique avec la participation de l’équipe CI-SIS de l’Agence du Numérique en Santé.

## Contexte technique du projet

[TEST pour transformer la version pdf du volet de transmission d’un document CDA-R2 en HL7v2 en guide d'implémentation.]

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'executer Sushi pour vérifier la grammaire
* De publier les pages : https://ansforge.github.io/{nom du repo}/ig/{nom de la branche}

# Notes

[A COMPLETER: notes supplémentaires pour le lecteur de la spec]


## Acronymes

<table width="100%">
<tbody>
<tr>
<td width="22%">
<p>Sigle / Acronyme</p>
</td>
<td width="77%">
<p>Signification</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>ACK&nbsp;:</strong></p>
</td>
<td width="77%">
<p>General acknowledge message</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>BAL&nbsp;:</strong></p>
</td>
<td width="77%">
<p>Bo&icirc;te aux lettres</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>CDA-R2&nbsp;:</strong></p>
</td>
<td width="77%">
<p>Clinical Document Architecture Release 2</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>DPI&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Dossier Patient Informatis&eacute;</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>DMP&nbsp;:</strong></p>
</td>
<td width="77%">
<p>Dossier M&eacute;dical Partag&eacute;</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>DRIM-M&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Data Radiologie Imagerie M&eacute;dicale et M&eacute;decine Nucl&eacute;aire</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>INS</strong></p>
</td>
<td width="77%">
<p>Identit&eacute; Nationale de Sant&eacute;</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>MDM&nbsp;: </strong></p>
</td>
<td width="77%">
<p>M&eacute;dical Document Management</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>MLLP&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Minimal Lower Layer Protocol</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>MSSant&eacute;&nbsp;:</strong></p>
</td>
<td width="77%">
<p>Messagerie S&eacute;curis&eacute;e de Sant&eacute;</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>NOS&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Nomenclature des Objets de Sant&eacute;</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>ORU&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Unsolicited transmission of an Observation Message</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>PFI&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Plateforme Interm&eacute;diation</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>RIS&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Radiology information System</p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>SGL&nbsp;: </strong></p>
</td>
<td width="77%">
<p>Syst&egrave;me de Gestion de Laboratoire</p>
</td>
</tr>
</tbody>
</table>

