Profile:        SmokingTobaccoUseFrequency
Parent:         Observation
Id:             IHE.SmokingTobaccoUseFrequency
Title:          "Smoking and Tobacco Use Frequency"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#229819007	
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only Quantity
* value[x].unit from Smoking.Tabbacco.Use.Frequency.VS (required)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-SmokingTobaccoUseFrequency
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 0
* Quantity[=].unit = $ucum#{pack}/d
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        AlcoholUseFrequency
Parent:         Observation
Id:             IHE.AlcoholUseFrequency
Title:          "alcohol Use"
Description:    """
Alcoholic drinks per day
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#74013-4
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only Quantity
* value[x].unit from Alcohol.USe.Frequency.VS (required)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-AlcoholUseFrequency
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 0
* Quantity[=].unit = $ucum#{drink}/d
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DrugUse
Parent:         Observation
Id:             IHE.drugUse
Title:          "Drug Use"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#363908000
* effective[x] 1..1
* effective[x] only dateTime 
//APSOpenIssue_013:
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0

Instance: Inline-Instance-of-DrugUse
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        Exercise
Parent:         Observation
Id:             IHE.Exercise
Title:          "Exercise"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#256235009
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only Quantity
* value[x].unit = $ucum#{times}/wky
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-Exercise
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 2
* Quantity[=].unit = $ucum#{times}/wky
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        Diet
Parent:         Observation
Id:             IHE.Diet
Title:          "Diet"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#364393001
* value[x] 1..1 
* value[x] only CodeableConcept
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-Diet
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = $sct#36823005
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        ToxicExposure
Parent:         Observation
Id:             IHE.ToxicExposure
Title:          "Toxic Exposure"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#425400000
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only boolean
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-ToxicExposure
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #flase
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        Homelessness
Parent:         Observation
Id:             IHE.Homelessness
Title:          "Homelessness"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#98978-0
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only boolean
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-Homelessness
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #flase
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DomesticViolenceRisk
Parent:         Observation
Id:             IHE.ViolenceRisk
Title:          "At risk of domestic violence"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#707087005
* effective[x] 1..1
* effective[x] only dateTime 
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: Inline-Instance-of-DomesticViolenceRisk
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code = $sct#116859006
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #flase
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)