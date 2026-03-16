Instance: observation-number-of-steps-example
InstanceOf: NumberOfStepsLtLifestyle
Usage: #example
Title: "Observation: Number of Steps (example)"
Description: "Example observation representing the number of steps taken by a person in 24 hours."
* status = #final
* category[VSCat] = $observation-category#activity "Activity"
* category[NumberOfStepsCode] = $loinc#41950-7 "Number of steps in 24 hour Measured"
* code = $loinc#41950-7 "Number of steps in 24 hour Measured"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-27T23:59:00+03:00"
* valueQuantity.value = 8642
* valueQuantity.unit = "{#}/{24.h}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/d
* interpretation = $observation-interpretation#N "Normal"
* device = Reference(device-physical-activity-example)
* note.text = "Steps counted automatically using a smartwatch throughout the day."
