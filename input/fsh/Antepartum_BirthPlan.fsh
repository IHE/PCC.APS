Profile:        Antepartum_BirthPlan
Parent:         CarePlan
Id:             IHE.Antepartum.BirthPlan
Title:          "IHE Antepartum BirthPlan"
Description:    "A birth plan profile to help deffine the plan for birth that a pergnant person may put into place."

* category 1..* 
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "code"
* category ^slicing.rules = #open
* category ^slicing.description = ""
* category ^slicing.ordered = false
* category[0] = $sct#735986004 
* title = "Birth Plan"


Instance: Ex-Antepartum-BirthPlan
InstanceOf: Antepartum_BirthPlan
Usage: #inline
* intent = http://hl7.org/fhir/request-intent#plan
* category[0] = $sct#735986004 
* category[1] = $loinc#57079-6
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* status  = http://hl7.org/fhir/observation-status#active
* created = "2023-08-03T14:14:45-05:00"


