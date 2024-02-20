Instance:   ex-PregnencyStatus-pregnant
InstanceOf: ObservationPregnancyStatusUvIps
Title:      "Pregnency Status - pregnant example"
Description: "Example for Pregnency Status where patient is pregnant"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectiveDateTime = "2023-01-08"
* valueCodeableConcept = $loinc#LA15173-0 "Pregnant"
* hasMember = Reference(Observation/pregnancy-edd-example)