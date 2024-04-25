Instance: ex-Allergy-Latex
InstanceOf: AllergyIntoleranceUvIps
Usage: #example
Description: "The Example instance for the Allergy Intolerance - Latex"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* note.text = "allergy is to latex"
* identifier.system = "http://acme.com/ids/patients/risks"
* identifier.value = "2834532"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* category = #environment
* code = $sct#111088007
* patient = Reference(Patient/ex-Patient-AmandaAlvarez)
* recordedDate = "2015-08-06T15:37:31-06:00"
* recorder = Reference(Practitioner/ex-Practitioner)
* asserter = Reference(Patient/ex-Patient-AmandaAlvarez)  