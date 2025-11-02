Profile: LTGlycatedHemoglobin
Parent: LTBaseObservation
Id: lt-glycated-hemoglobin
Title: "LT Glycated Hemoglobin (HbA1c) Test"
Description: "Observation representing Glycated Hemoglobin (HbA1c) test results in blood, reported as a percentage."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-11-02"
* ^publisher = "HL7 Lithuania"

// --- Identification ---
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"

// --- Subject & Timing ---
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime

// --- HbA1c Result Value ---
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* valueQuantity ^short = "Measured HbA1c concentration as a percentage"
* valueQuantity ^comment = "HbA1c indicates average blood glucose over previous 2–3 months."

// --- Optional Interpretation & Reference Range ---
* interpretation only CodeableConcept
* referenceRange 0..1
* referenceRange.low.value = 4.0
* referenceRange.high.value = 6.0
* referenceRange.low.unit = "%"
* referenceRange.high.unit = "%"
* referenceRange.low.system = $ucum
* referenceRange.high.system = $ucum
* referenceRange.text = "Normal range: 4.0–6.0%"

// --- Example ---
Instance: example-hba1c
InstanceOf: LTGlycatedHemoglobin
Usage: #example
Title: "Example LT HbA1c Test Result"
Description: "Example of HbA1c test result for a patient with moderately elevated glycemia."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-20T09:00:00Z"
* valueQuantity.value = 7.4
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* interpretation = $sct#263654008 "Abnormal (qualifier value)"
* note.text = "HbA1c is elevated above the normal range (target <6.5%)."
