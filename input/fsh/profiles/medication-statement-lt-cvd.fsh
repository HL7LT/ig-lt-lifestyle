Profile: MedicationStatementLtLifestyle
Parent: MedicationStatement
Id: medication-statement-lt-lifestyle
Title: "Medication Statement for screening programs"
Description: "A simplified profile for MedicationStatement focusing on essential elements."
* ^url = $medication-statement-lt-lifestyle-url
* status 1..1 MS
* medication 1..1 MS
* medication.concept 1..1 MS
* medication.concept.text MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* dosage 1..1 MS
* dosage.extension contains MedicationTimingExtLtLifestyle named medicationTiming 0..1
* dosage.extension[medicationTiming] 0..1 MS

* dosage.doseAndRate.doseQuantity 1..1 MS
* dosage.doseAndRate.doseQuantity.value 1..1 MS
* dosage.doseAndRate.doseQuantity.code 0..1 MS
