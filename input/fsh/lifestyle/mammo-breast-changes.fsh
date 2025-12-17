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

Invariant: mammo-diameter-only-for-mass
Description: "Diameter component is allowed only when Type component represents a mammographic mass."
Severity: #warning
Expression: "(component.where(code.coding.code='248530000').exists()) implies (component.where(value.coding.code='129788004').exists())"



// Observation for mammographic breast changes
Profile: LTMammographicChanges
Parent: LTBaseObservation
Id: lt-mammographic-changes
Title: "Mammographic Breast Changes"
Description: "Observation representing mammographic breast changes using BodyStructure."
* ^status = #active
* category = $observation-category#exam "Exam"
* code = $sct#129714008 "Mammography finding (finding)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* obeys mammo-diameter-only-for-mass
// Yes/No whether a change is present
* value[x] only CodeableConcept
* valueCodeableConcept from YesNo (required)
* valueCodeableConcept 1..1
// BodyStructure describes side + quadrant
* focus 0..*
* focus only Reference(BodyStructure)
* focus ^short = "Breast side + quadrant represented via BodyStructure"
// Structured components
* component 0..*
* component ^short = "Details of mammographic finding"
// Slicing for components
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
// Component slices
* component contains
    Type 0..*
  and Diameter 0..1
// Slice: Type of change
* component[Type].code = $sct#129714008 "Mammography finding (finding)"
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept from BreastMammographicChangesVS (required)
* component[Type] ^short = "Type of mammographic change"
// Slice: Diameter of Lump (Size)
* component[Diameter].code = $sct#248530000 "Diameter of lump (observable entity)"
* component[Diameter].value[x] only Quantity
* component[Diameter].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diameter].valueQuantity.code = #mm
* component[Diameter].valueQuantity.unit = "mm"
* component[Diameter] ^short = "Diameter in mm (only for masses)"

// Left UOQ
Instance: bs-left-uoq
InstanceOf: BodyStructure
Usage: #example
Title: "Left Breast Upper Outer Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#76752008 "Breast structure"
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].qualifier = $sct#110501003 "Upper outer quadrant of breast"

// Right LIQ
Instance: bs-right-liq
InstanceOf: BodyStructure
Usage: #example
Title: "Right Breast Lower Inner Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#76752008 "Breast structure"
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].qualifier = $sct#110495000 "Lower inner quadrant of breast"

// Bilateral UIQ examples
Instance: bs-left-uiq
InstanceOf: BodyStructure
Usage: #example
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#76752008
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].qualifier = $sct#110499006 "Upper inner quadrant of breast"

Instance: bs-right-uiq
InstanceOf: BodyStructure
Usage: #example
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#76752008
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].qualifier = $sct#110499006 "Upper inner quadrant of breast"



// Example 1 — Mass, left UOQ, with diameter
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
// Location via BodyStructure
* focus = Reference(bs-left-uoq)
// Diameter
* component[Diameter].valueQuantity.value = 12
* component[Diameter].valueQuantity.unit = "mm"

// Example 2 — Calcification, right LIQ
Instance: example-mammo-change-right-liq-calc
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "Mammographic Calcification – Right LIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373066001 "Yes"
* component[Type].valueCodeableConcept = $sct#697944008 "Mammographic calcification of breast"
* focus = Reference(bs-right-liq)

// Example 3 — No finding
Instance: example-mammo-change-no-distortion
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "No Mammographic Architectural Distortion"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"

// Example 4 — Asymmetric tissue in bilateral UIQ
Instance: example-mammo-change-bilateral-uiq-asym
InstanceOf: lt-mammographic-changes
Usage: #example
Title: "Asymmetric Tissue – Bilateral UIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* valueCodeableConcept = $sct#373066001 "Yes"
* component[Type].valueCodeableConcept = $sct#129789007 "Focal asymmetric breast tissue finding"
* focus[0] = Reference(bs-left-uiq)
* focus[+] = Reference(bs-right-uiq)