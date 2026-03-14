Instance: observation-alcohol-consumption-no-example
InstanceOf: AlcoholConsumptionLtLifestyle
Usage: #example
Title: "Observation: Alcohol Consumption – No (example)"
Description: "Patient is currently not drinking alcohol (sober) at the time of assessment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#105542008 "Current non-drinker of alcohol (finding)"
* note.text = "Patient is sober today and reports no alcohol consumed in the recent period."
