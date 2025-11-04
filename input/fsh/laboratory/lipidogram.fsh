Profile: LTLabLipidogram
Parent: LTBaseObservation
Id: lt-lab-lipidogram
Title: "Lipidogram (Lipid Panel – Serum or Plasma)"
Description: "Lipid panel (Lipidogram) including Total Cholesterol, LDL-C, HDL-C, and Triglycerides. Based on LOINC 24331-1."

* ^status = #draft
* ^language = #en
* ^publisher = "HL7 Lithuania"
* ^version = "1.0.0"
* ^date = "2025-10-31"

* category = $observation-category#laboratory "Laboratory"
// or 57698-3 - Lipid panel with direct LDL???
* code = $loinc#24331-1 "Lipid 1996 panel - Serum or Plasma"


* subject 1..1
* subject only Reference(https://hl7.lt/fhir/base/StructureDefinition/lt-patient)
* effective[x] 1..1
* effective[x] only dateTime
* specimen 0..1
* specimen only Reference(Specimen)

* value[x] ..0 // panel itself has no single numeric value
* interpretation ..0
* component ..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open

* hasMember contains
    totalCholesterol 1..1 and
    ldlCholesterol 1..1 and
    hdlCholesterol 1..1 and
    triglycerides 1..1

* hasMember[totalCholesterol] only Reference(LTLabTotalCholesterol)
* hasMember[ldlCholesterol] only Reference(LTLabCholesterolLDL)
* hasMember[hdlCholesterol] only Reference(LTLabCholesterolHDL)
* hasMember[triglycerides] only Reference(LTLabTriglycerides)



Instance: triglyceride
InstanceOf: Observation
Usage: #inline
* id = "triglyceride"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#35217-9 "Triglyceride [Mass or Moles/volume] in Serum or Plasma"
* code.text = "Triglyceride"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2011-03-04T08:30:00+11:00"
// * performer = Reference(Organization/example-organization) "Acme Laboratory, Inc"
* valueQuantity = 1.3 'mmol/L' "mmol/L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.high = 2 'mmol/L' "mmol/L"
* referenceRange.text = "Normal range: less than 2.0 mmol/L"



Instance: example-lipidogram
InstanceOf: LTLabLipidogram
Usage: #example
Title: "Example of Lipidogram – Serum/Plasma"
Description: "Example lipid panel with high LDL and normal HDL."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24331-1 "Lipid 1996 panel - Serum or Plasma"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-31T09:00:00Z"
* specimen.display = "Serum sample"

* contained[0] = triglyceride

* hasMember[totalCholesterol] = Reference(Observation/cexample-total-cholesterol)
* hasMember[ldlCholesterol] = Reference(Observation/example-cholesterol-hdl)
* hasMember[hdlCholesterol] = Reference(Observation/example-cholesterol-ldl)
* hasMember[triglycerides] = Reference(triglyceride)

* note.text = "LDL cholesterol elevated; overall lipid profile suggests need for dietary modification and monitoring."
