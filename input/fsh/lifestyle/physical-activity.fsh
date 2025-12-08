ValueSet: LTPhysicalActivityLevel
Id: lt-physical-activity-level
Title: "Physical Activity Level"
Description: "Categorical assessment of whether the patient's physical activity meets, exceeds, or falls below recommended levels."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#424805008 "Exercise above recommended level (finding)"
* $sct#228448000 "Exercises regularly (finding)"
* $sct#413300002 "Exercise below recommended level (finding)"

Profile: LTLifestylePhysicalActivity
Parent: LTBaseObservation
Id: lt-lifestyle-physical-activity
Title: "Physical Activity"
Description: "This profile constrains the Observation resource to represent the patient’s level of physical activity compared to recommended standards."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T09:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#activity "Activity"
* code = $sct#68130003 "Physical activity (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTPhysicalActivityLevel (preferred)
* component ..0

// Example
Instance: example-physical-activity-below
InstanceOf: LTLifestylePhysicalActivity
Usage: #example
Title: "Example of Physical Activity - Below Recommended Level"
Description: "Example instance showing a patient whose physical activity level is below recommended standards."

* status = #final
* category = $observation-category#activity "Activity"
* code = $sct#68130003 "Physical activity (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#413300002 "Exercise below recommended level (finding)"
* note.text = "Patient reports engaging in physical activity twice a week, below recommended 150 minutes per week."
