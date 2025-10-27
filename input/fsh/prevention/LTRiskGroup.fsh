ValueSet: LTCVDRiskGroup
Id: lt-cvd-risk-group
Title: "LT Cardiovascular Disease Risk Group"
Description: "Defines the interpretation categories for cardiovascular disease risk assessment results, based on HL7 Observation Interpretation codes."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "Includes content from HL7 v3 Observation Interpretation CodeSystem (http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation)."

* $observation-interpretation#N "Normal"
* $observation-interpretation#H "High"
* $observation-interpretation#HU "Significantly high"

Profile: LTPreventionRiskGroup
Parent: LTBaseObservation
Id: lt-prevention-risk-group
Title: "LT Prevention Risk Group"
Description: "Records the patient’s cardiovascular prevention risk classification, expressed as a percentage value and interpreted using HL7 Observation Interpretation codes."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"

* category = $observation-category#social-history "Social History"
* code = $sct#827181004 "Risk of cardiovascular disease"
* effective[x] 1.. MS
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when the cardiovascular risk assessment was performed."
* value[x] only Quantity
* valueQuantity = $ucum#% "%"
* interpretation from LTCVDRiskGroup (extensible)
* interpretation ^short = "Risk group classification (Normal, High, Significantly high)"
* interpretation ^comment = """
The interpretation category is derived from the numeric cardiovascular risk percentage:
- < 10% → not assigned (below threshold)
- 10–19% → Normal (#N)
- 20–29% → High (#H)
- ≥ 30% → Significantly high (#HU)
"""
* component ..0


// Example
Instance: example-cvd-risk-group
InstanceOf: LTPreventionRiskGroup
Usage: #example
Title: "Example LT Prevention Risk Group - High"
Description: "Example showing a patient assessed as having a 24% cardiovascular disease risk, categorized as High."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 24
* interpretation = $observation-interpretation#H "High"
* note.text = "Patient’s cardiovascular disease risk is 24%, categorized as High risk group."
