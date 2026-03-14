Profile: TobaccoUseLtLifestyle
Parent: ObservationLt
Id: tobacco-use-lt-lifestyle
Title: "Tobacco Use"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^url = $tobacco-use-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#72166-2 "Tobacco smoking status"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#229819007 "Tobacco use and exposure (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from SmokingStatusLtLifestyle (preferred)
* component ..0
