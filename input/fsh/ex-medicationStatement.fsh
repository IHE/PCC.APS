Instance: ex-medicationStatement
InstanceOf: MedicationStatement-uv-ips
Usage: #example
Description: "The Example instance for the Medication Statement"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = #outpatient 
* medication[x] = Reference(MedicationIPS/ex-medication-Amoxicillin)
* subject = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* effectiveDateTime = "2023-01-02"
* dateAsserted = "2023-01-08"
* informationSource = Reference(PatientUvIps/ex-Patient-AmandaAlvarez)
* note = "indicates they miss the occasional dose"
* dosage.sequence = 1
* dosage.text = "5ml three times daily"
* asNeeded = #false 
* route = $sct#260548002
* doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered
* doseQuantity.value = 5
* doseQuantity.unit = "mL"
* doseQuantity.system = $ucum
* doseQuantity.code = #mL
* maxDosePerPeriod.numerator = 3
* maxDosePerPeriod.denominator = 1

Instance: ex-medication-Amoxicillin
InstanceOf: Medication-uv-ips
Usage: #example
Description: "The Example instance for the Medication - Amoxicillin"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* code.snomed = $sct#27658006
* status = #active 