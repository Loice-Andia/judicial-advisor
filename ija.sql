-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 12:11 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

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
('ADOP.', '3'),
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
('HC.CR.A.', '3'),
('HC.CR.C.', '3'),
('HC.CR.REV', '3'),
('HC.MISC.CR.APPL', '3'),
('HCC(O.S)', '3'),
('HCCA', '3'),
('HCCC', '3'),
('HCCC Misc.', '3'),
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
  `date_filed` varchar(200) DEFAULT NULL,
  `judicial_officer_id` int(11) DEFAULT NULL,
  `plaintiffs` varchar(200) DEFAULT NULL,
  `defendants` varchar(200) DEFAULT NULL,
  `legalrep_id` int(11) DEFAULT NULL,
  `origcasenum_appeal` int(100) DEFAULT NULL,
  `origcourt_appeal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`case_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_details`
--

INSERT INTO `case_details` (`court_id`, `case_num`, `case_type`, `date_filed`, `judicial_officer_id`, `plaintiffs`, `defendants`, `legalrep_id`, `origcasenum_appeal`, `origcourt_appeal`) VALUES
(13001, 'ADOP.1234', 'adoption', '11/5/2014', 0, 'loice', 'andia', 0, 0, ''),
(13001, 'D.C1234', 'asdfg', '11/5/2014', 0, 'lsdf', 'ghj', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `case_information`
--

CREATE TABLE IF NOT EXISTS `case_information` (
  `case_num` varchar(200) NOT NULL,
  `case_details` longtext NOT NULL,
  `evidence` longtext,
  `witnesses` varchar(200) DEFAULT NULL,
  UNIQUE KEY `case_num` (`case_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_information`
--

INSERT INTO `case_information` (`case_num`, `case_details`, `evidence`, `witnesses`) VALUES
('D.C1234', 'gthjkl,knmb v', NULL, NULL);

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
-- Table structure for table `judgements`
--

CREATE TABLE IF NOT EXISTS `judgements` (
  `judgement_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_num` varchar(200) NOT NULL,
  `judgement` longtext NOT NULL,
  PRIMARY KEY (`judgement_id`),
  UNIQUE KEY `case_num` (`case_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `judicial_officers`
--

CREATE TABLE IF NOT EXISTS `judicial_officers` (
  `judicial_officer_id` int(11) NOT NULL AUTO_INCREMENT,
  `judicial_officer_name` varchar(100) NOT NULL,
  PRIMARY KEY (`judicial_officer_id`),
  UNIQUE KEY `judicial_officer_name` (`judicial_officer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `legalrep`
--

CREATE TABLE IF NOT EXISTS `legalrep` (
  `legalrep_id` int(11) NOT NULL AUTO_INCREMENT,
  `legalrep_name` varchar(100) NOT NULL,
  PRIMARY KEY (`legalrep_id`),
  UNIQUE KEY `legalrep_name` (`legalrep_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(3, 'bil', 'urandu', '202cb962ac59075b964b07152d234b70', 726458796, 'bil@gmail.com', 13001, 2),
(7, 'Kivisi', 'Loice Andia', '202cb962ac59075b964b07152d234b70', 714004502, 'loiceandia@gmail.com', 14012, 3),
(8, 'momanyi', 'fredrick', 'd64f51b2dd56aa43c8db7cd932c5f5a6', 745879632, 'momanyi@gmail.com', 13001, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
