ValueSet: LTCVDRiskDegree
Id: lt-cvd-risk-degree
Title: "LT Cardiovascular Disease Risk Degree (SCORE2)"
Description: """
Degree of cardiovascular disease risk according to SCORE2 risk estimation table.
Interpretation based on color zones:
🟢 Low – Normal (17621005)
🟡 Moderate – Mild (255604002)
🟠 High – Severe (24484000)
🔴 Very high – Fatal (399166001)
"""
* ^status = #active
* ^language = #en
* ^publisher = "HL7 Lithuania"
// Low risk
* $sct#17621005 "Normal (qualifier value)"
// Moderate risk
* $sct#255604002 "Mild (qualifier value)"
// High risk
* $sct#24484000 "Severe (qualifier value)"
// Very high risk
* $sct#399166001 "Fatal (qualifier value)"



Profile: LTCVDRiskAssessment
Parent: LTBaseObservation
Id: lt-cvd-risk-assessment
Title: "LT General Assessment of Cardiovascular Disease Risk (SCORE2)"
Description: "SCORE2 (Systematic Coronary Risk Estimation) cardiovascular disease risk assessment estimate."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-31"
* ^publisher = "HL7 Lithuania"
// Observation identification
* category = $observation-category#exam "Examination"
* code = $sct#441829007 "Assessment for risk of cardiovascular disease (procedure)"
// Subject and timing
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
// Numeric SCORE2 estimate (percentage)
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* valueQuantity ^short = "SCORE2 cardiovascular disease risk estimate (percentage)"
// Add slicing rules before the component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains cvdRiskDegree 1..1
// Qualitative risk degree slice
* component[cvdRiskDegree] ^short = "Qualitative SCORE2 risk category"
* component[cvdRiskDegree].code = $sct#441829007 "Assessment for risk of cardiovascular disease (procedure)"
* component[cvdRiskDegree].value[x] only CodeableConcept
* component[cvdRiskDegree].valueCodeableConcept from LTCVDRiskDegree (required)



Instance: example-cvd-risk-assessment
InstanceOf: LTCVDRiskAssessment
Usage: #example
Title: "Example LT SCORE2 Cardiovascular Disease Risk Assessment"
Description: "Example of SCORE2 risk assessment showing 24% estimated risk (high)."
* status = #final
* category = $observation-category#exam "Examination"
* code = $sct#441829007 "Assessment for risk of cardiovascular disease (procedure)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 24
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[cvdRiskDegree].valueCodeableConcept = $sct#24484000 "Severe (qualifier value)"
* note.text = "According to SCORE2 table: 24% risk corresponds to high cardiovascular risk (orange zone)."
