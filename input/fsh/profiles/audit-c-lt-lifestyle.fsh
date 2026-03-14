Invariant: auditc-range
Description: "AUDIT-C score must be between 0 and 12 inclusive."
Severity: #error
Expression: "value.ofType(Quantity).value.all($this >= 0 and $this <= 12)"

Invariant: auditc-ucum
Description: "AUDIT-C score must use UCUM {score}."
Severity: #error
Expression: "value.ofType(Quantity).all(system = 'http://unitsofmeasure.org' and code = '{score}')"


Profile: AuditCLtLifestyle
Parent: ObservationLt
Id: audit-c-lt-lifestyle
Title: "AUDIT-C Total Score"
Description: "AUDIT-C total score (0–12) as a quantitative Observation; linked to QuestionnaireResponse if necessary."
* ^url = $audit-c-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#survey "Survey"

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode].system = $loinc
* code.coding[loincCode] = $loinc#75626-2 "Total score [AUDIT-C]"
* code.coding[sctCode].system = $sct
* code.coding[sctCode] = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"

* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

* derivedFrom 0..1
* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom ^short = "QuestionnaireResponse"


* obeys auditc-range and auditc-ucum
