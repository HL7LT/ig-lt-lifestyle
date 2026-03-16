Instance: observation-tobacco-use-duration-example
InstanceOf: TobaccoUseDurationLtLifestyle
Usage: #example
Title: "Observation: Tobacco Use Duration - 5 years (example)"
Description: "Example instance showing a patient who has been smoking for 5 years."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode] = $loinc#88029-4  "Tobacco use duration"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity = $ucum#a "years"
  * value = 5
* note.text = "Patient reports smoking approximately for 5 years."
