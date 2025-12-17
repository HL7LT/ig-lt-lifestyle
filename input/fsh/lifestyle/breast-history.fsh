Profile: LTBreastHistoryBase
Parent: LTBaseObservation
Id: lt-breast-history-base
Title: "Breast History Base"
Description: "Base profile for breast-related historical observations."
* ^status = #draft
* ^language = #en
* ^version = "1.1.0"
* ^experimental = true
* ^abstract = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#survey "Survey"
// Yes / No answer
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (required)
// Location of history
* bodyStructure 0..1
* bodyStructure only Reference(BodyStructureBreastLt)
* bodyStructure ^short = "Breast side and quadrant represented using BodyStructure"


// Profiles extending the base
Profile: LTBreastSurgeryHistory
Parent: lt-breast-history-base
Id: lt-breast-surgery-history
Title: "Breast Surgery History"
Description: "History of surgery involving the breast."
* code = $sct#71661000210109 "History of operation on breast (situation)"
* note 0..1


Profile: LTBreastInjuryHistory
Parent: lt-breast-history-base
Id: lt-breast-injury-history
Title: "Breast Injury History"
Description: "History of injury involving the breast."
* code = $sct#62112002 "Injury of breast (disorder)"


Profile: LTBreastDiseaseHistory
Parent: lt-breast-history-base
Id: lt-breast-disease-history
Title: "Breast Disease History"
Description: "History of disease involving the breast."
* code = $sct#79604008 "Disorder of breast (disorder)"




// BodyStructure EXAMPLES
Instance: example-left-breast-uoq
InstanceOf: BodyStructureBreastLt
Usage: #example
Title: "Left Breast – Upper Outer Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#110496004 "Structure of upper outer quadrant of left breast"
* includedStructure[0].laterality = $sct#7771000 "Left"


Instance: example-right-breast-uiq
InstanceOf: BodyStructureBreastLt
Usage: #example
Title: "Right Breast – Upper Inner Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#110499006 "Structure of upper inner quadrant of right breast"
* includedStructure[0].laterality = $sct#24028007 "Right"


// Observation EXAMPLES
Instance: ExampleBreastSurgeryHistory
InstanceOf: lt-breast-surgery-history
Usage: #example
Title: "Example – Breast Surgery History"
* status = #final
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep1Encounter)
* valueCodeableConcept = $sct#373066001 "Yes"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* bodyStructure = Reference(example-left-breast-uoq)


Instance: ExampleBreastInjuryHistory
InstanceOf: lt-breast-injury-history
Usage: #example
Title: "Example – Breast Injury History"
* status = #final
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep1Encounter)
* valueCodeableConcept = $sct#373067005 "No"
* bodyStructure = Reference(example-left-breast-uoq)


Instance: ExampleBreastDiseaseHistory
InstanceOf: lt-breast-disease-history
Usage: #example
Title: "Example – No Breast Disease History"
* status = #final
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep1Encounter)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"