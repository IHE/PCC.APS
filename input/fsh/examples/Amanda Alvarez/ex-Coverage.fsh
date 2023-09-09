Instance:   ex-Coverage
InstanceOf: Coverage
Title: "Example Number Of coverage"
Description: "Example Number Of coverage for example patient"

* identifier[+].value = 2345 
* status = http://hl7.org/fhir/ValueSet/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#EHCPOL
//* policyHolder = 
//* subscriber = 
* beneficiary = Reference(Patient/ex-patientAmandaAlvarez)
* relationship = http://hl7.org/fhir/ValueSet/subscriber-relationship#self
* period[+].start = 2021-10-01
* period[+].end = 2022-09-30
* payor = Organization/MyInsuranceCompany
* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#group
* class[=].value = PG135
* class[=].name = "PaintersGroup 123"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#subgroup
* class[=].value = 123
* class[=].name = "Trainee Part-time Benefits"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#plan
* class[=].value = B37FC
* class[=].name = "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#subplan
* class[=].value = P7
* class[=].name = "Includes afterlife benefits"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#class
* class[=].value = SILVER
* class[=].name = "Silver: Family Plan spouse only"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#subclass
* class[=].value = Tier2
* class[=].name = "Low deductable, max $20 copay"

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#sequence
* class[=].value = 9

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#rxid
* class[=].value = MDF12345

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#rxbin
* class[=].value = 987654

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#rxgroup
* class[=].value = M35PT

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#rxpcn
* class[=].value = 234516

* class[+].type = http://hl7.org/fhir/ValueSet/coverage-class#sequence
* class[=].value = 9
