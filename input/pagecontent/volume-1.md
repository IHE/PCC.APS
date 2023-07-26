# 1:XX Antepartum Summary

**Antepartum Summary is a content profile that defines the structure for the aggregation of significant events, diagnoses, and plans of care derived from the visits over the course of an antepartum episode.**

**This is intended to be a Content profile.**

<a name="actors-and-transactions"> </a>

## 1:X.1 APS Actors, Transactions, and Content Modules

* Actors
  * [ContentCreator](#ContentCreator)
  * [ContentConsumer](#ContentConsumer)
* Transactions
  * [ITI-65](ITI65.html)


## 1:X.2 Use Cases 

### X.2.1.1 Use case 1
Precondition: The patient’s obstetrician sees the patient for her pregnancy in the ambulatory (office) setting.  During the pregnancy, the patient is noted to have a medical problem requiring consultation with a Maternal-Fetal Medicine specialist (perinatologist).  The office obtains pre-authorization from the insurance payer for the consult, and for the intended or anticipated route of delivery, and transmits that information to both the consultant and to the hospital.  

Events: The patient is seen in the obstetrician’s office where a complete medical and relevant social history are taken by the nurse and recorded in the office EHR, incorporating data from the perinatologist’s consultation report as appropriate. Laboratory and imaging reports ordered by the perinatologist as well as the perinatologist’s consultation report are displayed electronically to the obstetrician. The obstetrician reviews the consultation report from the perinatologist’s office and imaging studies ordered by the perinatologist along with data recorded by the nurse.  Physical exam reveals some abnormalities. The obstetrician orders additional laboratory studies, and sends the patient to the hospital to Labor and Delivery. 

When the laboratory results return, the physician completes the admission H&P, Allergies, Medications, includes the data prepared or ordered by the perinatologist, and makes it available to L&D.  This data includes an assessment of the patient’s health status, and the requisite data summarized from the antepartum care given. The charge nurse for L&D documents that the complete collection of documents needed is available.  The Post-Partum discharge planning is notified and assures that there is a suitable environment with appropriate support for post-delivery after-care.

Postcondition: The Pre-delivery H&P and Antepartum Summary with appropriate relationships to the Perinatologist Consultation, and all the antepartum laboratory and imaging studies are available to the obstetrician and the birthing center personnel for incorporation into their respective EHRs. The H&P is also available to the patient for viewing and incorporation into the patient’s PHR, and into the newborn baby’s PHR.


<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>Figure XX.1-1: Use Case 1 Process Flow</b></figcaption>
</figure>
<br clear="all">

This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly
involved in the ANtepartum Summary document exchange  
Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure XX.1-2: ToDo Actor Diagram</b></figcaption>
</figure>
<br clear="all">

Table XX.1-1: APS Profile - Actors and Transactions

|                  |                      |                        |                 |               |
|------------------|----------------------|------------------------|-----------------|---------------|
| Actors           | Transactions         | Initiator or Responder | Optionality     | Reference     |
| Content Creator  | [ITI-65](ITI65.html) | Initiator              | R               | TBD           |
| Content Consumer | [ITI-65](ITI65.html) | Responder              | R               | TBD           |
{: .grid}


<a name="actor-options"> </a>

## XX.2 APS Actor Options

N/A

<a name="required-groupings"> </a>

## XX.3 APS Required Actor Groupings

N/A

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case \#1: simple name

One or two sentence simple description of this particular use case.

Note that Section XX.4.2.1 repeats in its entirety for additional use cases (replicate as Section XX.4.2.2, XX.4.2.3, etc.).

##### XX.4.2.1.1 simple name Use Case Description

Describe the key use cases addressed by the profile. Limit to a maximum of one page of text or consider an appendix.

##### XX.4.2.1.2 simple name Process Flow

Diagram and describe the process flow(s) covered by this profile in order to satisfy the use cases. Demonstrate how the profile transactions are combined/sequenced. To provide context and demonstrate how the profile interacts with other profiles, feel free to include transactions and events that are “external” to this profile (using appropriate notation.)

The set of process flows will typically be exemplary, not exhaustive (i.e., it will address all the use cases, but will not show all possible combinations of actors, or all possible sequencing of transactions).

If there are detailed behavioral rules that apply to a specific process flow or multiple process flows, an appendix may be added as needed.

The roles at the top of the swimlane diagram should correspond to actor names, include the profile acronym:actor name if referencing an actor from a different profile.

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>Figure XX.4.2.2-1: Basic Process Flow in Profile Acronym Profile</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

Very briefly (typically one sentence) describe the conditions or timing when this content module would be used.

**Main Flow**:

Typically in an enumerated list, describe the clinical workflow  when, where, and how this content module would be used.

**Post-conditions:**

Very briefly (typically one sentence) describe the state of the clinical scenario after this content module has been created including examples of potential next steps.

<a name="security-considerations"> </a>

## XX.5 APS Security Considerations

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)


<a name="other-grouping"> </a>

## XX.6 APS Cross-Profile Considerations

The content deffined in this profile can serve as source infomration for many pregancy related public health reporting and research efforts. Inormation from this profile may provide content to the Labor and delivery summary and may be a source for Birth and fetal death reporting (BFDRE). 
