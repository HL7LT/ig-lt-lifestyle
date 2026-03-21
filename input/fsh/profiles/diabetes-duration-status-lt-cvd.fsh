Profile: DiabetesDurationStatusLtLifestyle
Parent: ObservationLt
Id: diabetes-duration-status-lt-lifestyle
Title: "Diabetes Mellitus Duration Over 10 Years"
Description: "Observation indicating whether the patient has had Diabetes Mellitus for 10 years or more."
* ^url = $diabetes-duration-status-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-11-02"
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* code ^short = "Presence and duration of diabetes in patient history"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from $yes-no-url (required)
* valueCodeableConcept ^short = "Indicates whether diabetes duration exceeds 10 years."
