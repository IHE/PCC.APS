Instance: ex-Immunization-Vericella
InstanceOf: ImmunizationUvIps
Usage: #example
Description: "The Example instance for an immunizaiton - Vericella"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #Completed
* vaccineCode.coding.code = 21
* vaccineCode.coding.system = "urn:oid:2.16.840.1.113883.12.292"
* vaccineCode.coding.text = "Varicella"
* patient = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* occurrenceDateTime = "2023-08-11"
* primarySource = #false
* reportOrigin = http://terminology.hl7.org/CodeSystem/immunization-origin#record
* location = Reference(Organization/ex-Organization-OB)
