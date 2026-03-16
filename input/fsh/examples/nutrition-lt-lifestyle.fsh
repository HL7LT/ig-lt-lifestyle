Instance: observation-nutrition-balanced-example
InstanceOf: NutritionLtLifestyle
Usage: #example
Title: "Observation: Nutrition – Balanced (example)"
Description: "Example showing a patient with balanced (healthy) nutrition."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#384759009 "Nutrition, function (observable entity)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#226229006 "Balanced diet (finding)"  
* note.text = "Patient reports balanced meals consistent with dietary recommendations."
