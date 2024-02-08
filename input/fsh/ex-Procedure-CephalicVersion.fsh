Instance: ex-Procedure-CephalicVersion
InstanceOf: ProcedureUvIps
Usage: #example
Description: "The Example instance for the procedure - Cephalic Version"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #Completed
* category = $sct#386637004
* code = $sct#240278000
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* performed[x]
    * performedDateTime = "2023-01-05"
* performer = Reference(Practitioner/ex-Practitioner)
* reasonCode = $sct#1231436008
* outcome = $sct#385669000
