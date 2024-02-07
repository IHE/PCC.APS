Instance:   ex-SocialHistory-alcoholUse
InstanceOf: ObservationAlcoholUseUvIps
Title:      "Vital Signs Body Weight example"
Description: "Example for vital signs -  body weight"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#74013-4 "Alcoholic drinks per day"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2019-07-15"
* valueQuantity = 2 '{wine glasses}/d'