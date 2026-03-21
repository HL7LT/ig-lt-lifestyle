ValueSet: FamilyHistoryDiabetesStatusLtLifestyle
Id: family-history-diabetes-status
Title: "Status of the Family History of Diabetes"
Description: "Indicates whether the patient has a family history of diabetes mellitus."
* ^url = $family-history-diabetes-status-url
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#160274005 "No family history of diabetes mellitus (situation)"  // No
* $sct#160303001 "Family history of diabetes mellitus (situation)"         // Yes
* $sct#407559004 "Family history unknown (situation)"                  // Unknown
