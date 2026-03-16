Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: questionnaire-audit-c-example
InstanceOf: Questionnaire
Usage: #example
Description: "The Alcohol Use Disorder Identification Test - Consumption (AUDIT-C) is a 3-item alcohol screen that can help identify persons who are hazardous drinkers or have active alcohol use disorders (including alcohol abuse or dependence). It is a subset of the 10-question AUDIT instrument and has been found to be as effective as the full AUDIT in identifying patients who are hazardous drinkers or have active alcohol use disorders. [PMID: 12695273]"
* version = "8.0.1"
* name = "AUDIT_C"
* title = "Alcohol Use Disorder Identification Test - Consumption [AUDIT-C]"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2023-08-14"
* copyright = "This material contains content from LOINC® (http://loinc.org). LOINC is copyright © 1995-2024, Regenstrief Institute, Inc. and the LOINC Committee, and is available at no cost under the license at http://loinc.org/license. As a WHO-approved instrument, the AUDIT is in the public domain."
* code = $loinc#72109-2 "Alcohol Use Disorder Identification Test - Consumption [AUDIT-C]"
* item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = $ucum#{#}/a "{#}/a"
* item[=].linkId = "/68517-2"
* item[=].code = $loinc#68517-2 "How many times in the past year have you have X or more drinks in a day"
* item[=].text = "How many times in the past year have you have X or more drinks in a day"
* item[=].type = #decimal
* item[=].required = false
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.linkId = "/68517-2-help"
* item[=].item.text = "Where X is 5 for men and 4 for women, and a response of  greater than, or equal to, 1 is positive."
* item[=].item.type = #display
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/68519-8"
* item[=].code = $loinc#68519-8 "How many standard drinks containing alcohol do you have on a typical day"
* item[=].text = "How many standard drinks containing alcohol do you have on a typical day"
* item[=].type = #coding
* item[=].required = false
* item[=].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[=].valueCoding = $loinc#LA15694-5 "1 or 2"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[=].valueCoding = $loinc#LA15695-2 "3 or 4"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].answerOption[=].valueCoding = $loinc#LA18930-0 "5 or 6"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "3"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].answerOption[=].valueCoding = $loinc#LA18931-8 "7 to 9"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "4"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].answerOption[=].valueCoding = $loinc#LA18932-6 "10 or more"
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/68520-6"
* item[=].code = $loinc#68520-6 "How often do you have 6 or more drinks on 1 occasion"
* item[=].text = "How often do you have 6 or more drinks on 1 occasion"
* item[=].type = #coding
* item[=].required = false
* item[=].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[=].valueCoding = $loinc#LA6270-8 "Never"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[=].valueCoding = $loinc#LA18933-4 "Less than monthly"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].answerOption[=].valueCoding = $loinc#LA18876-5 "Monthly"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "3"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].answerOption[=].valueCoding = $loinc#LA18891-4 "Weekly"
* item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "4"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].answerOption[=].valueCoding = $loinc#LA18934-2 "Daily or almost daily"
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = $ucum#{score} "{score}"
* item[=].linkId = "/75626-2"
* item[=].code = $loinc#75626-2 "Total score [AUDIT-C]"
* item[=].text = "Total score [AUDIT-C]"
* item[=].type = #decimal
* item[=].required = false
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.linkId = "/75626-2-help"
* item[=].item.text = "The Alcohol Use Disorders Identification Test C (AUDIT-C) is scored on a scale of 0-12 where the higher the score, the more likely the patient's drinking is hazardous. A score of 4 or more for men and 3 or more for women is considered positive for hazardous drinking or active alcohol use disorders. If the points are all from Question 1 alone where 2 and 3 are 0, it is likely the patient is drinking below recommended limits. The care provider may review the patients alcohol intake over that past few months to confirm accuracy. [PMID: 12695273]"
* item[=].item.type = #display


Instance: questionnaire-response-auditc-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: AUDIT-C (example)"
Description: "Minimal QR to which the Observation refers."
* status = #completed
* subject = Reference(patient-male-example)
* questionnaire = Canonical(questionnaire-audit-c-example)
* authored = "2025-10-28T09:58:00+03:00"
