Profile: NutritionLtLifestyle
Parent: ObservationLt
Id: nutrition-lt-lifestyle
Title: "Nutrition"
Description: "Observation profile representing the patient's nutrition status (balanced vs. unbalanced)."
* ^url = $nutrition-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T12:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#384759009 "Nutrition, function (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from NutritionStatusLtLifestyle (preferred)
* component ..0
