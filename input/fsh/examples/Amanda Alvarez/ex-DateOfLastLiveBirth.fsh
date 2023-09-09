Instance:   ex-DateOfLastLiveBirth
InstanceOf: DateOfLastLiveBirth
Title: "Example DateOfLastLiveBirth"
Description: "Example DateOfLastLiveBirth for example patient"

* status  = http://hl7.org/fhir/observation-status#final
* code = http://loinc.org#8665-2
* subject = Reference(Patient/ex-patientAmandaAlvarez)
* effective[+].dateTime = "2021-09-20"
* value[+].dateTime = "2021-07-15"
