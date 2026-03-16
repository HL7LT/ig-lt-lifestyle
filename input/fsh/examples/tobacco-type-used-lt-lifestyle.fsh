Instance: observation-tobacco-type-used-example
InstanceOf: TobaccoTypeUsedLtLifestyle
Usage: #example
Title: "Observation: Tobacco Type Used - Cigarette smoker (example)"
Description: "Example instance showing a patient who is a cigarette smoker."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode] = $loinc#81228-9 "Tobacco product" 
* code.coding[sctCode] = $sct#53661000146106 "Type of tobacco used"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#65568007 "Cigarette smoker (finding)"
* note.text = "Patient reports to be a cigarette smoker."
