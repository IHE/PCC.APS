Profile:   IHE_APS_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.APS.Composition
Title: "Antapartum Summary"
Description:      """
Antepartum Summary is a content profile that defines the structure for the aggregation of significant events, diagnoses, and plans of care derived from the visits over the course of an antepartum episode. 
It is represented in part by Estimated Due Dates and a Visit Summary Flowsheet, in which the aggregated data from the ambulatory office visits is recorded, as well as allergies, advance directives, care plans, 
and selected histories are provided. The Antepartum Summary represents a summary of the most critical information to an antepartum care provider regarding the status of a patient’s pregnancy.
"""

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category 1..
* category contains pregnancySummaryDocument 1..1
* category[pregnancySummaryDocument] = $loinc#90767-5
//* subject 1..1
//* subject only Reference(Patient)

* section[sectionPregnancyHx] 1..1
* section[sectionProblems] 1..1
* section[sectionPastIllnessHx] 1..1
* section[sectionSocialHistory] 1..1
* section[sectionProceduresHx] 1..1
* section[sectionAdvanceDirectives] 1..1
* section[sectionPlanOfCare] 1..1
* section[sectionImmunizations] 1..1
* section[sectionVitalSigns] 1..1
* section[sectionResults] 1..1


* section contains 
    ChiefComplaint 1..1 MS and 
    FamilyMedicalHistory 1..1 MS and 
    ReviewOfSystems 1..1 MS and 
    HistoryOfInfection 1..1 MS and 
    PhysicalExams 1..1 MS and 
    Payors 0..1 and 
    AntepartumVisitSummaryFlowsheet 1..1 MS and 
    AntepartumEducation 1..1 MS
// Note:

* section[sectionPregnancyHx].entry contains 
    currentPregnancyObservations 1..* MS and 
    historicalPregnancyObservations 0..* MS
* section[sectionPregnancyHx].entry[currentPregnancyObservations] only Reference(Observation or MultiplePregnancy or GestationalAge or DateOfLastMenstralPeriod)
* section[sectionPregnancyHx].entry[historicalPregnancyObservations] only Reference(Observation or PregnancyHistory)


* section[sectionSocialHistory].entry contains 
    drugUse 0..1 and 
    smokingTobaccoUseFrequency 0..1 MS and 
    alcoholUseFrequency 0..1 MS and 
    exercise 0..1 and 
    diet 0..1 and 
    toxicExposure 0..1 and 
    sdohObservations 0..1 MS and 
    occupationalDataForHealth 0..1
// Note:
* section[sectionSocialHistory].entry[drugUse] only Reference(DrugUse or Observation)
* section[sectionSocialHistory].entry[smokingTobaccoUseFrequency] only Reference(SmokingTobaccoUseFrequency)
* section[sectionSocialHistory].entry[alcoholUseFrequency] only Reference(AlcoholUseFrequency)
* section[sectionSocialHistory].entry[exercise] only Reference(Exercise or Observation)
* section[sectionSocialHistory].entry[diet] only Reference(Diet or Observation)
* section[sectionSocialHistory].entry[toxicExposure] only Reference(ToxicExposure or Observation)
* section[sectionSocialHistory].entry[sdohObservations] only Reference(Homelessness or DomesticViolenceRisk or Observation)
* section[sectionSocialHistory].entry[occupationalDataForHealth] only Reference(https://profiles.ihe.net/PCC/APS/StructureDefinition/IHE.ODH.EmploymentStatus.StructuredDefinition)


* section[sectionAdvanceDirectives].entry contains advanceDirectivesObservation 0..* MS 
* section[sectionAdvanceDirectives].entry[advanceDirectivesObservation] only Reference(AdvanceDirectivesObservation)

* section[sectionPlanOfCare].entry contains birthPlan 0..1 

//* section[sectionResults].entry contains 
//    antepartumLaboratoryResults 1..* MS and 
//    antepartumDiagnosticFindings 1..* MS and 
//    antenatalTestingAndSurveillance 1..* MS
//Note:





* section[ChiefComplaint] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[ChiefComplaint] ^extension.valueString = "Section"
* section[ChiefComplaint] ^short = "Cheif Complaint"
* section[ChiefComplaint] ^definition = "Chief complaint records the patient's primary complaint (the patient's own description)."
* section[ChiefComplaint].code = $loinc#10154-3
* section[ChiefComplaint].code MS
* section[ChiefComplaint].text 1..1
// Note: If there is no narrative available in this section then a data absent Reason SHALL be provided 


* section[FamilyMedicalHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[FamilyMedicalHistory] ^extension.valueString = "Section"
* section[FamilyMedicalHistory] ^short = "Family Medical History"
* section[FamilyMedicalHistory] ^definition = "The family history section shall include entries for family history"
* section[FamilyMedicalHistory].code = $loinc#10157-6
* section[FamilyMedicalHistory].code MS
* section[FamilyMedicalHistory].entry 0..* 
* section[FamilyMedicalHistory].entry only Reference(Observation)


* section[ReviewOfSystems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[ReviewOfSystems] ^extension.valueString = "Section"
* section[ReviewOfSystems] ^short = "Review of Systems"
* section[ReviewOfSystems] ^definition = "The review of systems section shall contain a narrative description of the responses the patient gave to a set of routine questions on the functions of each anatomic body system. "
* section[ReviewOfSystems].code = $loinc#10187-3
* section[ReviewOfSystems].code MS

// add slice
//* section[ReviewOfSystems].entry contains menstralHistory 0..1 MS 
//* section[ReviewOfSystems].entry[menstralHistory] only Reference(Observation or MestralStatus)


* section[HistoryOfInfection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[HistoryOfInfection] ^extension.valueString = "Section"
* section[HistoryOfInfection] ^short = "History of Infection"
* section[HistoryOfInfection] ^definition = "The History of Infection section shall contain a narrative description of any infections the patient may have contracted prior to the patient's current condition."
* section[HistoryOfInfection].code = $loinc#56838-6
* section[HistoryOfInfection].code MS
* section[HistoryOfInfection].entry only Reference(Condition)
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided 

* section[PhysicalExams] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[PhysicalExams] ^extension.valueString = "Section"
* section[PhysicalExams] ^short = "Physical Exams"
* section[PhysicalExams] ^definition = "The coded Detailed Physical Examination section shall contain only the required and optional subsections performed."
* section[PhysicalExams].code = $loinc#29545-1
* section[PhysicalExams].code MS
* section[PhysicalExams].entry only Reference(Observation)
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided 


* section[Payors] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Payors] ^extension.valueString = "Section"
* section[Payors] ^short = "Payors"
* section[Payors] ^definition = "The Payers section contains data on the patient’s payers, whether a ‘third party’ insurance, self-pay, other payer or guarantor, or some combination. ."
* section[Payors].code = $loinc#48768-6
* section[Payors].code MS
* section[Payors].entry only Reference(Coverage)


* section[AntepartumVisitSummaryFlowsheet] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[AntepartumVisitSummaryFlowsheet] ^extension.valueString = "Section"
* section[AntepartumVisitSummaryFlowsheet] ^short = "Antepartum Visit Summary Flowsheet"
* section[AntepartumVisitSummaryFlowsheet] ^definition = "This section is a running history of the most important elements noted for a pregnant woman."
* section[AntepartumVisitSummaryFlowsheet].code = $loinc#57059-8
* section[AntepartumVisitSummaryFlowsheet].code MS
* section[AntepartumVisitSummaryFlowsheet].entry only Reference(Observation)
//* section[AntepartumVisitSummaryFlowsheet].entry contains simpleObservation 0..* MS
//    FlowsheetPannel 0..* 
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided

* section[AntepartumEducation] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[AntepartumEducation] ^extension.valueString = "Section"
* section[AntepartumEducation] ^short = "AntepartumEducation"
* section[AntepartumEducation] ^definition = "The Antepartum Education contains a list of patient education activities that have occured or have been planned to review with the patient."
* section[AntepartumEducation].code = $loinc#34895-3
* section[AntepartumEducation].code MS
* section[AntepartumEducation].entry only Reference(Procedure or PregnancyEducationObservation or DocumentReference)
//* section[AntepartumEducation].entry contains 
//    firstTrimester 0..* MS and 
//    secondTrimester 0..* MS and 
//    thirdTrimester 0..* MS
// Note: 

