Instance: observation-metabolic-syndrome-example
InstanceOf: MetabolicSyndromeLtLifestyle
Usage: #example
Title: "Observation: Metabolic Syndrome Assessment (example)"
Description: "Example showing metabolic syndrome present according to NCEP ATP III criteria."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#364392006 "Metabolic observable"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#237602007 "Metabolic syndrome X (disorder)"
* note.text = "There are at least 3 of 5 signs present (NCEP ATP III criteria)."
