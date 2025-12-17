Instance: ExampleBreastStep1Encounter
InstanceOf: LTBaseEncounter
Usage: #example
Title: "Example – Breast Imaging Visit (Step 1)"
* status = #completed
* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(example-patient)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * period
    * start = "2024-06-15T09:30:00+03:00"
    * end = "2024-06-15T10:00:00+03:00"
  * actor = Reference(example-practitioner)
* actualPeriod
  * start = "2024-06-15T09:30:00+03:00"
  * end = "2024-06-15T10:00:00+03:00"
* serviceProvider = Reference(example-organization)


Instance: ExampleBreastPalpation
InstanceOf: Procedure
Usage: #example
Title: "Example – Breast Palpation Procedure"
* status = #completed
* code = $sct#113011001 "Palpation (procedure)"
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep1Encounter)
* occurrenceDateTime = "2024-06-15T09:40:00+03:00"
* performer.actor = Reference(example-practitioner)


Instance: ExampleBreastImagingRequest
InstanceOf: ServiceRequest
Usage: #example
Title: "Example – Breast Imaging Request (Step 1)"
* status = #active
* intent = #order
* category = $sct#363679005 "Imaging (procedure)"
* code = $sct#15886004 "Screening for malignant neoplastic disease (procedure)"
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep1Encounter)
* requester = Reference(example-practitioner)
* authoredOn = "2024-06-15T09:20:00+03:00"
