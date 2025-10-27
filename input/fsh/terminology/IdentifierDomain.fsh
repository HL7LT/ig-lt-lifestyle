CodeSystem: LTBaseIdentifierDomain
Id: identifier-domain
Title: "Identifier Domain"
Description: "Identifier Domain with translations in Lithuanian"
* insert OriginalCodeSystemDraft(identifier-domain)
* #http://esveikata.lt/Identifier/SVEIDRAID "VEIDRA identifier" "VEIDRA identifier"
  * ^designation[0].language = #lt
  * ^designation[=].value = "SVEIDRA identifikatorius"
* #http://esveikata.lt/classifiers/Identifier/JAR "JAR code" "JAR code"
  * ^designation[0].language = #lt
  * ^designation[=].value = "JAR kodas"
* #http://esveikata.lt/Identifier/ESPBI "ESPBI id" "ESPBI id"
  * ^designation[0].language = #lt
  * ^designation[=].value = "ESPBI id"


ValueSet: LTBaseOrganizationIdentifier
Id: organization-identifier
Title: "Organization Identifier"
Description: "A curated list of identifier systems for organizations."
* ^language = #en
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Lithuania" 

* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/SVEIDRAID 
* LTBaseIdentifierDomain#http://esveikata.lt/classifiers/Identifier/JAR
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/ESPBI 

