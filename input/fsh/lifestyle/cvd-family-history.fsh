ValueSet: LTFamilyHistoryCVDStatus
Id: lt-family-history-cvd-status
Title: "Family History of Cardiovascular Disease"
Description: "Indicates whether the patient has a family history of cardiovascular disease."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#160270001 "No family history: Cardiovascular disease (situation)" //No
* $sct#266894000 "Family history: Cardiovascular disease (situation)"    //Yes
* $sct#407559004 "Family history unknown (situation)"                    //Unknown


ValueSet: LTFamilyHistoryDiabetesStatus
Id: lt-family-history-diabetes-status
Title: "Family History of Diabetes"
Description: "Indicates whether the patient has a family history of diabetes mellitus."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#160274005 "No family history of diabetes mellitus (situation)"  // No
* $sct#160303001 "Family history of diabetes mellitus (situation)"         // Yes
* $sct#407559004 "Family history unknown (situation)"                  // Unknown


ValueSet: LTFamilyHistoryFHStatus
Id: lt-family-history-fh-status
Title: "Family History of Familial Hypercholesterolemia"
Description: "Indicates whether the patient has a family history of familial hypercholesterolemia."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#160303001 "No family history of disease (situation)"           // No
* $sct#473145005 "Possible familial hypercholesterolemia (situation)"  // Yes
* $sct#407559004 "Family history unknown (situation)"                  // Unknown




Profile: LTScreeningFamilyHistoryCVD
Parent: LTBaseObservation
Id: lt-screening-family-history-cvd
Title: "Family History of Cardiovascular Disease"
Description: "Observation indicating whether the patient has a family history of cardiovascular disease."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T19:55:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTFamilyHistoryCVDStatus (preferred)


// Profile: LT Family History of Diabetes
Profile: LTScreeningFamilyHistoryDiabetes
Parent: LTBaseObservation
Id: lt-screening-family-history-diabetes
Title: "Family History of Diabetes"
Description: "Observation indicating whether the patient has a family history of diabetes mellitus."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T20:15:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTFamilyHistoryDiabetesStatus (preferred)


// Profile: LT Family History of Familial Hypercholesterolemia
Profile: LTScreeningFamilyHistoryFH
Parent: LTBaseObservation
Id: lt-screening-family-history-fh
Title: "Family History of Familial Hypercholesterolemia"
Description: "Observation indicating whether the patient has a family history of familial hypercholesterolemia."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T20:30:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#473145005 "Possible familial hypercholesterolemia (situation)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTFamilyHistoryFHStatus (preferred)




// Example CVD
Instance: example-screening-family-history-cvd-positive
InstanceOf: LTScreeningFamilyHistoryCVD
Usage: #example
Title: "Example of Family History of Cardiovascular Disease – Positive"
Description: "Patient reports a positive family history of cardiovascular disease."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* note.text = "Patient reports cardiovascular disease in a first-degree relative."


// Example Diabetes 
Instance: example-screening-family-history-diabetes-positive
InstanceOf: LTScreeningFamilyHistoryDiabetes
Usage: #example
Title: "Example of Family History of Diabetes – Positive"
Description: "Patient reports a family history of diabetes mellitus."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#161445009 "History of diabetes mellitus (situation)"
* note.text = "Patient reports diabetes mellitus in a first-degree relative."


// Example: Familial Hypercholesterolemia
Instance: example-screening-family-history-fh-positive
InstanceOf: LTScreeningFamilyHistoryFH
Usage: #example
Title: "Example of Family History of Familial Hypercholesterolemia – Positive"
Description: "Patient reports a family history of familial hypercholesterolemia."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#473145005 "Possible familial hypercholesterolemia (situation)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#473145005 "Possible familial hypercholesterolemia (situation)"
* note.text = "Patient reports elevated cholesterol and confirmed familial hypercholesterolemia in a first-degree relative."
