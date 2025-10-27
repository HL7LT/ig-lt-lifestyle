ValueSet: LTCholesterolLDLMethod
Id: lt-cholesterol-ldl-method
Title: "LT Cholesterol LDL Methods"
Description: "Allowed LOINC codes for LDL cholesterol measurements (direct or calculated)."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $loinc#69419-0 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by Direct assay"
* $loinc#39469-2 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by calculation"
* $loinc#96258-9 "Cholesterol in LDL [Moles/volume] in Serum or Plasma Calculated by Martin-Hopkins"




Profile: LTTotalCholesterol
Parent: LTBaseObservation
Id: lt-total-cholesterol
Title: "LT Total Cholesterol"
Description: "Observation representing the patient's total cholesterol concentration in serum or plasma."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T22:10:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14647-2 "Cholesterol [Moles/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the total cholesterol result (e.g., Normal, High, Low)"
* component ..0


Profile: LTCholesterolNonHDL
Parent: LTBaseObservation
Id: lt-cholesterol-non-hdl
Title: "LT Cholesterol Non-HDL"
Description: "Observation representing the patient's non-HDL cholesterol concentration in serum or plasma, calculated as total cholesterol minus HDL cholesterol."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T22:25:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#70204-3 "Cholesterol non HDL [Moles/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the non-HDL cholesterol result (e.g., Normal, High, Low)"
* component ..0


Profile: LTCholesterolHDL
Parent: LTBaseObservation
Id: lt-cholesterol-hdl
Title: "LT Cholesterol HDL"
Description: "Observation representing the patient's high-density lipoprotein (HDL) cholesterol concentration in serum or plasma."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T22:35:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14646-4 "Cholesterol in HDL [Moles/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the HDL cholesterol result (e.g., Normal, Low, High)"
* component ..0


Profile: LTCholesterolLDL
Parent: LTBaseObservation
Id: lt-cholesterol-ldl
Title: "LT Cholesterol LDL"
Description: "Observation representing the patient's low-density lipoprotein (LDL) cholesterol concentration in serum or plasma, measured either directly or by calculation."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T23:05:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code from LTCholesterolLDLMethod (preferred)
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the LDL cholesterol result (e.g., Normal, High, Low)"
* component ..0


Profile: LTTriglycerides
Parent: LTBaseObservation
Id: lt-triglycerides
Title: "LT Triglycerides"
Description: "Observation representing the patient's triglyceride concentration in serum or plasma, used to assess lipid metabolism and cardiovascular risk."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T22:50:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14927-8 "Triglyceride [Moles/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the triglyceride result (e.g., Normal, High, Low)"
* component ..0




//Examples

Instance: example-total-cholesterol
InstanceOf: LTTotalCholesterol
Usage: #example
Title: "Example LT Total Cholesterol: Normal"
Description: "Example observation showing a patient's total cholesterol level within normal range."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14647-2 "Cholesterol [Moles/volume] in Serum or Plasma"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 4.8
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* interpretation = $v3-obs-interpretation#N "Normal"
* note.text = "Total cholesterol within target range (<5 mmol/L)."


Instance: example-cholesterol-non-hdl
InstanceOf: LTCholesterolNonHDL
Usage: #example
Title: "Example LT Cholesterol Non-HDL: Normal"
Description: "Example observation showing a patient's non-HDL cholesterol level within normal range."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#70204-3 "Cholesterol non HDL [Moles/volume] in Serum or Plasma"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 3.1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* interpretation = $v3-obs-interpretation#N "Normal"
* note.text = "Non-HDL cholesterol within recommended range (<3.8 mmol/L)."


Instance: example-cholesterol-hdl
InstanceOf: LTCholesterolHDL
Usage: #example
Title: "Example LT Cholesterol HDL: Normal"
Description: "Example observation showing a patient's HDL cholesterol level within normal range."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14646-4 "Cholesterol in HDL [Moles/volume] in Serum or Plasma"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 1.5
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* interpretation = $v3-obs-interpretation#N "Normal"
* note.text = "HDL cholesterol within healthy range (≥1.0 mmol/L for men, ≥1.3 mmol/L for women)."


Instance: example-triglycerides
InstanceOf: LTTriglycerides
Usage: #example
Title: "Example LT Triglycerides: Normal"
Description: "Example observation showing a patient's triglyceride level within normal range."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14927-8 "Triglyceride [Moles/volume] in Serum or Plasma"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 1.2
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* interpretation = $v3-obs-interpretation#N "Normal"
* note.text = "Triglyceride level within normal range (<1.7 mmol/L)."


Instance: example-cholesterol-ldl
InstanceOf: LTCholesterolLDL
Usage: #example
Title: "Example LT Cholesterol LDL: Calculated"
Description: "Example observation showing a patient's calculated LDL cholesterol level."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#39469-2 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by calculation"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 2.8
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* interpretation = $v3-obs-interpretation#N "Normal"
* note.text = "LDL cholesterol calculated using the Friedewald formula."
