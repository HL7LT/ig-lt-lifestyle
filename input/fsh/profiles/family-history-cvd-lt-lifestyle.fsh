Profile: FamilyHistoryCVDLtLifestyle
Parent: ObservationLt
Id: family-history-cvd-lt-lifestyle
Title: "Family History of Cardiovascular Disease"
Description: "Observation indicating whether the patient has a family history of cardiovascular disease."
* ^url = $family-history-cvd-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T19:55:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#survey "Survey"
* code = $sct#266894000 "Family history: Cardiovascular disease (situation)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from FamilyHistoryCVDStatusLtLifestyle (preferred)
* note MS