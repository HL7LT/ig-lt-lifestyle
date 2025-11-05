//Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $EKG = urn:oid:2.16.840.1.113883.6.24

Profile: LTLifestyleEKG
Parent: LTBaseObservation
Id: lt-lifestyle-ekg
Title: "EKG"
Description: "Electrocardiogram (EKG/ECG) observation using 12 leads and SampledData data type."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $EKG#131328 "MDC_ECG_ELEC_POTL"
* subject 1.. 
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* note MS
* component MS
* component.value[x] only SampledData
* interpretation MS
* interpretation from NumericResultInterpretation


Instance: ekg
InstanceOf: LTLifestyleEKG
Title: "Example of EKG - Normal"
Usage: #example
* status = #final
* code = $EKG#131328 "MDC_ECG_ELEC_POTL"
* subject = Reference(Patient/f001) "P. van de Heuvel"
* effectiveDateTime = "2015-02-19T09:30:35+01:00"
* performer = Reference(Practitioner/f005) "A. Langeveld"
* device.display = "12 lead EKG Device Metric"
* component[0].code = urn:oid:2.16.840.1.113883.6.24#131329 "MDC_ECG_ELEC_POTL_I"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.interval = 10
* component[=].valueSampledData.intervalUnit = #ms
* component[=].valueSampledData.factor = 1.612
* component[=].valueSampledData.lowerLimit = -3300
* component[=].valueSampledData.upperLimit = 3300
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"
* component[+].code = urn:oid:2.16.840.1.113883.6.24#131330 "MDC_ECG_ELEC_POTL_II"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.interval = 10
* component[=].valueSampledData.intervalUnit = #ms
* component[=].valueSampledData.factor = 1.612
* component[=].valueSampledData.lowerLimit = -3300
* component[=].valueSampledData.upperLimit = 3300
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"
* component[+].code = urn:oid:2.16.840.1.113883.6.24#131389 "MDC_ECG_ELEC_POTL_III"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.interval = 10
* component[=].valueSampledData.intervalUnit = #ms
* component[=].valueSampledData.factor = 1.612
* component[=].valueSampledData.lowerLimit = -3300
* component[=].valueSampledData.upperLimit = 3300
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"
* interpretation = $observation-interpretation#N "Normal"
* note.text = "No anomalies"