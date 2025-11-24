

// ValueSets
ValueSet: BreastQuadrants
Id: breast-quadrant
Title: "Breast quadrant locations"
Description: "Anatomic quadrants of right and left breast."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#110496004 "Structure of upper outer quadrant of right breast"
* $sct#110497008 "Structure of lower outer quadrant of right breast"
* $sct#110495000 "Structure of lower inner quadrant of right breast"
* $sct#110494001 "Structure of upper inner quadrant of right breast"
* $sct#110501003 "Structure of upper outer quadrant of left breast"
* $sct#110502005 "Structure of lower outer quadrant of left breast"
* $sct#110500002 "Structure of lower inner quadrant of left breast"
* $sct#110499006 "Structure of upper inner quadrant of left breast"

ValueSet: BreastFindingsVS
Id: lt-breast-findings-vs
Title: "Breast Findings Value Set"
Description: "Types of breast skin findings."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#297960002 "Mass of skin"
* $sct#442523003 "Surgical scar finding"
* $sct#373572006 "Clinical finding absent"

// BodyStructure profile
Profile: BodyStructureBreastLt
Parent: BodyStructure
Id: body-structure-breast-lt
* includedStructure 1..* MS
* includedStructure.structure 1..1 MS
* includedStructure.laterality 1..1 MS
* includedStructure.qualifier 0..0
* includedStructure.structure from BreastQuadrants (required)
* includedStructure.laterality from $laterality (preferred)

// Observation profile
Profile: LTSkinFormations
Parent: LTBaseObservation
Id: lt-skin-formations
Title: "Breast Skin Formations"
Description: "Observation representing breast skin formations (e.g., skin mass, scars)."
* category = $observation-category#exam "Exam"
* code = $sct#364370007 "Breast observable"

* subject 1..1
* subject only Reference(LTBasePatient)

* effective[x] 1..1
* effective[x] only dateTime

* bodyStructure 1..1
* bodyStructure only Reference(BodyStructureBreastLt)

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (required)

// Example BodyStructure
Instance: example-breast-structure-1
InstanceOf: BodyStructureBreastLt
Usage: #inline
Title: "Example Body Structure – Multisite"
* id = "example-breast-structure-1"
* patient = Reference(example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#110501003
* includedStructure[+].laterality = $sct#24028007 "Right"
* includedStructure[=].structure = $sct#110494001

Instance: example-skin-formations-1
InstanceOf: LTSkinFormations
Usage: #example
Title: "Example – Skin Formations Present"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* contained[0] = example-breast-structure-1
* bodyStructure.reference = "#example-breast-structure-1"
* valueCodeableConcept = $sct#373066001 "Yes"
