<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
This document is part of the Service layer of the Interoperability Framework for Health Information Systems (CI-SIS).
<br>
This section outlines the possibility for an organization's business software to delegate to a third-party entity, the Intermediation Platform (PFI), the ability to interact with the DMP (French Shared Medical Record System) and/or MSSanté (French Secure Health Messaging). In the case of transmission via MSSanté, this section should be considered in conjunction with another section of the CI-SIS, namely the "Transmission au LPS d'un document CDA provenant d'un courriel
MSSanté" section, to provide a comprehensive view of exchanges (from the creator of a processing request for a document to the final consumer of this request).
</p>

<!--  A commenter lors de la publication -->
<div style="width: 65%">
<blockquote class="stu-note">
<p>
[WIP] Version ci-build du Guide d'Implémentation de ce volet
</p>
</blockquote>
</div>


<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    Cette version, au statut Trial Implementation, intègre le traitement des commentaires reçus par l’ANS pendant la phase de commentaires publics qui s’est déroulée du 27/11/2023 au 08/12/2023 ainsi que des corrections ou des améliorations apportées à la suite du projectathon organisé par l’ANS en septembre 2023. Cette version du volet intègre également le résultat de l’étude conduite en janvier 2024 par la DNS avec des industriels et leurs représentants sur les cas d’usage de la MSSanté présentés dans la section Volume 1 – Etude fonctionnelle.
    </p>
    </blockquote>
</div>

### Avant-propos

Ce document fait partie de la couche Service du Cadre d'Interopérabilité
des Systèmes d'Information de santé (CI_SIS).

Ce présent volet décrit la possibilité pour un logiciel métier d'une
organisation de déléguer à un acteur tiers, la plateforme
d'intermédiation (PFI), la capacité d'interagir avec le DMP et/ou avec
la MSSanté. Dans le cas d'un envoi par MSSanté, ce volet est à
considérer par le lecteur en association avec un autre volet du CI_SIS,
le volet « [Transmission au LPS d'un document CDA provenant d'un courriel
MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » de façon à avoir une vision de bout en bout des échanges (du
créateur de la demande de traitement sur un document vers le
consommateur final de cette demande).

Les deux volets en question intègrent à la fois une partie fonctionnelle
et une partie technique.

La partie fonctionnelle décrit, à titre d'exemple et de façon non
exhaustive, un ensemble de cas d'usage. Sur la base de ces cas d'usage,
sont ensuite définis des acteurs du système d'information (au sens
d'[IHE](https://wiki.ihe.net/index.php/Actors)) et des transactions qui interviennent entre ces acteurs pour
répondre à ces cas d'usage. Les processus collaboratifs sont ensuite
décrits et les flux entre les acteurs sont également identifiés.

La partie technique décrit les standards retenus pour implémenter les
flux identifiés par l'étude fonctionnelle et décrit dans le détail les
règles d'implémentation de ces standards.

Pour une meilleure compréhension du lecteur, les cas d'usage décrits
dans la partie fonctionnelle de chacun des volets couvrent la totalité
des échanges entre les acteurs définis dans les deux volets. Dans le
contexte de ce présent document, seuls les échanges entre le logiciel
métier et la PFI font partie du périmètre du volet.

Dans le cas d'usage où la demande provenant du CREATEUR est relayée par
le GESTIONNAIRE de l'établissement vers une BAL personnelle ou
organisationnelle d'un autre établissement, l'envoi de l'accusé de
lecture MSSanté (Message Disposition Notification- MDN décrit dans la
[RFC 8098](https://datatracker.ietf.org/doc/html/rfc8098)) est déclenché par le traitement du courriel déposé dans la BAL de l'utilisateur destinataire (lecture, suppression, traitement, etc.).
Le courriel MDN est alors réceptionné par la PFI de l'établissement
expéditeur qui construit le message métier HL7 `ZAM^Z03^ZAM_Z01` et le
transmet au logiciel métier de l'utilisateur expéditeur.

Une liste de cas d'usage, non exhaustive, est présentée à titre
d'exemple dans le Volume 1 - Etude fonctionnelle, pour susciter les
retours des industriels et des utilisateurs lors des prochains
projectathons.

Rappel des conventions utilisées par IHE et HL7 :
<table>
<tbody>
<tr>
<td width="113">
<p><strong>Code d&rsquo;usage</strong></p>
</td>
<td width="510">
<p><strong>Signification</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p>R</p>
</td>
<td width="510">
<p>Requis&nbsp;: l&rsquo;&eacute;l&eacute;ment de donn&eacute;e doit obligatoirement &ecirc;tre renseign&eacute; par l&rsquo;&eacute;metteur et int&eacute;gr&eacute; par le r&eacute;cepteur</p>
</td>
</tr>
<tr>
<td width="113">
<p>RE</p>
</td>
<td width="510">
<p>Requis si connu&nbsp;: le syst&egrave;me doit d&eacute;montrer sa capacit&eacute; &agrave; renseigner l&rsquo;&eacute;l&eacute;ment en &eacute;mission et/ou &agrave; l&rsquo;exploiter en r&eacute;ception.</p>
<p>Sur le terrain il peut exister des situations o&ugrave; l&rsquo;&eacute;l&eacute;ment est non renseign&eacute;.</p>
</td>
</tr>
<tr>
<td width="113">
<p>O</p>
</td>
<td width="510">
<p>Optionnel</p>
</td>
</tr>
<tr>
<td width="113">
<p>X</p>
</td>
<td width="510">
<p>Non support&eacute;</p>
</td>
</tr>
<tr>
<td width="113">
<p>C</p>
</td>
<td width="510">
<p>Conditionnel&nbsp;: La condition de remplissage de l&rsquo;&eacute;l&eacute;ment de donn&eacute;e est sp&eacute;cifi&eacute;e dans le tableau de description du profil de message ou dans une note en dessous du tableau.</p>
</td>
</tr>
</tbody>
</table>

<table>
<tbody>
<tr>
<td width="113">
<p><strong>Code d&rsquo;usage</strong></p>
</td>
<td width="510">
<p><strong>Signification</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p>[ ]</p>
</td>
<td width="510">
<p>Champ optionnel</p>
</td>
</tr>
<tr>
<td width="113">
<p>{ }</p>
</td>
<td width="510">
<p>Champ r&eacute;p&eacute;table</p>
</td>
</tr>
<tr>
<td width="113">
<p>[{ }]</p>
</td>
<td width="510">
<p>Champ optionnel et r&eacute;p&eacute;table</p>
</td>
</tr>
</tbody>
</table>

<div class="draft-content">
<p>
<b>QUESTIONS OUVERTES :</b><br>
<a href="https://github.com/ansforge/IG-hl7v2-volet-transmission-document-cda-r2/discussions/6">CDA_HL7_Q1 :</a> demande de fusionner les deux spécifications : « Transmission de document(s) CDA en HL7v2 » et « Transmission au LPS d’un document CDA provenant d’un courriel ». La fusion des deux spécifications est sans doute possible. Cependant, utiliser la même transaction entre les acteurs CREATEUR/GESTIONNAIRE et GESTIONNAIRE/CONSOMMATEUR nécessite d’effectuer une étude plus approfondie de façon à déterminer comment harmoniser ces transactions. La mise en place d'une transaction unique indépendamment du contexte créerait de l'ambiguïté avec notamment des informations non pertinentes véhiculées entre le GESTIONNAIRE et le CONSOMMATEUR (alimentation DMP, échange MSSanté…). Des retours des éditeurs sont attendus sur ce point. D’autre part, cette fusion des deux spécifications nécessiterait de modifier la rédaction des exigences SEGUR concernant la conformité des logiciels à ces spécifications.
<br>
</p>
</div>

### Introduction

Ce document est une spécification d'une transaction de demande de
transmission/remplacement/suppression de document(s) clinique(s) en
intra-organisation entre un système créateur de documents et une PFI
(plateforme d'intermédiation), dans l'objectif de partager et/ou
d'échanger ces documents avec les acteurs externes à l'établissement
pour :

-   Publication de document(s) clinique(s) du patient au DMP (Dossier
    Médical Partagé),

-   Envoi de document(s) clinique(s) du patient à différents
    destinataires externes à l'établissement au moyen de la MSSanté
    (Messagerie Sécurisée de Santé),

Cette spécification doit permettre d'harmoniser les modes de
communication des documents cliniques concernant un patient, quelle que
soit leur origine (CR de laboratoire, CR de radiologie, CR d'anatomie
pathologique, CR de cardiologie, Lettre de liaison, etc..).

La PFI réceptionne les documents cliniques des patients pris en charge
au sein de l'établissement provenant du système créateur de documents et
les distribue en direction du DMP et/ou de la MSSanté en fonction de la
demande exprimée par le créateur du document. La PFI retourne également
au système créateur du document, le cas échéant, les accusés de
réception du DMP et de la MSSanté de cette diffusion ainsi que l'accusé
de lecture du courriel MSSanté.

Dans le cadre de cette spécification, les documents médicaux véhiculés
correspondent à des documents au format CDA-R2 conformes au volet du
CI-SIS « [Structuration minimale des documents de santé](https://esante.gouv.fr/volet-structuration-minimale-de-documents-de-sante) ». Ces
documents doivent être validés par le professionnel de santé dans
l'application métier qui les a générés via un statut de validation géré
en interne.

#### Dépendances documentaires

Cette spécification n'est pas autonome. Notamment, dans le cas d'un
envoi d'une demande de traitement sur le(s) document(s), le lecteur
pourra également consulter le volet « [Transmission au LPS d'un document
CDA provenant d'un courriel MSSanté](https://esante.gouv.fr/transmission-au-lps-de-documents-cda-provenant-dun-courriel-mssante) » pour avoir une vision complète et
transversale des échanges représentée de façon synthétique sur la figure
suivante et décrits de façon détaillée dans la volume 2 du présent
document :

<div class="figure" style='text-align: center;'>
    <img src="image5.png" alt="Figure 1" title="Figure 1 : Représentation synthétique des échanges et articulation entre les deux volets du CI_SIS" style="width:80%;">
    <figcaption><b>Figure 1 : Représentation synthétique des échanges et articulation entre les deux volets du CI_SIS</b></figcaption>
</div>
<br>


##### Dépendances avec la documentation SEGUR

Ce document doit être utilisé dans le cadre du référencement SEGUR vague 2. Il s'applique, entre autres, à la vague 2 du Ségur Numérique mais pas
uniquement. Il peut également être utilisé hors SEGUR.

Les contraintes décrites dans ce présent volet sont moins fortes que
certaines exigences du programme SEGUR vague 2. En conséquence, un
système référencé SEGUR vague 2 devra mettre en œuvre les spécifications
techniques décrites dans ce présent volet, mais également répondre aux
exigences des couloirs de la vague 2 du SEGUR concernés par ce volet.

##### Positionnement dans le cadre d'interopérabilité

Cette spécification n'est pas autonome. Les développeurs doivent
également connaître et maîtriser d'autres volets du CI_SIS publiés par
l'ANS :

-   [Le volet Partage de documents de santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante),

-   [Le volet Echange de documents de santé](https://esante.gouv.fr/volet-echange-de-documents-de-sante),

Les développeurs de PFI devront également respecter le [Référentiel socle
« MSSanté #2- Clients de Messageries Sécurisées de Santé](https://esante.gouv.fr/espace_documentation/mssante-clients-de-messageries-securisees-de-sante/referentiel-socle-mssante-2) »
publié par l'ANS et le référentiel [« Service DMP intégré aux LPS- Version 2.9 et supérieure »](https://industriels.sesam-vitale.fr/) publié par le GIE SESAM-VITALE.

**L'ensemble de ces spécifications sont hors périmètre de ce présent volet du CI-SIS.**

#### Ce dont ne traite pas ce volet du CI_SIS

Les contraintes de sécurité concernant les flux échangés ne sont pas
traitées dans ce document. En effet, les aspects relatifs à la sécurité
sont du ressort du système d'information les implémentant.

Ce volet du CI_SIS n'a pas vocation à décrire le cadre juridique
applicable. Il appartient à chaque acteur concerné par ce volet de
veiller à ce que les fonctionnalités fournies et/ou mises en œuvre
respectent ce cadre légal, notamment en termes de confidentialité et de
sécurité des données par application des règles de la [PGSSI_S](https://esante.gouv.fr/produits-services/pgssi-s).

#### Lectorat cible

Les lecteurs cibles sont principalement des chefs de projets ainsi que
toute personne concernée par les travaux du Ségur du Numérique et qui
spécifie des projets avec des interfaces interopérables.

<!-- ### Auteurs et contributeurs

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email | -->
