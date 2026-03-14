Profile: MetabolicSyndromeLtLifestyle
Parent: ObservationLt
Id: metabolic-syndrome-lt-lifestyle
Title: "Metabolic Syndrome (NCEP ATP III)"
Description: "Observation indicating presence of metabolic syndrome according to NCEP ATP III criteria (≥3 of 5 signs)."
* ^url = $metabolic-syndrome-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-31T12:00:00+02:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#364392006 "Metabolic observable"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from MetabolicSyndromeAssessmentLtLifestyle (required)
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of metabolic syndrome risk (if applicable)"
* component ..0
