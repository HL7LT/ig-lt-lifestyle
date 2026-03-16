Instance: observation-tobacco-use-current-smoker-example
InstanceOf: TobaccoUseLtLifestyle
Usage: #example
Title: "Observation: Smoking Status - Current Smoker (example)"
Description: "Example instance showing a patient who currently smokes."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode].system = $loinc
* code.coding[loincCode].code = #72166-2
* code.coding[sctCode].system = $sct
* code.coding[sctCode].code = #229819007 "Tobacco use and exposure (observable entity)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#77176002 "Smoker (finding)"
* note.text = "Patient reports smoking approximately 10 cigarettes per day for 5 years."
