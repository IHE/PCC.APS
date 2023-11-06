Profile:        AntepartumLabs
Parent:         ObservationResultsUvIps
Id:             IHE.AntepartumLabs
Title:          "Antepartum Labs"
Description:    "The Lab report results for the antepartum Labs."

* code from Antepartum_Laboratory_VS (extensible)

Instance: ex-AntepartumLabs
InstanceOf: AntepartumLabs
Usage: #example
Description: "The Example instance for Antepartum Lab results"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* code = $loinc#10331-7
* valueCodeableConcept = $sct#10828004
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)