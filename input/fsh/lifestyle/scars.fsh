// ValueSet: BreastScarFindingsVS
ValueSet: BreastScarFindingsVS
Id: breast-scar-findings-vs
Title: "Breast Scar Findings Value Set"
Description: "SNOMED CT findings representing scars on the breast."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#442523003 "Surgical scar finding (finding)"


// Observation profile
Profile: LTBreastScars
Parent: LTBaseObservation
Id: lt-breast-scars
Title: "Breast Scars"
Description: "This profile constrains the Observation resource to represent breast scar assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#364370007 "Breast observable (observable entity)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* bodyStructure 1..1
* bodyStructure only Reference(BodyStructureBreastLt)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNo (preferred)
* component ..0


// Example BodyStructure
Instance: lt-breast-scar-body-structure-example
InstanceOf: BodyStructureBreastLt
Usage: #inline
Title: "Example Body Structure for Breast Scar"
Description: "Right breast — upper outer quadrant."
* id = "example-breast-scar-structure"
* patient = Reference(LTBasePatient/example-patient)
* includedStructure[0].laterality = $sct#24028007 "Right (qualifier value)"
* includedStructure[0].structure = $sct#110496004 "Structure of upper outer quadrant of right breast (body structure)"


// Example Observation
Instance: lt-breast-scar-example
InstanceOf: LTBreastScars
Usage: #example
Title: "Example Breast Scar Observation"
Description: "An example instance of a breast scar observation."
* status = #final
* encounter = Reference(ExampleBreastStep1Encounter)
* subject = Reference(LTBasePatient/example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* contained[0] = lt-breast-scar-body-structure-example
* bodyStructure.reference = "#example-breast-scar-structure"
* valueCodeableConcept = $sct#373066001 "Yes"
