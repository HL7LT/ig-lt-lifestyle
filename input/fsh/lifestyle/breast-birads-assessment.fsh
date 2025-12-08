ValueSet: BiradsCategory
Id: lt-birads-category
Title: "BI-RADS Category"
Description: "Categories of Breast Imaging Reporting and Data System."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#397138000 "Mammography assessment (Category 0) - Need additional imaging evaluation (finding)"
* $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"
* $sct#397141009 "Mammography assessment (Category 2) - Benign finding (finding)"
* $sct#397143007 "Mammography assessment (Category 3) - Probably benign finding, short interval follow-up (finding)"
* $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
* $sct#397145000 "Mammography assessment (Category 5) - Highly suggestive of malignancy (finding)"
* $sct#6111000179101 "Mammography assessment (Category 6) - known biopsy, proven malignancy (finding)"

// BI-RADS assessment profile
Profile: LTBiradsAssessment
Parent: LTBaseObservation
Id: lt-birads-assessment
Title: "BI-RADS Assessment"
Description: "Final radiological diagnostic conclusion according to BI-RADS (0–5)." //Each breast is assigned a BI-RADS category, which recommends further actions?
* category = $observation-category#imaging "Imaging"    
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BiradsCategory (required)

// Examples
Instance: example-birads-1-negative
InstanceOf: LTBiradsAssessment
Title: "Example BI-RADS 1 – Negative"
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"

Instance: example-birads-cat4
InstanceOf: LTBiradsAssessment
Title: "Example BI-RADS 4 – Suspicious Abnormality"
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"