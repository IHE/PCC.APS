Instance:   ex-patientAmandaAlvarez
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Title: "APS Example Patient Amanda Alvarez"
Description: "TBD"

* identifier[+].value = "12345"
* identifier[=].use = #usual
* identifier[=].system = "urn:oid:1.2.36.146.595.217.0.1"
* identifier[=].type = 	http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].period = "2001-05-06"
//* identifier[=].assigner = "Acme Healthcare"
// identifieer  =  active

* name[+].use = #official
* name[=].family = "Alvarez"
* name[=].given = "Amanda"
* name[+].use = #usual
* name[=].given = "Mandy"
* name[+].use = #maiden
* name[=].family = "Windsor"
* name[=].given = "Amanda"
* name[=].period[+].end = 2002

* gender = #female
* birthDate = "1994-12-25T14:35:45-05:00"

* deceasedBoolean = #false

* address[+].use = #home
* address[=].type = #both
* address[=].text = "534 Erewhon St, Greenville, RI  02828"
* address[=].line[+] = "534 Erewhon St"
* address[=].line[=] = "Unit A"
* address[=].city = "Greenville"
* address[=].state = "RI"
* address[=].postalCode = "02828"
* address[=].country = "US"
* address[=].period[+].start = "1974-12-25"


* contact[+].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N
* contact[=].name.family = "du Marché"
* contact[=].name.prefix = "VV"
* contact[=].name.given[+] = "Bénédicte"
* contact[=].name.given[=] = "R."
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "+33 (237) 998327"
* contact[=].address[+].use = #home
* contact[=].address[=].type = #both
* contact[=].address[=].line[+] = "534 Erewhon St"
* contact[=].address[=].city = "Greenville"
* contact[=].address[=].state = "RI"
* contact[=].address[=].postalCode = "02828"
* contact[=].address[=].country = "US"
* contact[=].address[=].period[+].start = "1994-12-25"

* contact[=].gender[+] = #female
// relationship period start 2012
//  managingOrganization = Organization/1 

