ValueSet: LTNutritionStatus
Id: lt-nutrition-status
Title: "LT Nutrition Status"
Description: "Categorical assessment of whether the patient’s nutrition is balanced or unbalanced."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#226234005 "Healthy diet (finding)"              // Balanced
* $sct#707847004 "Imbalance of nutrient intake (finding)" // Unbalanced


Profile: LTNutrition
Parent: LTBaseObservation
Id: lt-nutrition
Title: "LT Nutrition"
Description: "Observation profile representing the patient’s nutrition status (balanced vs. unbalanced)."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T12:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#384759009 "Nutrition, function (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTNutritionStatus (preferred)
* component ..0



Instance: example-nutrition-balanced
InstanceOf: LTNutrition
Usage: #example
Title: "Example LT Nutrition – Balanced"
Description: "Example showing a patient with balanced (healthy) nutrition."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#384759009 "Nutrition, function (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#226234005 "Healthy diet (finding)"
* note.text = "Patient reports balanced meals consistent with dietary recommendations."
