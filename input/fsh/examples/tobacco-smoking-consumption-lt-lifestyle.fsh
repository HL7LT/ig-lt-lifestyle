Instance: observation-tobacco-smoking-consumption-example
InstanceOf: TobaccoSmokingConsumptionLtLifestyle
Usage: #example
Title: "Observation: Smoking Consumption - Light cigarette smoker (example)"
Description: "Example instance showing a patient who is a light cigarette smoker."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#160603005 "Light cigarette smoker (1–9 cigs/day)"
* note.text = "Patient reports smoking approximately 8 cigarettes per day."
