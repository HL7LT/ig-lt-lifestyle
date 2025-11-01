Alias: $risk-group = https://hl7.lt/fhir/base/CodeSystem/risk-group

Profile: LtScreeningCarePlan
Parent: CarePlan
Id: lt-screening-care-plan
Title: "Care Plan for screening programs"
Description: "A simplified profile for CarePlan focusing on essential elements."

* extension contains LTRiskGroup named riskGroup 0..1
  and LTActivityOtherDescription named activityOtherDesc 0..1
  and LTOtherDietaryChanges named otherDietaryChanges 0..1



// FHIR R5 CarePlan Instance: Plan for Heart and Blood Vessel Disease Screening Measures
Instance: CVDScreeningPlanExample
InstanceOf: LtScreeningCarePlan
Usage: #example
Title: "CVD Screening Plan Example"
Description: "An example instance of a CarePlan for a patient at risk of Cardiovascular Disease (CVD), covering goals and activities related to lifestyle changes."

// === 1. Metadata and Administrative Details ===
* status = #active
* intent = #plan
* title = "Plan for Heart and Blood Vessel Disease Screening Measures"
* description = "Comprehensive plan detailing lifestyle modifications, pharmacological advice, and biometric targets for CVD risk reduction."
* created = 2025-10-31T10:00:00+02:00 // Plan creation date

// Patient (subject)
* subject = Reference(LTPatient/example-patient) // Data of a patient diagnosed with CVD risk.

// Registrar (author)
// * author = Reference(LTHealthcarePractitioner/example-practitioner) // Specialist implementing the plan.

// Institution
// * contributor[0] = Reference(LTOrganization/example-organization) // Healthcare facility where the patient receives the service.

// === 2. Risk Group (Custom Extension) ===
* extension[riskGroup].valueCodeableConcept = $risk-group#very-large "Very large" // Risk group for heart and vascular diseases (Required)

// === 3. Goals (Targets) ===
* contained[0] = goal-ldl 
* contained[+] = goal-bmi
* contained[+] = goal-bp

* goal = Reference(goal-ldl)
* goal[+] = Reference(goal-bmi)
* goal[+] = Reference(goal-bp)

// === 4. Activities / Interventions ===

// Activity 1: Quitting smoking
* activity[0]
  * performedActivity.concept = $sct#44621000124107 "Tobacco cessation counseling"
  * progress.text = "Quitting smoking intervention selected: Pharmacological and Behavior change tools."
//   * detail.extension[0].url = "https://hl7.lt/fhir/base/StructureDefinition/LT-ActivityNote"
//   * detail.extension[0].valueString = "Avoid passive smoking." // Informational text at the end of section

// Activity 2: Healthy nutrition
* activity[1]
  * performedActivity.concept = $sct#224538006 "Dietary management"
  * progress[0].text = """
    Healthy Nutrition Plan: Diet should include consumption of fruits and vegetables > 200 g/day, 35–45 g of fiber (recommended from grains), moderate consumption of nuts (30 g/day, unsalted), 1–2 servings of fish per week (one fatty fish), limited amounts of lean meat, low-fat dairy products, and liquid vegetable oils.
    Saturated fats <10% of total fat intake, replacing them with polyunsaturated fats, reducing trans fats, preferably not from processed foods and making up <1% of total energy intake.
    Salt ˂ 5–6 g per day.
    Avoid alcohol if consumed, limit intake to ˂100 g per week or <15 g per day. Avoid high-energy foods, such as sugar-sweetened soft drinks.
    """ // Informational text. Mandatory

    // Activity 2.1: Other Dietary changes (Optional Text Field)
    //* activity[1].detail.extension[0].url = "https://hl7.lt/fhir/base/StructureDefinition/LT-OtherDietaryChanges"
  * progress[+].text = "Focus on reducing processed sugar intake dramatically by eliminating soft drinks." // Example 'Other' data

// Activity 3: Physical activity (Required)
* activity[2]
  * performedActivity.concept = $sct#410600000 "Physical activity regimen"
  * progress[0].text = "30-60 minutes of moderate physical activity daily, beneficial and irregular physical activity."
//   * detail.doNotPerform = false // Assuming this is an instruction to perform

// Activity 3.1: "Other" description (Required when "Other" is selected)
// In this example, we assume "Other" was selected for Physical Activity, requiring the description.
// * activity[2].detail.extension[0] = LTActivityOtherDescription
  * progress[+].text = "Focus on 3 sessions of swimming per week in addition to daily walks." // Example 'Other' data

// Activity 4: Antilipid treatment (Optional/Deletable text field)
* activity[3]
  * performedActivity.concept.text = "Antilipid treatment prescribed by the doctor."
//   * detail.product[0] = Reference(Medication/med-statin) // Reference to the prescribed medication
  * progress[0].text = "Atorvastatin 20mg daily." // Optional Text field content

// // Activity 5: Antihypertensive treatment (Optional/Deletable text field)
// * activity[4]
//   * performedActivity.concept.text = "Antihypertensive and heart rate regulating (cardioprotective) treatment prescribed by the doctor."
//   * progress[0].text = "Lisinopril 5mg daily." // Optional Text field content

// // Activity 6: Currently used medications (Optional/Deletable classifier/multi-select)
// * activity[5]
//   * performedActivity.concept.text = "Currently used medications selected from the classifier."
//   *  = Reference(MedicationStatement/stat-current-meds) // Reference to a resource detailing the list of medications

// === 5. Supporting Information & Notes ===

// Supporting Info 1: Healthy Weight (Informational Text)
// * supportingInfo[0].reference = Reference(Observation/bmi-healthy-range) // Reference to a conceptual resource defining healthy BMI range
* supportingInfo[0].display = "A healthy weight is when Body Mass Index (BMI) is 18.5-24.9 kg/m2." // Informational text. Mandatory

// Supporting Info 2: Regular use of prescribed medication (Uneditable informational text)
* supportingInfo[1].display = "Regular use of prescribed medication: Antilipid treatment, Antihypertensive and heart rate regulating (cardioprotective) treatment, Currently used medications." // Uneditable informational text. Mandatory

// Note: Other recommendations
* note[0].text = "Recommend follow-up appointment with a cardiologist in three months to review treatment efficacy and progress toward goals." // Other recommendations provided by specialists (Text field. Optional)




// Goal 1: Target LDL Cholesterol (Contained Resource)
Instance: goal-ldl
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target LDL Cholesterol"
* lifecycleStatus = #active
* subject = Reference(Patient/example-patient)
//* achievementStatus = $goal-achievement-status#in-progress "In Progress"
* description.text = "Target LDL Cholesterol, considering the cardiovascular disease risk group"
* target[0].measure = $loinc#13457-7 "LDL Cholesterol"
* target[0].detailQuantity.value = 1.4
* target[0].detailQuantity.unit = "mmol/L"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #mmol/L
* target[0].dueDate = 2026-10-31 // Target date one year from creation


// Goal 2: Target BMI (Contained Resource)
Instance: goal-bmi
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target Body Mass Index (BMI)"

* lifecycleStatus = #active
* subject = Reference(Patient/example-patient)
//* achievementStatus = $goal-achievement-status#in-progress "In Progress"
* description.text = "Target Body Mass Index (BMI) of 22.5 kg/m2"
* target[0].measure = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* target[0].detailQuantity.value = 22.5 // Specialist must indicate the target BMI for the patient. (Number. Required)
* target[0].detailQuantity.unit = "kg/m2"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #kg/m2

// Goal 3: Target BP (Contained Resource - Informational)
Instance: goal-bp
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target Blood Pressure (BP) 120-129/<80 mmHg"

* lifecycleStatus = #planned
* description.text = "Target BP 120-129/<80 mmHg" // Informational text. Mandatory
* subject = Reference(Patient/example-patient)



Extension: LTRiskGroup
Id: lt-risk-group
Title: "CVD Risk Group"
Description: "Cardiovascular disease risk classification for the patient (Large or Very large)."
* value[x] only CodeableConcept
* value[x] from $risk-group (required)
// * ^url = "https://hl7.lt/fhir/lifestyle/StructureDefinition/lt-risk-group"

Extension: LTActivityOtherDescription
Id: lt-activity-other-description
Title: "Other Activity Description"
Description: "Free text description required when the 'Other' option is selected for physical activity or a similar behavioral intervention."
* value[x] only string
* ^url = "https://hl7.lt/fhir/lifestyle/StructureDefinition/lt-activity-other-description"

Extension: LTOtherDietaryChanges
Id: lt-other-dietary-changes
Title: "Other Desired Dietary Changes"
Description: "Additional information provided about desired dietary changes (text field)."
* value[x] only string
// * ^url = "https://hl7.lt/fhir/lifestyle/StructureDefinition/lt-other-dietary-changes"

