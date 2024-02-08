Instance: ex-medicationStatement
InstanceOf: MedicationStatementIPS
Usage: #example
Description: "The Example instance for the Medication Statement"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = #outpatient 
* medication[x] 
    * medicationCodeableConcept = $sct#27658006  "Amoxicillin"
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-02"
* dateAsserted = "2023-01-08"
* informationSource = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* note = "indicates they miss the occasional dose"
* dosage.sequence = 1
* dosage.text = "5ml three times daily"
* asNeeded[x]
    * asNeededBoolean = false 
* route = $sct#260548002
* doseAndRate
    * type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered
    * dose[x]
        * doseQuantity.value = 5
        * doseQuantity.unit = "mL"
        * doseQuantity.system = $ucum
        * doseQuantity.code = #mL
* maxDosePerPeriod.numerator = 3
* maxDosePerPeriod.denominator = 1

