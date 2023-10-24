Profile:        PregnancyEducationObservation
Parent:         Observation
Id:             IHE.PregnancyEducationObservation
Title:          "Pregnancy Education Observation"
Description:    """
TBD
"""


* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#34895-3
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1
* value[x] only CodeableConcept 
* valueCodeableConcept from Antepartum.Education.VS (extensible)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0

Instance: ex-PregnancyEducationObservation
InstanceOf: PregnancyEducationObservation
Usage: #example
Description: "The Example instance for the PregnancyEducationObservation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#54070000
* performer = Reference(http://hl7.org/fhir/StructureDefinition/Provider)