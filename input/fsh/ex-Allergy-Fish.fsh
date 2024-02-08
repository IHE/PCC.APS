Instance: ex-Allergy-Fish
InstanceOf: AllergyIntoleranceUvIps
Usage: #example
Description: "The Example instance for the Allergy Intolerance - fish"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* note.text = "allergy is to fresh fish. Tolerates canned fish"
* identifier.system = "http://acme.com/ids/patients/risks"
* identifier.value = #49476535
* clinicalStatus = #active
* verificationStatus = #confirmed
* category = #food
* code = $sct#227037002
* patient = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* recordedDate = "2015-08-06T15:37:31-06:00"
* recorder = Reference(Practitioner/f001)
* asserter = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)