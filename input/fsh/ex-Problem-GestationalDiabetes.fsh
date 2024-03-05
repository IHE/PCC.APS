Instance: ex-Problem-GestationalDiabetes
InstanceOf: ConditionUvIps
Usage: #example
Description: "The Example instance for the Problems - Gestational diabetes"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = $sct#55607006
* severity = $sct#371924009
* code = $sct#11687002
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/ex-Practitioner)
* evidence.detail = Reference(DiagnosticReport/ex-DiagnosticReport-GestationalDiabetes)



Instance:   ex-DiagnosticReport-GestationalDiabetes
InstanceOf: DiagnosticReport
Title:      "Diagnostic Report Example for Gestational Diabetes"
Description: "Diagnostic Report Example for Gestational Diabetes"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final 
* category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
* code = $loinc#2345-7
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* encounter = Reference(Encounter/ex-Encounter)
* performer = Reference(Practitioner/ex-Practitioner)