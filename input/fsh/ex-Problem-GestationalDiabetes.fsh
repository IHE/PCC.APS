Instance: ex-Problem-GestationalDiabetes
InstanceOf: ConditionUvIps
Usage: #example
Description: "The Example instance for the Problems - Gestational diabetes"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://hl7.org/fhir/ValueSet/condition-clinical#active
* verificationStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-verification#confirmed
* category = $sct#55607006
* severity = $sct#371924009
* code = $sct#11687002
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/f001)
* evidence.detail = Reference(DiagnosticReport/f202)