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
* $sct#219006 "Current drinker of alcohol (finding)"   // Yes
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






Profile: LTAlcoholUseHistory
Parent: LTBaseObservation
Id: lt-alcohol-use-history
Title: "Alcohol Use History"
Description: "This profile constrains the Observation resource to represent a simple yes/no alcohol use history item."

* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

// Category and code
* category = $observation-category#social-history "Social History"
* code = $sct#160573003 "Alcohol consumption (observable entity)"

// Subject and timing
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime

// Value (Yes/No)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (preferred)

// Optional free-text note
* note 0..1
* note.text ^short = "Optional free-text note describing details"

// Optional structured components
* component 0..*
* component ^short = "Optional additional structured details"
* component ^definition = "For extra details such as frequency or duration."

// Example optional slice: frequency
* component contains Frequency 0..1
* component[Frequency].code = $sct#370870000 "Frequency (qualifier value)"
* component[Frequency].value[x] only CodeableConcept
* component[Frequency].valueCodeableConcept from AlcoholUseFrequencyVS (preferred)
* component[Frequency].valueCodeableConcept ^short = "Daily / Weekly / Monthly"

// Example optional slice: duration
* component contains Duration 0..1
* component[Duration].code = $sct#424717009 "Duration (attribute)"
* component[Duration].value[x] only string
* component[Duration].valueString ^short = "For how long"


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



Instance: example-alcohol-history-yes
InstanceOf: LTLifestyleAlcoholConsumption
Usage: #example
Title: "Example – Alcohol Consumption History (Yes)"
Description: "Patient reports alcohol consumption with additional structured details."

* status = #final
* category = $observation-category#social-history "Social History"

// YES/NO alcohol use 
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
// Subject and timing
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
// Frequency slice 
* component[Frequency].code = $sct#370870000 "Frequency (qualifier value)"
* component[Frequency].valueCodeableConcept = $sct#229065009 "Daily (qualifier value)"
// Type slice 
* component contains Type 0..1
* component[Type].code = $sct#424226004 "Type (qualifier value)"
* component[Type].valueString = "Wine"
// Optional free-text note
* note.text = "Patient drinks daily, typically wine."
