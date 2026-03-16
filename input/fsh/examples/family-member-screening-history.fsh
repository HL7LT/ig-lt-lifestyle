Instance: family-member-screening-history-positive-example
InstanceOf: FamilyMemberScreeningHistoryLtLifestyle
Usage: #example
Title: "FamilyMemberHistory: Positive CVD (example)"
Description: "Patient reports a positive family member history of cardiovascular disease, diabetes milites and familial hypercholesterolemia."
* status = #completed
* patient = Reference(patient-male-example)
* date = "2025-10-01T09:00:00Z"
* relationship.text = "Unspecified family member"
* condition[0].code = $sct#49601007 "Disorder of cardiovascular system"
* condition[+].code = $sct#44054006 "Diabetes mellitus type 2"
* condition[+].code = $sct#398036000 "Familial hypercholesterolemia"
* note.text = "Patient reports cardiovascular disease, diabetes milites and familial hypercholesterolemia in a first-degree relative."


Instance: family-member-screeninghistory-mother-disease-absent-example
InstanceOf: FamilyMemberScreeningHistoryLtLifestyle
Usage: #example
Title: "FamilyMemberHistory: Mother disease absent (example)"
Description: "Patient reports a positive family member history of cardiovascular disease."
* status = #completed
* patient = Reference(patient-male-example)
* date = "2025-10-01T09:00:00Z"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* note.text = "Patient reports no known history of diabetes, cancer, or heart disease in mother."
