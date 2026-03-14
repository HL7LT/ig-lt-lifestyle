Instance: observation-family-history-diabetes-positive-example
InstanceOf: FamilyHistoryDiabetesLtLifestyle
Usage: #example
Title: "Observation: Family History of Diabetes – Positive (example)"
Description: "Patient reports a family history of diabetes mellitus."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#161445009 "History of diabetes mellitus (situation)"
* note.text = "Patient reports diabetes mellitus in a first-degree relative."
