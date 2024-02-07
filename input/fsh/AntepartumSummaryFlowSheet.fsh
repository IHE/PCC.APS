Profile:        AntepartumVisitSummaryFlowsheetBattery
Parent:         Observation
Id:             IHE.AntepartumVisitSummaryFlowsheetBattery
Title:          "Antepartum Visit Summary Flowsheet Battery"
Description:    """
The battery is made of several component simple observations. The following table lists the
allowable LOINC codes, displayNames, and observation types, and unit of measures for these
observations.
"""

* status = http://hl7.org/fhir/observation-status#final 
* code = $loinc#57061-4
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* subject only Reference(Patient)
* hasMember only Reference(GestationalAge or FetalBodyWeightPalpation or FetalBodyWeightUltrasound or UterusFundalHeight or FetalPresentation or FetalHeartRateAuscultation or FetalMovementReported or http://hl7.org/fhir/StructureDefinition/bp or http://hl7.org/fhir/StructureDefinition/bodyweight or PretermLaborSymptoms or CervicalCanalExternalosDiameterUltrasound or EffacementCervixPalpitation or CervixLengthUltrasound or AlbuminPresenceInUrine or GlucosePresenceinUrine or GlucosePresenceinUrineTestStrip or Edema or PainSeverityReported or DateNextClinicVisit or AnnotationComment)


Instance: ex-AntepartumVisitSummaryFlowsheetBattery
InstanceOf: AntepartumVisitSummaryFlowsheetBattery
Usage: #example
Description: "The Example instance for the AntepartumVisitSummaryFlowsheetBattery"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-01-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* hasMember[+] = Reference(ex-GestationalAge) 
* hasMember[=] = Reference(ex-FetalBodyWeightPalpation)
* hasMember[=] = Reference(ex-FetalBodyWeightUltrasound)
* hasMember[=] = Reference(ex-UterusFundalHeight)
* hasMember[=] = Reference(ex-FetalPresentation)
* hasMember[=] = Reference(ex-FetalHeartRateAuscultation)
* hasMember[=] = Reference(ex-FetalMovementReported)
* hasMember[=] = Reference(ex-bloodpressure-amanda-alvarez)
* hasMember[=] = Reference(ex-vitalSigns-BodyWeight)
* hasMember[=] = Reference(ex-PretermLaborSymptoms)
* hasMember[=] = Reference(ex-CervicalCanalExternalosDiameterUltrasound)
* hasMember[=] = Reference(ex-EffacementCervixPalpitation)
* hasMember[=] = Reference(ex-CervixLengthUltrasound)
* hasMember[=] = Reference(ex-AlbuminPresenceInUrine)
* hasMember[=] = Reference(ex-GlucosePresenceinUrine)
* hasMember[=] = Reference(ex-GlucosePresenceinUrineTestStrip)
* hasMember[=] = Reference(ex-Edema)
* hasMember[=] = Reference(ex-PainSeverityReported)
* hasMember[=] = Reference(ex-DateNextClinicVisit)
* hasMember[=] = Reference(ex-AnnotationComment)


Instance: ex-bloodpressure-amanda-alvarez
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #example
Description: "The Example instance for the bloodpressure observation amanda alvarez"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* component:SystolicBP[+].valueQuantity = 132 'mmHg'
* component:SystolicBP[+].valueQuantity = 86 'mmHg'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)


Profile:        FetalBodyWeightPalpation
Parent:         Observation
Id:             IHE.FetalBodyWeightPalpation
Title:          "Fetal Body Weight palpation"
Description:    """
The estimated weight of the fetus observation performed using palpation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#57067-1
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
// Note: system codes can be g, kg, lb_av, or oz_av
* performer 1..*
* method = $sct#129434008 "Palpation - action"

Instance: ex-FetalBodyWeightPalpation
InstanceOf: FetalBodyWeightPalpation
Usage: #example
Description: "The Example instance for the Fetal Body Weight Palpation observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 17 'g'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)


Profile:        FetalBodyWeightUltrasound
Parent:         Observation
Id:             IHE.FetalBodyWeightUltrasound
Title:          "Fetal Body Weight ultrasoud"
Description:    """
The estimated weight of the fetus observation performed using an ultrasound"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11727-5
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
// Note: system codes can be g, kg, lb_av, or oz_av
* performer 1..*
* method = $sct#278292003 "Ultrasound imaging - action"

Instance: ex-FetalBodyWeightUltrasound
InstanceOf: FetalBodyWeightUltrasound
Usage: #example
Description: "The Example instance for the Fetal Body Weight ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 17 'g'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)


Profile:        UterusFundalHeight
Parent:         Observation
Id:             IHE.UterusFundalHeight
Title:          "Uterus Fundal Height"
Description:    """
Distance from the top of the symphysis pubis to the palpable superior border of the uterine fundus """
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11881-0 
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #cm
* performer 1..*

Instance: ex-UterusFundalHeight
InstanceOf: UterusFundalHeight
Usage: #example
Description: "The Example instance for the Uterus Fundal Height observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 20 'cm'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)


Profile:        FetalPresentationPalpitation
Parent:         Observation
Id:             IHE.FetalPresentationPalpitation
Title:          "Fetal Presentation palpation"
Description:    """
Fetal Presentation determined by palpation """
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11876-0
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Fetal.Presentation.VS (extensible)
* performer 1..*
* method = $sct#129434008 "Palpation - action"

Instance: ex-FetalPresentationPalpitation
InstanceOf: FetalPresentationPalpitation
Usage: #example
Description: "The Example instance for the Fetal Presentation Palpitation observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#6096002
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        FetalPresentationUltrasound
Parent:         Observation
Id:             IHE.FetalPresentationUltrasound
Title:          "Fetal Presentation Ultrasound"
Description:    """
Fetal Presentation determined by ultrasound"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11877-8
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Fetal.Presentation.VS (extensible)
* performer 1..*
* method = $sct#278292003 "Ultrasound imaging - action"

Instance: ex-FetalPresentationUltrasound
InstanceOf: FetalPresentationUltrasound
Usage: #example
Description: "The Example instance for the Fetal Presentation Palpitation observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#6096002
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        FetalHeartRateUltrasound
Parent:         Observation
Id:             IHE.FetalHeartRateUltrasound
Title:          "Fetal Heart Rate Ultrasound"
Description:    """
Fetal Heart rate determined by ultrasound"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11948-7
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #/min 
* performer 1..*
* method = $sct#278292003 "Ultrasound imaging - action"

Instance: ex-FetalHeartRateUltrasound
InstanceOf: FetalHeartRateUltrasound
Usage: #example
Description: "The Example instance for the Fetal Heart Rate by Ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 93 '/min'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        FetalHeartRateAuscultation
Parent:         Observation
Id:             IHE.FetalHeartRateAuscultation
Title:          "Fetal Heart Rate Auscultation"
Description:    """
Fetal Heart rate determined by Auscultation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#57068-9
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #/min 
* performer 1..*
* method = $sct#37931006 "Auscultation"

Instance: ex-FetalHeartRateAuscultation
InstanceOf: FetalHeartRateAuscultation
Usage: #example
Description: "The Example instance for the Fetal Heart Rate by Ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 93 '/min'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        FetalMovementReported
Parent:         Observation
Id:             IHE.FetalMovementReported
Title:          "Fetal Movement Reported"
Description:    """
Fetal Movement Reported"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#57088-7
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Fetal.Movement.VS (extensible)
* performer 1..*

Instance: ex-FetalMovementReported
InstanceOf: FetalMovementReported
Usage: #example
Description: "The Example instance for the Fetal Movement Reported observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#364755008
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        PretermLaborSymptoms
Parent:         Observation
Id:             IHE.PretermLaborSymptoms
Title:          "Preterm labor symptoms"
Description:    """
Preterm labor symptoms"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#57069-7
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only boolean 
* performer 1..*

Instance: ex-PretermLaborSymptoms
InstanceOf: PretermLaborSymptoms
Usage: #example
Description: "The Example instance for the Fetal Movement Reported observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueBoolean = false
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        CervicalCanalExternalosDiameterUltrasound
Parent:         Observation
Id:             IHE.CervicalCanalExternalosDiameterUltrasound
Title:          "Cervical Canal External os Diameter by ultrasound"
Description:    """
Cervical Canal External os Diameter by ultrasound"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11785-3
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #cm 
* performer 1..*
* method = $sct#278292003 "Ultrasound imaging - action"

Instance: ex-CervicalCanalExternalosDiameterUltrasound
InstanceOf: CervicalCanalExternalosDiameterUltrasound
Usage: #example
Description: "The Example instance for the Cervical Canal External os Diameter Ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 2 'cm'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        EffacementCervixPalpitation 
Parent:         Observation
Id:             IHE.EffacementCervixPalpitation
Title:          "Effacement Cervix by Palpitation"
Description:    """
Effacement observation of Cervix by Palpitation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11867-9
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #% 
* performer 1..*
* method = $sct#129434008 "Palpation - action"

Instance: ex-EffacementCervixPalpitation
InstanceOf: EffacementCervixPalpitation
Usage: #example
Description: "The Example instance for the Cervical Canal External os Diameter Ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 2 '%'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        CervixLengthUltrasound
Parent:         Observation
Id:             IHE.CervixLengthUltrasound
Title:          "Cervix Length by ultrasound"
Description:    """
Cervix Length measured by ultrasound"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#11961-0
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #cm
* performer 1..*
* method = $sct#278292003 "Ultrasound imaging - action"

Instance: ex-CervixLengthUltrasound
InstanceOf: CervixLengthUltrasound
Usage: #example
Description: "The Example instance for the Cervical Canal External os Diameter Ultrasound observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 5 'cm'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        AlbuminPresenceInUrine 
Parent:         Observation
Id:             IHE.AlbuminPresenceInUrine
Title:          "Albumin Presence In Urine"
Description:    """
Albumin Presence In Urine observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#1753-3
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Presence.In.Urine.VS (extensible)
* performer 1..*

Instance: ex-AlbuminPresenceInUrine
InstanceOf: AlbuminPresenceInUrine
Usage: #example
Description: "The Example instance for the Albumin Presence In Urine observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#167273002
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        GlucosePresenceinUrine 
Parent:         Observation
Id:             IHE.GlucosePresenceinUrine
Title:          "Albumin Presence In Urine"
Description:    """
Glucose Presence in Urine observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#2349-9
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Presence.In.Urine.VS (extensible)
* performer 1..*

Instance: ex-GlucosePresenceinUrine
InstanceOf: GlucosePresenceinUrine
Usage: #example
Description: "The Example instance for the glucose Presence In Urine observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#167273002
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        GlucosePresenceinUrineTestStrip 
Parent:         Observation
Id:             IHE.GlucosePresenceinUrineTestStrip
Title:          "Albumin Presence In Urine test by strip"
Description:    """
Glucose Presence in Urine observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#2349-9
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Presence.In.Urine.VS (extensible)
* performer 1..*

Instance: ex-GlucosePresenceinUrineTestStrip
InstanceOf: GlucosePresenceinUrineTestStrip
Usage: #example
Description: "The Example instance for the glucose Presence In Urine observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#167273002
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        Edema 
Parent:         Observation
Id:             IHE.Edema
Title:          "Edema observation"
Description:    """
Edema observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#44966-0
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* value[x] only valueCodeableConcept 
* valueCodeableConcept from Edema.VS (extensible)
* performer 1..*

Instance: ex-Edema
InstanceOf: Edema
Usage: #example
Description: "The Example instance for the Edema observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#420829009
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        PainSeverityReported  
Parent:         Observation
Id:             IHE.PainSeverityReported
Title:          "Pain Severity Reported observation"
Description:    """
Pain Severity Reported observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#38208-5
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* value[x] only valueCodeableConcept 
* valueCodeableConcept from https://loinc.org/38208-5/ (preferred)
* performer 1..*

Instance: ex-PainSeverityReported
InstanceOf: PainSeverityReported
Usage: #example
Description: "The Example instance for the Pain Severity Reported observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = https://loinc.org/38208-5/#LA6112-2    "1"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        DateNextClinicVisit   
Parent:         Observation
Id:             IHE.DateNextClinicVisit
Title:          "Date of Next Clinic Visit observation"
Description:    """
Date of Next Clinic Visit observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#57070-5 
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only Quantity
* valueQuantity.system = $ucum
//Note: can be day, week, month
* performer 1..*

Instance: ex-DateNextClinicVisit
InstanceOf: DateNextClinicVisit
Usage: #example
Description: "The Example instance for the Date of Next Clinic Visit observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 3 'wk'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)

Profile:        AnnotationComment    
Parent:         Observation
Id:             IHE.AnnotationComment
Title:          "Annotation Comment observation"
Description:    """
Annotation Comment observation"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#48767-8 
* effective[x] 1..1
* effective[x] only dateTime 
* value 1..1 
* value[x] only valueString
//Note: can be day, week, month
* performer 1..*

Instance: ex-AnnotationComment
InstanceOf: AnnotationComment
Usage: #example
Description: "The Example instance for the Annotation Comment observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueString = "all normal"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)