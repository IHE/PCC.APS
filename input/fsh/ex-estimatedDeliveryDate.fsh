Instance:   ex-EstimatedDeliveryDate
InstanceOf: DeliveryDateEstimatedFromLMP
Title:      "Estimated Delivery Date example"
Description: "Estimated Delivery Date"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#11779-6 "Delivery date Estimated from last menstrual period"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectiveDateTime = "2022-09-18"
* valueDateTime = "2023-01-18"
