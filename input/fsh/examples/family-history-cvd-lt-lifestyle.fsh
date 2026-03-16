Instance: observation-family-history-cvd-positive-example
InstanceOf: FamilyHistoryCVDLtLifestyle
Usage: #example
Title: "Observation: Family History of Cardiovascular Disease – Positive (example)"
Description: "Patient reports a positive family history of cardiovascular disease."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* note.text = "Patient reports cardiovascular disease in a first-degree relative."
