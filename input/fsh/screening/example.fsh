// Example: 1.1.3 Cardiovascular Disease Screening Plan
Instance: example-cvd-Screening-plan
InstanceOf: CarePlan
Usage: #example
Title: "LT Cardiovascular Disease Screening Plan"
Description: "CVD Screening plan for a patient at high cardiovascular risk, including goals, risk group, lifestyle recommendations and medication instructions."

* status = #active
* intent = #plan
* title = "Cardiovascular Disease Screening Plan"
* description = "Comprehensive plan for cardiovascular disease risk reduction based on patient’s risk group and lifestyle factors."
* created = 2025-10-31T10:00:00+02:00

// === Patient, Registrar, Institution ===
* subject = Reference(Patient/example-patient)
* contributor[0] = Reference(Practitioner/example-registrar)
* contributor[0].display = "Registrar"
* contributor[+] = Reference(Organization/example-institution)
* contributor[=].display = "Vilnius Heart Clinic"
* supportingInfo[0].display = "Specialist’s workstation: Cardiologist"

// === Risk group for heart and vascular diseases ===
* supportingInfo[+].reference = "Observation/example-cvd-risk-group"
* supportingInfo[=].display = "Cardiovascular disease risk assessment: 24% (High)"

// === Goals ===
// === Goals ===
* contained[0] = goal-ldl-cvdp
* contained[+] = goal-bmi-cvdp
* contained[+] = goal-bp-cvdp

* goal[0].reference = "#goal-ldl-cvdp"
* goal[+].reference = "#goal-bmi-cvdp"
* goal[+].reference = "#goal-bp-cvdp"

// === Activities / Interventions ===

// 1. Quitting smoking
* activity[0].performedActivity.concept = $sct#4702388001 "Tobacco use cessation education (procedure)"
* activity[0].progress[0].text = "Pharmacological and behavior change tools selected."

// 2. Healthy nutrition
* activity[1].performedActivity.concept = $sct#410175003 "Dietary regime management (procedure)"
* activity[1].progress[0].text = """
  Diet: fruits and vegetables >200 g/day, 35–45 g of fiber (mainly from grains), moderate unsalted nuts (30 g/day),
  fish 1–2 servings per week (one fatty), limited lean meat, low-fat dairy, and vegetable oils.
  Saturated fats <10% of total fat intake (replace with polyunsaturated fats),
  trans fats <1% of total energy (avoid processed foods).
  Salt <5–6 g/day. Alcohol <100 g per week (<15 g/day).
  Avoid sugary soft drinks and high-energy foods.
"""

// 3. Physical activity
* activity[2].performedActivity.concept = $sct#819961005 "Physical activity guidance (procedure)"
* activity[2].progress[0].text = "30–60 minutes of moderate activity daily or irregular physical activity also beneficial."
* activity[2].progress[+].text = "Other: swimming three times per week in addition to daily walks."

// 4. Regular use of prescribed medication
* activity[3].performedActivity.concept.text = "Regular use of prescribed medication"
* activity[3].progress[0].text = "3 times per day after meals – indication: $sct#166643006 'Liver enzymes abnormal'"

// === Supporting information ===
* supportingInfo[+].reference = "Observation/example-cholesterol-ldl"
* supportingInfo[=].display = "LDL Cholesterol 2.8 mmol/L (Normal)"
* supportingInfo[+].display = "Healthy weight: Body Mass Index (BMI) 18.5–24.9 kg/m²."
* note[0].text = "Follow-up visit with cardiologist in 3 months to review progress and treatment response."

// === Contained Goals ===

// Goal 1: Target LDL Cholesterol
Instance: goal-ldl-cvdp
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target LDL Cholesterol"
* lifecycleStatus = #active
* description.text = "Target LDL Cholesterol < 1.8 mmol/L based on cardiovascular risk group."
* subject = Reference(Patient/example-patient)
* target[0].measure = $loinc#39469-2 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by calculation"
* target[0].detailQuantity.value = 1.8
* target[0].detailQuantity.unit = "mmol/L"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #mmol/L
* target[0].dueDate = 2026-10-31
* addresses = Reference(Observation/example-cholesterol-ldl)

// Goal 2: Target BMI
Instance: goal-bmi-cvdp
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target BMI"
* lifecycleStatus = #active
* subject = Reference(Patient/example-patient)
* description.text = "Target BMI 22.5 kg/m² (healthy weight range 18.5–24.9)."
* target[0].measure = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* target[0].detailQuantity.value = 22.5
* target[0].detailQuantity.unit = "kg/m²"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #kg/m2

// Goal 3: Target Blood Pressure (ACS)
Instance: goal-bp-cvdp
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target Blood Pressure"
* lifecycleStatus = #active
* subject = Reference(Patient/example-patient)
* description.text = "Target BP 120–129/<80 mmHg."
* target[0].measure = $loinc#85354-9 "Blood pressure panel with all children optional"
