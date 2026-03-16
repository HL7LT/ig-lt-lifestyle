Instance: observation-auditc-example
InstanceOf: AuditCLtLifestyle
Usage: #example
Title: "Observation: AUDIT-C (example)"
Description: "AUDIT-C total score with reference to the answer."
* status = #final
* category = $observation-category#survey "Survey"
* code.coding[loincCode] = $loinc#75626-2 "Total score [AUDIT-C]"
* code.coding[sctCode] = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-28T10:00:00+03:00"
* valueQuantity.value = 7
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{score}
* derivedFrom = Reference(QuestionnaireResponse/questionnaire-response-auditc-example)
* note.text = "Computed from patient's latest AUDIT-C responses."
