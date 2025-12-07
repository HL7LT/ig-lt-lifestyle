ValueSet: BiradsRecommendationType
Id: lt-birads-recommendation-type
Title: "BI-RADS Recommendation Types"
Description: "All clinical recommendations triggered by the BI-RADS diagnostic assessment."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"

$sct#16310003 "Ultrasonography (procedure)"
$sct#306300002 "Referral to breast surgeon (procedure)"
$sct#308535007 "Screening call (procedure)"

Profile: LTBiradsRecommendation
Parent: LTBaseObservation
Id: lt-birads-recommendation
Title: "BI-RADS Recommendation"
Description: "Observation representing a clinical recommendation generated from a BI-RADS Assessment."

* category = $observation-category#exam "Exam"
* code = $sct#185389009 "Follow-up visit (procedure)"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BiradsRecommendationType (required)