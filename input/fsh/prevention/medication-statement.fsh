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
      * value = 20
      * unit = "tablets"
  * text = "some timing"
* reason.concept = $sct#166643006 "Liver enzymes abnormal"
* note.text = "Patient cannot take acetaminophen as per Dr instructions"

