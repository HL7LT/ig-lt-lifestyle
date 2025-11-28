// ValueSet: Abdominal Obesity Interpretation
ValueSet: LTAbdominalObesityVS
Id: lt-abdominal-obesity
Title: "Abdominal Obesity Interpretation"
Description: "Indicates whether abdominal (android) obesity is present based on waist circumference."
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
// No abdominal obesity
* $sct#373067005 "No (qualifier value)"
// Abdominal obesity present
* $sct#238132000 "Android obesity (disorder)"


// Profile: LT Waist Circumference Measurement
Profile: LTWaistCircumference
Parent: LTBaseObservation
Id: lt-waist-circumference
Title: "Waist Circumference"
Description: """
Waist circumference measurement using standard anthropometric procedure.
Interpretation uses male ≥ 102 cm and female ≥ 88 cm thresholds.
"""
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
// Category
* category = $observation-category#exam "Exam"
// Coding — LOINC 8280-0 (waist circumference)
* code = $loinc#8280-0 "Waist circumference at umbilicus by Tape measure"
// Subject + timing
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
// Measurement value (mandatory)
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
// Components
* component 0..2
* component ^short = "Optional: patient sex and obesity interpretation"
// Slicing
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains
    Sex 0..1 and
    Interpretation 0..1
// Slice: Sex (needed for threshold decision)
* component[Sex].code = $sct#263495000 "Gender (observable entity)"
* component[Sex].value[x] only CodeableConcept
* component[Sex].valueCodeableConcept from http://hl7.org/fhir/ValueSet/administrative-gender (preferred)
* component[Sex] ^short = "Biological sex: male or female"
// Slice: Interpretation ("No" or "Android obesity")
* component[Interpretation].code = $sct#248311001 "Central obesity (disorder)"
* component[Interpretation].value[x] only CodeableConcept
* component[Interpretation].valueCodeableConcept from LTAbdominalObesityVS (required)
* component[Interpretation] ^short = "Indicates presence or absence of abdominal obesity"


// Example 1 — abdominal obesity present (Male, 104 cm)
Instance: example-waist-circumference-obese
InstanceOf: LTWaistCircumference
Usage: #example
Title: "Example – Abdominal Obesity Present"
Description: "Male with waist circumference 104 cm; threshold exceeded."
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#8280-0 "Waist circumference at umbilicus by Tape measure"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-11-06T09:00:00Z"
* valueQuantity.value = 104
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* component[Sex].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* component[Interpretation].valueCodeableConcept = $sct#238132000 "Android obesity (disorder)"


// Example 2 — no abdominal obesity (Female, 78 cm)
Instance: example-waist-circumference-normal
InstanceOf: LTWaistCircumference
Usage: #example
Title: "Example – No Abdominal Obesity"
Description: "Female with waist circumference 78 cm; below threshold."
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#8280-0 "Waist circumference at umbilicus by Tape measure"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-11-06T09:00:00Z"
* valueQuantity.value = 78
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* component[Sex].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* component[Interpretation].valueCodeableConcept = $sct#373067005 "No (qualifier value)"
