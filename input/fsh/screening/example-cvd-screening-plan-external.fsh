Instance: example-cvd-screening-plan-external
InstanceOf: CarePlan
Usage: #example
Title: "Example of Cardiovascular Disease Screening Plan using external goals"
Description: "CVD screening plan for a patient at high cardiovascular risk, where goals are separate Goal resources referenced by the CarePlan."
* status = #active
* intent = #plan
* created = 2025-10-31T10:00:00+02:00
* subject = Reference(example-patient)
* contributor[0] = Reference(example-practitioner)
* contributor[0].display = "Registrar"
* contributor[+] = Reference(example-organization)
* contributor[=].display = "Vilnius Heart Clinic"
* supportingInfo[0].display = "Specialist’s workstation: Cardiologist"
* supportingInfo[+] = Reference(Observation/example-cvd-risk-group)
* supportingInfo[=].display = "Cardiovascular disease risk assessment: 24% (High)"
* goal[0] = Reference(Goal/example-goal-ldl)
* goal[+] = Reference(Goal/example-goal-bmi)
* goal[+] = Reference(Goal/example-goal-bp)
* activity[0].performedActivity.concept = $sct#702388001 "Tobacco use cessation education (procedure)"
* activity[0].progress[0].text = "Pharmacological and behavior change tools selected."
* activity[1].performedActivity.concept = $sct#370847001 "Dietary needs education (procedure)"
* activity[1].progress[0].text = "Dietary recommendations include fruits and vegetables >200 g/day, fiber 35–45 g/day, fish twice a week, limited meat and alcohol, salt <5 g/day."
* activity[2].performedActivity.concept = $sct#819961005 "Physical activity guidance (procedure)"
* activity[2].progress[0].text = "30–60 minutes of moderate activity daily."
* note[0].text = "Follow-up visit with cardiologist in 3 months."

// --- External Goal Instances ---
Instance: example-goal-ldl
InstanceOf: Goal
Usage: #example
Title: "Goal - LDL Cholesterol"
Description: "Target LDL Cholesterol < 1.8 mmol/L."
* lifecycleStatus = #active
* description.text = "Target LDL Cholesterol < 1.8 mmol/L."
* subject = Reference(example-patient)
* target[0].measure = $loinc#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
* target[0].detailQuantity.value = 1.8
* target[0].detailQuantity.unit = "mmol/L"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #mmol/L
* target[0].dueDate = 2026-10-31

Instance: example-goal-bmi
InstanceOf: Goal
Usage: #example
Title: "Goal - Body Mass Index"
Description: "Target BMI 22.5 kg/m² (healthy weight range 18.5–24.9)."
* lifecycleStatus = #active
* description.text = "Target BMI 22.5 kg/m² (healthy weight range 18.5–24.9)."
* subject = Reference(example-patient)
* target[0].measure = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* target[0].detailQuantity.value = 22.5
* target[0].detailQuantity.unit = "kg/m2"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #kg/m2

Instance: example-goal-bp
InstanceOf: Goal
Usage: #example
Title: "Goal - Blood Pressure"
Description: "Target BP 120–129/<80 mmHg."
* lifecycleStatus = #active
* description.text = "Target BP 120–129/<80 mmHg."
* subject = Reference(example-patient)
* target[0].measure = $loinc#85354-9 "Blood pressure panel with all children optional"

