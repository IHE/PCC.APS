Instance: ex-Procedure-EducationSmoking
InstanceOf: ProcedureUvIps
Usage: #example
Description: "The Example instance for the procedure - Education Smoking"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* basedOn = Reference(ServiceRequest/education)
* status = #Completed
* category = $sct#311401005
* code = $sct#171055003
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* performedDateTime = "2022-08-025"
* performer = Reference(Practitioner/ex-Practitioner)
* location.description = "Women’s Clinic"
* reasonCode = $sct#449868002