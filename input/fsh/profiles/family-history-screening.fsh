Profile: FamilyMemberScreeningHistoryLtLifestyle
Parent: FamilyMemberHistoryLt
Id: family-member-screening-history-lt-lifestyle
Title: "Family Member History for screening program"
Description: "Family Member History record."
* ^url = $family-member-screening-history-lt-lifestyle-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-27T19:55:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* status MS
* condition MS
* condition.code MS
* condition.code from $screened-condition-url (preferred)
* date ..1 MS
* dataAbsentReason MS