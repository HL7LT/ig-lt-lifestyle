Profile: PhysicalActivityLtLifestyle
Parent: ObservationLt
Id: physical-activity-lt-lifestyle
Title: "Physical Activity"
Description: "This profile constrains the Observation resource to represent the patient's level of physical activity compared to recommended standards."
* ^status = #draft
* ^url = $physical-activity-lt-lifestyle-url
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T09:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#activity "Activity"
* code = $sct#68130003 "Physical activity (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from PhysicalActivityLevelLtLifestyle (preferred)
* component ..0
