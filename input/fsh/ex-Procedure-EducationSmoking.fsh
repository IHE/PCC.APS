Instance: ex-Procedure-EducationSmoking
InstanceOf: ProcedureUvIps
Usage: #example
Description: "The Example instance for the procedure - Education Smoking"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* basedOn = Reference(ServiceRequest/ex-ServiceRequest-EducationSmoking)
* status = #completed
* category = $sct#311401005
* code = $sct#171055003
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performedDateTime = "2022-08-25"
* performer.actor = Reference(Practitioner/ex-Practitioner)
* reasonCode = $sct#449868002

Instance: ex-ServiceRequest-EducationSmoking
InstanceOf: ServiceRequest
Usage: #example
Description: "The Example instance for the Service Request for the Education Smoking procedure"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* intent = #order
* category = $sct#409073007
* code = $sct#171055003
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performedDateTime = "2022-08-25"
* performer.actor = Reference(Practitioner/ex-Practitioner)