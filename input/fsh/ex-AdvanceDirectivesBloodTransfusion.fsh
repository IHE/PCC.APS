Profile:        IHEadvanceDirectives
Parent:         Consent 
Id:             IHE.advanceDirectives
Title:          "Advance Directives"
Description:    """
Example of the consent resource in the deffined method that IHE uses to deffine advance directives. modified from IHE advance directives Observation. 
"""
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment
* dateTime 1..1
* performer 1..*
* verification 1..* 
* provision 1..1 
* provision.type 1..1
* provision.code 1..*
* provision.code from Advance.Directives.VS (extensible)


Instance: ex-AdvanceDirectives-BloodTransfusion
InstanceOf: IHEadvanceDirectives
Usage: #example
Description: "The Example instance for the IHE Advance Directives resource for blood transfuaion"

* status = #active
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#hcd
* dateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* patient = Reference(Patient/ex-Patient-AmandaAlvarez)
* verification.verified = true
* verification.verifiedWith = Reference(Patient/ex-Patient-AmandaAlvarez)
* verification.verificationDate = "2021-10-06T10:52:30-07:00"
* provision.type = #permit
* provision.code = $sct#116859006 