Invariant: auditc-range
Description: "AUDIT-C score must be between 0 and 12 inclusive."
Severity: #error
Expression: "value.ofType(Quantity).value.all($this >= 0 and $this <= 12)"

Invariant: auditc-ucum
Description: "AUDIT-C score must use UCUM {score}."
Severity: #error
Expression: "value.ofType(Quantity).all(system = 'http://unitsofmeasure.org' and code = '{score}')"


Profile: LTAuditC
Parent: LTBaseObservation
Id: lt-auditc
Title: "LT AUDIT-C Total Score"
Description: "AUDIT-C koguskoor (0–12) kui kvantitatiivne Observation; vajadusel seotud QuestionnaireResponse’iga."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#social-history "Social History"

// Kood (LOINC + SNOMED) – slicing system’i järgi
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#75626-2 "Total score [AUDIT-C]"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"

* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

// Optional linkage with QuestionnaireResponse
* derivedFrom 0..1
* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom ^short = "QuestionnaireResponse, millest skoor saadi"


* obeys auditc-range and auditc-ucum


Instance: example-auditc
InstanceOf: LTAuditC
Usage: #example
Title: "Example AUDIT-C Observation"
Description: "AUDIT-C koguskoor koos viitega vastusele."
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loincCode] = $loinc#75626-2 "Total score [AUDIT-C]"
* code.coding[sctCode] = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-28T10:00:00+03:00"
* valueQuantity.value = 7
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{score}
* derivedFrom = Reference(QuestionnaireResponse/example-auditc-qr)
* note.text = "Computed from patient’s latest AUDIT-C responses."


Instance: example-auditc-qr
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Example AUDIT-C QuestionnaireResponse"
Description: "Minimal QR to which the Observation refers."
* status = #completed
* subject = Reference(example-patient)
// Reference to the US Core AUDIT-C sample questionnaire (optional, may be omitted)
* questionnaire = "http://hl7.org/fhir/us/core/Questionnaire/AUDIT-C|8.0.0"
* authored = "2025-10-28T09:58:00+03:00"
