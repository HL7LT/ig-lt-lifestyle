ValueSet: LTAlcoholConsumptionStatus
Id: lt-alcohol-consumption-status
Title: "LT Alcohol Consumption Status"
Description: "Whether the patient currently consumes alcohol, does not consume alcohol, or the status is unknown."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#105542008 "Current non-drinker of alcohol (finding)"   // No
* $sct#365967005 "Finding of alcohol intake (finding)"         // Yes
* $sct#160580001 "Alcohol consumption unknown (finding)"       // Unknown


// Invariants for AUDIT-C slice
Invariant: auditc-range
Description: "AUDIT-C score must be between 0 and 12 inclusive."
Severity: #error
Expression: "value.ofType(Quantity).value.all($this >= 0 and $this <= 12)"
Invariant: auditc-ucum
Description: "AUDIT-C score must use UCUM {score}."
Severity: #error
Expression: "value.ofType(Quantity).all(system = 'http://unitsofmeasure.org' and code = '{score}')"



// Profile: LT Alcohol Consumption (with AUDIT-C component)
Profile: LTAlcoholConsumption
Parent: LTBaseObservation
Id: lt-alcohol-consumption
Title: "LT Alcohol Consumption"
Description: "Observation of a patient's current alcohol consumption status. Optionally includes an AUDIT-C score component when alcohol intake is present."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T12:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTAlcoholConsumptionStatus (preferred)
// --- AUDIT-C component (optional) ---
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains auditc 0..1
* component[auditc].code = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"
* component[auditc].value[x] only Quantity
* component[auditc].valueQuantity 1..1
* component[auditc].valueQuantity.system = $ucum
* component[auditc].valueQuantity.code = #{score}
* component[auditc] ^short = "AUDIT-C numeric score (0–12)"
* component[auditc] ^comment = "Include when AUDIT-C has been completed or auto-calculated."
// Apply invariants to the AUDIT-C slice
* component[auditc] obeys auditc-range and auditc-ucum



// Example
Instance: example-alcohol-consumption-no
InstanceOf: LTAlcoholConsumption
Usage: #example
Title: "Example LT Alcohol Consumption – No"
Description: "Patient is currently not drinking alcohol (sober) at the time of assessment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#105542008 "Current non-drinker of alcohol (finding)"
* note.text = "Patient is sober today and reports no alcohol consumed in the recent period."



// Example: Alcohol – Yes with AUDIT-C score
Instance: example-alcohol-consumption-yes-with-auditc
InstanceOf: LTAlcoholConsumption
Usage: #example
Title: "Example LT Alcohol Consumption – Yes with AUDIT-C"
Description: "Patient currently consumes alcohol; AUDIT-C score provided."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#897148007 "Alcoholic beverage intake (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#365967005 "Finding of alcohol intake (finding)"
* component[auditc].code = $sct#763256006 "Alcohol Use Disorders Identification Test - Consumption score (observable entity)"
* component[auditc].valueQuantity.value = 7
* component[auditc].valueQuantity.system = $ucum
* component[auditc].valueQuantity.code = #{score}
* note.text = "AUDIT-C auto-calculated from recent data; clinician reviewed."

