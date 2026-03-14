Instance: observation-tobacco-smoking-stopped-example
InstanceOf: TobaccoSmokingStoppedLtLifestyle
Usage: #example
Title: "Observation: Tobacco Smoking Stopped - 2 years ago (example)"
Description: "Example instance showing a patient who has stopped smoking 2 years ago."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#228486009 "Time since stopped smoking (observable entity)"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity = $ucum#a "years"
  * value = 2
* note.text = "Patient reports stopped smoking 2 years ago."
