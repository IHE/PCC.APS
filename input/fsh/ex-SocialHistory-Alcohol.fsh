Instance:   ex-SocialHistory-alcoholUse
InstanceOf: ObservationAlcoholUseUvIps
Title:      "Social History alcohol Use example"
Description: "Social History alcohol Use example"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#74013-4 "Alcoholic drinks per day"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectiveDateTime = "2019-07-15"
* valueQuantity = 2 '/d'