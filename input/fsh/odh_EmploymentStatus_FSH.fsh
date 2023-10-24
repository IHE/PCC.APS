Profile: EmploymentStatus
Parent: Observation
Id: odh-EmploymentStatus
Title: "Employment Status"
Description: "A History of Employment Status Observation is a clinical statement about a person's relationship to working for pay, family earnings, or training (e.g. having one or more jobs, searching for work, etc.). A person’s ODH Employment Status is independent of Job characteristics, e.g., not “full-time work,” “part-time work,” \"self-employed,\" because many people have more than one job."
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2021-05-27T08:31:05.057+00:00"
* ^meta.source = "#iGAwdD6ECP1hP6Hz"
* ^url = "https://profiles.ihe.net/PCC/APS/StructureDefinition/IHE.ODH.EmploymentStatus.StructuredDefinition"
* ^version = "0.0.1-current"
* ^date = "2020-01-04"
* ^publisher = "IHE Patient Care Coordination Committee"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ihe.net/ihe_domains/patient_care_coordination/"
* ^contact[+].telecom.system = #email
* ^contact[=].telecom.value = "pcc@ihe.net"
* ^contact[+].name = "IHE Patient Care Coordination Committee"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "pcc@ihe.net"
* ^jurisdiction = $m49.htm#001
* . ^short = "Employment Status"
* . ^definition = "The self-reported current and/or historical status about a person’s economic relationship to work (e.g. having one or more jobs), including start and end dates. A person’s Employment Status could change over time, for example, a person could be employed following a period of choosing to not be in the labor force. Outside of ODH, the employment arrangement between an employer and a person (one job) has sometimes been referred to as a person’s ‘employment status.’ However, in ODH, Employment Status is used to characterize a person, Work Classification is used to characterize a job, and Retirement Date is used to characterize a person as retired."
* . ^isModifier = false
* . ^isSummary = false
* basedOn only Reference(ServiceRequest)
* basedOn ^short = "The plan, proposal or order that is fulfilled in whole or in part by this observation"
* basedOn ^definition = "The plan, proposal or order that is fulfilled in whole or in part by this observation."
* partOf only Reference(Procedure)
* partOf ^short = "The larger procedure that this particular observation is a component or step"
* partOf ^definition = "The larger procedure that this particular observation is a component or step."
* category 0..1
* category.coding ..*
* category.coding ^slicing.id = "1"
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.ordered = false
* category.coding ^slicing.rules = #open
* category.coding contains Fixed_social-history 1..1 SU
* category.coding[Fixed_social-history] only Coding
* category.coding[Fixed_social-history] ^short = "Social History"
* category.coding[Fixed_social-history] ^definition = "Social History"
* category.coding[Fixed_social-history] ^base.path = "CodeableConcept.coding"
* category.coding[Fixed_social-history] ^base.min = 0
* category.coding[Fixed_social-history] ^base.max = "*"
* category.coding[Fixed_social-history].system 1..1
* category.coding[Fixed_social-history].system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding[Fixed_social-history].code 1..1
* category.coding[Fixed_social-history].code = #social-history (exactly)
* code.coding ..*
* code.coding ^slicing.id = "2"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains Fixed_74165-2 1..1 SU
* code.coding[Fixed_74165-2] only Coding
* code.coding[Fixed_74165-2] ^short = "History of employment status NIOSH"
* code.coding[Fixed_74165-2] ^definition = "History of employment status NIOSH"
* code.coding[Fixed_74165-2] ^base.path = "CodeableConcept.coding"
* code.coding[Fixed_74165-2] ^base.min = 0
* code.coding[Fixed_74165-2] ^base.max = "*"
* code.coding[Fixed_74165-2].system 1..1
* code.coding[Fixed_74165-2].system = "http://loinc.org" (exactly)
* code.coding[Fixed_74165-2].code 1..1
* code.coding[Fixed_74165-2].code = #74165-2 (exactly)
* subject 1..1
* subject only Reference(PatientUvIps)
* subject ^short = "The subject of an observation"
* subject ^definition = "The subject of an observation."
* focus 0..0
* effectivePeriod only Period
* effectivePeriod ^short = "The time period the employment status addresses. If the employment is current, the ending time of the time period should be omitted."
* effectivePeriod ^definition = "The time period the employment status addresses. If the employment is current, the ending time of the time period should be omitted."
* performer only Reference(Practitioner or Organization or PatientUvIps or RelatedPerson)
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from EmploymentStatusODH (required)
* valueCodeableConcept ^short = "A person’s employment status as defined by compensation and sector (e.g. paid vs. unpaid, self-employed vs. not self-employed, government vs. private, etc.)"
* valueCodeableConcept ^definition = "A person’s employment status as defined by compensation and sector (e.g. paid vs. unpaid, self-employed vs. not self-employed, government vs. private, etc.)."
* dataAbsentReason 0..0
* interpretation 0..1
* bodySite 0..0
* bodySite from SNOMEDCTBodyStructures (preferred)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* bodySite ^binding.description = "Codes describing anatomical locations. May include laterality."
* method 0..0
* specimen 0..0
* device 0..0
* device only Reference(Device)
* referenceRange 0..0
* referenceRange.type from $referencerange-meaning (extensible)
* referenceRange.type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* referenceRange.type ^binding.extension.valueString = "ObservationRangeMeaning"
* referenceRange.type ^binding.description = "Code for the meaning of a reference range."
* referenceRange.appliesTo from ObservationReferenceRangeAppliesToCodes (extensible)
* referenceRange.appliesTo ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* referenceRange.appliesTo ^binding.extension.valueString = "ObservationRangeType"
* referenceRange.appliesTo ^binding.description = "Codes identifying the population the reference range applies to."
* hasMember 0..0
* derivedFrom only Reference(DocumentReference or Media or QuestionnaireResponse or Observation)
* component 0..0
* component.value[x] only Quantity or CodeableConcept or string or Range or Ratio or SampledData or time or dateTime or Period
* component.referenceRange.type from $referencerange-meaning (extensible)
* component.referenceRange.type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.referenceRange.type ^binding.extension.valueString = "ObservationRangeMeaning"
* component.referenceRange.type ^binding.description = "Code for the meaning of a reference range."
* component.referenceRange.appliesTo from ObservationReferenceRangeAppliesToCodes (extensible)
* component.referenceRange.appliesTo ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.referenceRange.appliesTo ^binding.extension.valueString = "ObservationRangeType"
* component.referenceRange.appliesTo ^binding.description = "Codes identifying the population the reference range applies to."

Instance: ex-EmploymentStatus
InstanceOf: EmploymentStatus
Usage: #example
Description: "The Example instance for the EmploymentStatus observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = #Employed
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)