Instance: observation-physical-activity-below-example
InstanceOf: PhysicalActivityLtLifestyle
Usage: #example
Title: "Observation: Physical Activity - Below Recommended Level (example)"
Description: "Example instance showing a patient whose physical activity level is below recommended standards."

* status = #final
* category = $observation-category#activity "Activity"
* code = $sct#68130003 "Physical activity (observable entity)"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#413300002 "Exercise below recommended level (finding)"
* note.text = "Patient reports engaging in physical activity twice a week, below recommended 150 minutes per week."
