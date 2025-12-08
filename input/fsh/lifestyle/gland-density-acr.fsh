

// Gland Density ACR ValueSet 
ValueSet: LTGlandDensityACR
Id: lt-gland-density-acr
Title: "Gland Density ACR"
Description: "ACR (BI-RADS) glandular density assessment."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#129716005 "Almost entirely fat breast composition (finding)"
* $sct#129717001 "Scattered fibroglandular densities (finding)"
* $sct#129718006 "Heterogeneously dense breast composition (finding)"
* $sct#129719003 "Extremely dense breast composition (finding)"


// Profile: LT Gland Density
Profile: LTGlandDensity
Parent: LTBaseObservation
Id: lt-gland-density
Title: "Gland Density"
Description: "Gland density observation according to ACR BI-RADS classification."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
// Observation code
* code = $sct#733851004 "Breast consistency (observable entity)"
// Subject + timing
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
// Value
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTGlandDensityACR (required)
// Components (optional side of breast)
* component 0..*
* component ^short = "Optional breast side if density is side-specific"
// Slicing
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains Side 0..1
// Side component (matches other breast profiles)
* component[Side].code = $sct#76752008 "Breast structure (body structure)"
* component[Side].value[x] only CodeableConcept
* component[Side].valueCodeableConcept from $laterality (preferred)
* component[Side] ^short = "Breast side"


// Example
Instance: example-gland-density-fatty
InstanceOf: LTGlandDensity
Usage: #example
Title: "Example – Breast Density: Fatty"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#129716005 "Almost entirely fat breast composition (finding)"
* note.text = "Mammography shows predominantly fatty breast density."
