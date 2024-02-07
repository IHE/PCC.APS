Instance: ex-APS-Composition-AmandaAlvarez
InstanceOf: IHE.PCC.APS.Composition
Usage: #example
Description: "The Example instance for the Antepartum Summary composition for example patient Amanda Alvarez"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* date = "2023-01-08T14:30:00+01:00"
* author = Reference(Practitioner/ex-Practitioner)
* title = "Antepartum Summary as of January 8, 2023 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[=].time = "2023-01-08T14:30:00+01:00"
* attester[=].party = Reference(Practitioner/ex-Practitioner)
* attester[+].mode = #legal
* attester[=].time = "2023-01-08T14:30:00+01:00"
* attester[=].party = Reference(Organization/ex-Organization-OB)
* custodian = Reference(Organization/ex-Organization-OB)


* section[0].title = "Medication Summary section"
* section[=].code = $loinc#110160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].entry = Reference(MedicationStatementIPS/ex-medicationStatement)

* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].entry[+] = Reference(AllergyIntoleranceUvIps/ex-Allergy-Latex)
* section[=].entry[+] = Reference(AllergyIntoleranceUvIps/ex-Allergy-Fish)

* section[+].title = "Problems"
* section[=].code = $loinc#11450-4 "Problem list - Reported"
* section[=].text.status = #generated
* section[=].entry[+] = Reference(ConditionUvIps/ex-Problem-Sepsis)
* section[=].entry[+] = Reference(ConditionUvIps/ex-Problem-GestationalDiabetes)

* section[+].title = "Chief Complaint"
* section[=].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[=].text.status = #generated
* section[=].text = "Complains of fever and having lack of energy"

* section[+].title = "Procedures History"
* section[=].code = $loinc#47519-4 "History of Procedures Document"
* section[=].text.status = #generated
* section[=].entry[+] = Reference(ProcedureUvIps/ex-Procedure-CephalicVersion)
* section[=].entry[+] = Reference(ProcedureUvIps/ex-Procedure-EducationSmoking)

* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of Immunization Narrative"
* section[=].text.status = #generated
* section[=].entry = Reference(ImmunizationUvIps/ex-Immunization-Vericella)

* section[+].title = "Medical Devices"
* section[=].code = $loinc#46264-8 "History of Medical Device Use"
* section[=].text.status = #generated

* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative "
* section[=].text.status = #generated
* section[=].entry[+].antepartumLaboratoryResults = Reference(ex-AntepartumLabs)
* section[=].entry[+].antenatalTestingAndSurveillance = Reference(ex-Antepartum-Genetic-Screening)

* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].entry[+] = Reference(VitalSigns/ex-VitalSigns-BodyWeight)
* section[=].entry[+] = Reference(VitalSigns/ex-VitalSigns-BodyWeight-PrePregnancy)

* section[+].title = "Review Of Systems"
* section[=].code = $loinc#10187-3 "Review of systems Narrative - Reported"
* section[=].text.status = #generated
* section[=].entry[+].menstralHistory = Reference(ex-MenstralStatus-Pregnancy)

* section[+].title = "Physical Exams"
* section[=].code = $loinc#29545-1 "Physical findings Narrative"
* section[=].text.status = #generated
* section[=].entry = Reference(Observation/ex-PhysicalExam-AbdominalTenderness)

* section[+].title = "Past Illness History"
* section[=].code = $loinc#11348-0 "History of Past illness Narrative"
* section[=].text.status = #generated

* section[+].title = "History Of Infection"
* section[=].code = $loinc#56838-6 "History of Infectious disease Narrative"
* section[=].text.status = #generated
* section[=].entry = Reference(ex-HistoryOfInfection)

* section[+].title = "Plan Of Care"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].entry[+].birthPlan = Reference(CarePlan/ex-CarePlanHomeBirth)

* section[+].title = "Social History"
* section[=].code = $loinc#29762-2 "Social history Narrative"
* section[=].text.status = #generated
* section[=].entry[+].smokingTobaccoUse = Reference(ObservationTobaccoUseUvIps/ex-SocialHistory-smokingTobaccoUse)
* section[=].entry[+].smokingTobaccoUse = Reference(ObservationTobaccoUseUvIps/ex-SocialHistory-smokingTobaccoUse-formerSmoker)
* section[=].entry[+].alcoholUse = Reference(ObservationAlcoholUseUvIps/ex-SocialHistory-alcoholUse)
* section[=].entry[+].sdohObservations = Reference(DomesticViolenceRisk/ex-DomesticViolenceRisk)
* section[=].entry[+].sdohObservations = Reference(Homelessness/ex-ex-Homelessness)
* section[=].entry[+].occupationalDataForHealth = Reference(EmploymentStatus/ex-SocialHistory-EmploymentStatus)

* section[+].title = "Pregnancy History"
* section[=].code = $loinc#10162-6 "Pregnancy History"
* section[=].text.status = #generated
* section[=].entry[+].pregnancyStatus = Reference(ex-PregnencyStatus-pregnant)
* section[=].entry[+].currentPregnancyObservations[+] = Reference(ex-EstimatedDeliveryDate)
* section[=].entry[+].currentPregnancyObservations[+] = Reference(ex-GestationalAge)
* section[=].entry[+].currentPregnancyObservations[+] = Reference(ex-DateOfLastMenstralPeriod)
* section[=].entry[+].currentPregnancyObservations[+] = Reference(ex-DateOfFirstPrenatalVisit)
* section[=].entry[+].historicalPregnancyObservations = Reference(ex-PregnancyHistory-AmandaAlvarez)

* section[+].title = "Advance Directives"
* section[=].code = $loinc#42348-3 "Advance Directives"
* section[=].text.status = #generated
* section[=].entry[+].advanceDirectivesObservation = Reference(ex-AdvanceDirectivesObservation)

* section[+].title = "Payors"
* section[=].code = $loinc#48768-6 "Payment sources Document"
* section[=].text.status = #generated
* section[=].entry = Reference(Coverage/9876B1)

* section[+].title = "Antepartum Education"
* section[=].code = $loinc#34895-3 "Education Note"
* section[=].text.status = #generated
* section[=].entry[+].firstTrimester = Reference(ex-PregnancyEducationObservation)
* section[=].entry[+].secondTrimester = Reference(ex-PregnancyEducationObservation)

* section[+].title = "Antepartum Visit Summary Flowsheet"
* section[=].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[=].text.status = #generated
* section[=].entry[+].prePregnancyWeight = Reference(ex-vitalSigns-BodyWeight-PrePregnancy)
* section[=].entry[+].antepartumFlowsheetPanel = Reference(ex-AntepartumVisitSummaryFlowsheetBattery)