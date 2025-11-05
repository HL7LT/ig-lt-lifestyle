ValueSet: NumericResultInterpretation
Id: numeric-result-interpretation
Title: "Numeric Result Interpretation value set"
Description: "The HL7 V3:ObservationInterpretation code set (OID: 2.16.840.1.113883.5.83) that describes interpretations associated with a measured value."
// * ^url = "https://hl7.lt/fhir/tx/ValueSet/numeric-result-interpretation"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* $observation-interpretation#A "Abnormal"
* $observation-interpretation#H "Higher Than Normal"
* $observation-interpretation#L "Lower Than Normal"
* $observation-interpretation#HH "Panic High"
* $observation-interpretation#LL "Panic Low"
* $observation-interpretation#N "Normal"