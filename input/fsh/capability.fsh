Instance: IHE.mAPS.Content-Creator
InstanceOf: CapabilityStatement
Title: "mAPS Content Creator"
Usage: #definition
* name = "IHE_mAPS_Content_Creator"
* title = "mAPS Content Creator"
* status = #active
* experimental = false
* date = "2024-07-17"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* description = "The mAPS[Content Creator](ActorsAndTransactions.html#Content-Creator)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* document[+].mode = #producer 
* document[=].profile = Canonical(IHE_PCC_mAPS_Composition)

Instance: IHE.mAPS.Content-Consumer
InstanceOf: CapabilityStatement
Title: "mAPS Content Consumer"
Usage: #definition
* name = "IHE_mAPS_Content_Consumer"
* title = "mAPS Content Consumer"
* status = #active
* experimental = false
* date = "2024-07-17"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* description = "The mAPS[Content Creator](ActorsAndTransactions.html#Content-Consumer)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* document[+].mode = #producer 
* document[=].profile = Canonical(IHE_PCC_mAPS_Composition)
