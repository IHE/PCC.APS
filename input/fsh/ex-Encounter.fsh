Instance:   ex-Encounter
InstanceOf: Encounter
Title:      "Encounter Example for APS"
Description: "Encounter Example for Antepartum Summary"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* statusHistory.status = #finished
* statusHistory.period.end = "2022-07-15"