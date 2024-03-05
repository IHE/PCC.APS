Instance:   ex-PhysicalExam-AbdominalTenderness
InstanceOf: Observation
Title:      "Physical Exam Abdominal tenderness example"
Description: "Physical Exam Abdominal tenderness example"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $sct#43478001 "Abdominal tenderness"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* performer = Reference(Practitioner/ex-Practitioner)
* effectivePeriod[+].start = "2018-04-02T10:30:10+01:00"
* valueBoolean = true 
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A
