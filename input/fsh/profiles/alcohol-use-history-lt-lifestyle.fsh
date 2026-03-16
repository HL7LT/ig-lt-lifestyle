Profile: AlcoholUseHistoryLtLifestyle
Parent: ObservationLt
Id: alcohol-use-history-lt-lifestyle
Title: "Alcohol Use History"
Description: "This profile constrains the Observation resource to represent a simple yes/no alcohol use history item."
* ^url = $alcohol-use-history-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this" // Points to the coding element itself
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on specific code/system values"
* code.coding contains snomed 1..1 and loinc 1..1
* code.coding[snomed] = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* code.coding[loinc] = $loinc#74013-4 "Alcoholic drinks per day"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoLt (preferred)
* note 0..1
* note.text ^short = "Optional free-text note describing details"
* component 0..*
* component ^short = "Optional additional structured details"
* component ^definition = "For extra details such as frequency or duration."
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains Type 0..1
* component[Type].code = $sct#53527002 "Alcoholic beverage (substance)"
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept ^short = "Type of alcoholic beverage"
* component contains Frequency 0..1
* component[Frequency].code = $sct#260864003 "Frequency (attribute)"
* component[Frequency].value[x] only CodeableConcept
* component[Frequency].valueCodeableConcept from AlcoholUseFrequencyVSLtLifestyle (preferred)
* component[Frequency].valueCodeableConcept ^short = "Daily / Weekly / Monthly"
* component contains Duration 0..1
* component[Duration].code = $sct#103335007 "Duration (attribute)"
* component[Duration].value[x] only string
* component[Duration].valueString ^short = "For how long"
