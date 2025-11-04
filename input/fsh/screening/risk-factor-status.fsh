// Valueset for Treatment Status
ValueSet: LTScreeningTreatmentStatus
Id: lt-screening-treatment-status
Title: "Screening Treatment Status"
Description: "Indicates whether a screening treatment or intervention has been provided for a risk factor."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182992009 "Treatment completed (situation)"
* $sct#183964008 "Treatment not indicated (situation)"

ValueSet: LTScreeningRiskFactorType
Id: lt-Screening-risk-factor-type
Title: "LT Screening Risk Factor Types"
Description: "SNOMED CT concepts representing Screening-related risk factors."
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

ValueSet: LTDiabetesDurationOver10Years
Id: lt-diabetes-duration-over-10-years
Title: "LT Diabetes Mellitus Duration Over 10 Years"
Description: """
Indicates whether the patient has had Diabetes Mellitus for more than 10 years.
No – Diabetes duration less than 10 years
Yes – Diabetes duration of 10 years or more
"""
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
// No
* $sct#373067005 "No (qualifier value)"
// Yes
* $sct#373066001 "Yes (qualifier value)"


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
Profile: LTScreeningRiskFactorStatus
Parent: LTBaseObservation
Id: lt-Screening-risk-factor-status
Title: "LT Screening Risk Factor Status"
Description: """
Generic structure for recording Screening-related risk factors, 
such as hypertension, diabetes, or dyslipidemia. 
Captures both the assessed risk probability and the treatment status.
"""
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-26T11:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code 1..1
* code from LTScreeningRiskFactorType (extensible)
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
* component[treatment].valueCodeableConcept from LTScreeningTreatmentStatus (extensible)
* component[treatment] ^short = "Indicates whether treatment has been given or not."
* component[treatment] ^comment = """
Treatment status complements the assessed risk factor probability.
- 'Treatment completed' → patient is receiving or has received therapy.
- 'Treatment not indicated' → no treatment given or not required.
"""

// // Hypertension profile
// Profile: LTScreeningHypertension
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-hypertension
// Title: "LT Screening Hypertension Status"
// Description: "Specialization of Risk Factor Status for Hypertension."
// * code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"

// // Dyslipidemia profile
// Profile: LTScreeningDyslipidemia
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-dyslipidemia
// Title: "LT Screening Dyslipidemia Status"
// Description: "Specialization of Risk Factor Status for Dyslipidemia."
// * code = $sct#370992007 "Dyslipidemia (disorder)"

// // Diabetes profile 
// Profile: LTScreeningDiabetes
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-diabetes
// Title: "LT Screening Diabetes Status"
// Description: "Specialization of Risk Factor Status for Diabetes mellitus."
// * code = $sct#73211009 "Diabetes mellitus (disorder)"

// // Impaired Glucose Tolerance or Fasting Glycemia profile 
// Profile: LTScreeningImpairedGlucoseTolerance
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-impaired-glucose-tolerance
// Title: "LT Screening Impaired Glucose Tolerance or Fasting Glycemia Status"
// Description: "Specialization of Risk Factor Status for Impaired glucose tolerance or impaired fasting glycemia."
// * code from LTRiskFactorImpairedGlucoseVS (required)

// // Profile: LTScreeningCentralObesity
// Profile: LTPreventio3nCentralObesity
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-central-obesity
// Title: "LT Screening Central (Abdominal) Obesity Status"
// Description: "Specialization of Risk Factor Status for Central (Abdominal) Obesity. Indicates whether central obesity is present or absent."
// * ^status = #draft
// * ^language = #en
// * ^version = "1.0.0"
// * ^date = "2025-10-26T15:00:00+03:00"
// * ^publisher = "HL7 Lithuania"
// * code = $sct#248311001 "Central obesity (disorder)"
// * component[treatment] 0..0

// // Profile: LTScreeningObesity
// Profile: LTScreeningObesity
// Parent: LTScreeningRiskFactorStatus
// Id: lt-Screening-obesity
// Title: "LT Screening Obesity Status"
// Description: "Specialization of Risk Factor Status for general Obesity. Indicates whether obesity is present or absent."
// * ^status = #draft
// * ^language = #en
// * ^version = "1.0.0"
// * ^date = "2025-10-26T18:00:00+03:00"
// * ^publisher = "HL7 Lithuania"
// * code = $sct#414916001 "Obesity (disorder)"
// * component[treatment] 0..0

Profile: LTDiabetesDurationStatus
Parent: LTBaseObservation
Id: lt-diabetes-duration-status
Title: "LT Diabetes Mellitus Duration Over 10 Years"
Description: """
Observation indicating whether the patient has had Diabetes Mellitus
for 10 years or more.
"""
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-11-02"
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* code ^short = "Presence and duration of diabetes in patient history"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from LTDiabetesDurationOver10Years (required)
* valueCodeableConcept ^short = "Indicates whether diabetes duration exceeds 10 years."



// Example: Hypertension Risk - Negligible, Treatment Not Indicated
Instance: example-hypertension-negligible-risk
InstanceOf: LTScreeningRiskFactorStatus
Usage: #example
Title: "Example LT Hypertension Risk - Negligible"
Description: "Example showing a patient with negligible risk for hypertension; treatment not indicated."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#negligible "Negligible likelihood"
* component[treatment]
  * valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Blood pressure within normal range; risk negligible and no preventive treatment required."



// Example: Dyslipidemia - Treated
Instance: example-dyslipidemia-treated
InstanceOf: LTScreeningRiskFactorStatus
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
InstanceOf: LTScreeningRiskFactorStatus
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
InstanceOf: LTScreeningRiskFactorStatus
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
InstanceOf: LTScreeningRiskFactorStatus
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
InstanceOf: LTScreeningRiskFactorStatus
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


Instance: example-diabetes-duration-gt10
InstanceOf: LTDiabetesDurationStatus
Usage: #example
Title: "Example LT Diabetes Mellitus Duration > 10 Years"
Description: "Example showing a patient who has had Diabetes Mellitus for more than 10 years."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* note.text = "Patient reports having diabetes for approximately 12 years."
