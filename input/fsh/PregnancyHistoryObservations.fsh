Profile:        PregnancyHistory
Parent:         Observation
Id:             IHE.PregnancyHistory
Title:          "Pregnancy History Observations"
Description:    """
The pregnancy history collects observations relevant to a single pregnancy within the patient’s history. The organizer for a pregnancy event shall either contain subordinate birth event organizers for 
each birth event associated with the pregnancy or shall conform to the birth event organizer template, but not both. 
"""

* status = http://hl7.org/fhir/observation-status#final
* code = $sct#118185001
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* subject only Reference(Patient)
* hasMember only Reference(NumberOfLiveBirths or NumberOfPretermBirths or NumberOfBirthsStillLiving or NumberOfBirthsToTerm or NumberOfTotalBirths or NumberOfAbortions or NumberOfAbortionsInduced or NumberOfAbortionsSpontanious or NumberOfEctopicPregnancies or NumberOfStillbornBirths)
// Has member slicing may need to take place 
// this is making everything else in observation forbidden.
* category 0..0
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 
// Open Issue: (requesting feedback) on this approach

Instance: Inline-Instance-of-PregnancyHistory
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfLiveBirths
Parent:         Observation
Id:             IHE.NumberOfLiveBirths
Title:          "Number of Live Births"
Description:    """
Total number of live births. [Complete expulsion or extraction from the mother if a product of human conception, irrespective of duration of pregnancy, which, after expulsion or extraction, breathes or shows 
any other evidence of life such as heart beat.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11636-8
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfLiveBirths
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfPretermBirths
Parent:         Observation
Id:             IHE.NumberOfPretermBirths
Title:          "Number of Preterm Births"
Description:    """
Total number of children whose birth occurred through the end of the last day of the 37th week (259th day) following onset of the last menstrual period.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11637-6
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfPretermBirths
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfBirthsStillLiving
Parent:         Observation
Id:             IHE.NumberOfBirthsStillLiving
Title:          "Births Still Living"
Description:    """
Total number of children still living at time this record is generated.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11638-4
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfBirthsStillLiving
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfBirthsToTerm
Parent:         Observation
Id:             IHE.NumberOfBirthsToTerm
Title:          "Births to Term"
Description:    """
Total number of children whose birth occurred after the beginning of the first day (259th day) of the 38th week following onset of the last menstrual period.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11639-2
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfBirthsToTerm
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfTotalBirths
Parent:         Observation
Id:             IHE.NumberOfTotalBirths
Title:          "Number of Total Births"
Description:    """
Total number of births including abortions, stillbirths and live births. [Note: Because of multiple gestation this number may be greater than the number of abortions plus parity, 
the number of times the uterus is emptied of a viable pregnancy.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11640-0
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfTotalBirths
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfAbortions
Parent:         Observation
Id:             IHE.NumberOfAbortions
Title:          "Number of Abortions"
Description:    """
Number of pregnancies terminated before 20 weeks of gestation calculated from the date of onset of last menses [or equivalent date estimated from ultrasound or other measurement or from 
data derived from assisted fertilization procedure].
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11612-9
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfAbortions
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfAbortionsInduced
Parent:         Observation
Id:             IHE.NumberOfAbortionsInduced
Title:          "Number of Abortions Induced"
Description:    """
Number of intentional medical or surgical terminations of pregnancies before 20 weeks of gestation. [Includes elective and therapeutic terminations. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11613-7
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfAbortionsInduced
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfAbortionsSpontanious
Parent:         Observation
Id:             IHE.NumberOfAbortionsSpontanious
Title:          "Number of Abortions Spontanious"
Description:    """
Number of unintentional terminations of pregnancies before 20 weeks of gestation. [Excludes induced terminations]. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11614-5
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-NumberOfAbortionsSpontanious
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfEctopicPregnancies
Parent:         Observation
Id:             IHE.NumberOfEctopicPregnancies
Title:          "Number of Ectopic Pregnancy"
Description:    """
Number of Ectopic Pregnancies
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#33065-4
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-NumberOfEctopicPregnancies
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfStillbornBirths
Parent:         Observation
Id:             IHE.NumberOfStillbornBirths
Title:          "Number of Stillborn Births"
Description:    """
Number of Stillborn Births
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#57062-2
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

// Open issue: why Biths to term and births preterm observations repeated in the current pregnancy section of the APS CDA? How best do we map this into this FHIR model 

Instance: Inline-Instance-of-NumberOfStillbornBirths
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfPregnancies
Parent:         Observation
Id:             IHE.NumberOfPregnancies
Title:          "Number of Pregnancies"
Description:    """
Total number of times the patient has been pregnant including the present pregnancy. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11996-6
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-NumberOfPregnancies
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = 3
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        MultiplePregnancy
Parent:         Observation
Id:             IHE.MultiplePregnancy
Title:          "Multiple Pregnancy"
Description:    """
To document multiple pregnancy.  
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#45371-2
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only boolean
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-MultiplePregnancy
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = #false
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        GestationalAge
Parent:         Observation
Id:             IHE.GestationalAge
Title:          "Gestational Age"
Description:    """
Gestational age in weeks. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#49051-6 
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only Quantity
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-GestationalAge
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        FetusGestationalAge
Parent:         Observation
Id:             IHE.FetusGestationalAge
Title:          "Fetus Gestational Age"
Description:    """
The age of the conceptus, beginning from the time of fertilization. In clinical obstetrics, the gestational age is often estimated as the time from the last day of the last menstruation which is about 2 weeks before ovulation and fertilization.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11887-7
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only Quantity
* subject only Reference(Patient)
// OPen ISsue: Method to be requireed to be calculated from the estimated delivery date. need for further research 
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

//Open issue: ANtepartum summary references a number of observations that appear irrelivant to Antepartum care (32396-4	Labor duration, 8339-4	Body weight at birth, 29300-1	Procedure, 8722-1 	Surgical operation note anesthesia, 52829-9	Place of service) Review with comittee 

Instance: Inline-Instance-of-FetusGestationalAge
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        LaborRisk
Parent:         Observation
Id:             IHE.LaborRisk
Title:          "Labor Risk"
Description:    """
Increased chance of harm during the period supporting the bringing forth of an offspring/child. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#42839-1
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only CodeableConcept
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-LaborRisk
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = $loinc#14510-2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DeliveryRisk
Parent:         Observation
Id:             IHE.DeliveryRisk
Title:          "Delivery Risk"
Description:    """
Increased chance of harm during the period supporting the expulsion of an offspring/child. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#42840-9
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only CodeableConcept
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DeliveryRisk
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* dateTime = "2021-10-06T10:52:30-07:00"
* value = $loinc#14510-2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DateOfLastMenstralPeriod
Parent:         Observation
Id:             IHE.DateOfLastMenstralPeriod
Title:          "Date Of Last Menstral Period"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#8665-2 
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
* method 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DateOfLastMenstralPeriod
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2021-06-12"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DeliveryDateClinicalEstimate
Parent:         Observation
Id:             IHE.DeliveryDateClinicalEstimate
Title:          "Delivery Date Clinical Estimate"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11778-8
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DeliveryDateClinicalEstimate
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2022-03-24"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DeliveryDateEstimatedFromLMP
Parent:         Observation
Id:             IHE.DeliveryDateEstimatedFromLMP
Title:          "Delivery Date Clinical Estimated From Last Menstral Period"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11779-6
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DeliveryDateEstimatedFromLMP
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2022-03-24"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        DeliveryDateEstimatedFromOvulationDate
Parent:         Observation
Id:             IHE.DeliveryDateEstimatedFromOvulationDate
Title:          "Delivery Date Clinical Estimated From Ovulation Date"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11780-4
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DeliveryDateEstimatedFromOvulationDate
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        FetusGestationalAgeClinicalEstimate
Parent:         Observation
Id:             IHE.FetusGestationalAgeClinicalEstimate
Title:          "Fetus Gestational Age Clinical Estimate"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11884-4
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-FetusGestationalAgeClinicalEstimate
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        FetusGestationalAgeEstimatedFromLMP
Parent:         Observation
Id:             IHE.FetusGestationalAgeEstimatedFromLMP
Title:          "Fetus Gestational Age Estimated From LMP"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11885-1
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-FetusGestationalAgeEstimatedFromLMP
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        FetusGestationalAgeEstimatedFromOvulationDate
Parent:         Observation
Id:             IHE.FetusGestationalAgeEstimatedFromOvulationDate
Title:          "Fetus Gestational Age Estimated From Ovulation Date"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#11886-9
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-FetusGestationalAgeEstimatedFromOvulationDate
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 14
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DateOfFirstPrenatalVisit
Parent:         Observation
Id:             IHE.DateOfFirstPrenatalVisit
Title:          "Date Of First Prenatal Visit"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#69044-6
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DateOfFirstPrenatalVisit
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2021-08-06T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfPrenatalVisitsForThisPregnancy
Parent:         Observation
Id:             IHE.NumberOfPrenatalVisitsForThisPregnancy
Title:          "Number Of Prenatal Visits For This Pregnancy"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#68493-6
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfPrenatalVisitsForThisPregnancy
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 2
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfPreviousLiveBirthsNowDead
Parent:         Observation
Id:             IHE.NumberOfPreviousLiveBirthsNowDead
Title:          "Number Of Previous Live Births Now Dead"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#68496-9
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfPreviousLiveBirthsNowDead
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DateOfLastLiveBirth
Parent:         Observation
Id:             IHE.DateOfLastLiveBirth
Title:          "Date Of Last Live Birth"
Description:    """
TBD 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#68499-3
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-DateOfLastLiveBirth
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2018-04-13T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        NumberOfPreviousCesareanDeliveries
Parent:         Observation
Id:             IHE.NumberOfPreviousCesareanDeliveries
Title:          "Number Of Previous Cesarean Deliveries"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#68497-7
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfPreviousCesareanDeliveries
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 0
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        NumberOfOtherPregnancyOutcomes
Parent:         Observation
Id:             IHE.NumberOfOtherPregnancyOutcomes
Title:          "Number Of Other Pregnancy Outcomes"
Description:    """
Other pregnancy outcomes # Includes perinatal death, small for gestational age/intrauterine growth restricted birth. History of pregnancies continuing into the 20th week of gestation and resulting in 
any of the listed outcomes. Perinatal death includes fetal and neonatal deaths.
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#69043-8
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only integer
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-NumberOfOtherPregnancyOutcomes
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 1
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DateOfLastOtherPregnancyOutcome
Parent:         Observation
Id:             IHE.DateOfLastOtherPregnancyOutcome
Title:          "Date Of Last Other Pregnancy Outcome"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#68500-8
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-DateOfLastOtherPregnancyOutcome
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2015-01-10T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        BodyWeightMeasuredPrePregnancy
Parent:         Observation
Id:             IHE.BodyWeightMeasuredPrePregnancy
Title:          "Body Weight Measured Pre Pregnancy"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $loinc#8348-5
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x]1..1 
* value[x] only Quantity
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

//Open Issue: (Seeking input) there were two observations for Date of last menstral period, one with a code from LOINC and one with a code from SNOMED-CT. The Observation with the LOINC code was chosen over the SNOMED-CT, as best practice is to use LIONC for observation codes. 
//Open Issue: seeking Comment -- Menstral status observations have code values from SNOMED-CT. Proper practice with deffining observation is to use LOINC in the code section. Looking for comment to determine if the origional SNOMED code should be retained  or replaced with a LOINC code

Instance: Inline-Instance-of-BodyWeightMeasuredPrePregnancy
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 156
* Quantity[=].code = $ucum#lb_av
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        MenstrualStatus
Parent:         Observation
Id:             IHE.MenstrualStatus
Title:          "Menstrual Status"
Description:    """
MenstrualStatus Reported. 
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $loinc#8678-5
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
* subject only Reference(Patient)
* hasMember only Reference(DateOfLastMenstralPeriod or MensesMonthly or PriorMensesDate or DurationOfMenstrualFlow or FrequencyOfMenstrualCycles or OnBirthControlPillsAtConception or Menarche or HCGPlus)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer

Instance: Inline-Instance-of-MenstrualStatus
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        MensesMonthly
Parent:         Observation
Id:             IHE.MensesMonthly
Title:          "Menses Monthly"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#364307006
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1
* value[x] only boolean
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 


Instance: Inline-Instance-of-MensesMonthly
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #false
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        PriorMensesDate 
Parent:         Observation
Id:             IHE.PriorMensesDate
Title:          "Prior Menses Date"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#21840007 
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only dateTime
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-PriorMensesDate
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value[+].dateTime = "2021-07-17"
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        DurationOfMenstrualFlow 
Parent:         Observation
Id:             IHE.DurationOfMenstrualFlow
Title:          "Duration of Menstrual Flow"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#364306002 	
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only Quantity
* value[x].code = $ucum#d
//need confirmation this is the correct 
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-DurationOfMenstrualFlow
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 6
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)


Profile:        FrequencyOfMenstrualCycles 
Parent:         Observation
Id:             IHE.FrequencyOfMenstrualCycles
Title:          "Frequency of Menstrual Cycles"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#289887006 	 	
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only Quantity
* value[x].code = $ucum#d
//need confirmation this is the correct 
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-FrequencyOfMenstrualCycles
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = 24
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        OnBirthControlPillsAtConception 
Parent:         Observation
Id:             IHE.OnBirthControlPillsAtConception
Title:          "On Birth Control Pills at conception"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
// * code = $sct#10036567  	 - code no longer supported by SNOMED CT	
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only boolean
//need confirmation this is the correct 
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-OnBirthControlPillsAtConception
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #false
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        Menarche 
Parent:         Observation
Id:             IHE.Menarche 	
Title:          "Menarche"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#398700009 	 	
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only Quantity
//need confirmation this is the correct 
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-Menarche
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* Quantity[+].value = 38
* Quantity[=].code = $ucum#wk
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)

Profile:        HCGPlus 
Parent:         Observation
Id:             IHE.hCGPlus 	
Title:          "hCG+"
Description:    """
TBD
"""
* category 1..1
* status = http://hl7.org/fhir/observation-status#final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $sct#250423000	 	
* effective[x] 1..1
* effective[x] only dateTime 
* performer 1..*
//Confomrance Statment: The effective time element shall be present to indicate the interval of the pregnancy. 
* value[x] 1..1 
* value[x] only boolean
//need confirmation this is the correct 
* subject only Reference(Patient)
// this is making everything else in observation forbidden.
* device 0..0
* interpretation 0..0
* focus 0..0
* bodySite 0..0
* method 0..0 
* specimen 0..0
* referenceRange 0..0
* component 0..0
// HasMember open issue this may be relivant and useful for maternal health observations and groupings initially deffined under an organizer 

Instance: Inline-Instance-of-HCGPlus
InstanceOf: Observation
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* effective[+].dateTime = "2021-10-06T10:52:30-07:00"
* value = #false
* performer = Reference(Provider/ex-Provider)
* subject = Reference(patient/ex-Patient)