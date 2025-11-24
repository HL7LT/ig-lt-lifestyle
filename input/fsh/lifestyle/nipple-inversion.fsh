Alias: $sct = http://snomed.info/sct

// ValueSet: NippleInversionFindingsVS
ValueSet: NippleInversionFindingsVS
Id: nipple-inversion-findings-vs
Title: "Nipple Inversion Findings Value Set"
Description: "SNOMED CT finding representing nipple inversion."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#271955004 "Retraction of nipple (finding)"


// Observation profile
Profile: LTNippleInversion
Parent: LTBaseObservation
Id: lt-nipple-inversion
Title: "Nipple Inversion"
Description: "Observation representing nipple inversion assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#exam "Exam"
* code = $sct#271955004 "Retraction of nipple (finding)"

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
Instance: lt-nipple-inversion-body-structure-example
InstanceOf: BodyStructureBreastLt
Usage: #inline
Title: "Example Body Structure for Nipple Inversion"
Description: "Left breast, upper inner quadrant."
* id = "example-breast-nipple-structure"
* patient = Reference(LTBasePatient/example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left (qualifier value)"
* includedStructure[0].structure = $sct#110499006 "Structure of upper inner quadrant of left breast (body structure)"


// Example Observation
Instance: lt-nipple-inversion-example
InstanceOf: LTNippleInversion
Usage: #example
Title: "Example Nipple Inversion Observation"
Description: "An example instance of a nipple inversion observation."
* status = #final
* subject = Reference(LTBasePatient/example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* contained[0] = lt-nipple-inversion-body-structure-example
* bodyStructure.reference = "#example-breast-nipple-structure"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
