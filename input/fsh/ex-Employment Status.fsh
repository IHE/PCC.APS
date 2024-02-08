Instance:   ex-SocialHistory-EmploymentStatus
InstanceOf: https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-EmploymentStatus
Title:      "Employment Status example"
Description: "Example for Employment status"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#74165-2 "History of employment status"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/f001)
* valueCodeableConcept = #Employed
* effectivePeriod.start = "2022-07-15"