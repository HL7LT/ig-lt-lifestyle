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
* $sct#46635009 "Diabetes mellitus type 1"
* $sct#44054006 "Diabetes mellitus type 2"
* $sct#398036000 "Familial hypercholesterolemia"


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
* condition MS
* condition.code MS
* condition.code from LTFamilymemberHistoryScreening (preferred)
* date ..1 MS
* dataAbsentReason MS


// Example CVD
Instance: example-family-member-history-positive
InstanceOf: LTScreeningFamilyMemberHistory
Usage: #example
Title: "Example of Family Member History of Cardiovascular Disease"
Description: "Patient reports a positive family member history of cardiovascular disease, diabetes milites and familial hypercholesterolemia."
* status = #completed
* patient = Reference(example-patient)
* date = "2025-10-01T09:00:00Z"
* relationship.text = "Unspecified family member"
* condition[0].code = $sct#49601007 "Disorder of cardiovascular system"
* condition[+].code = $sct#44054006 "Diabetes mellitus type 2"
* condition[+].code = $sct#398036000 "Familial hypercholesterolemia"
* note.text = "Patient reports cardiovascular disease, diabetes milites and familial hypercholesterolemia in a first-degree relative."


Instance: example-family-member-history-mother-disease-absent
InstanceOf: LTScreeningFamilyMemberHistory
Usage: #example
Title: "Example of Family Member History - absent of disease in mother"
Description: "Patient reports a positive family member history of cardiovascular disease."
* status = #completed
* patient = Reference(example-patient)
* date = "2025-10-01T09:00:00Z"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unable-to-obtain
* note.text = "Patient reports no known history of diabetes, cancer, or heart disease in mother."

