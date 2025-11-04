ValueSet: YesNo
Id: yes-no
Title: "Yes-No options"
Description: "Selection Yes or No."
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
// No
* $sct#373067005 "No (qualifier value)"
// Yes
* $sct#373066001 "Yes (qualifier value)"


ValueSet: LTMetabolicSyndromeAssessment
Id: lt-metabolic-syndrome-assessment
Title: "Metabolic Syndrome Assessment (NCEP ATP III)"
Description: "Assessment of metabolic syndrome presence according to NCEP ATP III criteria."
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
// No
* $sct#373572006 "Clinical finding absent (situation)"
// Yes
* $sct#237602007 "Metabolic syndrome X (disorder)"

// It shoud be condition!
Profile: LTScreeningMetabolicSyndrome
Parent: LTBaseObservation
Id: lt-screening-metabolic-syndrome
Title: "Metabolic Syndrome (NCEP ATP III)"
Description: "Observation indicating presence of metabolic syndrome according to NCEP ATP III criteria (≥3 of 5 signs)."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-31T12:00:00+02:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#364392006 "Metabolic observable"
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
InstanceOf: LTScreeningMetabolicSyndrome
Usage: #example
Title: "Example of Metabolic Syndrome Assessment"
Description: "Example showing metabolic syndrome present according to NCEP ATP III criteria."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#364392006 "Metabolic observable"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#237602007 "Metabolic syndrome X (disorder)"
* note.text = "There are at least 3 of 5 signs present (NCEP ATP III criteria)."
