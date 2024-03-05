Instance:   ex-SocialHistory-smokingTobaccoUse
InstanceOf: ObservationTobaccoUseUvIps
Title:      "Social History smoking Tobacco Use example"
Description: "Example for Social History -  smoking Tobacco Use"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectiveDateTime = "2022-08-15"
* valueCodeableConcept = $loinc#LA18976-3	

Instance:   ex-SocialHistory-smokingTobaccoUse-formerSmoker
InstanceOf: ObservationTobaccoUseUvIps
Title:      "Social History smoking Tobacco Use example"
Description: "Example for Social History -  smoking Tobacco Use"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectiveDateTime = "2023-01-04"
* valueCodeableConcept = $loinc#LA15920-4		
