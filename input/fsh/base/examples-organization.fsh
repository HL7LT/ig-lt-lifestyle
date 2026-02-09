Instance: example-organization
InstanceOf: LTBaseOrganization
Description: "Example of a healthcare organization"
Usage: #example
* language = #lt
* identifier
  * use = #official
  * system = "http://esveikata.lt/classifiers/Identifier/JAR"
  * value = "123456789"
* active = true
* name = "Vilniaus miesto ligoninė"
* contact[0]
  * purpose = #work
  * telecom[phone]
    * value = "+37061234567"
    * use = #work
  * address
    * use = #work
    * type = #both
    * line = "Gedimino pr. 1"
    * city = "Vilnius"
    * postalCode = "01103"
    * country = "LT"