Profile:        IHE-advanceDirectives
Parent:         Consent 
Id:             IHE.advanceDirectives
Title:          "Advance Directives"
Description:    """
TBD
"""
* scope = #treatment
* dateTime 1..1
* performer 1..*
* verification 1..* 
* provision 1..1 
* provision.type 1..1
* provision.code 1..*
* provision.code from Advance.Directives.VS (extensible)


Instance: ex-AdvanceDirectives-BloodTransfusion
InstanceOf: IHE-advanceDirectives
Usage: #example
Description: "The Example instance for the IHE Advance Directives resource for blood transfuaion"

* status = #active
* category = #hcd
* dateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* patient = Reference(Patient/ex-Patient-AmandaAlvarez)
* verification.verified = true
* verification.verifiedWith = Reference(Patient/ex-Patient-AmandaAlvarez)
* verification.verificationDate = "2021-10-06T10:52:30-07:00"
* provision.type = #permit
* provision.code = $sct#116859006 