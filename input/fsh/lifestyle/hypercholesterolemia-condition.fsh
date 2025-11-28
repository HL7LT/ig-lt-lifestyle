Instance: example-hypercholesterolemia
InstanceOf: LTBaseCondition
Usage: #example
Title: "Example – Hypercholesterolemia"
Description: "Patient has a confirmed diagnosis of hypercholesterolemia."
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $sct#13644009 "Hypercholesterolemia (disorder)"
* subject = Reference(example-patient)
* onsetDateTime = "2024-05-10"
* recordedDate = "2024-05-12"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note.text = "Elevated LDL cholesterol. Lifestyle advice and statin therapy recommended."
