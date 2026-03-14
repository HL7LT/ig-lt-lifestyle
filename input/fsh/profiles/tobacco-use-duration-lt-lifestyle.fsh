Profile: TobaccoUseDurationLtLifestyle
Parent: ObservationLt
Id: tobacco-use-duration-lt-lifestyle
Title: "Tobacco Use Duration - Number in Years"
Description: "Amount of time (e.g. years) the patient has used smoking or smokeless tobacco products"
* ^url = $tobacco-use-duration-lt-lifestyle-url
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
* code.coding[loincCode] = $loinc#88029-4  "Tobacco use duration"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#228487000 "Total time smoked"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity from $units-of-time (required)
* component ..0
