// Valueset for Treatment Status
ValueSet: TreatmentStatus
Id: treatment-status
Title: "Treatment Status"
Description: "Indicates whether a screening treatment or intervention has been provided for a risk factor."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182992009 "Treatment completed (situation)"
* $sct#183964008 "Treatment not indicated (situation)"

ValueSet: RiskFactorType
Id: risk-factor-type
Title: "Risk Factor Type"
Description: "SNOMED CT concepts representing screening-related risk factors."
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

ValueSet: MedicationTaken
Id: medication-taken
Title: "Medication taken by patient during treatment"
Description: "SNOMED CT concepts representing medication given/used during treatment."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182833002 "Medication given (situation)"
* $sct#787481004 "No known medications (situation)"

// Generic profile, reusable across multiple risk factors (hypertension, dyslipidemia, diabetes, etc).
Profile: LTScreeningRiskFactorStatus
Parent: LTBaseObservation
Id: lt-screening-risk-factor-status
Title: "Risk Factor Status"
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
* category = $observation-category#exam "Exam"
* code 1..1
* code from RiskFactorType (extensible)
* code ^short = "Type of risk factor (e.g., hypertension, diabetes, dyslipidemia)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when risk factor status or risk was assessed."
// --- Slicing for components ---
* component 1..3
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains risk 1..1 MS and treatment 0..1 MS and medication 0..1 MS
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
* component[treatment].valueCodeableConcept from TreatmentStatus (extensible)
* component[treatment] ^short = "Indicates whether treatment has been given or not."
* component[treatment] ^comment = """
Treatment status complements the assessed risk factor probability.
- 'Treatment completed' → patient is receiving or has received therapy.
- 'Treatment not indicated' → no treatment given or not required.
"""
// --- Medication slice ---
* component[medication].code = $sct#129019007 "Taking medication (observable entity)"
* component[medication].value[x] only CodeableConcept
* component[medication].valueCodeableConcept from MedicationTaken (extensible)
* component[medication] ^short = "Indicates whether medication has been taken or not."


Profile: LTDiabetesDurationStatus
Parent: LTBaseObservation
Id: lt-diabetes-duration-status
Title: "Diabetes Mellitus Duration Over 10 Years"
Description: "Observation indicating whether the patient has had Diabetes Mellitus for 10 years or more."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-11-02"
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* code ^short = "Presence and duration of diabetes in patient history"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from YesNo (required)
* valueCodeableConcept ^short = "Indicates whether diabetes duration exceeds 10 years."



// Example: Hypertension Risk - Negligible, Treatment Not Indicated
Instance: example-hypertension-negligible-risk
InstanceOf: LTScreeningRiskFactorStatus
Usage: #example
Title: "Example LT Hypertension Risk - Negligible"
Description: "Example showing a patient with negligible risk for hypertension; treatment not indicated."
* status = #final
* category = $observation-category#exam "Exam"
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
* category = $observation-category#exam "Exam"
* code = $sct#370992007 "Dyslipidemia (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* component[medication]
  * valueCodeableConcept = $sct#182833002 "Medication given (situation)"
* note.text = "Patient diagnosed with dyslipidemia and treated with statins."


// Example: Diabetes - Untreated
Instance: example-diabetes-untreated
InstanceOf: LTScreeningRiskFactorStatus
Usage: #example
Title: "Example LT Diabetes - Untreated"
Description: "Example showing a patient with confirmed diabetes mellitus but not yet receiving treatment."
* status = #final
* category = $observation-category#exam "Exam"
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
* category = $observation-category#exam "Exam"
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
* category = $observation-category#exam "Exam"
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
* category = $observation-category#exam "Exam"
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
* category = $observation-category#exam "Exam"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* note.text = "Patient reports having diabetes for approximately 12 years."
