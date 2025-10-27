
Profile: LTCreatinineTest
Parent: LTBaseObservation
Id: lt-creatinine-test
Title: "LT Creatinine Test"
Description: "Observation representing the patient's serum or plasma creatinine concentration."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T21:10:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "µmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #umol/L
* interpretation from $observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the creatinine result (e.g., Normal, High, Low)"
* component ..0



// Profile: LT Estimated Glomerular Filtration Rate (eGFR)
Profile: LTEstimatedGFR
Parent: LTBaseObservation
Id: lt-estimated-gfr
Title: "LT Estimated Glomerular Filtration Rate (eGFR)"
Description: "Observation representing estimated glomerular filtration rate (eGFR) calculated using the CKD-EPI 2021 formula."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T21:30:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#98979-8 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mL/min/1.73 m²"
* valueQuantity.system = $ucum
* valueQuantity.code = #mL/min/{1.73_m2}
* interpretation from $observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the eGFR result (e.g., Normal, Low, High)"
* component ..0



// Profile: LT Albumin/Creatinine Ratio (ACR)
Profile: LTAlbuminCreatinineRatio
Parent: LTBaseObservation
Id: lt-albumin-creatinine-ratio
Title: "LT Albumin/Creatinine Ratio (ACR)"
Description: "Observation representing the urine albumin-to-creatinine ratio (ACR), used to assess kidney function in diabetic patients."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T21:45:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#32294-1 "Albumin/Creatinine [Ratio] in Urine"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "mg/g creatinine"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/g{creat}
* interpretation from $observation-interpretation (extensible)
* interpretation ^short = "Interpretation of the ACR result (e.g., Normal, High)"
* component ..0




// Example
Instance: example-creatinine-test
InstanceOf: LTCreatinineTest
Usage: #example
Title: "Example LT Creatinine Test"
Description: "Example observation of serum creatinine concentration."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 85
* valueQuantity.unit = "µmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #umol/L
* interpretation = $observation-interpretation#N "Normal"
* note.text = "Patient's creatinine level within normal range."


// Example: eGFR 
Instance: example-egfr
InstanceOf: LTEstimatedGFR
Usage: #example
Title: "Example LT eGFR (CKD-EPI 2021)"
Description: "Example observation representing an estimated glomerular filtration rate."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#98979-8 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 92
* valueQuantity.unit = "mL/min/1.73 m²"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mL/min/{1.73_m2}
* interpretation = $observation-interpretation#N "Normal"
* note.text = "Patient's eGFR within normal range (CKD-EPI 2021)."


// Example: Albumin/Creatinine Ratio
Instance: example-albumin-creatinine-ratio
InstanceOf: LTAlbuminCreatinineRatio
Usage: #example
Title: "Example LT Albumin/Creatinine Ratio (ACR)"
Description: "Example observation of a patient's urine albumin-to-creatinine ratio."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#32294-1 "Albumin/Creatinine [Ratio] in Urine"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 18
* valueQuantity.unit = "mg/g creatinine"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/g{creat}
* interpretation = $observation-interpretation#N "Normal"
* note.text = "Urine albumin/creatinine ratio within normal range (<30 mg/g creatinine)."
