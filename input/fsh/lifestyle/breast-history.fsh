

// Base profile for breast history
Profile: LTBreastHistoryBase
Parent: LTBaseObservation
Id: lt-breast-history-base
Title: "Breast History Base"
Description: "Base profile for breast-related historical observations."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^abstract = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#survey "Survey"
// Yes/No value
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (required)
// Optional components (Side, Quadrant)
* component 0..*
* component ^short = "Additional details if value = Yes"
// Slicing
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains Side 0..1 and Quadrant 0..1
// Side
* component[Side].code = $sct#76752008 "Breast structure (body structure)"
* component[Side].value[x] only CodeableConcept
* component[Side].valueCodeableConcept from $laterality (preferred)
* component[Side] ^short = "Breast side"
// Quadrant
* component[Quadrant].code = $sct#272670002 "Structure of breast quadrant (body structure)"
* component[Quadrant].value[x] only CodeableConcept
* component[Quadrant].valueCodeableConcept from BreastQuadrants (required)
* component[Quadrant] ^short = "Breast quadrant"


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



Instance: ExampleBreastSurgeryHistory
InstanceOf: lt-breast-surgery-history
Usage: #example
Title: "Example – Breast Surgery History"
* status = #final
* valueCodeableConcept = $sct#373066001 "Yes"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* component[Side].valueCodeableConcept = $sct#7771000 "Left"
* component[Quadrant].valueCodeableConcept = $sct#110501003

Instance: ExampleBreastInjuryHistory
InstanceOf: lt-breast-injury-history
Usage: #example
Title: "Example – Breast Injury History"
* status = #final
* valueCodeableConcept = $sct#373067005 "No"
* component[Side].valueCodeableConcept = $sct#24028007 "Right"
* component[Quadrant].valueCodeableConcept = $sct#110497008

Instance: ExampleBreastDiseaseHistory
InstanceOf: lt-breast-disease-history
Usage: #example
Title: "Example – No Breast Disease History"
* status = #final
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"

