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
// Yes/No value
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (required)
// Instead of components → using now the BodyStructure reference
* bodySite 0..1
* bodySite only Reference(BodyStructure)
* bodySite ^short = "Breast side & quadrant defined using BodyStructure"


// Profiles extending the base
Profile: LTBreastSurgeryHistory
Parent: lt-breast-history-base
Id: lt-breast-surgery-history
Title: "Breast Surgery History"
Description: "History of surgery involving the breast."
* code = $sct#71661000210109 "History of operation on breast (situation)"
* note 0..1
* note.text ^short = "Optional free-text note"


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
InstanceOf: BodyStructure
Usage: #example
Title: "Left Breast – Upper Outer Quadrant"
* includedStructure[0].structure = $sct#76752008 "Breast structure"
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].qualifier = $sct#110501003 "Upper outer quadrant of breast"


Instance: example-right-breast-uiq
InstanceOf: BodyStructure
Usage: #example
Title: "Right Breast – Upper Inner Quadrant"
* includedStructure[0].structure = $sct#76752008 "Breast structure"
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].qualifier = $sct#110499006 "Upper inner quadrant of breast"



// Observation EXAMPLES using BodyStructure reference
Instance: ExampleBreastSurgeryHistory
InstanceOf: lt-breast-surgery-history
Usage: #example
Title: "Example – Breast Surgery History"
* status = #final
* valueCodeableConcept = $sct#373066001 "Yes"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* bodySite = Reference(example-left-breast-uoq)


Instance: ExampleBreastInjuryHistory
InstanceOf: lt-breast-injury-history
Usage: #example
Title: "Example – Breast Injury History"
* status = #final
* valueCodeableConcept = $sct#373067005 "No"
* bodySite = Reference(example-right-breast-uiq)


Instance: ExampleBreastDiseaseHistory
InstanceOf: lt-breast-disease-history
Usage: #example
Title: "Example – No Breast Disease History"
* status = #final
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"
// No bodySite since value = No
