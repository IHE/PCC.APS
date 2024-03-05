Instance: ex-Problem-Sepsis
InstanceOf: ConditionUvIps
Usage: #example
Description: "The Example instance for the Problems - bacterial sepsis"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = #75326-9
* severity = $sct#371924009
* code = $sct#281158006
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* encounter = Reference(Encounter/ex-Encounter)
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/ex-Practitioner)
* evidence.detail = Reference(DiagnosticReport/ex-DiagnosticReport-Sepsis)



Instance:   ex-DiagnosticReport-Sepsis
InstanceOf: DiagnosticReport
Title:      "Diagnostic Report Example for Sepsis"
Description: "Diagnostic Report Example for Sepsis"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final 
* category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
* code = $loinc#94554-3
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* encounter = Reference(Encounter/ex-Encounter)
* performer = Reference(Practitioner/ex-Practitioner)
* conclusionCode = $sct#10828004
