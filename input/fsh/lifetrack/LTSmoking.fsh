
ValueSet: LTCurrentSmokingStatus
Id: lt-current-smoking-status
Title: "Current Smoking Status"
Description: "HL7 LT SNOMED value set for smoking status."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania" 
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#266919005 "Never smoked tobacco (finding)"
* $sct#77176002 "Smoker (finding)"
* $sct#8517006 "Ex-smoker (finding)"
// * $sct#449868002 "Smokes tobacco daily (finding)"
// * $sct#428041000124106 "Occasional tobacco smoker (finding)"
// * $sct#266927001 "Tobacco smoking consumption unknown (finding)"
// * $sct#230063004 "Heavy cigarette smoker (finding)"
// * $sct#230060001 "Light cigarette smoker (finding)"

ValueSet: LTTobaccoSmokingConsumption
Id: lt-tobacco-smoking-consumption
Title: "Tobacco Smoking Consumption - Cigarettes per day" 
Description: "Categorical representation of average cigarettes smoked per day."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#266920004 "Trivial cigarette smoker (less than one cigarette/day)"
* $sct#160603005 "Light cigarette smoker (1–9 cigs/day)"
* $sct#160604004 "Moderate cigarette smoker (10-19 cigs/day)"
* $sct#160605003 "Heavy cigarette smoker (20-39 cigs/day)"
* $sct#160606002 "Very heavy cigarette smoker (40+ cigs/day)"
* $sct#230065006 "Chain smoker"

ValueSet: LTTypeOfTobaccoUsed 
Id: lt-type-of-tobacco-used 
Title: "Type Of Tobacco Used" 
Description: "Records the type of tobacco product currently or previously used by the patient (e.g., cigarettes, cigars, e-cigarettes)."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#65568007 "Cigarette smoker (finding)"
* $sct#722499006 "Electronic cigarette user (finding)"
* $sct#59978006 "Cigar smoker (finding)"
* $sct#82302008 "Pipe smoker (finding)"
* $sct#228504007 "User of moist powdered tobacco (finding)"
* $sct#228494002 "Snuff user (finding)"
* $sct#81703003 "Chews tobacco (finding)"
* $sct#698188003 "Chews betel quid (finding)"
* $sct#698289004 "Hookah pipe smoker (finding)"
* $sct#733460004 "Marijuana user (finding)"


Profile: LTLifeTrackTobaccoUse
Parent: LTBaseObservation
Id: lt-lifetrack-tobaccouse
Title: "LT LifeTrack Tobacco Use"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"
* category = $observation-category#social-history "Social History"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#72166-2 "Tobacco smoking status"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#229819007 "Tobacco use and exposure (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTCurrentSmokingStatus (preferred)
* component ..0


// Example: current smoker
Instance: example-LTSmoking-current-smoker
InstanceOf: LTLifeTrackTobaccoUse
Usage: #example
Title: "Example LT Smoking Status - Current Smoker"
Description: "Example instance showing a patient who currently smokes."

* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode].system = $loinc
* code.coding[loincCode].code = #72166-2
* code.coding[sctCode].system = $sct
* code.coding[sctCode].code = #229819007 "Tobacco use and exposure (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#77176002 "Smoker (finding)"
* note.text = "Patient reports smoking approximately 10 cigarettes per day for 5 years."



Profile: LTLifeTrackTobaccoSmokingConsumption
Parent: LTBaseObservation
Id: lt-lifetrack-tobacco-smoking-consumption
Title: "LT LifeTrack Tobacco Smoking Consumption"
Description: "This profile constrains the Observation resource to represent Tobacco smoking consumption assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"

* category = $observation-category#social-history "Social History"
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTTobaccoSmokingConsumption (preferred)
* component ..0


// Example: Tobacco Smoking Consumption
Instance: example-tobacco-smoking-consumption
InstanceOf: LTLifeTrackTobaccoSmokingConsumption
Usage: #example
Title: "Example LT Smoking Consumption - Light cigarette smoker (1–9 cigs/day)"
Description: "Example instance showing a patient who is a light cigarette smoker."

* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#160603005 "Light cigarette smoker (1–9 cigs/day)"
* note.text = "Patient reports smoking approximately 8 cigarettes per day."



Profile: LTLifeTrackTobaccoUseDuration
Parent: LTBaseObservation
Id: lt-lifetrack-tobacco-use-duration
Title: "LT LifeTrack Tobacco Use Duration - Number in Years"
Description: "Amount of time (e.g. years) the patient has used smoking or smokeless tobacco products"
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"

* category = $observation-category#social-history "Social History"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#88029-4  "Tobacco use duration"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#228487000 "Total time smoked"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity from $units-of-time (required)
* component ..0


// Example: Tobacco Use Duration
Instance: example-tobacco-use-duration
InstanceOf: LTLifeTrackTobaccoUseDuration
Usage: #example
Title: "Example LT Tobacco Use Duration - 5 years"
Description: "Example instance showing a patient who has been smoking for 5 years."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode] = $loinc#88029-4  "Tobacco use duration"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity = $ucum#a "years"
  * value = 5
* note.text = "Patient reports smoking approximately for 5 years."


Profile: LTLifeTrackStoppedSmoking
Parent: LTBaseObservation
Id: lt-lifetrack-stopped-smoking
Title: "LT LifeTrack Stopped Smoking - Number of Years Ago"
Description: "Records how long it has been since the patient stopped smoking, as a quantitative time interval (e.g., years). "
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"

* category = $observation-category#social-history "Social History"
* code = $sct#228486009 "Time since stopped smoking (observable entity)"
* subject 1.. 
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity from $units-of-time (required)
* component ..0

// Example: Stopped Smoking
Instance: example-stopped-smoking
InstanceOf: LTLifeTrackStoppedSmoking
Usage: #example
Title: "Example LT Stopped Smoking - 2 years ago"
Description: "Example instance showing a patient who has stopped smoking 2 years ago."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#228486009 "Time since stopped smoking (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity = $ucum#a "years"
  * value = 2
* note.text = "Patient reports stopped smoking 2 years ago."


Profile: LTLifeTrackTypeOfTobaccoUsed 
Parent: LTBaseObservation
Id: lt-lifetrack-type-of-tobacco-used 
Title: "LT LifeTrack Type of tobacco used"
Description: "Records the type of tobacco product currently or previously used by the patient (e.g., cigarettes, cigars, e-cigarettes)."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"

* category = $observation-category#social-history "Social History"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#81228-9 "Tobacco product"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#53661000146106 "Type of tobacco used"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTTypeOfTobaccoUsed (preferred)
* component ..0

// Example: Type of Tobacco Used
Instance: example-type-of-tobacco-used
InstanceOf: LTLifeTrackTypeOfTobaccoUsed 
Usage: #example
Title: "Example LT LifeTrack Type Of Tobacco Used - Cigarette smoker"
Description: "Example instance showing a patient who is a cigarette smoker."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode] = $loinc#81228-9 "Tobacco product" 
* code.coding[sctCode] = $sct#53661000146106 "Type of tobacco used"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#65568007 "Cigarette smoker (finding)"
* note.text = "Patient reports to be a cigarette smoker."


