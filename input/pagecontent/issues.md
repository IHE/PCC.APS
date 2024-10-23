## Significant Changes

### Significant Changes From Previous Release
This is the first release of this Implementation Guide.

##Issues

### Submit an Issue
IHE welcomes [New Issues](https://github.com/IHE/PCC.mAPS/issues/new/choose) from the GitHub community. 
For those without GitHub access, issues may be submitted to the [Public Comment form](https://www.ihe.net/PCC_Public_Comments/).

As issues are submitted they will be managed on the [mAPS GitHub Issues](https://github.com/IHE/PCC.mAPS/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

- APSOpenIssue_001: Seeking Comment -- For this version of the Antepartum summary we decided to combine the separated Antepartum documents into one Summary document. When Combining these we ended up bringing in requirements such as chief complaint and physical exams. Do we need two different version of the document, one that is strictly just a pregnancy summary and the other that is a visit summary to reduce the need for those elements?
- APSOpenIssue_002: Seeking Comment -- How does Antepartum summary align with how current documentation is developed around Visit summary documents for OBGYN and pregnancy visits? comments on this may also apply to APSOpenIssue_001 
- APSOpenIssue_003: Seeking Comment -- Should we include a value set within the Social History section to define what types of SDOH observations are relevant to the pregnancy, similar to how we have pregnancy relevant history of past illnesses? 
- APSOpenIssue_004: Seeking Comment -- The IHE Maternal Health SMEs have suggested key social history observations that result in obstetric risk (homelessness, food insecurity, known by social services, lack of transportation, domestic violence, support systems needed, and other resources needed). 
- APSOpenIssue_005: Seeking Comment -- Do we need a review of system - mental history , if so do an any of the values in the following value set apply (Antepartum.Review.of.Systems.Menstrual.History.VS)? Are there an alternate LOINC based value sets for this observation? 
- APSOpenIssue_006: Seeking Comment -- For this profile we tried to take on the challenge of profiling some of the organizer observations that were defined in the Antepartum Summary CDA specification. We decided to take the approach of referencing the related observations through the hasMember element. Seeking feedback on this approach.
- APSOpenIssue_007: Seeking Comment -- Why are the number of Births to term and number of births preterm observations repeated in the current pregnancy observation organizer and the pregnancy history organizer in the APS CDA specification? How best do we map into this FHIR model?
- APSOpenIssue_008: Seeking Comment -- There are many repeated observations with small variations (DELIVERY DATE (CLINICAL ESTIMATE), DELIVERY DATE (ESTIMATED FROM LAST MENSTRUAL PERIOD), FETUS, GESTATIONAL AGE (CLINICAL ESTIMATE), FETUS, GESTATIONAL AGE (ESTIMATED FROM LAST MENSTRUAL PERIOD)). The variations that we see could be informed by an observation method. Seeking comment on the possibility of simplifying these various observations into a single one with a requirement for the method, chosen from a value set, to be defined.
- APSOpenIssue_009: Seeking Comment -- The Antepartum Summary CDA Specification references a number of observations that appear irrelevant to Antepartum care (32396-4	Labor duration, 8339-4	Body weight at birth, 29300-1	Procedure, 8722-1 	Surgical operation note anesthesia, 52829-9	Place of service).
- APSOpenIssue_010: Seeking Comment -- Pregnancy status loinc code was updated to loinc 82810-3 to allign with IPS efforts. 
- APSOpenIssue_011: Seeking Comment -- There were two observations for Date of last menstrual period, one with a code from LOINC and one with a code from SNOMED-CT. The Observation with the LOINC code was chosen over the SNOMED-CT, as best practice is to use LIONC for observation codes. Looking for comment to determine if the original SNOMED code should be retained  or replaced with a LOINC code. 
- APSOpenIssue_012: Seeking Comment -- WE found multiple ways to represent smoking in IPS, IHE, and US-Core. These differences include smoking tobacco status Vs use observations. IPS and US CORE only define the smoking status of the patient and have their value sets in LOINC and SNOMED-CT, respectively. IHE Defines the social history smoking observation around the use of tobacco and has a value set defined for packs per unit of measure. 
- APSOpenIssue_013: Seeking Comment -- For Social History drug use, IHE currently specifies a SNOMED-CT code for the observation type with no constrain to the response. IPS and US core do not use this data element. There is a loinc code (74204-9) which is defined for United States national trauma data. Seeking input for any updates to the value. 
- APSOpenIssue_014: The Social History Employment observation is omitted as structured work concepts, including employer, are addressed using the Occupational Data For Health
- APSOpenIssue_015: * $sct#21840007   "Prior Menses Date" Removed because it is a repeat concept with the same code as "date of last menstrual period". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_016: * $sct#49882001   "Rash or viral illness since LMP"  Removed because it is a repeat concept with the same code as "Rash since LMP". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_017: * $loinc#30525-0   "Age, Patient Quantitative"  Removed because it is a repeat concept with the same code as "age". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_018: * $loinc#20450-3   "Alpha-1-Fetoprotein Multiple of the Median, Serum Quantitative Calculated"  Removed because it is a repeat concept with the same code as "Alpha-1-Fetoprotein". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_019: * $sct#171054004   "Special Diet"   Removed because it is a repeat concept with the same code as "Nutrition and weight gain counseling". CP may need to be made on the CDA APS to remove as well
- APSOpenIssue_020: * $sct#66961001   "Second Trimester Childbirth classes/hospital facilities"  Removed because it is a repeat concept with the same code as "Childbirth classes/hospital facilities". CP may need to be made on the CDA APS to remove as well.
- APSOpenIssue_021: Observation "On Birth Control Pills at conception" SCT#10036567 no loger exhists. The observation was removed from the build. Commitee needs to determine if a new code needs to be found to replace it or if it should be removed entirely from this build and the CDA content modules that references it. 
- APSOpenIssue_022: Seeking comment on how Birth Plans usally are captured and maintained. we have this modeleed as a text entry, looking to see if the entry should be modified to be a reference 
- APSOpenIssue_023: Seeking comment for the History of infection Section within the Composition resource. This is modeled off of a historical CDA document adn we are looking for a more appropriate way to represent infections that may affect the current pregnancy 
- APSOpenIssue_024: Seeking comment for clinical content review 
- APSOpenIssue_025:	Seeking commment for the representaion of the units of measure for Packs/per day and Drinks per week. The warning was puressed becasue the unit that is measured withthe code is specific to packs per day and drinks per week. However it may be represented as number per day or week and the wordking of packs or drinks can be inplied from th responce of the loinc code that is calling for the result. 
- APSOpenIssue_026:	Seeking commment --  the incorperation of the survey questions for pregnancy history may have to be collected through a structure data capture survey from the patient prior to its incorperation into the summary. should there be language supporting this method of data collection deffined within this profile? 
- APSOpenIssue_027: * $loinc#44996-0     "Trace" no longer a valid code in LOINC Replace ment should be found 
- APSOpenIssue_028: This version of the profile is in FHIR R4.0 not R4B. If there is interest in making this IG conformant to r4B, the public comment period is where this can be requested. If it is not requested, the next version of this IG may be in r4B or r6. 

### Closed Issues

- None




