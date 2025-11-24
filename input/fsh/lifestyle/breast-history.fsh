Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $lt-breast-history = http://hl7.lt/fhir/CodeSystem/breast-history


// Local CodeSystem (only injury + disease here), because we don't have SNOMED codes for them
CodeSystem: LTBreastHistoryCS
Id: lt-breast-history-cs
Title: "LT Breast History Type CodeSystem"
Description: "Local Lithuanian codes for breast injury and disease history."
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"

// TWO LOCAL CODES (injury + disease)
* #injury "History of injury to breast"
* #disease "History of breast disease"


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

// Optional components
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


// Breast Surgery History 
Profile: LTBreastSurgeryHistory
Parent: lt-breast-history-base
Id: lt-breast-surgery-history
Title: "Breast Surgery History"
Description: "History of surgery involving the breast."
* code = $sct#71661000210109 "History of operation on breast (situation)"
* note 0..1
* note.text ^short = "Optional free-text note"



// Breast Injury History - LOCAL code
Profile: LTBreastInjuryHistory
Parent: lt-breast-history-base
Id: lt-breast-injury-history
Title: "Breast Injury History"
Description: "History of injury involving the breast."
* code = $lt-breast-history#injury "History of injury to breast"



// Breast Disease History — LOCAL code
Profile: LTBreastDiseaseHistory
Parent: lt-breast-history-base
Id: lt-breast-disease-history
Title: "Breast Disease History"
Description: "History of disease involving the breast."
* code = $lt-breast-history#disease "History of breast disease"


// --------------------------------------------
// Examples
// --------------------------------------------

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
Title: "Example – Breast Disease History"
* status = #final
* valueCodeableConcept = $sct#373066001 "Yes"
* component[Side].valueCodeableConcept = $sct#24028007 "Right"
* component[Quadrant].valueCodeableConcept = $sct#110495000
