// Mammographic breast changes
ValueSet: BreastMammographicChangesVS
Id: lt-breast-mammo-changes-vs
Title: "Mammographic Breast Changes"
Description: "Types of mammographic breast changes."
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
* $sct#129788004 "Mammographic mass of breast (finding)"
* $sct#697944008 "Mammographic calcification of breast (disorder)"
* $sct#129792006 "Mammographic architectural distortion of breast (finding)"
* $sct#129789007 "Focal asymmetric breast tissue finding (finding)"

Invariant: mammo-size-only-for-mass
Description: "Size component is allowed only when the Type component represents a mammographic mass."
Severity: #warning
Expression: "(component.where(code.coding.code='246115007').exists()) implies (component.where(value.coding.code='129788004').exists())"



// Observation for mammographic breast changes
Profile: LTMammographicChanges
Parent: LTBaseObservation
Id: lt-mammographic-changes
Title: "Mammographic Breast Changes"
Description: "Observation representing mammographic breast changes."
* ^status = #active
* category = $observation-category#exam "Exam"
* code = $sct#129714008 "Mammography finding (finding)" 
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* obeys mammo-size-only-for-mass
// Yes/No whether any change is present
* value[x] only CodeableConcept
* valueCodeableConcept from YesNo (required)
* valueCodeableConcept 1..1
// Structured details if Yes
* component 0..*
* component ^short = "Change type, location, and additional details"
// Slicing declaration
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
// Add slices
* component contains
    Type 0..*
  and Quadrant 0..*
  and Size 0..1
// Slice: Type of mammographic change
* component[Type].code = $sct#129714008 "Mammography finding (finding)"
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept from BreastMammographicChangesVS (required)
* component[Type] ^short = "Type of mammographic change"
// Slice: Quadrant
* component[Quadrant].code = $sct#272670002 "Structure of breast quadrant (body structure)"
* component[Quadrant].value[x] only CodeableConcept
* component[Quadrant].valueCodeableConcept from BreastQuadrants (required)
* component[Quadrant] ^short = "Breast quadrant where change is located"
// Slice: Size (only for mass), in millimetres
* component[Size].code = $sct#246115007 "Size (attribute)"
* component[Size].value[x] only Quantity
* component[Size].valueQuantity.system = "http://unitsofmeasure.org"
* component[Size].valueQuantity.code = #mm
* component[Size].valueQuantity.unit = "mm"
* component[Size] ^short = "Lesion size in mm (only for masses)"



// Example 1 — Mass, left UOQ, with size
Instance: example-mammo-change-left-uoq-mass
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "Mammographic Mass – Left UOQ (12 mm)"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373066001 "Yes"
// Type
* component[Type].valueCodeableConcept = $sct#129788004 "Mammographic mass of breast"
// Quadrant
* component[Quadrant].valueCodeableConcept = $sct#110501003 "Structure of upper outer quadrant of left breast"
// Size
* component[Size].valueQuantity.value = 12
* component[Size].valueQuantity.unit = "mm"

Instance: example-mammo-change-right-liq-calc
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "Mammographic Calcification – Right LIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373066001 "Yes"
* component[Type].valueCodeableConcept = $sct#697944008 "Mammographic calcification of breast"
* component[Quadrant].valueCodeableConcept = $sct#110495000 "Structure of lower inner quadrant of right breast"

Instance: example-mammo-change-no-distortion
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "No Mammographic Architectural Distortion"
Description: "Example where no architectural distortion is present."
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"

Instance: example-mammo-change-bilateral-uiq-asym
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "Asymmetric Tissue – Bilateral UIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373066001 "Yes"
* component[Type].valueCodeableConcept = $sct#129789007 "Focal asymmetric breast tissue finding"
* component[Quadrant][0].valueCodeableConcept = $sct#110499006 "Structure of upper inner quadrant of left breast"
* component[Quadrant][+].valueCodeableConcept = $sct#110494001 "Structure of upper inner quadrant of right breast"
