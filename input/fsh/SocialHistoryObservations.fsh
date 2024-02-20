Profile:        SmokingTobaccoUseFrequency
Parent:         Observation
Id:             IHE.SmokingTobaccoUseFrequency
Title:          "Smoking and Tobacco Use Frequency" 
Description:    """
The frequency of tobacco use. This may be measured in packs/day, packs/week, or packs/year.
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

Instance: ex-SmokingTobaccoUseFrequency
InstanceOf: SmokingTobaccoUseFrequency
Usage: #example
Description: "The Example instance for the SmokingTobaccoUseFrequency observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 0 '/d'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

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

Instance: ex-AlcoholUseFrequency
InstanceOf: AlcoholUseFrequency
Usage: #example
Description: "The Example instance for the AlcoholUseFrequency observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 2 '/d'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        DrugUse
Parent:         Observation
Id:             IHE.drugUse
Title:          "Drug Use"
Description:    """
Use of illegal drugs or prescription medications for non-medical purposes.
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

Instance: ex-DrugUse
InstanceOf: DrugUse
Usage: #example
Description: "The Example instance for the DrugUse observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        Exercise
Parent:         Observation
Id:             IHE.Exercise
Title:          "Exercise"
Description:    """
Frequency of Physical Activity (days per week) and duration of physical activity (in minutes per day).
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $sct#256235009
* effective[x] 1..1
* effective[x] only dateTime 
* value[x] 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #wk
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Instance: ex-Exercise
InstanceOf: Exercise
Usage: #example
Description: "The Example instance for the Exercise observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 2 'wk'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        Diet
Parent:         Observation
Id:             IHE.Diet
Title:          "Diet"
Description:    """
The customary amount and kind of food and drink taken by a person from day to day.
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

Instance: ex-Diet
InstanceOf: Diet
Usage: #example
Description: "The Example instance for the Diet observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#36823005
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        ToxicExposure
Parent:         Observation
Id:             IHE.ToxicExposure
Title:          "Toxic Exposure"
Description:    """
Whether the patient has been exposed to a toxic substance.
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

Instance: ex-ToxicExposure
InstanceOf: ToxicExposure
Usage: #example
Description: "The Example instance for the ToxicExposure observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueBoolean = false
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        Homelessness
Parent:         Observation
Id:             IHE.Homelessness
Title:          "Homelessness"
Description:    """
The state of having no home or permanent place of residence.
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

Instance: ex-Homelessness
InstanceOf: Homelessness
Usage: #example
Description: "The Example instance for the Homelessness observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueBoolean = false
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        DomesticViolenceRisk
Parent:         Observation
Id:             IHE.ViolenceRisk
Title:          "At risk of domestic violence"
Description:    """
At increased risk of domestic partner abuse.
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

Instance: ex-DomesticViolenceRisk
InstanceOf: DomesticViolenceRisk
Usage: #example
Description: "The Example instance for the DomesticViolenceRisk observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueBoolean = false
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)