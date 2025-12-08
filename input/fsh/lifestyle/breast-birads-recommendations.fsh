ValueSet: BiradsRecommendationService
Id: lt-birads-recommendation-service
Title: "BI-RADS Recommendation Services"
Description: "All clinical recommendations triggered by the BI-RADS diagnostic assessment."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#16310003 "Ultrasonography (procedure)"
* $sct#306300002 "Referral to breast surgeon (procedure)"
* $sct#308535007 "Screening call (procedure)"

Profile: LTBiradsRecommendation
Parent: LTBaseObservation
Id: lt-birads-recommendation
Title: "BI-RADS Recommendation"
Description: "Observation representing a clinical recommendation generated from a BI-RADS Assessment."

* category = $observation-category#exam "Exam"
* code = $sct#185389009 "Follow-up visit (procedure)"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BiradsRecommendationService (required)


Profile: BIRADSRecommendation
Parent: ServiceRequest
Id: birads-recommendation
Title: "BI-RADS Assessment Recommendation"
Description: "A profile of ServiceRequest used to capture a clinical recommendation (e.g., follow-up ultrasound, surgical referral) resulting directly from a BI-RADS assessment category."
* status MS
* subject 1..1
* code 1..1
* code from BiradsRecommendationService (required)
// Reason Code: The BI-RADS result that necessitated the recommendation is mandatory.
* reason 1..* MS
* reason from BiradsCategory (required)
// Requester (The Clinician/Report Author) is mandatory.
* requester 1..1
// Occurrence: Details when the action should happen (e.g., in 6 months, immediately).
* occurrence[x] 1..1

Instance: example-birads-referral-cat4
InstanceOf: BIRADSRecommendation
Title: "Example BI-RADS Category 4 Referral"
Description: "A ServiceRequest instance recommending a referral to a breast surgeon due to a Category 4 (suspicious) BI-RADS finding."

// Resource Identity
* id = "birads-referral-cat4"

// Core elements
* status = #active
* intent = #order
* priority = #routine
// Service code
* code = $sct#306300002 "Referral to breast surgeon (procedure)"
// The Reason (ServiceRequest.reasonCode)
* reason.concept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
// Timing/Occurrence. The recommendation should happen immediately.
* occurrenceDateTime = "2025-12-15T09:00:00Z"

// Subject (The Patient) and Requester (The Radiologist)
* subject = Reference(Patient/example-patient)
* requester = Reference(Practitioner/example-practitioner)

// Based On (Optional): Link back to the Diagnostic Report
* basedOn = Reference(DiagnosticReport/example-birads-cat4)