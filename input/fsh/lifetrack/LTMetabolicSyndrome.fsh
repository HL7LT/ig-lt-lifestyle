ValueSet: LTMetabolicSyndromeAssessment
Id: lt-metabolic-syndrome-assessment
Title: "LT Metabolic Syndrome Assessment (NCEP ATP III)"
Description: "Assessment of metabolic syndrome presence according to NCEP ATP III criteria."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#373067005 "No (qualifier value)" 
* $sct#373066001 "Yes (qualifier value)" 


Profile: LTMetabolicSyndrome
Parent: LTBaseObservation
Id: lt-metabolic-syndrome
Title: "LT Metabolic Syndrome (NCEP ATP III)"
Description: "Observation indicating presence of metabolic syndrome according to NCEP ATP III criteria (≥3 of 5 signs)."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-31T12:00:00+02:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Examination"
* code = $sct#237602007 "Metabolic syndrome X (disorder)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from LTMetabolicSyndromeAssessment (required)
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of metabolic syndrome risk (if applicable)"
* component ..0


Instance: example-metabolic-syndrome
InstanceOf: LTMetabolicSyndrome
Usage: #example
Title: "Example LT Metabolic Syndrome Assessment"
Description: "Example showing metabolic syndrome present according to NCEP ATP III criteria."
* status = #final
* category = $observation-category#exam "Examination"
* code = $sct#237602007 "Metabolic syndrome X (disorder)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* note.text = "There are at least 3 of 5 signs present (NCEP ATP III criteria)."
