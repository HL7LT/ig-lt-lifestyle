Profile: TobaccoSmokingConsumptionLtLifestyle
Parent: ObservationLt
Id: tobacco-smoking-consumption-lt-lifestyle
Title: "Tobacco Smoking Consumption"
Description: "This profile constrains the Observation resource to represent Tobacco smoking consumption assessment in a patient summary."
* ^url = $tobacco-smoking-consumption-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TobaccoSmokingConsumptionVSLtLifestyle (preferred)
* component ..0
