Instance:   ex-Patient-AmandaAlvarez
InstanceOf: PatientUvIps
Title:      "Amanda Alvarez example"
Description: "Amanda Alvarez patient example for antepartum summary"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.use = #usual 
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier.value = "12345"
* identifier.period.start = "2001-05-06"
* identifier.assigner = Reference(Organization/ex-Organization-OB)
* name[+].use = #official
* name[=].family = "Alvarez"
* name[=].given = "Amanda"
* name[+].use = #usual
* name[=].given = "Mandy"
* name[+].use = #maiden
* name[=].family = "Windsor"
* name[=].given = "Amanda"
* name[=].period.end = "2002" 
* telecom[+].system = #phone
* telecom[=].value = "unknown"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "(203) 555 6473"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "(203) 410 5613"
* telecom[=].use = #mobile
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].value = "((203) 555 8834"
* telecom[=].use = #old
* telecom[=].period.end = "2014"
* gender = #female 
//* birthDate = "1994-12-25T14:35:45-05:00"
* birthDate = "1994-12-25"
* deceasedBoolean = false 
* address.use = #home 
* address.type = #both
* address.text = "534 Erewhon St, Greenville, RI  02828"
* address.line = "534 Erewhon St"
* address.city = "Greenville"
* address.postalCode = "RI"
* address.state = "02828"
* address.country = "USA"
* address.period.start = "1974-12-25"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N
* contact.name[+].use = #official
* contact.name[=].family = "du Marché"
* contact.name[=].prefix = "W"
* contact.name[=].given = "Bénédicte"
* contact.telecom[+].system = #phone
* contact.telecom[=].value = "+33 (237) 998327"
* contact.address.use = #home 
* contact.address.type = #both
* contact.address.text = "534 Erewhon St, Greenville, RI  02828"
* contact.address.line = "534 Erewhon St"
* contact.address.city = "Greenville"
* contact.address.postalCode = "RI"
* contact.address.state = "02828"
* contact.address.country = "USA"
* contact.address.period.start = "1994-12-25"
* contact.gender = #female
* contact.period.start = "2012"
* managingOrganization = Reference(Organization/ex-Organization-OB)

