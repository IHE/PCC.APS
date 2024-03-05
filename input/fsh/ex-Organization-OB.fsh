Instance:   ex-Organization-OB
InstanceOf: Organization 
Title:      "mAPS Organization example"
Description: "OBGYN Organization example for antepartum summary"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.use = #official  
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier.system = "2.16.840.1.113883.4.6"
* identifier.value = "187659"
* identifier.period.start = "1999-03-19"
* active = true
* type = #prov
* name = "Acme Healthcare"
* telecom.system = #phone 
* telecom.value = "(401) 623 8856"
* address.type = #both
* address.text = "25 Eddy St, Providence, RI  02903"
* address.line = "25 Eddy St"
* address.city = "Providence"
* address.postalCode = "RI"
* address.state = "02903"
* address.country = "USA"