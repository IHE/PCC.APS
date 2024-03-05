Instance: ex-Coverage
InstanceOf: Coverage
Usage: #example

* status = http://hl7.org/fhir/request-status#active
* identifier.system = "http://benefitsinc.com/certificate"
* identifier.value = 123456
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#EHCPOL
* policyHolder = Reference(Patient/ex-Patient-AmandaAlvarez) 
* subscriberId = "582938"
* beneficiary = Reference(Patient/ex-Patient-AmandaAlvarez) 
* payor = Reference(Organization//ex-Coverage-Organization)



Instance: ex-Coverage-Organization
InstanceOf: Organization
Usage: #example

* identifier.value = "22224456"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#pay
* name = "Insurance 1"