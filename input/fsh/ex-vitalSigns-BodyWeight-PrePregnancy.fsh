Instance:   ex-VitalSigns-BodyWeight-PrePregnancy 
InstanceOf: BodyWeightMeasuredPrePregnancy
Title:      "Vital Signs Body Weight example"
Description: "Example for vital signs -  body weight"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8348-5 "Body weight Measured --pre pregnancy"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-06"
* valueQuantity = 185 '[lb_av]' "lbs"