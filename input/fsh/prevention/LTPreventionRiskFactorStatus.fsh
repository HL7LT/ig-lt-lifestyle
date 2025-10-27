// Valueset for Treatment Status
ValueSet: LTPreventionTreatmentStatus
Id: lt-prevention-treatment-status
Title: "Prevention Treatment Status"
Description: "Indicates whether a preventive treatment or intervention has been provided for a risk factor."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182992009 "Treatment completed (situation)"
* $sct#183964008 "Treatment not indicated (situation)"

ValueSet: LTPreventionRiskFactorType
Id: lt-prevention-risk-factor-type
Title: "LT Prevention Risk Factor Types"
Description: "SNOMED CT concepts representing prevention-related risk factors."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#38341003  "Hypertensive disorder, systemic arterial (disorder)"
* $sct#370992007 "Disorder of lipoprotein metabolism (disorder)"
* $sct#73211009  "Diabetes mellitus (disorder)"
* $sct#9414007   "Impaired glucose tolerance (disorder)"
* $sct#390951007 "Impaired fasting glycemia (disorder)"
* $sct#248311001 "Central obesity (disorder)"
* $sct#414916001 "Obesity (disorder)"

// // ValueSet for impaired glucose tolerance and fasting glycemia
// ValueSet: LTRiskFactorImpairedGlucoseVS
// Id: lt-risk-factor-impaired-glucose-vs
// Title: "LT Risk Factor – Impaired Glucose Tolerance or Fasting Glycemia"
// Description: "Includes SNOMED CT concepts for impaired glucose tolerance and impaired fasting glycemia."
// * ^language = #en
// * ^version = "1.0.0"
// * ^status = #active
// * ^publisher = "HL7 Lithuania"
// * ^experimental = false
// * ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// * $sct#9414007 "Impaired glucose tolerance (disorder)"
// * $sct#390951007 "Impaired fasting glycemia (disorder)"



// Generic profile, reusable across multiple risk factors (hypertension, dyslipidemia, diabetes, etc).
Profile: LTPreventionRiskFactorStatus
Parent: LTBaseObservation
Id: lt-prevention-risk-factor-status
Title: "LT Prevention Risk Factor Status"
Description: """
Generic structure for recording prevention-related risk factors, 
such as hypertension, diabetes, or dyslipidemia. 
Captures both the assessed risk probability and the treatment status.
"""
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-26T11:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuanian"
* category = $observation-category#social-history "Social History"
* code 1..1
* code from LTPreventionRiskFactorType (extensible)
* code ^short = "Type of risk factor (e.g., hypertension, diabetes, dyslipidemia)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when risk factor status or risk was assessed."
// --- Slicing for components ---
* component 1..2
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains risk 1..1 MS and treatment 0..1 MS
// --- Risk slice ---
* component[risk].code = $sct#80943009 "Risk factor"
* component[risk].value[x] only CodeableConcept
* component[risk].valueCodeableConcept from $risk-probability-vs (extensible)
* component[risk] ^short = "Assessed risk probability or certainty level."
* component[risk] ^comment = """
Risk or likelihood as assessed during the clinical evaluation.
Examples:
- 'negligible' → no current disease risk
- 'certain' → confirmed diagnosis
"""
// --- Treatment slice ---
* component[treatment].code = $sct#443938003 "Procedure carried out on subject"
* component[treatment].value[x] only CodeableConcept
* component[treatment].valueCodeableConcept from LTPreventionTreatmentStatus (extensible)
* component[treatment] ^short = "Indicates whether treatment has been given or not."
* component[treatment] ^comment = """
Treatment status complements the assessed risk factor probability.
- 'Treatment completed' → patient is receiving or has received therapy.
- 'Treatment not indicated' → no treatment given or not required.
"""

// // Hypertension profile
// Profile: LTPreventionHypertension
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-hypertension
// Title: "LT Prevention Hypertension Status"
// Description: "Specialization of Risk Factor Status for Hypertension."
// * code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"

// // Dyslipidemia profile
// Profile: LTPreventionDyslipidemia
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-dyslipidemia
// Title: "LT Prevention Dyslipidemia Status"
// Description: "Specialization of Risk Factor Status for Dyslipidemia."
// * code = $sct#370992007 "Dyslipidemia (disorder)"

// // Diabetes profile 
// Profile: LTPreventionDiabetes
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-diabetes
// Title: "LT Prevention Diabetes Status"
// Description: "Specialization of Risk Factor Status for Diabetes mellitus."
// * code = $sct#73211009 "Diabetes mellitus (disorder)"

// // Impaired Glucose Tolerance or Fasting Glycemia profile 
// Profile: LTPreventionImpairedGlucoseTolerance
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-impaired-glucose-tolerance
// Title: "LT Prevention Impaired Glucose Tolerance or Fasting Glycemia Status"
// Description: "Specialization of Risk Factor Status for Impaired glucose tolerance or impaired fasting glycemia."
// * code from LTRiskFactorImpairedGlucoseVS (required)

// // Profile: LTPreventionCentralObesity
// Profile: LTPreventio3nCentralObesity
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-central-obesity
// Title: "LT Prevention Central (Abdominal) Obesity Status"
// Description: "Specialization of Risk Factor Status for Central (Abdominal) Obesity. Indicates whether central obesity is present or absent."
// * ^status = #draft
// * ^language = #en
// * ^version = "1.0.0"
// * ^date = "2025-10-26T15:00:00+03:00"
// * ^publisher = "HL7 Lithuanian"
// * code = $sct#248311001 "Central obesity (disorder)"
// * component[treatment] 0..0

// // Profile: LTPreventionObesity
// Profile: LTPreventionObesity
// Parent: LTPreventionRiskFactorStatus
// Id: lt-prevention-obesity
// Title: "LT Prevention Obesity Status"
// Description: "Specialization of Risk Factor Status for general Obesity. Indicates whether obesity is present or absent."
// * ^status = #draft
// * ^language = #en
// * ^version = "1.0.0"
// * ^date = "2025-10-26T18:00:00+03:00"
// * ^publisher = "HL7 Lithuanian"
// * code = $sct#414916001 "Obesity (disorder)"
// * component[treatment] 0..0


// Example: patient with hypertension
Instance: example-generic-risk-factor-treated
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Risk Factor Status - Treated"
Description: "Example showing a patient with a confirmed risk factor currently under treatment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* note.text = "Patient has confirmed hypertension and is under treatment."


// Example: Dyslipidemia - Treated
Instance: example-dyslipidemia-treated
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Dyslipidemia - Treated"
Description: "Example showing a patient with confirmed dyslipidemia currently under lipid-lowering therapy."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#370992007 "Dyslipidemia (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* note.text = "Patient diagnosed with dyslipidemia and treated with statins."


// Example: Diabetes - Untreated
Instance: example-diabetes-untreated
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Diabetes - Untreated"
Description: "Example showing a patient with confirmed diabetes mellitus but not yet receiving treatment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Diabetes mellitus confirmed; lifestyle changes recommended, no pharmacological treatment started yet."


// Example: Impaired Glucose Tolerance or Fasting Glycemia - Exists
Instance: example-impaired-glucose-tolerance
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Impaired Glucose Tolerance or Fasting Glycemia - Exists"
Description: "Example showing a patient identified with impaired glucose tolerance or impaired fasting glycemia."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#390951007 "Impaired fasting glycemia (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Patient shows impaired fasting glucose; monitoring recommended, no treatment initiated."


// Example of patient with central  obesity
Instance: example-central-obesity-present
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Central Obesity - Exists"
Description: "Example showing a patient identified as having central (abdominal) obesity."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#248311001 "Central obesity (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* note.text = "Patient has central (abdominal) obesity confirmed by waist circumference measurement."


// Example: Obesity - Exists
Instance: example-obesity-present
InstanceOf: LTPreventionRiskFactorStatus
Usage: #example
Title: "Example LT Obesity - Exists"
Description: "Example showing a patient identified as having general obesity."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#414916001 "Obesity (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* note.text = "Patient classified as obese based on BMI ≥ 30 kg/m²."
