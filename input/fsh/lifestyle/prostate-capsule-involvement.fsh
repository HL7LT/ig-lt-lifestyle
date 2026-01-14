Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $laterality = http://hl7.org/fhir/ValueSet/bodysite-laterality

ValueSet: ProstateCapsuleInvolvementStatus
Id: lt-prostate-capsule-involvement-status
Title: "Prostate Capsule Involvement Status"
Description: "Codes representing the presence, absence, or suspicion of prostate capsule invasion/extracapsular extension, as required by the Prostate Cancer Prevention Program (Table 7.2 and 7.3)."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004 "Present (qualifier value)"

Profile: LTProstateCapsuleInvolvement
Parent: LTBaseObservation
Id: lt-prostate-capsule-involvement
Title: "Prostate Capsule Involvement on MRI"
Description: "Observation profile representing the assessment of Prostate Capsule Involvement (Extracapsular Extension) on MRI."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* category = $observation-category#imaging "Imaging"
* code = $sct#60405008 "Structure of capsule of prostate (body structure)"
* subject 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateCapsuleInvolvementStatus (required)
* bodySite from $laterality (required)
* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"

Instance: Example-ProstateCapsule-Confirmed-Right
InstanceOf: LTProstateCapsuleInvolvement
Title: "Example: Confirmed Capsule Involvement (Right)"
Description: "An example observation showing Indisputable (Present) capsule involvement on the Right side."
Usage: #example
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#60405008 "Structure of capsule of prostate (body structure)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-01-13T14:30:00+02:00"
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#24028007 "Right (qualifier value)"
* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"