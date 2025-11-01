Extension: MedicationTiming
Id: MedicationTiming
Description: "The timing instructions for the medication (e.g., 'Before Meals', 'With Food')."
Context: Element
* ^url = "https://hl7.lt/fhir/lifestyle/StructureDefinition/medication-timing"
* value[x] only string
* valueString ^short = "The timing instruction for the medication."

Profile: LtScreeningMedicationStatement
Parent: MedicationStatement
Id: lt-screening-medication-statement
Title: "Medication Statement for screening programs"
Description: "A simplified profile for MedicationStatement focusing on essential elements."
* status 1..1 MS
* medication 1..1 MS
* medication.concept 1..1 MS
* medication.concept.text MS
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^type[0].targetProfile = LTBasePatient
* dosage 1..1 MS
* dosage.extension contains MedicationTiming named medicationTiming 0..1
* dosage.extension[medicationTiming] 0..1 MS

* dosage.doseAndRate.doseQuantity 1..1 MS
* dosage.doseAndRate.doseQuantity.value 1..1 MS
* dosage.doseAndRate.doseQuantity.code 0..1 MS

Instance: example-lt-screening-medication-statement
InstanceOf: LtScreeningMedicationStatement
Title: "Example LT Screening Medication Statement"
Description: "Example instance of a MedicationStatement for screening programs."
Usage: #example
* status = #recorded
* medication.concept.text = "Tylenol PM"
* subject = Reference(Patient/example-patient) 
* effectiveDateTime = "2015-01-23"
* dateAsserted = "2015-02-22"
* dosage
  * doseAndRate
    * doseQuantity
      * value = 1
      * unit = "tablet"
  * extension[medicationTiming].valueString = "3 times per day after meals"
* reason.concept = $sct#166643006 "Liver enzymes abnormal"
* note.text = "Patient cannot take acetaminophen as per Dr instructions"

