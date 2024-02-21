Instance: ex-Problem-Sepsis
InstanceOf: ConditionUvIps
Usage: #example
Description: "The Example instance for the Problems - bacterial sepsis"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://hl7.org/fhir/ValueSet/condition-clinical#active
* verificationStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-verification#confirmed
* category = #75326-9
* severity = $sct#371924009
* code = $sct#281158006
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* encounter = Reference(Encounter/f201)
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/f001)
* evidence.detail = Reference(DiagnosticReport/f202)