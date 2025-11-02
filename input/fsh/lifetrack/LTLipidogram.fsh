Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation


Profile: LTLipidogram
Parent: Observation
Id: lt-lipidogram
Title: "LT Lipidogram (Lipid Panel – Serum or Plasma)"
Description: "Lipid panel (Lipidogram) including Total Cholesterol, LDL-C, HDL-C, and Triglycerides. Based on LOINC 24331-1."

* ^status = #draft
* ^language = #en
* ^publisher = "HL7 Lithuania"
* ^version = "1.0.0"
* ^date = "2025-10-31"

* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24331-1 "Lipid 1996 panel - Serum or Plasma"

* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* specimen 0..1
* specimen only Reference(Specimen)

* value[x] 0..0 // panel itself has no single numeric value

// --- Slicing for component elements ---
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// --- Components ---
* component contains
    totalCholesterol 1..1 and
    ldlCholesterol 1..1 and
    hdlCholesterol 1..1 and
    triglycerides 1..1

* component[totalCholesterol].code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* component[ldlCholesterol].code = $loinc#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
* component[hdlCholesterol].code = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* component[triglycerides].code = $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"

* component[totalCholesterol].value[x] only Quantity
* component[ldlCholesterol].value[x] only Quantity
* component[hdlCholesterol].value[x] only Quantity
* component[triglycerides].value[x] only Quantity

// --- Common units (mmol/L) ---
* component[totalCholesterol].valueQuantity.system = $ucum
* component[totalCholesterol].valueQuantity.unit = "mmol/L"
* component[totalCholesterol].valueQuantity.code = #mmol/L

* component[ldlCholesterol].valueQuantity.system = $ucum
* component[ldlCholesterol].valueQuantity.unit = "mmol/L"
* component[ldlCholesterol].valueQuantity.code = #mmol/L

* component[hdlCholesterol].valueQuantity.system = $ucum
* component[hdlCholesterol].valueQuantity.unit = "mmol/L"
* component[hdlCholesterol].valueQuantity.code = #mmol/L

* component[triglycerides].valueQuantity.system = $ucum
* component[triglycerides].valueQuantity.unit = "mmol/L"
* component[triglycerides].valueQuantity.code = #mmol/L

// --- Reference ranges (suggested normal values) ---
* component[totalCholesterol].referenceRange.high.value = 5.0
* component[totalCholesterol].referenceRange.high.unit = "mmol/L"
* component[totalCholesterol].referenceRange.text = "< 5.0 mmol/L"

* component[ldlCholesterol].referenceRange.high.value = 3.0
* component[ldlCholesterol].referenceRange.high.unit = "mmol/L"
* component[ldlCholesterol].referenceRange.text = "< 3.0 mmol/L"

* component[hdlCholesterol].referenceRange.low.value = 1.0
* component[hdlCholesterol].referenceRange.low.unit = "mmol/L"
* component[hdlCholesterol].referenceRange.text = "> 1.0 mmol/L"

* component[triglycerides].referenceRange.high.value = 1.7
* component[triglycerides].referenceRange.high.unit = "mmol/L"
* component[triglycerides].referenceRange.text = "< 1.7 mmol/L"






Instance: example-lipidogram
InstanceOf: LTLipidogram
Usage: #example
Title: "Example Lipidogram – Serum/Plasma"
Description: "Example lipid panel with high LDL and normal HDL."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24331-1 "Lipid panel - Serum or Plasma"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-31T09:00:00Z"
* specimen.display = "Serum sample"

// Results
* component[totalCholesterol].valueQuantity.value = 6.2
* component[ldlCholesterol].valueQuantity.value = 4.3
* component[hdlCholesterol].valueQuantity.value = 1.4
* component[triglycerides].valueQuantity.value = 1.3

// Interpretations
* component[totalCholesterol].interpretation = $v3-ObservationInterpretation#H "High"
* component[ldlCholesterol].interpretation = $v3-ObservationInterpretation#H "High"
* component[hdlCholesterol].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[triglycerides].interpretation = $v3-ObservationInterpretation#N "Normal"

* note.text = "LDL cholesterol elevated; overall lipid profile suggests need for dietary modification and monitoring."
