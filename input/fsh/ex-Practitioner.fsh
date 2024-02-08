Instance:   ex-Practitioner
InstanceOf: Practitioner  
Title:      "mAPS Practitioner  example"
Description: "Practitioner example for antepartum summary"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.use = #usual  
* identifier.type = #NPI
* identifier.system = "oid:2.16.840.1.113883.2.4.6.3"
* identifier.value = "567IUI51C154"
* active = true
* name[+].use = #official
* name[=].family = "Heps"
* name[=].given = "Simone"
* name[=].suffix = "MD"
* telecom[+].system = #phone 
* telecom[=].value = "2020556936"
* telecom[=].use = #work
* telecom[+].system = #email 
* telecom[=].value = "S.M.Heps@bmc.nl"
* telecom[=].use = #work
* telecom[+].system = #fax 
* telecom[=].value = "0205669283"
* telecom[=].use = #work
* address.use = #work 
* address.type = #both
* address.text = "25 Eddy St, Providence, RI  02903"
* address.line = "25 Eddy St"
* address.city = "Providence"
* address.postalCode = "RI"
* address.state = "02903"
* address.country = "USA"
* gender = #female
* birthDate = "1971-11-07"
