Invariant: vs-ns-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vs-ns-2
Description: "For single vital signs observations (that do not require use of components or hasMember), then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "dataAbsentReason.exists() or value.exists()"


Profile: NumberOfStepsLtLifestyle
Parent: ObservationLt
Id: number-of-steps-lt-lifestyle
Title: "Number of Steps"
Description: "The measurement tracks the count of steps taken by an individual during one day."
* ^url = $number-of-steps-lt-lifestyle-url
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^experimental = true
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

* obeys vs-ns-1
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vs-ns-1"
* value[x] only Quantity


* obeys vs-ns-2
* . ^short = "Number of Steps Profile (EE)"
* . ^definition = "This profile defines how to represent number of steps observations in FHIR using a standard LOINC code and UCUM units of measure."
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and NumberOfStepsCode 1..1 MS
* category[VSCat] = $observation-category#activity 
* category[VSCat] ^definition = "The physical activity"
* category[NumberOfStepsCode] = $loinc#41950-7 
* category[NumberOfStepsCode] ^definition = "Number of steps in 24 hour Measured"

* code = $loinc#41950-7 
* code ^short = "Number of steps in 24 hour"
* code ^definition = "Number of steps in 24 hour."
* valueQuantity MS
* valueQuantity.system = $ucum 
* valueQuantity.code = #/d 
* valueQuantity.unit = "{#}/{24.h}" 
* valueQuantity ^condition = "vs-ns-2"
* dataAbsentReason MS
* dataAbsentReason ^condition = "vs-ns-2"

* component 0..0
* bodySite ..0
* bodyStructure ..0
* device only Reference(PhysicalActivityDeviceLtLifestyle)
* device MS
* device ^short = "Physical Activity Measurement Device"
