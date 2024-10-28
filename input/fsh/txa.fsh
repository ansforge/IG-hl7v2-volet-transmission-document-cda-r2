Logical: TXA
Id: TXA
Title: "Segment: TXA"
Description: "Transcription Document Header"
* ^status = #draft
* ^experimental = true
* ^meta.lastUpdated = "2021-12-11T22:39:30.051+01:00"
* ^date = "2021-12-11T22:39:30+01:00"
* ^type = "TXA"
* ^version = "2.9"
* ^copyright = "FO"
* ^publisher = "FO"
* . ^definition = "Transcription Document Header"
* SetID-TXA 1..1 MS SI "SetID-TXA" "Attribute: Set ID- TXA"
* SetID-TXA ^maxLength = 4
* DocumentType 1..1 MS CWE "DocumentType" "Attribute: Document Type "
* DocumentContentPresentation 0..1 ID "DocumentContentPresentation" "Attribute: Document Content Presentation"
* ActivityDateTime 0..1 DTM "ActivityDateTime" "Attribute: Activity DateTime"
* PrimaryActivityProviderCodeName 0..* XCN "PrimaryActivityProviderCodeName" "Attribute: Primary Activity Provider CodeName"
* OriginationDateTime 0..1 DTM "OriginationDateTime" "Attribute: Origination DateTime"
* TranscriptionDateTime 0..1 DTM "TranscriptionDateTime" "Attribute: Transcription DateTime"
* EditDateTime 0..* DTM "EditDateTime" "Attribute: Edit DateTime"
* OriginatorCodeName 0..* XCN "OriginatorCodeName" "Attribute: Originator CodeName"
* AssignedDocumentAuthenticator 0..* XCN "AssignedDocumentAuthenticator" "Attribute: Assigned Document Authenticator"
* TranscriptionistCodeName 0..* XCN "TranscriptionistCodeName" "Attribute: Transcriptionist CodeName"
* UniqueDocumentNumber 1..1 MS EI "UniqueDocumentNumber" "Attribute: Unique Document Number"
* ParentDocumentNumber 0..1 EI "ParentDocumentNumber" "Attribute: Parent Document Number"
* PlacerOrderNumber 0..* EI "PlacerOrderNumber" "Attribute: Placer Order Number"
* FillerOrderNumber 0..1 EI "FillerOrderNumber" "Attribute: Filler Order Number"
* UniqueDocumentFileName 0..1 ST "UniqueDocumentFileName" "Attribute: Unique Document File Name"
* DocumentCompletionStatus 1..1 MS ID "DocumentCompletionStatus" "Attribute: Document Completion Status"
* DocumentCompletionStatus ^maxLength = 2
* DocumentConfidentialityStatus 0..1 ID "DocumentConfidentialityStatus" "Attribute: Document Confidentiality Status"
* DocumentConfidentialityStatus ^maxLength = 1
* DocumentAvailabilityStatus 0..1 ID "DocumentAvailabilityStatus" "Attribute: Document Availability Status"
* DocumentAvailabilityStatus ^maxLength = 2
* DocumentStorageStatus 0..1 ID "DocumentStorageStatus" "Attribute: Document Storage Status"
* DocumentStorageStatus ^maxLength = 2
* DocumentChangeReason 0..1 ST "DocumentChangeReason" "Attribute: Document Change Reason"
* AuthenticationPersonTimeStampset 0..* PPN "AuthenticationPersonTimeStampset" "Attribute: Authentication Person Time Stamp (set) "
* DistributedCopiesCodeandNameofRecipients 0..* XCN "DistributedCopiesCodeandNameofRecipients" "Attribute: Distributed Copies (Code and Name of Recipient(s) )"
* FolderAssignment 0..* CWE "FolderAssignment" "Attribute: Folder Assignment"
* DocumentTitle 0..* ST "DocumentTitle" "Attribute: Document Title"
* AgreedDueDateTime 0..1 DTM "AgreedDueDateTime" "Attribute: Agreed Due DateTime   "
* CreatingFacility 0..1 HD "CreatingFacility" "Attribute: Creating Facility"
* CreatingSpecialty 0..1 CWE "CreatingSpecialty" "Attribute: Creating Specialty"
