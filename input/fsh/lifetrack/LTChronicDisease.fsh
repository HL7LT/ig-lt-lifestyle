ValueSet: LTCVDHighRiskConditions
Id: lt-cvd-high-risk-conditions
Title: "LT CVD High Risk Condition Diagnoses"
Description: "ICD-10 codes representing conditions that significantly increase cardiovascular disease risk, often used for risk stratification in prevention programs."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania" 

//--- Mental Health Conditions (Often found in e-prescribing) ---
* $icd-10#F31 "Bipolar affective disorder"
//* $icd-10 code from #F32.2 to #F32.9 // Moderate to severe depressive episodes
//* $icd-10 code from #F33.2 to #F33.9 // Moderate to severe recurrent depressive disorder
* $icd-10#F41.1 "Generalized anxiety disorder"

// --- Sexual Health/Function ---
* $icd-10#N48.4 "Impotence of organic origin"
* $icd-10#F52.2 "Failure of genital response"

// --- Infectious & Autoimmune Diseases ---
//* $icd-10 code from #B20 to #B24 // Human immunodeficiency virus [HIV] disease
* $icd-10#M05 "Seropositive rheumatoid arthritis"
* $icd-10#K50 "Crohn's disease (Assuming 'Krono league' refers to Crohn's)"
* $icd-10#K51 "Ulcerative colitis"

// --- Oncological Diseases (Cancers) ---
//* $icd-10 code from #C00 to #C96 // Malignant neoplasms

// --- Respiratory & Cardiac Conditions ---
* $icd-10#J44 "Other chronic obstructive pulmonary disease"
* $icd-10#I48 "Atrial fibrillation and flutter"
* $icd-10#I50 "Heart failure"

// --- Renal & Neurological Conditions ---
* $icd-10#N18 "Chronic kidney disease (CKD)"
* $icd-10#G43.1 "Migraine with aura"
* $icd-10#G47.3 "Sleep apnoea"

// --- Gestational Conditions (Obstetrics) ---
* $icd-10#O24.4 "Gestational diabetes mellitus"
* $icd-10#O13 "Gestational hypertension without significant proteinuria"
* $icd-10#O14 "Pre-eclampsia"
* $icd-10#O15 "Eclampsia"

Profile: LTCvdChronicCondition
Parent: LTBaseCondition
Id: lt-prevention-condition
Title: "LT LifeTrack CVD High Risk Condition"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^publisher = "HL7 Lithuanian"

* code from LTCVDHighRiskConditions (required)
* clinicalStatus =  $condition-clinical#active

// Example: heart failure
Instance: example-LTCvdChronicCondition-heart-failure
InstanceOf: LTCvdChronicCondition
Usage: #example
Title: "Example LT CVD High Risk Condition - Heart failure"
Description: "Example instance showing a patient with a high-risk condition of heart failure."

* code = $icd-10#I50 "Heart failure"
* subject = Reference(example-patient)
* onsetDateTime = "2025-10-01T09:00:00Z"

