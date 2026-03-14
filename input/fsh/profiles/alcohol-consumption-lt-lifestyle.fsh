Profile: AlcoholConsumptionLtLifestyle
Parent: ObservationLt
Id: alcohol-consumption-lt-lifestyle
Title: "Alcohol Consumption"
Description: "Observation of a patient's current alcohol consumption status. Optionally includes an AUDIT-C score component when alcohol intake is present."
* ^url = $alcohol-consumption-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T12:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from AlcoholConsumptionStatusLtLifestyle (preferred)
