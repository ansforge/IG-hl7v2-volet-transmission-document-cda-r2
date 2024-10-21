
Cette transaction véhicule en intra hospitalier les demandes de
transmission initiale, de remplacement ou de suppression de(s)
document(s) du patient au niveau d'un système cible (le DMP et/ou le(s)
destinataire(s) MSSanté indiqués dans la transaction).

La spécification de cette transaction s'applique à toute demande de
transmission initiale/de remplacement/de suppression de document(s)
clinique(s) d'un patient, au moyen d'un message HL7, entre un acteur
CREATEUR de documents vers un acteur GESTIONNAIRE de documents. Le
message transmis contient une demande de traitement sur le(s)
document(s) au format CDA-R2 encodé(s) dans un flux HL7v2 ORU ou MDM
avec description uniquement des segments nécessaires au GESTIONNAIRE de
documents pour alimenter le DMP et/ou envoyer le(s) document(s) via
MSSanté au(x) destinataire(s) désigné(s) dans le message HL7 par le
CREATEUR de document(s).

Les autres données nécessaires aux transactions XDS ou à la création de
l'archive IHE-XDM ne rentrent pas dans le périmètre de cette
spécification, elles sont récupérées de l'en-tête CDA ([ANS – CI-SIS : ANNEXE – LIEN ENTRE L’EN-TETE CDA ET LES METADONNEES XDS](https://esante.gouv.fr/annexe-lien-entre-len-tete-cda-et-les-metadonnees-xds)).

La spécification technique de cette transaction couvre également l'envoi
de l'accusé du message HL7, l'envoi de l'accusé de réception du DMP et
MSSanté ainsi que l'accusé de lecture du courriel MSSanté du
GESTIONNAIRE vers le CREATEUR.
