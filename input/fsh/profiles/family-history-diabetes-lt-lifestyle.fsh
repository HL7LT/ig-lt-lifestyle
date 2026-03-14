Profile: FamilyHistoryDiabetesLtLifestyle
Parent: ObservationLt
Id: family-history-diabetes-lt-lifestyle
Title: "Family History of Diabetes"
Description: "Observation indicating whether the patient has a family history of diabetes mellitus."
* ^url = $family-history-diabetes-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T20:15:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from FamilyHistoryDiabetesStatusLtLifestyle (preferred)
