Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $mysys = http://example.org/mysys
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Instance: ex-CarePlan-BirthPlan
InstanceOf: Antepartum_BirthPlan
Usage: #example

* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-intent#plan
* subject = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"
* category = $sct#735986004
* activity.reference = Reference(activity-3)
* period.start = "2021-07-15"
* period.end = "2022-04-20"
* careTeam = Reference(ex-careteam)
* goal = Reference(ex-goal)

Instance: p1
InstanceOf: Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code.text = "pregnancy"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"

Instance: pr1
InstanceOf: Practitioner
Usage: #example
* name.family = "0'Malley"
* name.given = "Melinda"

Instance: pr2
InstanceOf: Practitioner
Usage: #example
* name.family = "Obstetrician"
* name.given = "Oscar"

Instance: ex-careteam
InstanceOf: CareTeam
Usage: #example
* participant[0].role = $mysys#lmc
* participant[=].role.text = "Midwife"
* participant[=].member = Reference(Practitioner/pr1) "Mavis Midwife"
* participant[+].role = $mysys#obs
* participant[=].role.text = "Obstretitian"
* participant[=].member = Reference(Practitioner/pr2) "Oscar Obstetrician"

Instance: ex-goal
InstanceOf: Goal
Usage: #example
* lifecycleStatus = #active
* description.text = "Maintain patient's health throughout pregnancy and ensure a healthy child"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"

Instance: activity-1 
InstanceOf: Appointment
Usage: #example
* status = #booked
* description = "The first antenatal encounter. This is where a detailed physical examination is performed and the pregnanacy discussed with the mother-to-be."
* start = "2021-09-18T10:38:00+00:00"
* end = "2021-09-18T10:50:00+00:00"
* requestedPeriod.start = "2021-09-18"
* requestedPeriod.end = "2021-09-28"
* participant[0].actor = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"
* participant[=].required = http://hl7.org/fhir/participantrequired#required
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted
* participant[+].type = $v3-ParticipationType#ATND
* participant[=].actor = Reference(Practitioner/pr1) "Mavis Midwife"
* participant[=].required = http://hl7.org/fhir/participantrequired#required 
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted

Instance: activity-2
InstanceOf: Appointment
Usage: #example
* status = #proposed
* description = "The second antenatal encounter. Discuss any issues that arose from the first antenatal encounter"
* requestedPeriod.start = "2021-10-12"
* requestedPeriod.end = "2021-10-12"
* participant[0].actor = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"
* participant[=].required = http://hl7.org/fhir/participantrequired#required
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted
* participant[+].type = $v3-ParticipationType#ATND
* participant[=].actor = Reference(Practitioner/pr1) "Mavis Midwife"
* participant[=].required = http://hl7.org/fhir/participantrequired#required
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted

Instance: activity-3
InstanceOf: Appointment 
Usage: #example
* status = #proposed
* description = "The home delivery."
* requestedPeriod.start = "2022-04-20"
* requestedPeriod.end = "2022-04-20"
* participant[0].actor = Reference(Patient/ex-Patient-AmandaAlvarez) "Amanda Alvarez"
* participant[=].required = http://hl7.org/fhir/participantrequired#required
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted
* participant[+].type = $v3-ParticipationType#ATND
* participant[=].actor = Reference(Practitioner/pr1) "Mavis Midwife"
* participant[=].required = http://hl7.org/fhir/participantrequired#required
* participant[=].status = http://hl7.org/fhir/participationstatus#accepted
* reasonReference = Reference(p1)