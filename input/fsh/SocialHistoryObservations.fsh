Profile:        smokingTobaccoUse
Parent:         Observation
Id:             IHE.smokingTobaccoUse
Title:          "Smoking and Tobacco Use"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $SCT#229819007	
* effective[x].effectiveDateTime 1..1
* value[x].valueQuantity 1..1
* value[x].valueQuantity.Quantity.unit from Smoking.Tabbacco.Use.VS (required)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

Profile:        smokingStatus
Parent:         Observation
Id:             IHE.smokingStatus
Title:          "Smoking Status"
Description:    """
Tobacco smoking status represents a person's smoking behavior. Smoking statuses can be classified as current every day smoker, current some day smoker, former smoker, never smoker, 
smoker - current status unknown, unknown if ever smoked, current heavy tobacco smoker, and current light tobacco smoker. These statuses represent CDC's preferred (sometimes required) 
responses for recording smoking status.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#72166-2
* effective[x].effectiveDateTime 1..1
* value[x].valueQuantity 1..1
* value[x].valueQuantity.Quantity.unit from Smoking.Status.VS (required)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0


Profile:        alcoholUse
Parent:         Observation
Id:             IHE.alcoholUse
Title:          "alcohol Use"
Description:    """
Alcoholic drinks per day
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#74013-4
* effective[x].effectiveDateTime 1..1
* value[x].valueQuantity 1..1
* value[x].valueQuantity.Quantity.unit from Alcohol.USe.VS (required)
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0


Profile:        drugUse
Parent:         Observation
Id:             IHE.drugUse
Title:          "Drug Use"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $SCT#363908000
* effective[x].effectiveDateTime 1..1
//APSOpenIssue_013:
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0

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
* code = $SCT#256235009
* effective[x].effectiveDateTime 1..1
* value[x].valueQuantity 1..1
* value[x].valueQuantity.Quantity.unit = $UCUM#{times}/wk
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0

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
* code = $SCT#364393001
* effective[x].valueCodeableConcept 1..1
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0


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
* code = $SCT#425400000
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0


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
* code = $SCT#425400000
* subject only Reference(Patient)
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0


