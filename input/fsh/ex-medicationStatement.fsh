Instance: ex-medicationStatement
InstanceOf: MedicationStatementIPS
Usage: #example
Description: "The Example instance for the Medication Statement"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = http://hl7.org/fhir/ValueSet/medication-statement-category#outpatient 
* medicationCodeableConcept = $sct#27658006  "Product containing amoxicillin (medicinal product)"
* subject = Reference(Patient/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-02"
* dateAsserted = "2023-01-08"
* informationSource = Reference(Patient/ex-Patient-AmandaAlvarez)
* note.text = "indicates they miss the occasional dose"
* dosage.sequence = 1
* dosage.text = "5ml three times daily"
* dosage.asNeededBoolean = false 
* dosage.route = $sct#385268001
* dosage.doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered
* dosage.doseAndRate.doseQuantity = 5 'mL' "mL"
* dosage.maxDosePerPeriod.numerator = 3 'ml' "mL"
* dosage.maxDosePerPeriod.denominator = 1 'ml' "mL"


