Instance: observation-alcohol-history-yes-example
InstanceOf: AlcoholUseHistoryLtLifestyle
Usage: #example
Title: "Observation: Alcohol Consumption History – Yes (example)"
Description: "Patient reports alcohol consumption with additional structured details."
* status = #final
* category = $observation-category#social-history "Social History"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[Frequency].code = $sct#260864003 "Frequency (attribute)"
* component[Frequency].valueCodeableConcept = $sct#69620002 "Daily (qualifier value)"
* component[Type].code = $sct#53527002 "Alcoholic beverage (substance)"
* component[Type].valueCodeableConcept = $sct#35748005 "Wine (substance)"
* component[Type].valueCodeableConcept.text = "Wine"
* note.text = "Patient drinks daily, typically wine."
