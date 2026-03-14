Profile: TobaccoSmokingStoppedLtLifestyle
Parent: ObservationLt
Id: tobacco-smoking-stopped-lt-lifestyle
Title: "Tobacco Smoking Stopped - Number of Years Ago"
Description: "Records how long it has been since the patient stopped smoking, as a quantitative time interval (e.g., years). "
* ^url = $tobacco-smoking-stopped-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#social-history "Social History"
* code = $sct#228486009 "Time since stopped smoking (observable entity)"
* subject 1.. 
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity from $units-of-time (required)
* component ..0
