Instance: example-practitioner
InstanceOf: LTBasePractitioner
Usage: #example
Title: "Dr. Petras Kazlauskas - LT Base Practitioner Example"
Description: "An example Practitioner conforming to the Lithuanian Base Profile."
// Identifier (Mandatory by the profile)
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.3.4.5.6.7.8.9.10" // National ID System
* identifier[0].value = "19750515-LT12345"
* identifier[1].use = #secondary
* identifier[1].system = "http://licensing.lt/medical-license"
* identifier[1].value = "MED-LT-54321"
// Name (Mandatory by the profile)
* name[0].use = #official
* name[0].family = "Kazlauskas"
* name[0].given[0] = "Petras"
* name[0].prefix[0] = "Dr."
* name[0].text = "Dr. Petras Kazlauskas"
// Other standard Practitioner fields
* active = true
* telecom[0].system = #phone
* telecom[0].value = "+370 5 123 4567"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "p.kazlauskas@clinic.lt"
* telecom[1].use = #work
* gender = #male
* birthDate = "1975-05-15"

