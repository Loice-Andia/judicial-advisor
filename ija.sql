-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 11:24 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ija`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_codes`
--

CREATE TABLE IF NOT EXISTS `case_codes` (
  `case_code` varchar(200) NOT NULL,
  `court_rank_id` varchar(100) NOT NULL,
  PRIMARY KEY (`case_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_codes`
--

INSERT INTO `case_codes` (`case_code`, `court_rank_id`) VALUES
('ACCR', '5'),
('ADOP', '3'),
('BC', '3'),
('BN', '3'),
('CA', '2'),
('CAppl', '2'),
('CCC', '5'),
('CIL', '5'),
('CNCP', '5'),
('CrA', '2'),
('D.C', '3'),
('ELC', '3'),
('ELRC-Appl ', '4'),
('ELRC-C', '4'),
('ELRC-C.B.A ', '4'),
('ELRC-J.R ', '4'),
('ELRC-Misc. ', '4'),
('ELRC-Pet.', '4'),
('F.A', '3'),
('F.A Misc', '3'),
('HC.COMM. MISC. NO.', '3'),
('HC.COMM. NO.', '3'),
('HC.CR.REV', '3'),
('HC.MISC.CR.APPL', '3'),
('HCC(O.S)', '3'),
('HCCA', '3'),
('HCCC', '3'),
('HCCC Misc.', '3'),
('HCCRA.', '3'),
('HCCRC', '3'),
('ITA', '3'),
('J.R', '3'),
('J.R ELC', '3'),
('J.R Misc', '3'),
('KCC', '5'),
('MCCC', '5'),
('MCCMisc', '5'),
('MCCR', '5'),
('MCCRMisc', '5'),
('MCEP', '5'),
('MCSucc', '5'),
('MCTR', '5'),
('P & A', '3'),
('PET', '3'),
('SCAO/RF', '1'),
('SCApplc.', '1'),
('SCEP', '1'),
('SCPT', '1'),
('WC', '3');

-- --------------------------------------------------------

--
-- Table structure for table `case_details`
--

CREATE TABLE IF NOT EXISTS `case_details` (
  `court_id` int(10) NOT NULL,
  `case_num` varchar(200) NOT NULL,
  `case_type` varchar(100) NOT NULL,
  `date_filed` date DEFAULT NULL,
  `judicial_officer_id` int(11) DEFAULT NULL,
  `plaintiffs` varchar(200) DEFAULT NULL,
  `defendants` varchar(200) DEFAULT NULL,
  `legalrep_id` int(11) DEFAULT NULL,
  `origcasenum_appeal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`case_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_details`
--

INSERT INTO `case_details` (`court_id`, `case_num`, `case_type`, `date_filed`, `judicial_officer_id`, `plaintiffs`, `defendants`, `legalrep_id`, `origcasenum_appeal`) VALUES
(13001, 'HCCRA./501/2015', 'Criminal Appeal', '2015-01-20', 3, 'S A MWAI', 'REPUBLIC', 4, 'HCCRC/54/2012'),
(23001, 'HCCRA./884/2015', 'Criminal Appeal', '2015-01-20', 2, 'loice', 'andia', 8, ''),
(23001, 'HCCRA/32/2015', 'Criminal Appeal', '2015-08-20', 5, 'MARTIN CHARO H', 'REPUBLIC', 6, 'HCCRC/16/2012'),
(23001, 'HCCRA/33/2015', 'Criminal Appeal', '2015-12-15', 6, 'KENNETH MSUKO WAWUDA\n', 'REPUBLIC', 3, 'HCCRC/209/2014\n'),
(23001, 'HCCRA/35/2015', 'Criminal Appeal', '2015-07-08', 5, 'PETER MAINA MURIITHI', 'REPUBLIC', 1, 'HCCRC/1650/2014'),
(23001, 'HCCRA/37/2015', 'Criminal Appeal', '2015-07-16', 5, 'JACKSON MWANDAWIRO MGENYI ', 'REPUBLIC', 5, 'HCCRC/496/2014'),
(23001, 'HCCRA/38/2015', 'Criminal Appeal', '2015-07-16', 2, 'VENANT MWACHANYA', 'REPUBLIC', 7, 'HCCRC/953/2013'),
(23001, 'HCCRA/56/2015', 'Criminal Appeal', '2015-08-10', 6, 'JOHN MWANGANGI', 'REPUBLIC', 4, 'HCCRC/363/2014');

-- --------------------------------------------------------

--
-- Table structure for table `case_information`
--

CREATE TABLE IF NOT EXISTS `case_information` (
  `case_num` varchar(200) NOT NULL,
  `case_details` longtext NOT NULL,
  `evidence` longtext,
  PRIMARY KEY (`case_num`),
  UNIQUE KEY `case_num` (`case_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_information`
--

INSERT INTO `case_information` (`case_num`, `case_details`, `evidence`) VALUES
('HCCRA./501/2015', ' The particulars of the offence were that during the night of  5th, 6th and 7th days of July 2015 at Rwanderi sub location, in Imenti Central District of Meru County being a male person intentionally caused his penis to penetrate the vagina of N.K a female juvenile who was to his knowledge  his daughter. Alternatively, he unlawfully and intentionally  touched the complainant''s buttocks, anus and vagina.The appellant was tried and was convicted in the substantive charge and sentenced to serve life imprisonment.  He now appeals against both conviction and sentence.The appellant raised four grounds of appeal as follows:That the proceedings were conducted in a language he did not understand.That the learned trial magistrate failed to appreciate that there was a possibility of framing up the accused so that the complainant''s mother could grab the appellant''s land.That the learned trial magistrate failed to appreciate that the complainant was couched by her mother.That the learned trial magistrate erred both in law and fact by relying on false evidence.', 'N.K (PW1) testified that while sharing a bed with her parents, her father put his genitalia into hers. She cried due to pain. According to the evidence of P.K (PW2), He was sharing a bed with the complainant and the appellant when the incident happened. He said that their mother was away.The evidence of the complainant and that of her brother introduce some contradictions which were not reconciled by the prosecution. Whereas the complainant testified that their mother was present, P.K (PW3) testified that she had gone to Nyweri. P.K''s sequence of events that night introduces further doubts. He testified as follows: "Yes, I saw my father removing the complainant''s clothes at night. He started doing things to her. He slept on her. I was sleeping and was attracted by commotion of the complainant who was crying. She was asking my father to stop, but he insisted he had not finished. It was on a Monday and Tuesday and the same used to happen at night when he came home drunk." One is not sure if P.K witnessed the incident right from the start or was woken up by his crying sister.'),
('HCCRA./884/2015', 'The appellant, STEPHEN KIRAITHE M''AMUIRI , was Charged with an Offence of defilement contrary to section 8(2)  of the Sexual Offences Act No.3 of 2006. The particulars of the offence were that on 11th May 2012 at [particulars withheld] village, Tigania East District of  Meru County, the appellant intentionally caused his penis to penetrate into the vagina of B.N, a child aged 5 years. After the trial the appellant was found guilty of the offence of attempted defilement contrary to section 9 (2) of the Sexual Offences Act and sentenced to serve 10 years imprisonment. He now appeals against both conviction and sentence.The appellant was in person and raised the following grounds of appeal: That when he was charged with new charges he was not called upon to plead.That the learned trial magistrate relied on misplaced facts to convict him. ', 'no evidence submitted'),
('HCCRA/32/2015', ' The appellant was charged with the offence of defilement contrary to Section 8(1)(3) of the Sexual Offences Act.  The particulars were that the appellant on diverse dates between 2nd December 2011 and 3rd January 2012 at [particulars withheld] area in Kilifi County within Coast Province intentionally and unlawfully caused penetration of his genital organ namely Penis into the genital organ, namely vagina, of E N a girl aged 13 years.The trial court convicted the appellant and sentenced him to serve twenty years in prison.  The grounds of appeal are that the charge sheet was defective and was at variance with the evidence, that Section 200 of the Criminal Procedure Code was not complied with, that a crucial witness by the name Florence was not summoned to testify, that the case was not proved beyond reasonable doubt, the sentence is excessive and that the P3 form was irregularly produced by a person who was not the one who filled it. ', 'Before the trial court PW1 was the complainant. She testified that she was a class six pupil aged 14 years old. On 2nd January 2012 she was with her other siblings and they went to the beach. She later dodged her siblings and went to the appellant''s house. After a while her brother went there and asked her to leave.  The appellant told them that she was not there.  They later escaped and went to the appellant''s parents'' home.  She stayed there for three days and they used to have sex.  After three days she went back home.  She told her father where she was.  She was taken to the police and later taken to hospital.  It is her evidence that she had known the appellant for about three years as he does not live very far from their home.  It was her evidence that she had gone to see the appellant, have sex and then go back home. PW2 N C is th elder brother to PW1. On 2nd January 2012 he went to the appellant''s house to take away PW1.  He saw PW1 hiding under the bed.  It was around 1.00 am and was in the company of PW3 and other relatives. The appellant got out and started shouting that there were thieves.  PW2 and the other people ran away.  PW2 reported the matter to the police at Takaungu AP. Camp.  PW1 returned home after two days. PW3, S N is a brother to PW1 and was with PW2 when they went to look for PW1.  He peeped through the window and saw PW1 and the appellant having sex. There was a chimney lamp in the room.  The appellant shouted that there were thieves and they ran away.  PW4 APC PATRICK MUNENE was attached to the Takaungu AP Post.  On 4th January 2012 at about 11:30 am his boss, Sergent Ombora, called the appellant who went to the AP post and was arrested.  The case had already been reported there.  PW4 took the appellant and PW1 to Kilifi Police Station.  PW5, PC JAMES MWAI was based at Kilifi Police Station.  On 4th January 2012 at 1.57 pm he was instructed by his boss to investigate the case.  He saw the appellant and PW1.  His investigations revealed that PW1 had disappeared from home from 25th December 2011 until 2nd January 2012. PW1''s age was assessed to be 14 years old.  He caused the appellant to be charged with the offence. PW6 Dr. Hashim Suleiman was based at Kilifi District Hospital. He produced a P3 form that had been filled by his colleague, Dr. Rashida on 16th February 2012.  According to the medical examination, PW1''s genitalia was normal.  Her hymen was broken. HIV and syphilis tests were negative. During the examination PW1 was having her monthly period.  There were no evidence of spermatozoa seen. In his sworn statement the appellant explained how he was arrested on 4th January 2012 at Takaungu by some police officers.  He is 24 years old who is engaged in the music industry.  He denied committing the offence.'),
('HCCRA/33/2015', 'The Appellant herein, Kenneth Msuko Wawuda, was tried and convicted by G.M. Gitonga, Resident Magistrate for the offence of defilement contrary to Section 8(1) as read with Section 8(3) of the Sexual Offences Act No 3 of 2006. He faced an alternative charge of committing an indecent act with a child contrary to Section 11(1) of the same Act. He was sentenced to serve fifteen (15) years’ imprisonment for the offence of defilement.“Between August 2013 and 10thMay 2014 at [particulars withheld]  Village in Maktau Location within Taita Taveta County, intentionally and unlawfully caused his penis to penetrate the vagina of V C , a child aged 16 years.” “Between August 2013 and 10th May 2014 at [particulars withheld]  Village in Maktau Location within Taita Taveta County, intentionally and unlawfully touched the vagina of V C , a child aged 16 years.”THAT the Learned Trial Magistrate erred in law and fact relying on the merely (sic) circumstantial evidence from the Prosecution witnesses.THAT the Learned Trial Magistrate failed in law and fact that (sic) the investigation officer could be a star witness by visiting the scene (sic). THAT the Learned Trial Magistrate erred in law and fact by convicting him relying on the evidence of one extended family (sic). THAT the Learned Trial Magistrate erred by convicting relying (sic) on the evidence of PW 6 which was not enough concerning the broken hymen and penetration. THAT the Learned Trial Magistrate erred in law and fact without (sic) thorough investigation to see that this was the Chief and Village elder’s case since he was working there and he decided to leave the job for unfair treatment of his salary as he had stated in Cross-examination(sic).   THAT the Learned Trial Magistrate erred in law and fact to (sic) rely and call PW 1 a star witness since her evidence was merely exaggeration to lost him (sic).THAT the Honourable Magistrate erred in law and fact that (sic) he did not take into consideration his defence submission (sic). ', 'PW 1 testified that she was engaged in sexual relations with the Appellant herein. She gave a very detailed account of how this took place between August 2012 and May 2014 when she and the Appellant were caught in the act by PW 4. In her Cross-examination, she stated that she did not report the incident or cry while having sex because she and the Appellant had agreed to do so.PW 2 stated that the Appellant worked as a herdsman at her brother-in-law’s house, a fact the Appellant admitted during his Cross- Examination. She told the Trial Court that PW 1 had been given a room at her mother-in-law’s house, the same compound the Appellant stayed. She said that she took PW 1 to her house after she was caught in the act by PW 4.She contended that upon enquiring from her about the goings- on, PW 1 told her that she was a girlfriend to the Appellant herein. She testified that PW 1 subsequently ran away and was traced at Maungu Village but that she only came out of her hide out through police intervention.She further stated that she was accompanied to this Village by Oscar Rombo (hereinafter referred to as “PW 3”) and a Village Elder by the name of Mr Mwachofi. PW 3 confirmed that they found PW 1 sleeping in a room and that the Appellant was outside the house at the time.According to PW 4, he had found PW 1 and the Appellant in a room in a compromising position as if they were about to have sex or had had sex. He said that PW 1 was tried to hide under the bed and that both PW 1 and the Appellant ran away the following day.'),
('HCCRA/35/2015', ' That the trial magistrate erred in law and fact by not considering that the offence took place at night and the lighting was not sufficient enough to identify or recognize the appellant.That the trial magistrate erred in law and fact by not considering that the complainant testified that he was attacked from behind and his phone taken away “yet the light said to have been used was from the same phone which was not practical.That the trial magistrate erred in law and fact by not considering that the first report made to the police station by the complainant was that he was attacked by unknown people and never mentioned the appellant’s name.That the trial magistrate erred by not considering the fact that the initial report by the complainant did not include the fact that he had been robbed of money.That the trial magistrate erred by not considering the contradictions in the evidence of P.W.1 and P.W.5. That the trial magistrate erred in law and fact by not considering that the immediate witnesses were not called to testify.That the trial magistrate erred by not considering the appellants defence which was unshaken by the prosecution.', 'P.W.1 Paul Nderitu Kaboi, the complainant in the case, was on 1st November, 2014 walking home on foot with Kshs.9,200/= from the proceeds of pork which he had earlier sold.  The witness told the trial court that it was around 10 p.m. at night while he was on his way home when suddenly he was accosted by the appellant and 2 other people who were hiding in a nearby bush.  He told the trial court that he had a torch light on his mobile phone which helped him to identify the appellant before he hit him with a metal bar demanding money and the mobile phone he had.  They robbed him of Kshs.9,200/= which is all he had and a mobile phone.  He told the trial court that he threw sand on the eyes of the assailants in order to escape which he did.  It was his evidence that he screamed for help and was later taken to Karatina Hospital for treatment and later reported the incident at Ndiriti Police postP.W.2 JULIUS MUCHOKI WACHIRA who told the trial court that he was with the complainant walking home and that they parted ways on their way home at some point as each headed to his respective home.  Later at around 10 p.m. he was informed that the complainant had been attacked on the way by robbers.  He told the trial court that he rushed to the scene and found the complainant bleeding and they took him to Hospital with his brother.  He identified a yellow blood stained jacket which he said was worn by the complainant at the material time.  He did not see the robbers.  Cpl Benard Alumasa P.W. 3, told the trial court that a report concerning the robbery was made at the AP Camp on 3rd November, 2014 and that the complainant reported that he knew one of the culprits.  He told the court that they started looking for the appellant whom he later arrested at a local bar on 9th November, 2014.  The evidence was supported by P.W.4, I.P. Paul Sigilai, the investigating officer in the case.  He confirmed that a report concerning the robbery was booked at Ndiriti Police Post where he was attached at the time.  He told the trial court that he went to the scene of the crime and recovered a blood stained jacket belonging to the complainant and produced it as Prosecution Exhibit 1.  He confirmed that the appellant was arrested by P.W.3 and brought to the Police Post and later taken to court to be charged with the offence.  P.W.5 Dr. Stephen Wangombe testified too and produced a P3 as Prosecution Exhibit 3 and confirmed to the trial court that the complainant had suffered injuries which he classified as “harm”.  He told the trial court that he examined the complainant on 10th November, 2014 and approximated the age of injuries prior to examination to be 12 hours and indicated that the probable type of weapon used was blunt.In his sworn evidence in defence, the appellant raised alibi and told the trial court that he was away in Embu between 12th October, 2014 and 9th November, 2014 where he worked in a construction site.  He further testified that on 10th November, 2014 while drinking in a local bar, he bought some drinks to a woman which led to an altercation with a man in the bar who was later joined by 2 others who subdued him and arrested him after which they charged him with the offence of robbery with violence.  He denied any involvement in the robbery and denied knowledge of the complainant.'),
('HCCRA/37/2015', 'The Appellant herein, Jackson Mwandawiro Mgenyi, was tried and convicted by Hon G. M. Gitonga, Resident Magistrate for the offence of stealing stock and an alternative charge of handling stolen property contrary to Sections278 and 322(1) of the Penal Code respectively. He was sentenced to serve seven (7) years’ imprisonment for the offence of stealing stock.The particulars of the charge were as follows :-“On the 5th day of November 2014 at Kati Village Kishushe location within Taita Taveta County jointly stole two goats valued at Kshs 10,000/=, the property of TRIZAH MWAHE MWALUMA.”“On the 5th day of November 2014 at Kati Village Kishushe location within Taita Taveta County jointly otherwise than the course (sic) of stealing dishonestly retained two goats knowing or having reason to believe them to be stolen or unlawfully obtained.”The Grounds of Mitigation could be summarised as follows:-THAT he was too remorseful and was praying for leniency despite the offence.THAT he was a first offender and layman in law.THAT the Honourable Court ought to consider his state of health as he suffers from gastro infection, ulcers and a dilapidating heart condition.THAT the sentence herein ought to be set aside and/or his sentence be shortened or reduced to enable him join his family again.', 'My father is disabled. He depends on me. I was forced to take the goats from my uncle so that I could raise money to take my sick father to hospital.”'),
('HCCRA/38/2015', 'The Appellant, Venant Mwachanya and his Co-accused Bryan Nyambu, were tried and convicted by Hon S.M. Wahome, Senior Principal Magistrate Voi Law Courts for the offence of being in possession of government trophy without a certificate of ownership contrary to Section 42(1) (b) of the Wildlife Conservation and Management Act Cap 376 (Laws of Kenya), failing to make a report of being in possession of government trophy contrary to Section 39(3)(a) of the Wildlife Conservation and Management Act Cap 376 (Laws of Kenya) and dealing in government trophy without a dealer’s license contrary to Section 43(4)(a) of Wildlife Conservation and Management Act Cap 376 (Laws of Kenya). Each Accused person was fined a sum of Kshs 30,000/= in each count or in default, to serve two (2) years’ imprisonment. THAT he was a first offender and a layman and had he known the consequences of committing such an offence, he would never have done so.THAT he was the sole breadwinner of his aged mother, his father having died while he was in prison and that his continued incarceration would only cause her mother to suffer as his sisters were all married.THAT he promised not to commit the offence again as he was now a reformed man who had acquired skills in masonry and construction which would assist him to be a law abiding citizen who will adhere to the law at all given times. ', 'On 7thday of December 2013 at around 1330 hrs at Maweni Estate, Voi Township of Taita Taveta county, jointly with others not before the court were found in possession of Government trophies namely two (2) elephant tusks weighing 10 kilogram’s (sic) with a street value of Kshs 250,000/= and two (2) python skins with a street value of Kshs 20,000/= without a certificate of ownership.”“On 7th day of December 2013 at around 1330 hrs at Maweni Estate, Voi Township of Taita Taveta county, jointly with others not before the court failed to make a report of being in possession of Government trophies namely two (2) elephant tusks weighing 10 kilogram’s (sic) with a street value of Kshs 250,000/= and two (2) python skins with a street value of Kshs 20,000/= to an authorised officer.” “On 7th day of December 2013 at around 1330 hrs at Maweni Estate, Voi Township of Taita Taveta county, jointly with others not before the court were found dealing in Government trophies namely two (2) elephant tusks weighing 10 kilogram’s (sic) with a street value of Kshs 250,000/= and two (2) python skins with a street value of Kshs 20,000/= without a dealer’s license'),
('HCCRA/56/2015', 'The appellant was charged in the subordinate court at Kyuso with two counts.  Count one was for rape Contrary to Section 3(1)(a)(b) as read with section 3(3) of the Sexual Offences Act No. 3 of 2006.  The particulars of the offence were that on the 10th August 2014 at [Particulars Withheld] within Kitui County intentionally and unlawfully caused his penis to penetrate the vagina of A K K without her consent.  Count two was for stealing from person contrary to section 279(a) of the Penal Code.  The particulars of the offence were that on the same day and place stole a mobile phone make Nokia 1110 valued at Kshs 2,000/- the property of A K K from the said A K K. He denied both offences.  After a full trial he was convicted and sentenced to serve 10 years imprisonment on count one and one year imprisonment on count two,  the two sentences to run concurrently.Aggrieved by the decision of the trial court, the appellant has come to this court on appeal on the following grounds:-The learned trial magistrate erred both in law and facts when he admitted prosecution evidence which was totally incorroborative.The trial magistrate erred while convicting and sentencing him very severely without considering that the prosecuting relied on second person evidence as there were no other witnesses to confirm the crime.The learned trial magistrate erred in convicting and sentencing him very severely without considering that the arresters gave statements of stealing in the occurrence book and later a case of rape was framed.The trial magistrate erred when convicting and sentencing him without considering that the prosecution never presented any of the members of public who gave the arresters the information to come and confirm the said information before the court.The learned trial magistrate erred both in law and fact when he convicted and sentenced him without considering that his case was a frame up due to a broken relationship with the complainant as indicated in his defence which brought great enemity between the two.The learned trial magistrate erred in convicting and sentencing him without considering that he was a first offender and without giving leniency in concluding the matter.The learned trial magistrate erred when he concluded this case and handed down a harsh sentence without considering his defence which was not displaced at all.The learned magistrate erred in law and fact by convicting and sentencing him very severely without considering that he was a young person who would be useful in future nation building.', 'PWI was the complainant K K who testified that she was a house wife.  That on 10th of August 2014 as she was going towards [Particulars Withheld] market at 5.00 Pm she met the appellant John,  who told her that he had pursued her severally without success and on that day he would have sex with her.  He then hit her and carried her upstream to the basin of a nearby river, removed her pants and raped her.  He then took her bag and mobile phone.  Later she saw him being thrown from a bar and told her story to the police and the appellant was arrested and her phone recovered.  (At this point she was stood down in order to avail the P3 form.) She was recalled on another date when she identified a Nokia telephone 1110 white in colour and a P3 form as well as treatment notes. In cross examination, she stated that she used to see the appellant at the market but did not know his name.  She denied having any business with the appellant and also denied that the appellant was a neighbour. She stated that she had heard that the appellant was not a good person.  She denied saying that the culprit was one Musili.  She stated that the appellant carried her for a distance of about 50 metres and that they didn’t meet anybody in that process.  She stated that the market was about 500 metres away from the scene and that people at the market could not hear her screams.  She denied ever being the appellant’s friend and emphasized that he had raped her.  She admitted that both of them were taken to hospital the next day.  She stated that she spent the night at the police station. In reexamination, she stated that many people were called by the name Musili but maintained that it was the appellant who had raped her. PW2 was Sergeant Ellias Munyi Joshua.  It was his evidence that on 10th August 2014 while at [Particulars Withheld] market, they found the appellant being beaten by the public.  They were told that he had stolen a mobile phone a white Nokia 1110.  He stated that they recovered the phone and took it to Katse Police Station.  The complainant claimed that she had been raped. In cross examination he stated that they found the appellant having been beaten by a crowd and was about to be killed before they intervened.  He stated that the complainant screamed.  He further stated that the complainant identified her mobile phone and that they did not photograph the appellant as it was not necessary. In reexamination he maintained that they recovered the complainants phone from the appellant.  He said that the appellant was a habitual thief. PW3 was Police Constable Michael Juma of Katse Police Station.  It was his evidence that on 10th August 2014 while on patrol at [Particulars Withheld] market, he heard noise.  Together with PW2 they proceeded to the noisy place and found the appellant being beaten and people claimed that he had stolen.  They recovered a white Nokia 1110 and took the appellant to Katse Police Station.  The complainant then came and recoded her statement, and claimed that she had also been raped by the appellant.    In cross examination, he said that they were at the market at about 5.00 Pm and that the rape should have occurred at about 4.00 Pm. He stated that the complainant did not claim to have told anyone about the rape.  He stated that the phone was recovered from the appellant’s trouser pocket and that no photograph of the same was taken. PW4 was Francis Saku a Clinical Officer from Kyuso Sub District Hospital.  He produced a P3 form for the complainant K K filled by David Mbiti a colleague who was attending a seminar. From the entries in the P3 form, there was nothing un usual on the head and neck, chest and stomach, arms and legs of the complainant who was aged 45 years.  Her genitalia was also normal but she had a foul smelling discharge and a lot of epithelial cells in her urine.  There was thus diagnosed urinary infection but which was not necessarily from a sexually transmitted disease.  He produced the P3 form and the treatment notes as exhibit for the complainant.  That was the end of the prosecution evidence.  When put on his defence, the appellant gave sworn testimony.  He said that he was a car washer at Katse.  That on 8th of August 2014 he left home, went to work when K K the complainant came to where he was.  He used to live with her and asked him for Kshs 2,000/= to enable her go to where her daughter was married but he did not have the money. He told her to find somewhere to borrow the same and she got annoyed. He continued working and later went home.  The next day he called her to tell her that he had got some money but she did not pick his call.  He did his work and waited for his boss who did not come that day.  He went home and the next Sunday he was paid by his boss and went and took some alcohol.  When he got drunk he heard the voice of Ellias Munyi and a Police Officer Juma Michael.  He disagreed with a customer and he was removed from the bar by the police and met the complainant PWI who claimed that he beat her.  At the police station, she claimed that he raped her which was a lie. According to him, the complainant claimed that she was beaten but could not state his name. She also said that she was defiled by Musili and later changed that name to John.  He complained that none of the members of public who pushed him out of the bar, was called to testify and that the doctor did not find any evidence of rape.  He stated that the charge was malicious. In cross examination, he maintained that the complainant said that she was raped by Musili.  He agreed that police officers said that his street name was Musili,  and agreed that people had nicknames.');

-- --------------------------------------------------------

--
-- Table structure for table `case_type`
--

CREATE TABLE IF NOT EXISTS `case_type` (
  `case_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_code` varchar(20) NOT NULL,
  `case_type` varchar(200) NOT NULL,
  PRIMARY KEY (`case_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `case_type`
--

INSERT INTO `case_type` (`case_type_id`, `case_code`, `case_type`) VALUES
(1, 'SCAO/RF', 'Appeal from decision of the Court of Appeal'),
(2, 'SCApplc', 'Application for extension of time'),
(3, 'SCApplc', 'Application for review of certification'),
(4, 'SCApplc', 'Application for enjoinment as amicus curiae/ interested party'),
(5, 'SCApplc', 'Certificate of urgency'),
(6, 'SCEP', 'Election petition'),
(7, 'SCPT', 'Petition'),
(8, 'CAppl', 'Certificate Applications (Supreme)'),
(9, 'CA', 'Civil Appeal '),
(10, 'CAppl', 'Civil Applications -Interlocutories'),
(11, 'CAppl', 'Civil Applications - Struck out appeals'),
(12, 'CAppl', 'Civil Applications - Leave to amend record of appeal'),
(13, 'CAppl', 'Civil Applications - Stay pending appeal'),
(14, 'CA', 'Commercial Appeals'),
(15, 'CrA', 'Criminal Appeal (1st appeals - Murder)'),
(16, 'CrA', 'Criminal Appeal (2nd appeals - Robbery with violance)'),
(17, 'CrA', 'Criminal Applications'),
(18, 'CA', 'Election Petition'),
(19, 'CA', 'Family Appeals'),
(20, 'CA', 'Labour Relations Appeals'),
(21, 'CA', 'Land Appeals'),
(22, 'CAppl', 'Miscellaneous Civil Applications'),
(23, 'CrA', 'Miscellaneous Criminal Applications'),
(24, 'CA', 'Notice of Appeals'),
(25, 'CA', 'Records of Appeals'),
(26, 'CA', 'Other Civil Appeals-\n(specify in details of case)'),
(27, 'CrA', 'Other Criminal Appeals- (specify in details of case)'),
(28, 'HC.CR.C.', 'Murder'),
(29, 'HC.MISC.CR.APPL', 'Criminal Applications'),
(30, 'HC.CR.A.', 'Criminal Appeals'),
(31, 'HC.CR.REV', 'Criminal Revisions'),
(32, 'HC.CR.A.', 'Criminal 2nd Appeals'),
(33, 'HC.COMM. NO.', 'Commercial Matters'),
(34, 'HC.COMM. MISC. NO.', 'Commercial High Court Misc'),
(35, 'WC', 'Winding Up Cause'),
(36, 'ITA', 'Income Tax Appeal'),
(37, 'BC', 'Bankruptcy Cause'),
(38, 'BN', 'Bankruptcy Notice'),
(39, 'HCCC', 'Civil Matters '),
(40, 'HCCC Misc.', 'Civil Miscellaneous'),
(41, 'HCCA', 'Civil Appeals/Applications'),
(42, 'F.A', 'Family Appeals'),
(43, 'F.A Misc', 'Family Miscellaneous Applicatios'),
(44, 'P & A', 'Probate & Administration'),
(45, 'D.C', 'Divorce'),
(46, 'ADOP.', 'Adoption'),
(47, 'F.A', 'Matrimonial Property'),
(48, 'J.R', 'Judicial Review'),
(49, 'J.R Misc', 'Judicial Review Misc'),
(50, 'J.R ELC', 'Judicial Review - Environmental & Land Matters'),
(51, 'PET', 'Constitutional & Human Rights Petitions'),
(52, 'ELRC-C.B.A ', 'Collective Bargaining Agreements (CBAs)'),
(53, 'ELRC-C', 'Causes Disputes'),
(54, 'ELRC-Pet.', 'ELRC Petitions'),
(55, 'ELRC-Misc. ', 'ELRC Miscellaneous Applications'),
(56, 'ELRC-Appl ', 'ELRC Appeals'),
(57, 'ELRC-J.R ', 'ELRC Judicial Review'),
(58, 'ELC', 'Environmental & Land matters'),
(59, 'ELC', 'Environmental & Land Misc'),
(60, 'ELC', 'Environmental & Land Appeals'),
(61, 'MCCR', 'Abortion, infanticide, concealing birth, killing unborn child'),
(62, 'MCCC', 'Alarming publications  '),
(63, 'MCCR', 'Arson, setting fire to crops and offences allied to arson'),
(64, 'MCCR', 'Suicide/attempted suicide and related offenses'),
(65, 'MCCR', 'Robbery/Attempted robbery'),
(66, 'MCCC', 'Bankruptcy and Winding Up Causes'),
(67, 'MCCR', 'Burglary, housebreaking, entering dwelling-house with intent to commit felony and similar offences'),
(68, 'MCCC', 'Collective Bargaining Agreements (CBAs)'),
(69, 'MCCC', 'Constitutional and Human Rights violations '),
(70, 'MCCC', 'Corruption and integrity'),
(71, 'MCCC', 'Counterfeiting trademarks  '),
(72, 'MCCR', 'Creating disturbance, drunk and disorderly, affray, unlawful assembly and riots, and other offenses against public tranquillity'),
(73, 'MCCR', 'Criminal negligence, recklessness, nuisances'),
(74, 'MCCR', 'Criminal trespass, forcible detainer'),
(75, 'MCCSucc', 'Divorce and separation '),
(76, 'MCEP', 'Election petitions'),
(77, 'MCCR', 'Fraud '),
(78, 'MCCR', 'Frauds by trustees and persons in a position of trust and false accounting  '),
(79, 'MCCR', 'Forgery (including coining)'),
(80, 'MCCR', 'Obtaining by false pretenses   '),
(81, 'MCCR', 'Impersonation, treachery'),
(82, 'MCCC', 'Immigration, and offenses under Immigration Act.'),
(83, 'MCCR', 'Grievous harm, maim, assault causing actual bodily harm, common assault'),
(84, 'MCCC', 'Income Tax Applications'),
(85, 'MCCC', 'Employment and labour cases'),
(86, '', 'Inquests'),
(87, 'MCCR', 'Kidnapping and Abduction'),
(88, 'MCCR', 'Detention of female for immoral purposes/eloping '),
(89, 'MCCC', 'Libel, defamation, slander'),
(90, 'MCCR', 'Malicious damage, injury to property, goods etc.'),
(91, 'MCCR', 'Manslaughter'),
(92, 'MCCR', 'Obstruction of justice: perjury, conspiracy to defeat justice, '),
(93, 'MCCC', 'Offences allied to morality including prostitution, bigamy, marriage with fraudulent intent'),
(94, 'MCCR', 'Escapes from custody, resisting arrest and miscellaneous offenses against the administration of justice and public authority'),
(95, 'MCCC', 'Offences relating to alcoholic drinks control and licensing'),
(96, 'MCCC', 'Offenses under Public Health Act'),
(97, 'MCCC', 'Personal injury (Running down)'),
(98, 'MCCC', 'Personal injury (Workmen''s Compensation) '),
(99, 'MCCR', 'Possession of firearms, explosives and related'),
(100, 'MCCC', 'Possession of narcotic drugs and psychotropic substances (cannabis sativa, cocaine, heroin etc.)'),
(101, 'MCCR', 'Preparations/conspiracy to commit felony, neglect to prevent a felony, unlawful oaths, threats to kill'),
(102, 'MCCR', 'Robbery with violence/ attempted robbery with violence'),
(103, 'MCCR', 'Sexual offenses (defilement, attempted defilement, rape, gang rape, incest, indecent acts with a child or adult, sexual harassment and others)'),
(104, 'MCCR', 'Stock theft, and injuring, killing or maiming of a domestic animal with intent to steal'),
(105, 'MCSucc', 'Succession (Probate & Administration - P&A)'),
(106, 'MCCR', 'Terrorism, piracy, radicalization and related offenses'),
(107, 'MCCR', 'Theft, handling stolen or suspected stolen property/goods, possession of government/public stores, and related offenses'),
(108, 'MCCR', 'Stealing, stealing by servant and related offenses'),
(109, 'MCTR', 'Traffic'),
(110, 'MCCC', 'Wildlife and forestry offenses'),
(111, 'MCCMisc', 'Other civil-\n(specify in details of case)'),
(112, 'MCCRMisc', 'Other criminal- (specify in details of case)'),
(113, 'CNCP', 'Adoption '),
(114, 'CIL', 'Assault under section 251 of penal code'),
(115, 'CIL', 'Breaking into building under section 306(9) of penal code'),
(116, 'CNCP', 'Custody and maintenance'),
(117, 'CNCP', 'Child negligence under section 127 (1)(6)'),
(118, 'CCC', 'Creating disturbance'),
(119, 'CIL', 'Defilement under section 8(1) of sexual offences act'),
(120, 'CNCP', 'Extension of parental responsibility'),
(121, 'CNCP', 'Guardianship'),
(122, 'CIL', 'Felony '),
(123, 'CNCP', 'Foster care protection '),
(124, 'CIL', 'Possession of narcotic drugs contrary to section 31(d) of penal code'),
(125, 'CNCP', 'Protection and case'),
(126, 'CCC', 'Probate and Administration'),
(127, 'CIL', 'Stealing under section 256 of penal code'),
(128, 'CNCP', 'Subjecting a child into labour under section 20 of children’s act '),
(129, 'CCC', 'Miscellaneous application'),
(130, 'CCC', 'Others- (specify in details of case)'),
(131, 'CIL', 'Child in conflict with the law'),
(132, 'CIL', 'Child stealing'),
(133, 'CNCP', 'Children in need of care and protection, including orphaned and vulnerable children, children subjected to harmful cultural practices (FGM and early marriages), torture, prostitution, trafficking, and'),
(134, 'ACCR', 'Abuse of office under section (U/S) 46 of as read with 5(48) Anticorruption and Economics\nCrimes Act (ACECA) 2003.\n'),
(135, 'ACCR', 'Breach of trust affecting public in discharge of office U/S 127 of penal code'),
(136, 'ACCR', 'Conspiracy to commit an offence of economic crime U/S 47(1)(b) as read with ACECA'),
(137, 'ACCR', 'Corruptly offering a benefit U/S 39(3)(b) as read with ACECA'),
(138, 'ACCR', 'Corruptly giving a benefit U/S 39(3)(b) as read with ACECA'),
(139, 'ACCR', 'Corruptly soliciting for a benefit U/S 48(1) as read with ACECA '),
(140, 'ACCR', 'Disobedience of statutory duties U/S 130 of penal code '),
(141, 'ACCR', 'Destroying evidence U/S 66(1) as read with ACECA'),
(142, 'ACCR', 'Failure to disclose a private interest to one’s principal U/S 42(1) as read with ACECA'),
(143, 'ACCR', 'False accounting by a public officer U/S  331(2) of penal code'),
(144, 'ACCR', 'False assumption of authority U/S 104(c) as read with ACECA'),
(145, 'ACCR', 'Fraudulent acquisition of public revenue U/S 45(1)(a) as read with ACECA'),
(146, 'ACCR', 'Fraudulent acquisition of public property U/S 45(1)(a) as read with ACECA'),
(147, 'ACCR', 'Deceiving principal -Knowingly giving false statement for one’s principal U/S  41(2) as read with ACECA'),
(148, 'ACCR', 'Impersonating an investigator U/S 34(1) as read with ACECA'),
(149, 'ACCR', 'Knowingly deceiving the principal U/S  41 as read with ACECA'),
(150, 'ACCR', 'Uttering false document U/S 352 of penal code'),
(151, 'ACCR', 'Willful failure to comply with the law relating to management of public funds U/S 45(2) as read with ACECA'),
(152, 'ACCR', 'Willful failure to comply with law relating to procurement U/S 45(2)(b) as read with ACECA'),
(153, 'ACCR', 'Miscellaneous ACCR application'),
(154, 'ACCR', 'Others - (specify in details of case)'),
(155, 'KCC', 'Divorce'),
(156, 'KCC', 'Marriages (including custody/maintenance/matrimonial property)'),
(157, 'KCC', 'Misc. application (including certificate of urgency, advisory opinion etc.)'),
(158, 'KCC', 'Registration of divorce '),
(159, 'KCC', 'Registration of marriage '),
(160, 'KCC', 'Succession (including letters of administration, distribution, wills, gifts etc.)  '),
(161, 'KCC', 'Other matters (capture in details of case)');

-- --------------------------------------------------------

--
-- Table structure for table `court_names`
--

CREATE TABLE IF NOT EXISTS `court_names` (
  `court_id` int(11) NOT NULL,
  `court_name` varchar(200) NOT NULL,
  `court_rank_id` int(11) NOT NULL,
  PRIMARY KEY (`court_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court_names`
--

INSERT INTO `court_names` (`court_id`, `court_name`, `court_rank_id`) VALUES
(13001, 'Busia High Court', 3),
(13003, 'Kakamega High Court', 3),
(13004, 'Kisumu High Court', 3),
(13005, 'Kisumu Industrial Court', 3),
(14001, 'Bondo Magistrate Court', 4),
(14002, 'Busia Magistrate Court', 4),
(14003, 'Butali Magistrate Court', 4),
(14004, 'Butere Magistrate Court', 4),
(14005, 'Kakamega Magistrate Court', 4),
(14006, 'Kisumu Magistrate Court', 4),
(14007, 'Maseno Magistrate Court', 4),
(14008, 'Milimani Commercial Magistrate Court', 4),
(14009, 'Mumias Magistrate Court', 4),
(14010, 'Siaya Magistrate Court', 4),
(14011, 'Ukwala Magistrate Court', 4),
(14012, 'Vihiga Magistrate Court', 4),
(14013, 'Winam Magistrate Court', 4),
(15001, 'Kakamega Kadhi Court', 5),
(15002, 'Kisumu Kadhi Court', 5),
(15003, 'Nairobi Kadhi Court', 5),
(16001, 'Sio Port- (Busia Magistrate Court)', 6),
(22002, 'Nyeri Court of Appeal', 2),
(23001, 'Milimani Criminal Division', 3),
(23006, 'Milimani Constitutional Law & Human Rights Division', 3),
(23007, 'Muranga High Court', 3),
(23008, 'Nyeri High Court', 3),
(23009, 'Nyeri Industrial Court', 3),
(24014, 'Baricho Magistrate Court', 4),
(24015, 'Gichugu Magistrate Court', 4),
(24016, 'Isiolo Magistrate Court', 4),
(24017, 'Kandara Magistrate Court', 4),
(24018, 'Kangema Magistrate Court', 4),
(24019, 'Karatina Magistrate Court', 4),
(24020, 'Kigumo Magistrate Court', 4),
(24022, 'Moyale Magistrate Court', 4),
(24023, 'Maralal Magistrate Court', 4),
(24024, 'Marsabit Magistrate Court', 4),
(24025, 'Mukurwe-ini Magistrate Court', 4),
(24026, 'Muranga Magistrate Court', 4),
(24027, 'Nanyuki Magistrate Court', 4),
(24028, 'Nyeri Magistrate Court', 4),
(24029, 'Othaya Magistrate Court', 4),
(24030, 'Milimani Childrens Division', 4),
(25004, 'Isiolo Kadhi Court', 5),
(25005, 'Marsabit Kadhi Court', 5),
(25006, 'Moyale Kadhi Court', 5),
(25007, 'Muranga Kadhi Court', 5),
(25008, 'Nyeri Kadhi Court', 5),
(26002, 'Baragoi- (Maralal Magistrate Court)', 6),
(26003, 'Ngobit- (Nanyuki Magistrate Court)', 6),
(26004, 'North Horr- (Marsabit Magistrate Court)', 6),
(26005, 'Loiyangalani- (Marsabit Magistrate Court)', 6),
(26006, 'Merti- (Isiolo Magistrate Court)', 6),
(26007, 'Archers Post- (Isiolo Magistrate Court)', 6),
(26008, 'Wamba- (Maralal Magistrate Court)', 6),
(26009, 'Laisamis Merille- (Marsabit Magistrate Court)', 6),
(33010, 'Embu High Court', 3),
(33011, 'Milimani Family Division', 3),
(33012, 'Kerugoya High Court', 3),
(33013, 'Machakos High Court', 3),
(33014, 'Meru High Court', 3),
(34031, 'Kilungu Nunguni Magistrate Court', 4),
(34032, 'Maua Magistrate Court', 4),
(34033, 'Chuka Magistrate Court', 4),
(34034, 'Embu Magistrate Court', 4),
(34035, 'Kangundo Magistrate Court', 4),
(34036, 'Kerugoya Magistrate Court', 4),
(34037, 'Makueni Magistrate Court', 4),
(34038, 'Machakos Magistrate Court', 4),
(34039, 'Makindu Magistrate Court', 4),
(34040, 'Marimanti Magistrate Court', 4),
(34041, 'Meru Magistrate Court', 4),
(34042, 'Nkubu Magistrate Court', 4),
(34043, 'Runyenjes Magistrate Court', 4),
(34044, 'Siakago Magistrate Court', 4),
(34045, 'Tawa Magistrate Court', 4),
(34046, 'Tigania Magistrate Court', 4),
(34047, 'Wanguru Magistrate Court', 4),
(34048, 'Githongo Magistrate Court', 4),
(35009, 'Machakos Kadhi Court', 5),
(36012, 'Karaba- (Wanguru Magistrate Court)', 6),
(42003, 'Eldoret Court of Appeal', 2),
(42004, 'Nairobi Court of Appeal', 2),
(43015, 'Bungoma High Court', 3),
(43016, 'Eldoret High Court', 3),
(43017, 'Nairobi Industrial Court', 3),
(43018, 'Kitale High Court', 3),
(44049, 'Bungoma Magistrate Court', 4),
(44050, 'Eldoret Magistrate Court', 4),
(44051, 'Hamisi Magistrate Court', 4),
(44052, 'Iten Magistrate Court', 4),
(44053, 'Kapenguria Magistrate Court', 4),
(44054, 'Kapsabet Magistrate Court', 4),
(44055, 'Lodwar Magistrate Court', 4),
(44056, 'Kimilili Magistrate Court', 4),
(44057, 'Kitale Magistrate Court', 4),
(44058, 'Milimani Magistrate Court', 4),
(44059, 'Sirisia Magistrate Court', 4),
(44060, 'Webuye Magistrate Court', 4),
(44061, 'City Court', 4),
(44062, 'Kakuma Magistrate Court', 4),
(45010, 'Bungoma Kadhi Court', 5),
(45011, 'Eldoret Kadhi Court', 5),
(45012, 'Kitale Kadhi Court', 5),
(45013, 'Lodwar Kadhi Court', 5),
(46013, 'Lokichar-(Lodwar Magistrate Court)', 6),
(46014, 'Lokitaung- (Lodwar Magistrate Court)', 6),
(46015, 'Songhor- (Kapsabet Magistrate Court)', 6),
(46016, 'Kapsokwony- (Kimilili Magistrate Court)', 6),
(52005, 'Malindi Court of Appeal', 2),
(53019, 'Milimani Civil Division', 3),
(53020, 'Malindi High Court', 3),
(53021, 'Mombasa High Court', 3),
(53022, 'Mombasa Industrial Court', 3),
(53035, 'Voi High Court', 3),
(54063, 'Kaloleni Magistrate Court', 4),
(54064, 'Kilifi Magistrate Court', 4),
(54065, 'Kwale Magistrate Court', 4),
(54066, 'Makadara Magistrate Court', 4),
(54067, 'Malindi Magistrate Court', 4),
(54068, 'Mariakani Magistrate Court', 4),
(54069, 'Mombasa Magistrate Court', 4),
(54070, 'Shanzu Magistrate Court', 4),
(54071, 'Taveta Magistrate Court', 4),
(54072, 'Tononoka Magistrate Court', 4),
(54073, 'Voi Magistrate Court', 4),
(54074, 'Wundanyi Magistrate Court', 4),
(55014, 'Kilifi Kadhi Court', 5),
(55015, 'Kwale Kadhi Court', 5),
(55016, 'Malindi Kadhi Court', 5),
(55017, 'Mombasa Kadhi Court', 5),
(55018, 'Voi Kadhi Court', 5),
(56017, 'Kasigau- (Voi Magistrate Court)', 6),
(63023, 'Milimani Judicial Review Division', 3),
(63024, 'Kericho High Court', 3),
(63025, 'Kericho Industrial Court', 3),
(63026, 'Naivasha High Court', 3),
(63027, 'Nakuru High Court', 3),
(63028, 'Nakuru Industrial Court', 3),
(64075, 'Bomet Magistrate Court', 4),
(64076, 'Eldama Ravine Magistrate Court', 4),
(64077, 'Engineer Magistrate Court', 4),
(64078, 'Kabarnet Magistrate Court', 4),
(64079, 'Kajiado Magistrate Court', 4),
(64080, 'Kericho Magistrate Court', 4),
(64081, 'Kiambu Magistrate Court', 4),
(64082, 'Kibera Magistrate Court', 4),
(64083, 'Kikuyu Magistrate Court', 4),
(64084, 'Limuru Magistrate Court', 4),
(64085, 'Mavoko Magistrate Court', 4),
(64086, 'Molo Magistrate Court', 4),
(64087, 'Naivasha Magistrate Court', 4),
(64088, 'Nakuru Magistrate Court', 4),
(64089, 'Narok Magistrate Court', 4),
(64090, 'Nyahururu Magistrate Court', 4),
(64091, 'Sotik Magistrate Court', 4),
(65019, 'Kajiado Kadhi Court', 5),
(65020, 'Nakuru Kadhi Court', 5),
(66018, 'Rururuti- (Nyahururu Magistrate Court)', 6),
(66019, 'Kuresoi- (Molo Magistrate Court)', 6),
(66020, 'Olokurto- (Narok Magistrate Court)', 6),
(66021, 'Kisanana- (Eldama Ravine Magistrate Court)', 6),
(66022, 'Loitoktok- (Kajiado Magistrate Court)', 6),
(66023, 'East Pokot- (Kabarnet Magistrate Court)', 6),
(73029, 'Milimani Commerical & Admirality Division', 3),
(73030, 'Homabay High Court', 3),
(73031, 'Kisii High Court', 3),
(73032, 'Migori High Court', 3),
(74092, 'Homabay Magistrate Court', 4),
(74093, 'Gatundu Magistrate Court', 4),
(74094, 'Githunguri Magistrate Court', 4),
(74095, 'Kehancha Magistrate Court', 4),
(74096, 'Keroka Magistrate Court', 4),
(74097, 'Kilgoris Magistrate Court', 4),
(74098, 'Kisii Magistrate Court', 4),
(74099, 'Migori Magistrate Court', 4),
(74100, 'Ndhiwa Magistrate Court', 4),
(74101, 'Nyamira Magistrate Court', 4),
(74102, 'Nyando Magistrate Court', 4),
(74103, 'Ogembo Magistrate Court', 4),
(74104, 'Oyugis Magistrate Court', 4),
(74105, 'Rongo Magistrate Court', 4),
(74106, 'Tamu Magistrate Court', 4),
(74107, 'Mbita Magistrate Court', 4),
(75022, 'Kibera Kadhi Court', 5),
(75023, 'Migori Kadhi Court', 5),
(76024, 'Nyatike- (Migori Magistrate Court)', 6),
(76025, 'Etago- (Ogembo Magistrate Court)', 6),
(76026, 'Murua Dikir Transmara East- (Kilgoris Magistrate Court)', 6),
(81001, 'Supreme Court', 1),
(82937, 'wszfgxfggggfs', 0),
(83033, 'Garissa High Court', 3),
(83034, 'Milimani Environment & Land Division', 3),
(84108, 'Garissa Magistrate Court', 4),
(84109, 'Garsen Magistrate Court', 4),
(84110, 'Hola Magistrate Court', 4),
(84111, 'Kithimani Magistrate Court', 4),
(84112, 'Kitui Magistrate Court', 4),
(84113, 'Kyuso Magistrate Court', 4),
(84114, 'Lamu Magistrate Court', 4),
(84115, 'Mandera Magistrate Court', 4),
(84116, 'Mutumo Magistrate Court', 4),
(84117, 'Mwingi Magistrate Court', 4),
(84118, 'Thika Magistrate Court', 4),
(84119, 'Wajir Magistrate Court', 4),
(85024, 'Garissa Kadhi Court', 5),
(85025, 'Garsen Kadhi Court', 5),
(85026, 'Hola Kadhi Court', 5),
(85027, 'Lamu Kadhi Court', 5),
(85028, 'Mandera Kadhi Court', 5),
(85029, 'Thika Kadhi Court', 5),
(85030, 'Wajir Kadhi Court', 5),
(85031, 'Kitui Kadhi Court', 5),
(86027, 'Faza Islands- (Lamu Magistrate Court)', 6),
(86029, 'Habaswein- (Wajir Magistrate Court)', 6),
(86033, 'Daadab- (Garissa Magistrate Court)', 6),
(86034, 'Modogashe- (Garissa Magistrate Court)', 6),
(86035, 'Ijara- (Garissa Magistrate Court)', 6),
(86036, 'Bangale- (Garissa Magistrate Court)', 6),
(86037, 'Kipini- (Garsen Magistrate Court)', 6),
(86038, 'Zombe- (Kitui Magistrate Court)', 6),
(86039, 'Mpeketoni- (Lamu Magistrate Court)', 6);

-- --------------------------------------------------------

--
-- Table structure for table `court_ranks`
--

CREATE TABLE IF NOT EXISTS `court_ranks` (
  `court_rank_id` varchar(100) NOT NULL,
  `court_rank_name` varchar(200) NOT NULL,
  PRIMARY KEY (`court_rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court_ranks`
--

INSERT INTO `court_ranks` (`court_rank_id`, `court_rank_name`) VALUES
('1', 'Supreme Court'),
('2', 'Court of Appeal'),
('3', 'High Court/Divisional Courts'),
('4', 'Magistrate Courts'),
('5', 'Kadhi courts'),
('6', 'Mobile courts');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE IF NOT EXISTS `indicators` (
  `indicator_id` int(11) NOT NULL AUTO_INCREMENT,
  `indicators` varchar(200) NOT NULL,
  PRIMARY KEY (`indicator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`indicator_id`, `indicators`) VALUES
(1, 'Total Number of filed cases'),
(2, 'Number of closed cases'),
(3, 'Number of pending cases'),
(4, 'Average time of solving a case');

-- --------------------------------------------------------

--
-- Table structure for table `judgements`
--

CREATE TABLE IF NOT EXISTS `judgements` (
  `judgement_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_num` varchar(200) NOT NULL,
  `judgement` longtext NOT NULL,
  `delivery_date` date NOT NULL,
  PRIMARY KEY (`judgement_id`),
  UNIQUE KEY `case_num` (`case_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `judgements`
--

INSERT INTO `judgements` (`judgement_id`, `case_num`, `judgement`, `delivery_date`) VALUES
(2, 'HCCRA/16/2015', 'On submissions, I agree with the respondent’s submissions on three areas:Failure to produce the pants is not fatal.  This is rebutted by PW3 – the clinical officer’s examination of PW1 and his conclusion that there was penetration, ejaculation and spermatozoa.Failure to produce documentary evidence to support age is not fatal especially were age was not in contention.  PW1, PW2 and PW3 gave the age to be 12 years.  See the judgment of David Kiso –vs- Republic [2016] e KLR.Section 124 of Evidence Act in respect a minor victim need not be corroborated.On re-evaluation of the proceeding of the lower court by this court on testimonies of all six witnesses, leads me to find the witnesses, in their various testimony, proved beyond reasonable doubt that the accused intentionally defiled a minor L G N then aged 12 years. I therefore find that this appeal has no merit. Accordingly, the appeal or the petition of appeal dated 2nd September, 2015 be and is hereby dismissed.', '2016-05-04'),
(3, 'HCCRA/17/2015', 'On submissions, the appellant, in effect, abandoned his grounds of appeal dated 6th October, 2013 by introducing different grounds, i.e that the charge sheet ought to have read indecent assault, instead of attempted defilement. I agree with the respondent submissions that in attempted defilement, there is no issue of penetration.Equally, the appellant pursued different grounds introduced at the hearing, and this abandoned the ones on record.Section 124 of Evidence act, permits the minor victims evidence to be relied on without corroboration P.W.2 found the accused making attempt to rape her daughter T J.On re-evaluation of the evidence in the proceedings of the lower court on testimonies of the three (3) witnesses, leads one to find that those witnesses proved beyond reasonable doubt that the accused attempted to defile P.W.1, a minor aged 12 years.  I therefore find that this appeal has no merit.Accordingly, the appeal dated 6th October, 2013 be and is hereby dismissed.', '2016-05-04'),
(4, 'HCCRA/11/2015', 'This is a first appellate court. As expected, I have analyzed and evaluated afresh all the evidence adduced before the lower court and have drawn my own conclusions while bearing in mind that I neither saw nor heard any of the witnesses. I will be guided by the celebrated Case of OKENO VRS. REPUBLIC 1972 EA 32.The contention by the appellant that the new charge was not read to him is not true. The record indicates that on 30th July 2012 the prosecutor applied to substitute the charge. The application was allowed and the appellant was called upon to plead and which he did in Kimeru. This ground of appeal has no basis.The allegation by the appellant that he was accused falsely for the complainant''s mother owed him money cannot be true. When the complainant’s mother initially testified, he claimed that he was owed Kshs. 3000 by her husband. When she was recalled later, he changed and alleged that she was the one who owed the money.My evaluation of the entire evidence on record does not disclose any misplaced evidence as contended by the appellant. There was overwhelming evidence against him. His appeal is dismissed.The sentence meted out cannot be disturbed for he was sentenced to the minimum provided by the law.The appellant shall serve the sentence meted out by the learned trial magistrate.', '2016-05-03'),
(5, 'HCCRA/12/2015', 'This is a first appellate court as expected, I have analyzed and evaluated afresh all the evidence adduced before the lower court and I have drawn my own conclusions while bearing in mind that I neither saw nor heard any of the witnesses. I will be guided by the celebrated Case of OKENO VRS. REPUBLIC 1972 EA 32.Before I address the grounds raised by the appellant, I wish to comment on the way the charges were drafted. It is incorrect to cite  a nonexistent section in the substantive charge he was accused of offending section  "...9(1) (2) " while in the alternative charge he is accused of offending section  ii(iii) Roman numbers. In the substantive charge ought to have been contrary to section 9(2)... and if the drafter wanted to include a definition section then it ought to have read ".. contrary to section 9(1) as read with section 9(2)..." Since there was no prejudice to the appellant I will say no more. I however find that in the alternative charge there would have been a miscarriage of justice if he had been convicted of the same. Our sections are not numbered as indicated thereof. The trial court has a duty to ensure that charges are correctly drafted before reading the same to accused persons to avoid issues of correctness of the same arising when it is too late. In the instant case I find that no miscarriage of justice occurred.The appellant contended that he did not follow the proceedings due to the language used. On 18/9/2014 when the plea was taken, the record indicates that the interpretation was done in Kimeru. Though the record does not show who did the actual interpretation a court clerk called Penina is shown to have been present. The appellant responded to the charge before a plea of  guilty was entered. He subsequently changed the same. During the hearing of the case all the witnesses except the complainant testified in Kiswahili and the court clerk Penina was present throughout. When the appellant was placed on his defence he tendered a defence that indicate he was able to follow the proceedings. His claim on the issue of language is not tenable.It is now settled law that where an accused alleges that his  right has been breached the remedy lies in a civil court for damages and not in an acquittal. This was decided in the case of Julius Kamau Mbugua v Republic [2010] eKLR where the court of Appeal on the issue said:"The alleged unlawful detention does not exonerate the appellant from the serious crime he is alleged to have committed. The breach could logically give rise to a civil remedy – money compensation as stipulated in Section 72 (6). That is the appropriate remedy which the appellant should have sought in a different forum." The contention by the appellant that he was detained in police custody more than the law requires can only be addressed in a civil court. It is not conceivable that in every case there must be an eye witness. Sexual offences in particular are perpetrated in secrecy and the only duty the court has is to ensure that the evidence adduced is sufficient. In the instant case my perusal of the record show that the learned trial magistrate had adequate evidence at his disposal. The conviction was based on sufficient evidence on record.After his conviction the appellant was ordered to be detained under section 167 (1) of the Criminal Procedure Code. I wish to make the following observations: A sick person''s place is at the hospital and not in prison. I find section 167 of the penal code discriminative to people with mental illness for prescribing their detention to be in prison instead of a health facility and for the detention to be indeterminate. This offends articles 25 and 29 (f) of the Constitution. Article 25 provide as follows: 25. Despite any other provision in this Constitution, the following rights and fundamental freedoms shall not be limited–– (a) freedom from torture and cruel, inhuman or degrading treatment or punishment; It is my opinion that keeping a sick person for an indeterminate period in a prison is  cruel, inhuman and degrading treatment. Article 29 (f) of the constitution provide as follows:29. Every person has the right to freedom and security of the person, which includes the right not to be—......................(f) treated or punished in a cruel, inhuman or degrading manner.The order envisaged under section 167 (1) of the Criminal Procedure Code is a punishment. Any punishment that is cannot be determined from the onset is cruel, inhuman and degrading.I therefore make a finding that this section is unconstitutional to the extent it offends the said articles of the constitution.It is now the duty of our legislature to act with haste and bring this section in harmony with the constitution.', '2016-05-01'),
(6, 'HCCRA/23/2015', 'This being a first appeal, this court is mandated to analyse and re-evaluate the evidence afresh in line with the holding in the case of Odhiambo vs Republic Cr App No 280 of 2004 (2005) 1 KLR where the Court of Appeal held that:- “On a first appeal, the court is mandated to look at the evidence adduced before the trial afresh, re-evaluate and reassess it and reach its own independent conclusion.  However, it must warn itself that it did not have the benefit of seeing the witnesses when they testified as the trial court did and therefore cannot tell their demeanour”.However, as can be seen from the Appellant’s Mitigation Grounds of Appeal, he was not challenging the fact that the Prosecution had proved its case to the required standard. No value then would be added in analysing the evidence that was adduced during trial.The question that this court was being asked to consider and determine was whether or not the Appellant had advanced good reasons to persuade it to set aside the aforesaid penalty and instead substitute it with a non-custodial sentence. This court had due regard to the provisions of Section 95 of the Wildlife Conservation and Management Act under which the Appellant was charged and convicted. The same stipulates as follows:- “Any person who keeps or is found in possession of a wildlife trophy or deals in a wildlife trophy, or manufactures any item from a trophy without permit issued under this Act or is exempted in accordance with any other provision of this Act, commits an offence and shall be liable to a fine of not less than(emphasis court) one million shillings or imprisonment for a term not less that(emphasis court) five years or to both such imprisonment and fine.”It is evident that the Trial Magistrate had the option of sentencing the Appellant to five (5) years imprisonment and also to fine him the sum of Kshs 1,000,000/=. He, however, adopted the more lenient option and fined him Kshs 1,000,000/= or in default, to serve five (5) years imprisonment.The court agreed with the submissions by the State that the section under which the Appellant was charged and convicted is couched in mandatory terms. It does not give a trial court discretion in respect of the sentence it can mete out or the amount of fine it can give. In the same breathe, an appellate court has no jurisdiction to interfere with the finding of a trial court unless it can be shown that the sentence that was given by such a trial court was manifestly excessive or it was unlawful.The Appellant did not demonstrate that the number of years of imprisonment or the fine that was imposed by the Trial Court were unlawful or manifestly excessive. It is unfortunate that he was remorseful or unwell as he contended.In view of the minimum sentence and fine given in Section 95 of the Wildlife Conservation and Management Act, this court’s hands are tied and cannot set aside the penalty that the Learned Trial Magistrate gave him and substitute it with a non-custodial sentence.For the foregoing reasons, this court hereby declines to quash the sentence or fine that was meted upon the Appellant by the Trial Court and instead affirms the same imposed on him as they were both lawful. However, as the Trial Court did not make a finding on Count II as it ought to have done, this court hereby directs that the same be kept in abeyance', '2016-04-12'),
(7, 'HCCRA/24/2015', 'This is a first appellate court.   As expected, I have analyzed and evaluated afresh all the evidence adduced before the lower court and I have drawn my own conclusions while bearing in mind that I neither saw nor heard any of the witnesses. I will be guided by the celebrated Case of OKENO VRS. REPUBLIC 1972 EA 32. The record indicates that all the prosecution witnesses testified in Kiswahili. It is not indicated whether any interpretation  was done. However since the appellant asked the witnesses questions, am satisfied that he was able to follow the proceedings and fully participate in the trial. It is important for the trial court where interpretation is done, to indicate so  and the language used. In the instant case I make a finding that on the issue of language no miscarriage of justice was occasioned by the failure I have observed. During his cross examination of his wife, Ruth Kaloki (PW2) the appellant did not ask her of any existing grudge or ask any witness for that matter. He also did not bring up this issue in his defence. This was therefore not available for the learned trial magistrate to make a finding on. I dismiss it as an afterthought. From my reading of the judgment of the trial court, I find that the appellant''s defence was considered in spite of his contention that it was not. I have looked at the circumstances the prosecution allege the incident took place. The complainant was in a room with three other siblings one is left wondering why they did not hear any commotion. Similarly the complainant''s mother testified that she did not hear the appellant leave their bed and room. These are reasonable concerns especially if we consider that the complainant said that the incident took place at about 9 pm or thereabouts. These concerns would have  been dispelled one way or the other had the DNA results been availed to the court. After the complainant delivered  a baby while this matter was still pending in the trial court, the prosecutor applied to be allowed to take samples from the appellant for DNA test. The application was allowed with no objection from the appellant. He is therefore right to complain that there was no exhibit that linked him to the offence. There were several adjournments occasioned by the delay in releasing the DNA results. Finally the prosecution closed their case without availing the results or even making a comment about it. The judgment of the trial magistrate was equally silent about it. The DNA results would have been the best evidence to either link the appellant to the offence or exonerate him altogether. Failure by the prosecution to produce the results was not fair in the interest of justice especially given the circumstances of the alleged offence I had discussed earlier. For this reason I am persuaded to allow the appeal. I therefore quash the conviction and set aside the sentence meted out by the trial court. The appellant shall be set at liberty unless if otherwise lawfully held.', '2016-04-12'),
(8, 'HCCRA/31/2015', ' This is a first appeal, and as such I am required as a first appellate court to reconsider the evidence on record and come to my own conclusions and inferences.  See the case of Okeno – Versus – Republic (1972) EA 32. I have perused the entire record.  I have also considered the submissions of the appellant and the prosecuting counsel Mr. Okemwa.  PW1 MWM the mother of the complainant, was informed by PW2 Zipporah Mutua that her daughter had been defiled by the appellant.  Zipporah Mutua PW2 did not see the appellant defiling the complainant.  Her evidence was that she saw the complainant walking in an unusual manner and on enquiry and removing her pant, she saw what appeared like sperms or semen coming from her private parts and buttocks. I observe that though the complainant, a young child of less than 3 years was taken for medical examination, the doctor found neither traces of semen or any indication of sexual assault. PW2 Zipporah Mutua also said that she called her husband David Molongo who came after a short while and interrogated the appellant who admitted committing the offence.  However this very important witness was not called by the prosecution to testify in court, nor was any reason given for the failure to call this witness.  As was stated in a case of Bukenya – Versus – Uganda (1972) EA 549, such failure of the prosecution to to call a crucial witness without explanation may under the rules of evidence, leave the court with no option but to make an adverse inference on the prosecution case. In my view, other than the fact that the evidence of PW2 did not establish a sexual assault as the medical evidence was not supportive of her version, the failure of the prosecution to call David Mulongo the husband of PW2 to testify also added to the inability of the prosecution to discharge their burden of proving the appellant guilty beyond any reasonable doubt. In addition to the above, the appellant gave an unsworn testimony in his defence.  He explained that he was a herdsman in the homestead and that his employers had failed to pay him his Sh. 10,000/= for having worked for 10 months, and his demand for payment must have been the reason for implicating him.  His story appears to be credible. On the judgment of the trial magistrate, in my view the learned magistrate did not weigh the evidence of the prosecution against that of the defence before convicting on the alternative charge.  The magistrate rightly found that there was no evidence to support the charge of defilement.  He however convicted on the alternative charge without any evidence at all.  He appears to have shifted the burden of proof to the appellant with regard to the alternative count when before convicting he merely stated as follows:- “Although the accused alleged that he was framed up with this offence after demanding for his wages, I find that this allegation is false.  The complainant''s mother was away and therefore it is not possible such demand was made and the complainant''s mother decided to frame him with the offence.  He never cross examined PW2 about this allegation.  In view of the entire evidence, I am satisfied that the offence of indecent act with a child has been proven thus I find the accused guilty and convict him accordingly under Section 215 of the Criminal Procedure Code.” From the above summing up of the magistrate, it is clear that because the court was of the view that what the appellant said in his defence was untrue, then he must be convicted of the alternative count without any evidence to support that indeed he committed such an indecent act.  Even assuming that what the appellant was saying in his defence was untrue, the burden was always on the prosecution to establish the ingredients of the offence alleged.  A person cannot be convicted because of merely the fact that what he has said is untrue.  The prosecution in this case did not either prove the main charge or the alternative charge, on the evidence on record. The ingredients of the offence charged have to be proved by the prosecution, whether or not the accused says anything. From the evidence on record, the prosecution did not prove that the appellant did any act against the complainant which was indecent.  He was thus entitled to an acquittal.  Learned Prosecuting Counsel Mr. Okemwa conceded to the appeal.  In my view, he was correct in doing so. Consequently, I allow the appeal, quash the conviction and set aside the sentence.  I order that the appellant be set at liberty forthwith unless otherwise lawfully held. ', '2016-05-17'),
(9, 'HCCRA/32/2015', 'This is a first Appeal. It is clear to me that although PW1 was a young lady aged 14 years; she was behaving like a full grown up woman who was already engaging and enjoying sex with men.  She seems not to have been complaining about the incident.  She had only gone to the appellant''s house to have sex and go back home only for her brothers to interfere.  She opted to ran away to the appellant''s parents'' home where they continued having sex for three days.  She then decided to go home.  She told her father where she was.It is true that under the Sexual Offences Act, a child below 18 years old cannot give consent to sexual intercourse. However, where the child behaves like an adult and willingly sneaks into men''s houses for purposes of having sex, the court ought to treat such a child as a grown up who knows what she is doing. The appellant was 23 years old when the incident occurred as per the pre bail report.  It would be unfair to have the appellant serve 20 years behind bars yet PW1 was after sex from him.  The evidence does not show that the appellant knew that PW1was a student or that the appellant took advantage of PW1 being a young girl.  It is clear to me that PW1 started engaging in sex way before that date.  It is possible that PW3 saw his sister enjoying sex with the appellant at 1.00 am.          Section 8 (6) of the Sexual Offences Act states as follows: -“(6) The belief referred to in subsection (5) (b) is to be determined having regard to all the circumstances, including any steps the accused person took to ascertain the age of the complainant.” It is always assumed that for the defence under Section 8(5) to apply courts should have regard to the circumstances of the case including the steps taken by the accused.  This does not mean that the accused has to prove beyond reasonable doubt that he took steps to ascertain the age of the complainant:  It should not be the case that the accused should prove that he asked the complainant ''s age, that he made inquiries about her age either at her home or school or from her friends.  It should not be lost that the accused has a right to remain silent and not testify under Article 50 (1) of the Constitution.  What would happen if the accused opts to exercise such a right:  The prosecution is expected to prove its case beyond reasonable doubt.  It should not be expected that the accused would explain how he went into great length to find out the age of the complainant.  What is of great importance is the circumstances of the case.  The behaviour of the complainant and his/her evidence in court usually gives the circumstances of the case.The circumstances of this case is that the complainant had known the appellant for a about three years, they had met on Christmas day.  During cross examination, the complainant stated as follows: -“I came to see you, have sex then I go back home.  When my brothers came you were inside your house.  You are Martin Charo.  On 2.1.2012 we were together.  You were not checked by the doctor.”That is the complainant''s evidence on cross examination.  The question then is, does the circumstances of the case paint a picture of someone who was  defiled?  Can we say that the appellant took advantage of a young  girl and defiled her? The circumstances clearly show that it is the complainant who went to the appellant''s house to have sex and then go home.  She even dodged her brothers.  When her brothers went there at night to collect her, she opted to remain with the appellant.  If she was a young girl then why did she go to the appellant''s home to have sex?  I believe her brothers also knew that the appellant was her boy friend.The offence of defilement should not be limited to age and penetration.  If those were to be taken as conclusive proof of defilement, then young girls would freely engage in sex and then opt to report to the police whenever they disagree with their boyfriends.  The conduct of the complainant plays a fundamental role in a defilement case.  One can easily conclude that the complainant was defiled after hearing her evidence.  Several issues come into focus.  Did the complainant report the defilement immediately after the incident?  Was she threatened after the incident?  How long did it take for her to report.  Was there threat on her life?  How long was the relationship. Were the parents aware of the relationship. All these issues lead to the circumstances of the case as envisaged under Section 8(5) of the Sexual Offences Act. It is important to distinguish between law and morals.  It is the law that a child below the age of 18 years cannot consent to sex.  Section 8 (5) qualifies the provisions of Section 8 (1) to 8 (4) which penalizes defilement.  It can easily be concluded that it is immoral for one to have sex with a child under the age of 18 years.  However, where the same child under 18 years who is protected by the law opts to go into men''s houses for sex and then goes home, why should the court conclude that such a person was defiled.  In my view that cannot be defilement.  The complainant normally does not complain but is made to be the complainant because she is under 18 years.  My view is that such a behaviour is that of an adult and not of a child.  Children are not  meant to enjoy sexual intercourse.  Whenever they do, then that becomes the behaviour of an adult.  Although the public will frown upon an adult who engages in sex with such a child, we should not forget that circumstances have changed.  Young children engage in sex at very young age.  This is not out of defilement.  Conviction of a defiler should be based on actual circumstances and proof that the complainant was indeed defiled.  This is more so when one considers the lengthy sentences imposed by the law for such an offence.  It is unfair to send someone to 20 years imprisonment yet the complainant was enjoying the relationship.In Spain, until recently, the age of consent was thirteen (13) years.  It has now been increased to 16 years.  In the same country marriageable age for a girl was 14 years for a long time.  It is now 16 years.  This is subject to parental consent.  In South Africa, one can get married at 15 years with parental consent.  In countries like Austria, Belgium, Bulgaria, Switzerland Czech Republic, Germany, U.K and Hungary, a girl or boy can get married at the age of 16 years with parental consent.  In Denmark, Slovenia, Ukrain, and Estonia, the marriageable age is 15 years with parental consent.  I believe all these legal avenues are put in place in recognition of the fact that young people are nowadays getting exposed to sex at a very early stage.The medical evidence herein shows that PW1''s genitalia was normal:  There was no spermatozoa seen:  PW1 testified that she went to the appellant''s parents'' home, they continued to have sex and then went back home.  Those cannot be the circumstances of a victim of defilement.  Even if the appellant did not give evidence as to the steps he took to ascertain the age of the complainant, the circumstances are that the complainant behaved like an adult.  She left her parents'' home and went to the appellant''s house purposely to have sex.  The appellant should not be condemned for the voluntary acts of the complainant.  The complainant was enjoying the relationship. I do find that the appellant falls within the defence under section 8(5) of the Sexual Offences Act.  It is PW1 who behaved like an adult and engaged in sexual intercourse.  The appellant was not expected to inquire from several people about the age of the complainant.  The relationship continued for quite a long time to the extent that age became a non issue. I do find that the appeal is merited and is hereby allowed.  The appellant shall be set at liberty unless otherwise lawfully held.								', '2016-03-21'),
(10, 'HCCRA/33/2015', 'In this regard, this court found that Ground No 7 of the Appellant’s Amended Grounds of Appeal was not merited and the same is also hereby dismissed.The sentence for defiling a child of PW 1’s age is given in Section 8(3) of the Sexual Offences Act Cap 62A (Laws of Kenya). The same provides as follows:- “A person who commits an offence of defilement with a child between the age of sixteen and eighteen years is liable upon conviction to imprisonment for a term of not less than fifteen years.” Accordingly, this court was persuaded by the State’s submissions that the conviction and sentence herein ought not to be disturbed as the same was proper and lawful.As the court found that the Prosecution had proved its case beyond reasonable doubt, it found the Appellant’s Amended Grounds of Appeal not to have been successful. The same are hereby rejected. Instead, this court therefore affirms the conviction and sentence herein. The upshot of this court’s Judgment was that the Appellant’s Appeal that was lodged on 16th June 2015 was not merited and the same is hereby dismissed.', '2016-04-04'),
(11, 'HCCRA/35/2015', 'I have carefully analysed and re-evaluated the evidence at the trial court as required of me as an appellate court in order to come to my own conclusion on whether or not identification of the appellant was positive enough to find a conviction.  (See OKENO –VS- R (1972) E.A. 32.It is important in criminal cases to note that an accused person should not be convicted solely on evidence of identification which could be mistaken.  The court must satisfy itself, when relying upon such evidence, that the identification is free from any possibility of error.  (See the case of SAID AWADHI MUBARAK -VS- REPUBLIC [2014]eKLR).  The trial court must warn itself before finding a conviction especially where such evidence is of a single witness and in cases where the defence alleges that he was mistaken.  This is the position taken in the case of NZAVO –VS- REPUBLIC (1970) KLR 70. Now turning to this appeal, the complainant told the trial court it was around 10 p.m. at night when, as he was heading home, noticed the appellant and 2 other people hiding in a nearby bush.  He told the trial court that he identified the appellant as he had a mobile phone which he used as a torch.  He stated that he asked the appellant what the problem was and he was hit and robbed of cash and the said mobile phone.  The trial court was convinced beyond reasonable doubt that identification of the appellant was positive because he was known by the complainant.  With due respect to the learned trial magistrate, I find that identification of the appellant was anything but free from error in the following aspects:-Firstly as submitted by the appellant, the source of the light was not conclusive in terms of the intensity of the light emanating from the said phone.  The make or type of the phone was not described.  This Court is of course aware and takes judicial notice of those popular sizeable phones in Kenya that are popularly known as “mulika mwizi” which are renowned for their prowess in emitting sufficient light hence its name but there was no evidence adduced at the trial that the mobile phone used by the complainant was such type of phone.Secondly the complainant told the trial court that the assailants including the appellant were hiding in a nearby bush and if that was the case how possible was complainant able to identify the appellant at that hour of the night and hiding with some source of light whose intensity was uncertain?  It is true as the respondent submitted that the complainant told the trial court that the appellant was known to him as he was a neighbour.  But in his defence, the appellant denied the fact.  It is also important as I have stated above that even in cases of recognition the law still demands that care be taken in such circumstances.  In the case of R –VS-TURNBULL (1976) 3 ALL ER 549 a relevant observation to this case was made as follows: “Recognition may be more reliable than identification of a stranger but even when the witness is purporting to recognize someone whom he knows, the jury should be reminded that mistakes in recognition of close relatives and friends are sometimes made.” The complainant did not also tell the trial court whether he directed the beam of the light directly towards the face of the appellant in order to positively identify him.  In the case of MICHAEL OCHIENG ODONGO -VS- REPUBLIC (CR. A. NO. 208 OF 2006 – Court of Appeal at Kisumu), the Court of Appeal held as follows:“It has not been narrated that the appellant was seen in the direct beams of the torch.  As there is no evidence of the size of the torch nor the intensity of the light, it cannot under the circumstances prevailing then, be said that the appellant had been positively identified as a member of a five man gang.”This Court finds that the circumstances in that appeal is quite similar to this present appeal.  The identification of the appellant was not free from error and could have been mistaken given the circumstances obtaining. It is also justified for the appellant to feel aggrieved by the decision of the trial court because of not considering his sworn defence at all in its judgment.  This with respect to the learned magistrate was erroneous.  A defence of an accused person whatever the weight of such defence must be considered for the interest of justice and also as a matter of ensuring that justice is seen to be done.  In his sworn defence, the appellant had told the court that he was not known to the complainant and the trial court needed to have considered this aspect in evaluating the evidence of the prosecution especially in regard to identification and recognition.  I find that there was an error of judgment by the trial court by omitting the same and had it considered it perhaps its decision would have been different. I also find that there was no explanation given by the prosecution why the complainant took time to make a report at the Police post about the robbery.  I find that had he done so and having stated that he knew one of the gangs the Police would have moved swiftly and perhaps arrested the culprit immediately.  By reporting late, 2 days after the incident crucial time was lost and this compromised the quality of the investigation and its outcome.In the end I find after evaluation of the evidence relied upon by  the trial court in convicting the appellant, that the conviction was not safe.  The evidence adduced by the prosecution did not prove the case against the appellant beyond reasonable doubt.  The evidence, on identification was not sufficiently positive to sustain a conviction in such a case.  This appeal is merited.  I allow the same, quash the conviction and set aside the sentence imposed.  I direct that the appellant be set at liberty forthwith unless otherwise lawfully held.  It is so ordered.', '2016-05-09'),
(12, 'HCCRA/37/2015', 'the court took into account the cases of Katana Ali vs Republic [2016] eKLR, Muktar Shogolo vs Republic [2016] eKLR and Mohammed Hassan vs Republic [2016] Eklr which were both in this very court, in which the State pointed out therein that the value of the two (2) cows that had been stolen was Kshs 150,000/= with one cow (1) having been recovered.The State contended that in view of the fact that the appellants therein had been imprisoned for more than three (3) years, the court could exercise its discretion to reduce the sentence from ten (10) years to a period this court would deem fit to grant as the sentence that had been meted upon the said appellants was harsh. This court duly obliged and reduced the sentence of those three (3) appellants to five (5) years each.In this case, the value of the two (2) goats the Appellant was said to have stolen was Kshs 10,000/=. Having considered the submissions by the Appellant and the State herein, purely on the principles of proportionality and to appear consistent in court’s decisions relating to similar matters, this court was persuaded to accede to the Appellant’s request to reduce the sentence.However, although the value of the stolen stock was so minimal, this court took into consideration that the findings in the Probation Report that the Learned Trial Magistrate relied upon when sentencing the Appellant herein and noted that he was a notorious petty thief and a repeat offender. In fact, he had been convicted for a similar offence as the offence he had been charged with herein and sentenced to three (3) years.Doing the best that it could, this court found that it could only reduce the sentence that was imposed upon him by the Learned Trial Magistrate to five (5) years’ imprisonment. For the foregoing reasons, this court hereby affirms the conviction against the Appellant but sets aside the sentence that was passed against him by the Trial Court and substitutes the same with five (5) years’ imprisonment that is to run from the date he was imprisoned.The upshot of this court’s judgment, therefore, is that the Appellant’s Appeal filed on 16th July 2015 is hereby allowed on the aspect of sentence only. The Learned Trial Magistrate did not address his mind to the alternative charge. For completeness of record, this court made no determination on the alternative charge as the Appellant had already been convicted and sentenced on the main charge of stealing stock as aforesaid.', '2016-04-26'),
(13, 'HCCRA/38/2015', ' In the said case, the Court of Appeal found that the appellant therein had committed different offences on different dates and as a result, Achode J who heard the appeal was correct in upholding the Trial Court’s holding that the sentence the Appellant was to serve was to run consecutively.On his part, in the case of  George Mwangi Chege & 2 others v Republic [2004] eKLR , Khamoni J (as he then was) rendered himself as follows:-“….where more than one sentence of imprisonment are imposed without specifying whether the sentences will run consecutively or concurrently, Section 333(2) of the Criminal Procedure Code will apply so that every one of those sentences is-“deemed to commence from, and to include the whole of the day of, the date on which it was pronounced” with the result that:-If the sentences are in one trial and are pronounced on the same date, they definitely run concurrently.If the sentences are in different trials and are pronounced on the same date, they also run concurrently. If the sentences are in one trial but are pronounced on different dates, the sentences will run concurrently only to the extent of the balance of the formerly pronounced sentence is yet to be served so that if at that time the latter pronounced sentence is longer than the remainder of the formerly pronounced sentence, then the latter pronounced sentence, following the end of the formerly pronounced sentence, will be served consecutive to the formerly pronounced sentence.In other words, the prison sentences will run concurrently only to the extent of the duration of service of the two sentences coinciding.If the sentences are in different trials and are pronounced on different dates, the prison sentences will run concurrently only to the extent of the duration of service of the two sentences coinciding. Otherwise the sentences will run consecutively.”This principle was also expounded in the cases of Ng’ang’a vs Republic (1981) KLR 530 and Ondiek vs Republic (1981) KLR 430 where the common thread was that concurrent sentences should be awarded for offences committed in one criminal transaction unless exceptional circumstances prevail. In the instant case, the sentence the Learned Trial Magistrate imposed upon the Appellant was to run concurrently as the same never fell within the confines of Section 278, 308(1) or 322 of the Penal Code, the offences having been committed on the same day and arising from the same transaction and there being no exceptional circumstances that would warranted the sentence to run consecutively.  It was also the firm finding of this court that that the total maximum amount of fine the Learned Trial Magistrate could have imposed on the Appellant for the offences he was charged with was a sum of Kshs 40,000/=. Bearing in mind that the default sentence for a fine of Kshs 40,000/= under Section 28 of the Penal Code would be imprisonment to not more than six (6) months, the imprisonment of two (2) years in default of payment of the fine seemed manifestly excessive but appreciably, the period of imprisonment in default of fine was under the Wildlife Conservation and Management Act.Be that as it may, the penalty in default of paying the fine under Count I and Count II was imprisonment of twelve (12) months which were to run concurrently. Serving two (2) years’ imprisonment on each of those two (2) counts consecutively was clearly unlawful and illegal.However, if the Learned Trial Magistrate had intended that the Appellant was to serve two (2) years’ imprisonment in default of payment of the fine, then that would only have been under Count III where imprisonment provided was for a term not exceeding five years. Sentences under Count I and Count II ought to have been kept in abeyance as he serves the two (2) years’ imprisonment.Accordingly, having considered the Appellant’s Mitigation Grounds of Appeal, the State’s Written Submissions and the facts of this case, this court found and held that this was a proper case for it to re-state how the Appellant was to serve his sentence in default of payment of the fine. He has since served one and a half (1½) and does not appear to have been given any remission of his sentence which could have led him to approach this court as a last resort. It is good and proper practise for a trial court to indicate how sentences are to run where an accused person has been convicted on more than one (1) count to avoid any ambiguity. The ambiguity of how the sentence was to run must therefore be read in favour of the Appellant herein, which in any event is the correct position of the law.For the foregoing reasons, this court hereby allows the Appellant’s Petition that was lodged on 16th July 2015 on the extent of the sentence only but affirms the conviction as he never paid the fines that were imposed on him. However, as the Appellant has already served one and a half (1½) years’ imprisonment, the court hereby directs that he set free forthwith unless he be held for any other lawful cause', '2016-04-10'),
(14, 'HCCRA/56/2015', 'This is a first appeal.  As a first appellate court I have to start by reminding myself that I am duty bound to evaluate the evidence on record and come to my own conclusion and inferences see the case of Okeno -vs- Republic (1972) EA 32.I have reevaluated the evidence on record.  The appellant was convicted of two counts.  He was convicted of rape.  He was also convicted of stealing from a person.The burden is always on the prosecution to prove a criminal case against an accused person beyond reasonable doubt.  The accused does not have a burden to prove his innocence.  He can only raise doubts in the prosecution evidence. See the case of WOOLMINGTON –VS- DPP (1932)AC 462.  Once the court is satisfied that the prosecution has not proved the case beyond any reasonable doubt, it has an obligation to acquit an accused person.With regard to the offence of rape, the court found that the appellant and PWI knew each other well.  The appellant infact claimed that they previously lived together with the complainant for sometime as lovers and then disagreed.  He further stated that the complainant asked for money from him, ie Kshs 2,000/- and his failure to give her that money made her frame him with the offence.  The complainant on the other hand stated that she used to see the appellant at the [Particulars Withheld] market but that she had no relationship with him, nor did she know his actual names and what he did.  The totality of the evidence of the complainant and that of the appellant in my view, is that physically the two knew each other, whether or not they had an intimate relationship.The rape incidence is said to have occurred in broad daylight around 4.00 Pm or slight thereafter.  Since it was during the day, visibility must have been clear, thus there was no possibility of mistaken identity.  The offence of rape is a serious offence.  The complainant does not seem to have reported the rape incidence to anybody before she arrived at the police station.  The medical examination was said, even by the complainant herself, to have been carried out on both herself and the appellant.  However the medical evidence produced only touched on the complainant.  No DNA was taken to confirm that indeed there was sexual intercourse between the appellant and the complainant though the appellant was said to have been arrested just about an hour after the incident.  In my view the prosecution created a gap in the prosecution evidence with regard to the proof of rape.  There is a doubt in my mind as to whether indeed the appellant raped the complainant.  The benefit of that doubt has to be given to the appellant and I do so.  In effect the conviction for rape cannot be sustained.With respect to the conviction for the offence of theft from a person, there is also a doubt in my mind.  First of all there is no evidence that the complainant reported the incident and that the public beat up the appellant were doing so because of a complaint from the complainant.  Infact, according to her own evidence, the complainant merely saw the appellant being evicted from a bar, which tallies with the evidence of the defence.  The police did not mention of a bar in the vicinity. They merely talked about the [Particulars Withheld]  market. The Nokia telephone was not recovered by the police from the appellant.  It was the members of the public who are said to have recovered the Nokia telephone.  Curiously none of the members of the public were called to testify and explain why they arrested the appellant and were about to kill him, and how they recovered the Nokia telephone from where.  No explanation was given as to why none of these crucial witnesses was called to testify.  This default by the prosecution, in my view created a gap with respect to the proof of the offence of theft of mobile phone from a person.  As was said in the case of Bukenya -vs- Uganda,(1972)EA 549 where evidence of crucial witnesses is not called by the prosecution and the prosecution case is weak, the court is entitled to make an adverse inference regarding the proof of the prosecution case. In my view though the ownership of the mobile phone is not in dispute, it was crucial for the prosecution to establish that it was indeed found in possession of the appellant a short while after the alleged theft incident.  Such possession of the phone by the appellant would only be established through the evidence of at least one of the members of the public who arrested him.  The failure of the prosecution to call any of these witnesses to testify in court resulted in their failure to prove the charge of theft from person it was not established that the mobile phone was found on him. The conviction of the appellant on theft from person cannot thus stand. The conviction has thus to be quashed.The success of this appeal has largely come about due to poor investigations and poor prosecution of the case. However as the burden in a criminal case is on the prosecution to prove their case against an accused person beyond any reasonable doubt, I have a legal duty to find the accused innocent if the prosecution fails to discharge it burden.  The sentences will also have to be set aside as a consequence of the convictions being quashed.n the result, I allow the appeal quash the convictions and set aside the respective sentences imposed.  I order that the appellant be set at liberty forthwith unless otherwise lawfully held.', '2016-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `judicial_officers`
--

CREATE TABLE IF NOT EXISTS `judicial_officers` (
  `judicial_officer_id` int(11) NOT NULL AUTO_INCREMENT,
  `judicial_officer_name` varchar(100) NOT NULL,
  PRIMARY KEY (`judicial_officer_id`),
  UNIQUE KEY `judicial_officer_name` (`judicial_officer_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `judicial_officers`
--

INSERT INTO `judicial_officers` (`judicial_officer_id`, `judicial_officer_name`) VALUES
(6, 'ASENATH ONGERI'),
(2, 'C.B. NAGILLAH'),
(4, 'G.W. NGENYE-MACHARIA'),
(1, 'NZIOKI'),
(3, 'R.M. Kahara'),
(5, 'S.J. CHITEMBWE');

-- --------------------------------------------------------

--
-- Table structure for table `legalrep`
--

CREATE TABLE IF NOT EXISTS `legalrep` (
  `legalrep_id` int(11) NOT NULL AUTO_INCREMENT,
  `legalrep_name` varchar(100) NOT NULL,
  PRIMARY KEY (`legalrep_id`),
  UNIQUE KEY `legalrep_name` (`legalrep_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `legalrep`
--

INSERT INTO `legalrep` (`legalrep_id`, `legalrep_name`) VALUES
(4, 'C.A Mayamba'),
(3, 'E. M. Mutunga'),
(8, 'JAMBO AKAY'),
(5, 'KINYUA MUTAVUTA'),
(9, 'MASAABA BAYO'),
(2, 'MUSYIMI MWENGA'),
(7, 'MUTHOMI ALFRED'),
(10, 'ODHIAMBO J O'),
(6, 'P. MAINA ');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(3, 'admin'),
(2, 'court_clerk'),
(1, 'judge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(200) NOT NULL,
  `other_names` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `court_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`surname`,`phone_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `surname`, `other_names`, `password`, `phone_number`, `email`, `court_id`, `role_id`) VALUES
(3, 'Bildadd', 'Urandu', '202cb962ac59075b964b07152d234b70', 726458796, 'bil@gmail.com', 23001, 2),
(7, 'Kivisi', 'Loice Andia', '202cb962ac59075b964b07152d234b70', 714004502, 'loiceandia@gmail.com', 14012, 3),
(8, 'Momanyi', 'Fredrick', 'd64f51b2dd56aa43c8db7cd932c5f5a6', 745879632, 'momanyi@gmail.com', 13001, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
