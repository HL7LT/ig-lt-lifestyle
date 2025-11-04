Instance: example-patient
InstanceOf: LTBasePatient // Links this instance to the specific profile
Usage: #example
Title: "Example of Patient - Jonas Petrauskas"
Description: "An example Patient conforming to the Lithuanian Base Profile."

// Identifiers (Required: 1..* MS)
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.3.4.5.6.7.8.9.11" // Lithuanian Personal Code/ID System
* identifier[0].value = "38501019999" // Example personal code (as a string)

* identifier[1].use = #usual
* identifier[1].system = "http://hospital-lt.lt/patient-id"
* identifier[1].value = "HOSPLT-10005"

// Name (Assumed to be required via 'insert HumanName')
* name[0].use = #official
* name[0].family = "Petrauskas"
* name[0].given[0] = "Jonas"
* name[0].text = "Jonas Petrauskas"

// Active Status (MS)
* active = true

// Gender (MS)
* gender = #male

// Birth Date (MS)
* birthDate = "1985-01-01"

// Other Patient information
* telecom[0].system = #phone
* telecom[0].value = "+370 65551234"
* telecom[0].use = #mobile

* address[0].use = #home
* address[0].line[0] = "Gedimino pr. 10"
* address[0].city = "Vilnius"
* address[0].country = "LT"
* address[0].postalCode = "LT-01103"



Instance: example-practitioner
InstanceOf: Practitioner
Title: "Example of Practitioner"
Usage: #example
* name.text = "Registrar"
* qualification.code = $sct#224538006 "Triage nurse (occupation)"


Instance: example-organization
InstanceOf: Organization
Title: "Example of Organization"
Usage: #example
* name = "Vilnius Heart Clinic"