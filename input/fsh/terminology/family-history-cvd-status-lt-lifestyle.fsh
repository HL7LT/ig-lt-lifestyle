ValueSet: FamilyHistoryCVDStatusLtLifestyle
Id: family-history-cvd-status
Title: "Status of the Family History of Cardiovascular Disease"
Description: "Indicates whether the patient has a family history of cardiovascular disease."
* ^url = $family-history-cvd-status-url
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#160270001 "No family history: Cardiovascular disease (situation)" //No
* $sct#266894000 "Family history: Cardiovascular disease (situation)"    //Yes
* $sct#407559004 "Family history unknown (situation)"                    //Unknown
