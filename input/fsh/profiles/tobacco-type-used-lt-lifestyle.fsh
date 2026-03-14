Profile: TobaccoTypeUsedLtLifestyle
Parent: ObservationLt
Id: tobacco-type-used-lt-lifestyle
Title: "Tobacco Type Used"
Description: "Records the type of tobacco product currently or previously used by the patient (e.g., cigarettes, cigars, e-cigarettes)."
* ^url = $tobacco-type-used-lt-lifestyle-url
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
* code.coding[loincCode] = $loinc#81228-9 "Tobacco product"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#53661000146106 "Type of tobacco used"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TobaccoTypeUsedVSLtLifestyle (preferred)
* component ..0
