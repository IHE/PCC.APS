Instance:   ex-VitalSigns-BodyWeight
InstanceOf: Observation
Title:      "Vital Signs Body Weight example"
Description: "Example for vital signs -  body weight"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = #exam
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-06"
* valueQuantity = 185 '[lb_av]' "lbs"