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
* confidentiality = #N
* attester[0].mode = #legal
* attester[=].time = "2023-01-08T14:30:00+01:00"
* attester[=].party = Reference(Practitioner/ex-Practitioner)
* attester[+].mode = #legal
* attester[=].time = "2023-01-08T14:30:00+01:00"
* attester[=].party = Reference(Organization/ex-Organization-OB)
* custodian = Reference(Organization/ex-Organization-OB)


* section[sectionMedications]
  * title = "Medication Summary section"
  * code = $loinc#10160-0 "History of Medication use Narrative"
  * entry = Reference(MedicationStatementIPS/ex-medicationStatement)

* section[sectionAllergies]
  * title = "Allergies and Intolerances"
  * code = $loinc#48765-2 "Allergies and adverse reactions Document"
  * entry[allergyOrIntolerance][+] = Reference(AllergyIntoleranceUvIps/ex-Allergy-Latex)
  * entry[allergyOrIntolerance][+] = Reference(AllergyIntoleranceUvIps/ex-Allergy-Fish)

* section[sectionProblems]
  * title = "Problems"
  * code = $loinc#11450-4 "Problem list - Reported"
  * entry[problem][+] = Reference(ConditionUvIps/ex-Problem-Sepsis)
  * entry[problem][+] = Reference(ConditionUvIps/ex-Problem-GestationalDiabetes)

* section[+].title = "Chief Complaint"
* section[=].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Complains of fever and having lack of energy</div>"

* section[+].title = "Procedures History"
* section[=].code = $loinc#47519-4 "History of Procedures Document"
* section[=].entry[+] = Reference(ProcedureUvIps/ex-Procedure-CephalicVersion)
* section[=].entry[+] = Reference(ProcedureUvIps/ex-Procedure-EducationSmoking)

* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of Immunization Narrative"
* section[=].entry = Reference(ImmunizationUvIps/ex-Immunization-Vericella)

* section[+].title = "Medical Devices"
* section[=].code = $loinc#46264-8 "History of Medical Device Use"

* section[sectionResults]
  * title = "Results"
  * code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative "
  * entry[antepartumLaboratoryResults] = Reference(ex-AntepartumLabs)
  * entry[antenatalTestingAndSurveillance] = Reference(ex-Antepartum-Genetic-Screening)

* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs"
* section[=].entry[+] = Reference(VitalSigns/ex-VitalSigns-BodyWeight)
* section[=].entry[+] = Reference(VitalSigns/ex-VitalSigns-BodyWeight-PrePregnancy)

* section[ReviewOfSystems]
  * title = "Review Of Systems"
  * code = $loinc#10187-3 "Review of systems Narrative - Reported"
  * entry[menstralHistory] = Reference(ex-MenstralStatus-Pregnancy)

* section[+].title = "Physical Exams"
* section[=].code = $loinc#29545-1 "Physical findings Narrative"
* section[=].entry = Reference(Observation/ex-PhysicalExam-AbdominalTenderness)

* section[+].title = "Past Illness History"
* section[=].code = $loinc#11348-0 "History of Past illness Narrative"

* section[+].title = "History Of Infection"
* section[=].code = $loinc#56838-6 "History of Infectious disease Narrative"
* section[=].entry = Reference(ex-HistoryOfInfection)

* section[sectionPlanOfCare]
  * title = "Plan Of Care"
  * code = $loinc#18776-5 "Plan of care note"
  * entry[birthPlan] = Reference(CarePlan/ex-CarePlanHomeBirth)

* section[sectionSocialHistory]
  * title = "Social History"
  * code = $loinc#29762-2 "Social history Narrative"
  * entry[smokingTobaccoUse] = Reference(ObservationTobaccoUseUvIps/ex-SocialHistory-smokingTobaccoUse)
  * entry[alcoholUse] = Reference(ObservationAlcoholUseUvIps/ex-SocialHistory-alcoholUse)
  * entry[sdohObservations][+] = Reference(DomesticViolenceRisk/ex-DomesticViolenceRisk)
  * entry[sdohObservations][+] = Reference(Homelessness/ex-ex-Homelessness)
  * entry[occupationalDataForHealth] = Reference(EmploymentStatus/ex-SocialHistory-EmploymentStatus)

* section[sectionPregnancyHx]
  * title = "Pregnancy History"
  * code = $loinc#10162-6 "Pregnancy History"
  * entry[pregnancyStatus] = Reference(ex-PregnencyStatus-pregnant)
  * entry[currentPregnancyObservations][+] = Reference(ex-EstimatedDeliveryDate)
  * entry[currentPregnancyObservations][+] = Reference(ex-GestationalAge)
  * entry[currentPregnancyObservations][+] = Reference(ex-DateOfLastMenstralPeriod)
  * entry[currentPregnancyObservations][+] = Reference(ex-DateOfFirstPrenatalVisit)
  * entry[historicalPregnancyObservations] = Reference(ex-PregnancyHistory-AmandaAlvarez)

* section[sectionAdvanceDirectives]
  * title = "Advance Directives"
  * code = $loinc#42348-3 "Advance Directives"
  * entry[advanceDirectivesObservation] = Reference(ex-AdvanceDirectivesObservation)

* section[+].title = "Payors"
* section[=].code = $loinc#48768-6 "Payment sources Document"
* section[=].entry = Reference(Coverage/9876B1)

* section[AntepartumEducation]
  * title = "Antepartum Education"
  * code = $loinc#34895-3 "Education Note"
  * entry[firstTrimester] = Reference(ex-PregnancyEducationObservation)
  * entry[secondTrimester] = Reference(ex-PregnancyEducationObservation)

* section[AntepartumVisitSummaryFlowsheet]
  * title = "Antepartum Visit Summary Flowsheet"
  * code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
  * entry[prePregnancyWeight] = Reference(ex-vitalSigns-BodyWeight-PrePregnancy)
  * entry[antepartumFlowsheetPanel] = Reference(ex-AntepartumVisitSummaryFlowsheetBattery)