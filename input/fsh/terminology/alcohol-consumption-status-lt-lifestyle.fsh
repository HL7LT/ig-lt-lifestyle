ValueSet: AlcoholConsumptionStatusLtLifestyle
Id: alcohol-consumption-status
Title: "Alcohol Consumption Status"
Description: "Whether the patient currently consumes alcohol, does not consume alcohol, or the status is unknown."
* ^url = $alcohol-consumption-status-url
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#105542008 "Current non-drinker of alcohol (finding)"   // No
* $sct#219006 "Current drinker of alcohol (finding)"   // Yes
* $sct#160580001 "Alcohol consumption unknown (finding)"       // Unknown
