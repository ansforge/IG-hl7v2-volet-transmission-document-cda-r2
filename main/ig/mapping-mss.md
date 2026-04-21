# Mapping message MSS - Volet de transmission d'un document CDA-R2 en HL7v2 v2.1.3

* [**Table of Contents**](toc.md)
* **Mapping message MSS**

## Mapping message MSS

| | | |
| :--- | :--- | :--- |
| FROM | Obligatoire, permet de préciser le courriel de la BAL Applicative | courriel de la BAL Applicative qui transmet le message |
| SENDER | Optionnel, permet de préciser le courriel de l'émetteur initial du message | Non transmis |
| REPLY TO | Optionnel, permet de préciser le courriel pour répondre au message | ```Segment optionnel qui permet d'indiquer l'adresse mail sur laquelle le destinataire peut répondre. **HL7V2** : PRT-15.4 (PRT-4 = ‘REPLY^Reply To^participation’)``` |
| TO | Requis, permet de préciser l'adresse MSSanté d'un destinataire | ```Segment répétable et requis si le document est échangé via MSSanté. Il contient l'adresse MSSanté d'un destinataire. **HL7V2** : PRT-15.4 (PRT-4 = ‘RCT^Result Copies To^participation’)``` |
| SMTP "X-MSS-MES" | Le système DOIT pouvoir positionner un entête SMTP "X-MSS-MES", dans les messages envoyés vers un usager (Mon espace santé), avec la valeur "FIN" (3 caractères en majuscules), lorsque le professionnel émetteur ne souhaite pas que l’usager puisse lui répondre en retour | ``` HL7V2 : NTE-4 (OBX-3.1 = ‘DESTMSSANTEPAT’)``` |
| Body | Texte à intégrer dans le corps du mail à destination des professionnels de santé et/ou du patient via MSSanté. Cette métadonnée est optionnelle | ```Segment pour indiquer le texte à intégrer dans le corps du mail. **HL7V2** : OBX-5(OBX-3.1 = 'CORPSMAIL_PS' ou OBX-3.1='CORPSMAIL_PATIENT')``` |

