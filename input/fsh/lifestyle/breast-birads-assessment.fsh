ValueSet: BiradsCategoryVS
Id: lt-birads-category-vs
Title: "BI-RADS Category Value Set"
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

// BI-RADS assessment profile
//BIRADS also should be for each breast
Profile: LTBiradsAssessment
Parent: LTBaseObservation
Id: lt-birads-assessment
Title: "BI-RADS Assessment"
Description: "Observation representing final mammographic diagnostic output." //Each breast is assigned a BI-RADS category, which recommends further actions.
* category = $observation-category#imaging "Imaging"    
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BiradsCategoryVS (required)

// * bodySite 1..1
// * bodySite from LTLateralityBreastVS (required)

// Examples
Instance: example-birads-1-negative
InstanceOf: LTBiradsAssessment
Title: "Example BI-RADS 1 – Negative"
Usage: #example
* status = #final
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* valueCodeableConcept = $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"
// * bodySite = $sct#7771000 "Left"
* subject = Reference(Patient/example)