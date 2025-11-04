ValueSet: LTFamilymemberHistoryScreening
Id: lt-family-member-history-screening
Title: "Family Member History Screening Program Diseases"
Description: "Indicates whether the patient has a family member history related to the screening program."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#49601007 "Disorder of cardiovascular system"


Profile: LTScreeningFamilyMemberHistory
Parent: FamilyMemberHistory
Id: lt-screening-family-member-history
Title: "Family Member History for screening program"
Description: "Family Member History record."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T19:55:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* patient 1.. MS
* patient only Reference(Patient)
* patient ^type[0].targetProfile = https://hl7.lt/fhir/base/StructureDefinition/lt-patient
* status MS
* condition 1..1 MS
* condition.code 1..1 MS
* condition.code from LTFamilymemberHistoryScreening
* date ..1 MS




// Example CVD
Instance: example-screening-family-member-history-cvd-positive
InstanceOf: LTScreeningFamilyMemberHistory
Usage: #example
Title: "Example of Family Member History of Cardiovascular Disease"
Description: "Patient reports a positive family member history of cardiovascular disease."
* status = #completed
* patient = Reference(example-patient)
* date = "2025-10-01T09:00:00Z"
* relationship.text = "Unspecified family member"
* condition.code = $sct#49601007 "Disorder of cardiovascular system"
* note.text = "Patient reports cardiovascular disease in a first-degree relative."


// // Example Diabetes 
// Instance: example-screening-family-history-diabetes-positive
// InstanceOf: LTScreeningFamilyHistoryDiabetes
// Usage: #example
// Title: "Example of Family History of Diabetes – Positive"
// Description: "Patient reports a family history of diabetes mellitus."
// * status = #final
// * category = $observation-category#social-history "Social History"
// * code = $sct#161445009 "History of diabetes mellitus (situation)"
// * subject = Reference(example-patient)
// * effectiveDateTime = "2025-10-01T09:00:00Z"
// * valueCodeableConcept = $sct#161445009 "History of diabetes mellitus (situation)"
// * note.text = "Patient reports diabetes mellitus in a first-degree relative."


// // Example: Familial Hypercholesterolemia
// Instance: example-screening-family-history-fh-positive
// InstanceOf: LTScreeningFamilyHistoryFH
// Usage: #example
// Title: "Example of Family History of Familial Hypercholesterolemia – Positive"
// Description: "Patient reports a family history of familial hypercholesterolemia."
// * status = #final
// * category = $observation-category#social-history "Social History"
// * code = $sct#473145005 "Possible familial hypercholesterolemia (situation)"
// * subject = Reference(example-patient)
// * effectiveDateTime = "2025-10-01T09:00:00Z"
// * valueCodeableConcept = $sct#473145005 "Possible familial hypercholesterolemia (situation)"
// * note.text = "Patient reports elevated cholesterol and confirmed familial hypercholesterolemia in a first-degree relative."
