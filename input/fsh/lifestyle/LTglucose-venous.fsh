Profile: LTGlucoseVenous
Parent: Observation
Id: lt-glucose-venous
Title: "LT Glucose in Venous Blood"
Description: "This profile constrains the Observation resource to represent glucose concentration in venous blood. It uses LOINC 41652-9 and SNOMED CT reference for venous blood specimen."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-11-06"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

// --- Category ---
* category = $observation-category#laboratory "Laboratory"
// --- Dual coding (LOINC + SNOMED) ---
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#41652-9 "Glucose [Mass/volume] in Venous blood"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#122555007 "Venous blood specimen (specimen)"
// --- Subject ---
* subject 1..1
* subject only Reference(Patient) // or LTBasePatient if defined in the same IG
// --- Timing ---
* effective[x] 1..1
* effective[x] only dateTime
// --- Result value ---
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
// --- Specimen ---
* specimen 0..1
* specimen only Reference(Specimen)


Instance: example-glucose-venous
InstanceOf: LTGlucoseVenous
Usage: #example
Title: "Example Glucose in Venous Blood"
Description: "Example of laboratory glucose measurement in venous blood."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#41652-9 "Glucose [Mass/volume] in Venous blood"
* code.coding[1] = $sct#122555007 "Venous blood specimen (specimen)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-11-06T09:00:00Z"
* valueQuantity.value = 5.4
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* specimen = Reference(example-specimen-venous)
* note.text = "Normal fasting glucose level."

Instance: example-specimen-venous
InstanceOf: Specimen
Usage: #example
Title: "Example Venous Blood Specimen"
Description: "Venous blood sample used for glucose testing."
* type = $sct#122555007 "Venous blood specimen"
* receivedTime = "2025-11-06T08:30:00Z"

