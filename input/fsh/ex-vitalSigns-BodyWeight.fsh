Instance:   ex-VitalSigns-BodyWeight
InstanceOf: VitalSigns
Title:      "Vital Signs Body Weight example"
Description: "Example for vital signs -  body weight"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* code.coding[+] = $clinical-codes#body-weight "Body Weight"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-06"
* valueQuantity = 185 '[lb_av]' "lbs"