## Issues

### Submit an Issue

### Open Issues

- APSOpenIssue_001: Seeking Comment -- For this version of the Antepartum summary we decided to combine the sepparated ANtepartum documents into one Summary document. When Combining these we ended up bringing in requirements such as cheif complaint and physical exams. Do we need two different version of the document, one that is strictly just a pregnancy summary and the other that is a visit summary to reduce the need for those elements?
- APSOpenIssue_002: Seeking Comment -- How does Antipartum summary allign with how current documentation is developed aorund Visit summary documents for OBGYn and pregnancy visits? comments on this may also apply to APSOpenIssue_001 
- APSOpenIssue_003: Seeking Comment -- Should we include a value set within the SOcial History section to deffine what types of SDOH observations are relivant to the pregnancy, similar to how we have pregancy relivant history of past illnesses? 
- APSOpenIssue_004: Seeking Comment -- The IHE Maternal Health SMEs have sugested key social history observations that result in obsetric risk (homlessness, food insecurity, known by social services, lack of transportaion, domestic violence, support systems needed, and other resources needed). 
- APSOpenIssue_005: Seeking Comment -- Do we need a review of system - mentral histroy , if so do an any of the values in the following value set apply (Antepartum.Review.of.Systems.Menstrual.History.VS)? Are there an alternate LOINC based valuesets for this observation? 
- APSOpenIssue_006: Seeking Comment -- For this profile we tried to take on the challenge of profiling some of the organizer observations that were deffined in the Antepartum SUmmary CDA specification. We decided to take the approach of referencing the related observations through the hasMember element. Seeking feedback on this apporoach.
- APSOpenIssue_007: Seeking Comment -- Why are the number of Biths to term and number of births preterm observations repeated in the current pregnancy observation organizer and the pregnancy history organizer in the APS CDA specification? How best do we map into this FHIR model?
- APSOpenIssue_008: Seeking Comment -- There are many repeated observations with small vairations (DELIVERY DATE (CLINICAL ESTIMATE), DELIVERY DATE (ESTIMATED FROM LAST MENSTRUAL PERIOD), FETUS, GESTATIONAL AGE (CLINICAL ESTIMATE), FETUS, GESTATIONAL AGE (ESTIMATED FROM LAST MENSTRUAL PERIOD)). The variations that we see could be informed by an observation method. Seeking comment on the possibility of simplifying these various observations into a single one with a requirement for the method, chosen from a value set, to be deffined.
- APSOpenIssue_009: Seeking Comment -- The Antepartum Summary CDA Specification references a number of observations that appear irrelivant to Antepartum care (32396-4	Labor duration, 8339-4	Body weight at birth, 29300-1	Procedure, 8722-1 	Surgical operation note anesthesia, 52829-9	Place of service).
- APSOpenIssue_010: Seeking Comment -- Pregancy status loinc code was updated to loinc 82810-3 to allign with IPS efforts. 
- APSOpenIssue_011: Seeking Comment -- There were two observations for Date of last menstral period, one with a code from LOINC and one with a code from SNOMED-CT. The Observation with the LOINC code was chosen over the SNOMED-CT, as best practice is to use LIONC for observation codes. Looking for comment to determine if the origional SNOMED code should be retained  or replaced with a LOINC code. 
- APSOpenIssue_012: Seeking Comment -- WE found multiple ways to represent smoking in IPS, IHE, and US-Core. These differences include smoking tabbaco status Vs use observations. IPS and US CORE only deffins the smoking status of the patient and have their value sets in LOINC and SNOMED-CT, respectively. IHE Deffins the social history smoking observation around the use of tabbacoo and has a value set deffined for packs per unit of measure. 
- APSOpenIssue_013: Seeking Comment -- For Social History drug use, IHE currently specifies a SNOMED-CT code for the observation type with no constrain to the responce. IPS and US core do not use this data element. There is a loinc code (74204-9) which is deffined for United States national trauma data. Seeking input for any updates to the value. 
- APSOpenIssue_014: The Social Histroy Employment observation is omitted as structured work concepts, including employer, are addressed using the Occupational Data For Health
- APSOpenIssue_015: * $sct#21840007   "Prior Menses Date" Removed because it is a repeat concept wiht the same code as "date of last menstral period". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_016: * $sct#49882001   "Rash or viral illness since LMP"  Removed because it is a repeat concept wiht the same code as "Rash since LMP". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_017: * $loinc#30525-0   "Age, Patient Quantitative"  Removed because it is a repeat concept wiht the same code as "age". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_018: * $loinc#20450-3   "Alpha-1-Fetoprotein Multiple of the Median, Serum Quantitative Calculated"  Removed because it is a repeat concept wiht the same code as "Alpha-1-Fetoprotein". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_019: * $sct#171054004   "Special Diet"   Removed because it is a repeat concept wiht the same code as "Nutrition and weight gain counseling". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_020: * $sct#66961001   "Second Trimester Childbirth classes/hospital facilities"  Removed because it is a repeat concept wiht the same code as "Childbirth classes/hospital facilities". CP may need to be made on the CDA APS to remove as well






### Closed Issues

- ToDo_002: this is closed issue 2



## Significant Changes

### Significant Changes from Revision x.x

- change 1
- change 2
- etc.


