Instance: example-cvd-screening-plan
InstanceOf: CarePlan
Usage: #example
Title: "Example of Cardiovascular Disease Screening Plan using inline goals"
Description: "CVD screening plan for a patient at high cardiovascular risk, including goals, risk group, lifestyle recommendations and medication instructions."
* status = #active
* intent = #plan
* created = 2025-10-31T10:00:00+02:00
* subject = Reference(example-patient)
* contributor[0] = Reference(example-practitioner)
* contributor[0].display = "Registrar"
* contributor[+] = Reference(example-organization)
* contributor[=].display = "Vilnius Heart Clinic"
* supportingInfo[0].display = "Specialist’s workstation: Cardiologist"
* supportingInfo[+].reference = "Observation/example-cvd-risk-group"
* supportingInfo[=].display = "Cardiovascular disease risk assessment: 24% (High)"
* contained[0] = goal-ldl-cvdp 
* contained[+] = goal-bmi-cvdp 
* contained[+] = goal-bp-cvdp 
* goal[0].reference = "#goal-ldl-cvdp" 
* goal[+].reference = "#goal-bmi-cvdp" 
* goal[+].reference = "#goal-bp-cvdp"

// Activities
* activity[0].performedActivity.concept = $sct#702388001 "Tobacco use cessation education (procedure)"
* activity[0].progress[0].text = "Pharmacological and behavior change tools selected."
* activity[1].performedActivity.concept = $sct#370847001 "Dietary needs education (procedure)"
* activity[1].progress[0].text = "Dietary recommendations: fruits and vegetables >200 g/day, 35–45 g of fiber (mainly from grains), moderate unsalted nuts (30 g/day),
fish 1–2 servings per week (one fatty), limited lean meat, low-fat dairy, and vegetable oils.
Saturated fats <10% of total fat intake (replace with polyunsaturated fats),
trans fats <1% of total energy (avoid processed foods).
Salt <5–6 g/day. Alcohol <100 g per week (<15 g/day).
Avoid sugary soft drinks and high-energy foods."
* activity[2].performedActivity.concept = $sct#819961005 "Physical activity guidance (procedure)"
* activity[2].progress[0].text = "30–60 minutes of moderate activity daily."
* note[0].text = "Follow-up visit with cardiologist in 3 months."

// --- Contained Goals ---
Instance: goal-ldl-cvdp
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #active
* description.text = "Target LDL Cholesterol < 1.8 mmol/L based on cardiovascular risk group."
* subject = Reference(example-patient)
* target[0].measure = $loinc#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
* target[0].detailQuantity.value = 1.8
* target[0].detailQuantity.unit = "mmol/L"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #mmol/L
* target[0].dueDate = 2026-10-31

Instance: goal-bmi-cvdp
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #active
* subject = Reference(example-patient)
* description.text = "Target BMI 22.5 kg/m² (healthy weight range 18.5–24.9)."
* target[0].measure = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* target[0].detailQuantity.value = 22.5
* target[0].detailQuantity.unit = "kg/m2"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #kg/m2

Instance: goal-bp-cvdp
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #active
* subject = Reference(example-patient)
* description.text = "Target BP 120–129/<80 mmHg."
* target[0].measure = $loinc#85354-9 "Blood pressure panel with all children optional"
