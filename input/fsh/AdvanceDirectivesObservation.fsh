Profile:        AdvanceDirectivesObservation
Parent:         Observation
Id:             IHE.AdvanceDirectivesObservation
Title:          "Advance Directives Observation"
Description:    """
Advance directives contains data defining the patient's direction of care and any reference to supporting documentation. The most recent and up-to-date directives are required, if known, and should be listed 
in as much detail as possible. Advance directives contains data such as the existence of living wills, healthcare proxies, and CPR and resuscitation status.
"""

* code from Advance.Directives.VS (preferred)
* status = #registered 
* subject only Reference(Patient)
* value[x] 1..1
* value[x] only boolean
// Conformance Statment: The advance directive observation may include a <value> element using the Boolean (xsi:type='BL') data type to indicate simply whether the procedure described is permitted. 
//Absence of the <value> element indicates that an advance directive of the specified type has been recorded, and must be examined to determine what type of treatment should be performed. The value element 
//is not permitted when the <code> element describes an Other directive.

* derivedFrom 0..1 
* derivedFrom only Reference(DocumentReference)
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0


Instance: ex-AdvanceDirectivesObservation
InstanceOf: Observation
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueBoolean = false
* performer = Reference(Provider/ex-provider)
* subject = Reference(Patient/ex-patient)