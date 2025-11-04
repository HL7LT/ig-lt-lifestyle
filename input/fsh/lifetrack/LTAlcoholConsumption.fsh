ValueSet: LTAlcoholConsumptionStatus
Id: lt-alcohol-consumption-status
Title: "Alcohol Consumption Status"
Description: "Whether the patient currently consumes alcohol, does not consume alcohol, or the status is unknown."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#105542008 "Current non-drinker of alcohol (finding)"   // No
* $sct#365967005 "Finding of alcohol intake (finding)"         // Yes
* $sct#160580001 "Alcohol consumption unknown (finding)"       // Unknown




// Profile: LT Alcohol Consumption 
Profile: LTLifestyleAlcoholConsumption
Parent: LTBaseObservation
Id: lt-lifestyle-alcohol-consumption
Title: "Alcohol Consumption"
Description: "Observation of a patient's current alcohol consumption status. Optionally includes an AUDIT-C score component when alcohol intake is present."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T12:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTAlcoholConsumptionStatus (preferred)




// Example
Instance: example-alcohol-consumption-no
InstanceOf: LTLifestyleAlcoholConsumption
Usage: #example
Title: "Example of Alcohol Consumption – No"
Description: "Patient is currently not drinking alcohol (sober) at the time of assessment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#105542008 "Current non-drinker of alcohol (finding)"
* note.text = "Patient is sober today and reports no alcohol consumed in the recent period."





