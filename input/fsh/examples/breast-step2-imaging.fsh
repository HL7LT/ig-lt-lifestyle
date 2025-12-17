Instance: ExampleBreastStep2ImagingEncounter
InstanceOf: LTBaseEncounter
Usage: #example
Title: "Example – Breast Imaging Acquisition Encounter (Step 2)"
* status = #completed
* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(example-patient)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * actor = Reference(example-practitioner)
* actualPeriod
  * start = "2024-06-15T10:05:00+03:00"
  * end = "2024-06-15T10:30:00+03:00"
* serviceProvider = Reference(example-organization)

Instance: ExampleMammographyProcedure
InstanceOf: Procedure
Usage: #example
Title: "Example – Mammography Procedure"
* status = #completed
* code = $sct#71651007 "Mammography (procedure)"
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep2ImagingEncounter)
* occurrenceDateTime = "2024-06-15T10:10:00+03:00"
* performer.actor = Reference(example-practitioner)

Instance: ExampleMammographyImagingStudy
InstanceOf: ImagingStudy
Usage: #example
Title: "Example – Mammography Imaging Study"
* status = #available
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep2ImagingEncounter)
* started = "2024-06-15T10:10:00+03:00"
* modality = $dicom-dcm#MG "Mammography"
* series[0].uid = "1.2.840.113619.2.55.3.604688654.1234"
* series[0].modality = $dicom-dcm#MG "Mammography"
* series[0].bodySite = $sct#76752008 "Breast structure"


Instance: ExampleMammographyRadiationDose
InstanceOf: Observation
Usage: #example
Title: "Example – Mammography Radiation Dose"
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#363787002 "Radiation dose (observable entity)"
* subject = Reference(example-patient)
* encounter = Reference(ExampleBreastStep2ImagingEncounter)
* effectiveDateTime = "2024-06-15T10:15:00+03:00"
* valueQuantity = 2.5 'mGy' "milligray"
