Profile:   IHE_APS_Composition
Parent: Composition
Id:             IHE.PCC.APS.Composition
Title: "Antapartum Summary"
Description:      """
Antepartum Summary is a content profile that defines the structure for the aggregation of significant events, diagnoses, and plans of care derived from the visits over the course of an antepartum episode. 
It is represented in part by Estimated Due Dates and a Visit Summary Flowsheet, in which the aggregated data from the ambulatory office visits is recorded, as well as allergies, advance directives, care plans, 
and selected histories are provided. The Antepartum Summary represents a summary of the most critical information to an antepartum care provider regarding the status of a patient’s pregnancy.

"""

* text MS
* identifier MS
* status MS 
* type MS
* type = $loinc#57055-6
* category 1..* MS 
* category = $loinc#90767-5
* subject 1..1 MS 
* subject only Reference(https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient)
* encounter MS 
* date MS 
* author MS 
* title MS
* title = "Antepartum Summary"
* attester MS 
* attester.mode MS 
* attester.time MS 
* attester.party MS
* custodian MS 
* event MS 
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBS

* section.code 1..1 MS 
// if it works keept if not just revert to codable concept  
* section.code ^type.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
* section.title 1..1 MS
* section.text 1..1 MS 
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Sections composing the APS"
* section ^slicing.ordered = false
* section contains 
    sectionMedications 1..1 and
    sectionAllergies 1..1  and
    sectionProblems 1..1  and
    sectionPastIllnessHx 1..1  and
    sectionSocialHistory 0..1  and
    sectionProceduresHx 1..1  and
    sectionPregnancyHx 1..1  and
    sectionPlanOfCare 0..1  and
    sectionImmunizations 1..1  and
    sectionResults 0..1  and
    sectionAdvanceDirectives 0..1  and
    sectionVitalSigns 0..1  and
    ChiefComplaint 0..1  and
    FamilyMedicalHistory 0..1  and
    ReviewOfSystems 0..1  and
    HistoryOfInfection 0..1  and
    PhysicalExams 0..1  and
    AntepartumEducation 0..1  and 
    Payors 0..1 and 
    AntepartumVisitSummaryFlowsheet 0..1  

* section[sectionMedications] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension.valueString = "Section"
* section[sectionMedications] ^short = "Medication Summary Section"
* section[sectionMedications] ^definition = "TBD"
* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].emptyReason MS 
* section[sectionMedications].entry ^slicing.discriminator.type = #profile
* section[sectionMedications].entry ^slicing.discriminator.path = "resolve()"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry ^slicing.description = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^slicing.ordered = false
* section[sectionMedications].entry 0..* MS 
* section[sectionMedications].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedications].entry contains 
    medicationStatement 0..* and
    medicationRequest 0..*
* section[sectionMedications].entry[medicationStatement] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips)
* section[sectionMedications].entry[medicationRequest] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips)

* section[sectionAllergies] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAllergies] ^extension.valueString = "Section"
* section[sectionAllergies] ^short = "Allergies and Intolerances Section"
* section[sectionAllergies] ^definition = "TBD"
* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].emptyReason MS 
* section[sectionAllergies].entry ^slicing.discriminator.type = #profile
* section[sectionAllergies].entry ^slicing.discriminator.path = "resolve()"
* section[sectionAllergies].entry ^slicing.rules = #open
* section[sectionAllergies].entry ^slicing.description = "Relevant allergies or intolerances (conditions) for that patient."
* section[sectionAllergies].entry ^slicing.ordered = false
* section[sectionAllergies].entry 0..* MS 
* section[sectionAllergies].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionAllergies].entry contains 
    allergyOrIntolerance 1..* MS
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips)

* section[sectionProblems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblems] ^extension.valueString = "Section"
* section[sectionProblems] ^short = "Problems Section"
* section[sectionProblems] ^definition = "TBD"
* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].emptyReason MS 
* section[sectionProblems].entry ^slicing.discriminator.type = #profile
* section[sectionProblems].entry ^slicing.discriminator.path = "resolve()"
* section[sectionProblems].entry ^slicing.rules = #open
* section[sectionProblems].entry ^slicing.description = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^slicing.ordered = false
* section[sectionProblems].entry 0..* MS 
* section[sectionProblems].entry only Reference(Condition or DocumentReference)
* section[sectionProblems].entry contains problem 1..* MS 
* section[sectionProblems].entry[problem] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips)

* section[sectionProceduresHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresHx] ^extension.valueString = "Section"
* section[sectionProceduresHx] ^short = "History of Procedures Section"
* section[sectionProceduresHx] ^definition = "TBD"
* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].emptyReason MS 
* section[sectionProceduresHx].entry ^slicing.discriminator.type = #profile
* section[sectionProceduresHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry ^slicing.description = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^slicing.ordered = false
* section[sectionProceduresHx].entry 0..* MS 
* section[sectionProceduresHx].entry only Reference(Procedure  or DocumentReference)
* section[sectionProceduresHx].entry contains procedure 1..* MS 
* section[sectionProceduresHx].entry[procedure] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips)

* section[sectionPastIllnessHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension.valueString = "Section"
* section[sectionPastIllnessHx] ^short = "History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "TBD"
* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionPastIllnessHx].emptyReason MS 
* section[sectionPastIllnessHx].entry ^slicing.discriminator.type = #profile
* section[sectionPastIllnessHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPastIllnessHx].entry ^slicing.rules = #open
* section[sectionPastIllnessHx].entry ^slicing.description = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^slicing.ordered = false
* section[sectionPastIllnessHx].entry 0..* MS 
* section[sectionPastIllnessHx].entry only Reference(Condition or DocumentReference)
* section[sectionPastIllnessHx].entry contains pastProblem 0..* MS 
* section[sectionPastIllnessHx].entry[pastProblem] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips)

* section[sectionSocialHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension.valueString = "Section"
* section[sectionSocialHistory] ^short = "Social History Section"
* section[sectionSocialHistory] ^definition = "TBD"
* section[sectionSocialHistory].code = $loinc#29762-2
* section[sectionSocialHistory].emptyReason MS 
* section[sectionSocialHistory].entry ^slicing.discriminator.type = #profile
* section[sectionSocialHistory].entry ^slicing.discriminator.path = "resolve()"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry ^slicing.description = "Health related 'lifestyle factors' or 'lifestyle observations' (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^slicing.ordered = false
* section[sectionSocialHistory].entry 0..* MS
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference)
* section[sectionSocialHistory].entry contains 
    smokingTobaccoUse 0..1 and 
    alcoholUse 0..1 and 
    drugUse 0..1 and 
    smokingTobaccoUseFrequency 0..1 MS and 
    alcoholUseFrequency 0..1 MS and 
    exercise 0..1 and 
    diet 0..1 and 
    toxicExposure 0..1 and 
    sdohObservations 0..* MS and 
    occupationalDataForHealth 0..*
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips)
* section[sectionSocialHistory].entry[alcoholUse] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips)
* section[sectionSocialHistory].entry[drugUse] only Reference(DrugUse)
* section[sectionSocialHistory].entry[smokingTobaccoUseFrequency] only Reference(SmokingTobaccoUseFrequency)
* section[sectionSocialHistory].entry[alcoholUseFrequency] only Reference(AlcoholUseFrequency)
* section[sectionSocialHistory].entry[exercise] only Reference(Exercise or Observation)
* section[sectionSocialHistory].entry[diet] only Reference(Diet)
* section[sectionSocialHistory].entry[toxicExposure] only Reference(ToxicExposure)
* section[sectionSocialHistory].entry[sdohObservations] only Reference(Homelessness or DomesticViolenceRisk)
* section[sectionSocialHistory].entry[occupationalDataForHealth] only Reference(CombatZonePeriod or EmploymentStatus or PastOrPresentJob or RetirementDate or UsualWork)

* section[sectionPregnancyHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension.valueString = "Section"
* section[sectionPregnancyHx] ^short = "History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "TBD"
* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].emptyReason MS 
* section[sectionPregnancyHx].entry ^slicing.discriminator.type = #profile
* section[sectionPregnancyHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPregnancyHx].entry ^slicing.rules = #open
* section[sectionPregnancyHx].entry ^slicing.description = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^slicing.ordered = false
* section[sectionPregnancyHx].entry 0..* MS
* section[sectionPregnancyHx].entry only Reference(Observation or DocumentReference)
* section[sectionPregnancyHx].entry contains
    pregnancyStatus 1..* MS and 
    PregnancyObservations 1..* MS and 
    pregnancyOutcomeSummary 0..* MS  	
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips)  
* section[sectionPregnancyHx].entry[pregnancyOutcomeSummary]  only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips)  
* section[sectionPregnancyHx].entry[PregnancyObservations] only Reference(MultiplePregnancy or GestationalAge or DateOfLastMenstralPeriod or PregnancyHistory)

* section[sectionImmunizations] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension.valueString = "Section"
* section[sectionImmunizations] ^short = "Immunization Section"
* section[sectionImmunizations] ^definition = "TBD"
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].emptyReason MS 
* section[sectionImmunizations].entry ^slicing.discriminator.type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator.path = "resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry ^slicing.description = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^slicing.ordered = false
* section[sectionImmunizations].entry 0..* MS
* section[sectionImmunizations].entry only Reference(Immunization or DocumentReference)
* section[sectionImmunizations].entry contains immunization 1..* MS 
* section[sectionImmunizations].entry[immunization] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips)

* section[sectionPlanOfCare] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanOfCare] ^extension.valueString = "Section"
* section[sectionPlanOfCare] ^short = "Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "TBD"
* section[sectionPlanOfCare].code = $loinc#18776-5
* section[sectionPlanOfCare].emptyReason MS 
* section[sectionPlanOfCare].entry ^slicing.discriminator.type = #profile
* section[sectionPlanOfCare].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPlanOfCare].entry ^slicing.rules = #open
* section[sectionPlanOfCare].entry ^slicing.description = "entry used to represent structured care plans"
* section[sectionPlanOfCare].entry ^slicing.ordered = false
* section[sectionPlanOfCare].entry 0..* MS
* section[sectionPlanOfCare].entry only Reference(CarePlan or DocumentReference)
* section[sectionPlanOfCare].entry contains
    carePlan 0..* and 
    birthPlan 0..* MS  
* section[sectionPlanOfCare].entry[carePlan] only Reference(CarePlan)
* section[sectionPlanOfCare].entry[birthPlan] only Reference(Antepartum_BirthPlan)

* section[sectionResults] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension.valueString = "Section"
* section[sectionResults] ^short = "Results Section"
* section[sectionResults] ^definition = "TBD"
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].emptyReason MS 
* section[sectionResults].entry ^slicing.discriminator.type = #profile
* section[sectionResults].entry ^slicing.discriminator.path = "resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry ^slicing.description = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^slicing.ordered = false
* section[sectionResults].entry 0..* MS
* section[sectionResults].entry only Reference(Observation or http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips or DiagnosticReport or DocumentReference)
* section[sectionResults].entry contains
    results-diagnosticReport 0..* MS and 
    antepartumLaboratoryResults 1..* MS and 
    antenatalTestingAndSurveillance 0..* MS
* section[sectionResults].entry[results-diagnosticReport] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips)
* section[sectionResults].entry[antepartumLaboratoryResults] only Reference(AntepartumLabs)
* section[sectionResults].entry[antenatalTestingAndSurveillance] only Reference(Antepartum_Genetic_Screening)

* section[sectionAdvanceDirectives] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvanceDirectives] ^extension.valueString = "Section"
* section[sectionAdvanceDirectives] ^short = "Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "TBD"
* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].emptyReason MS 
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry ^slicing.description = "the patient's advance directive."
* section[sectionAdvanceDirectives].entry ^slicing.ordered = false
* section[sectionAdvanceDirectives].entry 0..*
* section[sectionAdvanceDirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvanceDirectives].entry contains advanceDirectivesConsent 0..* 
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] only Reference(Consent)

* section[sectionVitalSigns] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension.valueString = "Section"
* section[sectionVitalSigns] ^short = "Vital Signs Section"
* section[sectionVitalSigns] ^definition = "TBD"
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].emptyReason MS 
* section[sectionVitalSigns].entry ^slicing.discriminator.type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator.path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry ^slicing.description = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^slicing.ordered = false
* section[sectionVitalSigns].entry 0..*
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry contains vitalSign 0..* 
* section[sectionVitalSigns].entry[vitalSign] only Reference(http://hl7.org/fhir/StructureDefinition/vitalsigns)

* section[ChiefComplaint] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[ChiefComplaint] ^extension.valueString = "Section"
* section[ChiefComplaint] ^short = "Cheif Complaint Section"
* section[ChiefComplaint] ^definition = "Chief complaint records the patient's primary complaint (the patient's own description)."
* section[ChiefComplaint].code = $loinc#10154-3
* section[ChiefComplaint].code MS
* section[ChiefComplaint].text 1..1

* section[FamilyMedicalHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[FamilyMedicalHistory] ^extension.valueString = "Section"
* section[FamilyMedicalHistory] ^short = "Family Medical History"
* section[FamilyMedicalHistory] ^definition = "The family history section shall include entries for family history"
* section[FamilyMedicalHistory].code = $loinc#10157-6
* section[FamilyMedicalHistory].entry 0..* 
* section[FamilyMedicalHistory].entry only Reference(Observation)

* section[ReviewOfSystems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[ReviewOfSystems] ^extension.valueString = "Section"
* section[ReviewOfSystems] ^short = "Review of Systems"
* section[ReviewOfSystems] ^definition = "The review of systems section shall contain a narrative description of the responses the patient gave to a set of routine questions on the functions of each anatomic body system. "
* section[ReviewOfSystems].code = $loinc#10187-3
* section[ReviewOfSystems].entry 0..* 
* section[ReviewOfSystems].entry ^slicing.discriminator.type = #profile
* section[ReviewOfSystems].entry ^slicing.discriminator.path = "resolve()"
* section[ReviewOfSystems].entry ^slicing.rules = #open
* section[ReviewOfSystems].entry ^slicing.description = ""
* section[ReviewOfSystems].entry ^slicing.ordered = false
* section[ReviewOfSystems].entry contains menstralHistory 0..* MS
* section[ReviewOfSystems].entry[menstralHistory] only Reference(Observation or IHE.MenstrualStatus)

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

* section[AntepartumEducation] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[AntepartumEducation] ^extension.valueString = "Section"
* section[AntepartumEducation] ^short = "AntepartumEducation"
* section[AntepartumEducation] ^definition = "The Antepartum Education contains a list of patient education activities that have occured or have been planned to review with the patient."
* section[AntepartumEducation].code = $loinc#34895-3
* section[AntepartumEducation].code MS
* section[AntepartumEducation].entry 0..* 
* section[AntepartumEducation].entry only Reference(Procedure or PregnancyEducationObservation or Observation or DocumentReference)


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
* section[AntepartumVisitSummaryFlowsheet].entry only Reference(Observation or AntepartumVisitSummaryFlowsheetBattery)
* section[AntepartumVisitSummaryFlowsheet].entry ^slicing.discriminator.type = #profile
* section[AntepartumVisitSummaryFlowsheet].entry ^slicing.discriminator.path = "resolve()"
* section[AntepartumVisitSummaryFlowsheet].entry ^slicing.rules = #open
* section[AntepartumVisitSummaryFlowsheet].entry ^slicing.description = ""
* section[AntepartumVisitSummaryFlowsheet].entry ^slicing.ordered = false
* section[AntepartumVisitSummaryFlowsheet].entry contains 
    prePregnancyWeight 0..1 and 
    antepartumFlowsheetPanel 0..* 
* section[AntepartumVisitSummaryFlowsheet].entry[prePregnancyWeight] only Reference(Observation)
* section[AntepartumVisitSummaryFlowsheet].entry[antepartumFlowsheetPanel] only Reference(AntepartumVisitSummaryFlowsheetBattery)
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided






