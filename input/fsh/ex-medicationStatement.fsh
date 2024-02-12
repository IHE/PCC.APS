Instance: ex-medicationStatement
InstanceOf: MedicationStatementIPS
Usage: #example
Description: "The Example instance for the Medication Statement"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = #outpatient 
* medicationCodeableConcept = $sct#27658006  "Amoxicillin"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-02"
* dateAsserted = "2023-01-08"
* informationSource = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* note.text = "indicates they miss the occasional dose"
* dosage.sequence = 1
* dosage.text = "5ml three times daily"
* dosage.asNeededBoolean = false 
* dosage.route = $sct#260548002
* dosage.doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered
* dosage.doseAndRate.doseQuantity.value = 5
* dosage.doseAndRate.doseQuantity.unit = "mL"
* dosage.doseAndRate.doseQuantity.system = $ucum
* dosage.doseAndRate.doseQuantity.code = #mL
* dosage.maxDosePerPeriod.numerator = 3.0
* dosage.maxDosePerPeriod.denominator = 1.0

