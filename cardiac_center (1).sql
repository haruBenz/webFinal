-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 02:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardiac center`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirm_pt`
--

CREATE TABLE `confirm_pt` (
  `con_id` int(255) NOT NULL,
  `con_HN` varchar(255) NOT NULL,
  `con_d` varchar(255) NOT NULL,
  `con_code` varchar(255) NOT NULL,
  `con_n` varchar(255) NOT NULL,
  `con_med` int(100) NOT NULL,
  `con_c` varchar(255) NOT NULL COMMENT '0=ยืนยัน 1=ลืม',
  `con_f` int(100) NOT NULL,
  `con_r` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirm_pt`
--

INSERT INTO `confirm_pt` (`con_id`, `con_HN`, `con_d`, `con_code`, `con_n`, `con_med`, `con_c`, `con_f`, `con_r`) VALUES
(23, '610610666', '22-02-20', 'ANAT05', 'ANapril *TAB. 20 MG.', 6, '0', 0, 6),
(24, '610610666', '22-02-20', 'FURT01', 'Furosemide Tab 40 mg', 6, '1', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `med_id` int(25) NOT NULL,
  `med_code` varchar(100) NOT NULL,
  `med_n` varchar(100) NOT NULL,
  `med_unit` varchar(100) NOT NULL,
  `med_pp` varchar(100) NOT NULL,
  `med_pm` varchar(100) NOT NULL,
  `med_p` varchar(500) NOT NULL,
  `med_e` varchar(500) NOT NULL,
  `med_w` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`med_id`, `med_code`, `med_n`, `med_unit`, `med_pp`, `med_pm`, `med_p`, `med_e`, `med_w`) VALUES
(5, 'LIST02', 'Lispril Tab   5  mg', 'เม็ด', 'Lispril5.jfif', 'Lispril tab 5.gif', 'เป็นยาสำหรับรักษาโรคความดันโลหิตสูง เมื่อความดันโลหิตลดลงจะช่วยป้องกันโรคหลอดเลือดสมอง (Strokes) โรคกล้ามเนื้อหัวใจตายจากการขาดเลือด (Heart attacks) และโรคไต', 'โดยปกติ อาจทำให้เกิดผลข้างเคียง เช่น วิงเวียนศีรษะ ปวดศีรษะ ไอแห้ง', 'ผู้ป่วยไม่ควรใช้ยานี้ หากมีประวัติแพ้ยาต้านเอนไซม์เอซีอี'),
(8, 'ANAT03', 'Anapril Tab 5 mg', 'เม็ด', 'Anapril tab 5(1.jpg', 'Anapril tab 5.gif.jpg', 'ใช้ในการรักษาความผิดปกติของหัวใจห้องล่างซ้ายซึ่งทำหน้าที่ส่งเลือดไปเลี้ยงส่วนต่าง ๆ ของร่างกาย', 'ผลข้างเคียงที่พบบ่อย ได้แก่ มึนงงหรือหน้ามืด รู้สึกเหนื่อย ไอ', 'Enalapril อาจส่งผลกระทบต่อไต หัวใจ และระดับอิเล็กโทรไลต์ (Electrolyte) ในร่างกาย ซึ่งทำให้เกิดอาการบวมอักเสบตามร่างกาย ปัสสาวะน้อย น้ำหนักขึ้นอย่างรวดเร็ว หายใจติดขัด เจ็บหน้าอก หัวใจเต้นแรง ชีพจรลดหรืออ่อนลง รู้สึกอ่อนแรง หรือกล้ามเนื้อตึง หากผู้ป่วยมีอาการเหล่านี้ควรแจ้งให้แพทย์ทราบ'),
(9, 'ANAT05', 'ANapril *TAB. 20 MG.', 'เม็ด', 'Anapril tab 5(,.jpg', 'Anapril tab 20.gif', 'ใช้ในการรักษาความผิดปกติของหัวใจห้องล่างซ้ายซึ่งทำหน้าที่ส่งเลือดไปเลี้ยงส่วนต่าง ๆ ของร่างกาย', 'ผลข้างเคียงที่พบบ่อย ได้แก่ มึนงงหรือหน้ามืด รู้สึกเหนื่อย ไอ', 'ผู้ป่วยที่เคยแพ้ยาในกลุ่มนี มีโรคลมพิษแบบแองจิโออีดีมา (Angioedema) ซึ่งคืออาการบวมภายใต้ผิวหนังอ่อนโดยเฉพาะหนังตาและริมฝีปาก ไม่ควรใช้ยานี้'),
(10, 'TRIT07', 'Tritace Tab 2.5 mg', 'เม็ด', 'Tritace tab 2.5 1.jpg', 'Tritace tab 2.5.gif', 'ใช้ป้องกันโรคหัวใจและโรคหลอดเลือดหัวใจในผู้ป่วยที่มีความเสี่ยงสูง', 'ผลข้างเคียงที่พบได้ทั่วไป เช่น ปวดศีรษะ ไอแห้ง เวียนศีรษะ อ่อนเพลีย ตามัว มีเหงื่อออก และรู้สึกเหนื่อย เป็นต้น', 'สำหรับผู้ป่วยโรคเบาหวาน ห้ามใช้ยาชนิดนี้ร่วมกับยาที่มีส่วนผสมของอะลิสคิเรน เช่น เทคเทอร์นา หรือเทกแคมโล เป็นต้น'),
(11, 'TRIT08', 'Tritace Tab 5 mg', 'เม็ด', 'Tritace tab 5 1.jpg', 'Tritace tab 5.gif', 'ใช้ป้องกันโรคหัวใจและโรคหลอดเลือดหัวใจในผู้ป่วยที่มีความเสี่ยงสูง', 'ผลข้างเคียงที่พบได้ทั่วไป เช่น ปวดศีรษะ ไอแห้ง เวียนศีรษะ อ่อนเพลีย ตามัว มีเหงื่อออก และรู้สึกเหนื่อย เป็นต้น', 'สำหรับผู้ป่วยโรคเบาหวาน ห้ามใช้ยาชนิดนี้ร่วมกับยาที่มีส่วนผสมของอะลิสคิเรน เช่น เทคเทอร์นา หรือเทกแคมโล เป็นต้น'),
(15, 'FURT01', 'Furosemide Tab 40 mg', 'เม็ด', 'Furetic_Furetic-S6002PPS0.jfif', 'Furetic tab 40 mg.gif', 'ขับน้ำ และ โซเดียมส่วนเกิดออกจากร่างกาย', 'อาจทำให้เกิดอาการไม่พึงประสงค์ได้แก่ หัวใจเต้นผิดจังหวะ ความดันต่ำในขณะเปลี่ยนท่าทาง ปฏิกิริยาผื่นแพ้ทางผิวหนัง', 'ห้ามใช้ในผู้ป่วยที่มีภาวะปัสสาวะออกน้อยผิดปกติ (anuria)'),
(28, 'FURT03', 'FuRetic Tab 500 mg', 'เม็ด', 'FURETIC500.jpg', 'FURETIC500-228x228.png', 'ขับน้ำ และ โซเดียมส่วนเกิดออกจากร่างกาย\r\nบรรเทาภาวะน้ำเกิน เช่น ขาบวม น้ำท่วมปอด\r\nใช้ร่วมกับยาลดความดันอื่นๆ เพื่อรักษาภาวะความดันโลหิตสูง\r\nรักษาภาวะบวมเนื่องจากโรคหัวใจล้มเหลว โรคตับหรือโรคไต', 'อาจทำให้เกิดอาการไม่พึงประสงค์ได้แก่ หัวใจเต้นผิดจังหวะ ความดันต่ำในขณะเปลี่ยนท่าทาง ปฏิกิริยาผื่นแพ้ทางผิวหนัง\r\nอาจทำให้เกิดอาการปวดเกร็งกระเพาะปัสสาวะขึ้นได้\r\nอาจทำให้เกิดโรคสมองจากโรคตับได้ ถ้าผู้ป่วยใช้ยานี้ในขณะที่มีอาการของโรคตับขั้นรุนแรง และทำให้เกิดภาวะดีซ่าน', 'ผู้แพ้ยาหรือส่วนประกอบของยา Furosemide หรือ แพ้sulfonylurea\r\nห้ามใช้ในผู้ป่วยที่มีภาวะปัสสาวะออกน้อยผิดปกติ (anuria)\r\nผู้ที่มีภาวะ hepatic coma หรือภาวะขาดน้ำอย่างรุนแรง'),
(29, 'BERT02', 'Hyles Tab 25 mg(Spironolactone)', 'เม็ด', 'Hyles25mg.jpg', 'Hyles tab 25 mge79a7361-9b22-4f7e-bba5-a0bd00af1f69.GIF-228x228.png', 'ใช้รักษาโรคภาวะหัวใจล้มเหลว\r\nรักษาภาวะบวม (edema) เนื่องจากการหลั่งฮอร์โมน aldosterone ที่มากเกินไป\r\nช่วยป้องกันภาวะโพแทสเซียมในเลือดต่ำ\r\nใช้รักษาภาวะบวมจากโรคตับแข็ง', 'อาการเกลือแร่ในร่างกายขาดสมดุล เช่น ปากแห้ง กระหายน้ำ ง่วงซึม ไม่มีแรง กระสับกระส่าย สับสน คลื่นไส้ อาเจียน ปัสสาวะมากขึ้น ตะคริว หรืออ่อนเพลีย หัวใจเต้นแรง ไม่ปัสสาวะหรือปัสสาวะน้อย หรือรู้สึกจะหมดสติ\r\nอาการแพ้ยา ได้แก่ ลมพิษ หายใจลำบาก หน้าบวม ปากบวม ลิ้นหรือคอบวม ควรไปพบแพทย์ทันที', 'ผู้ที่มีประวัติแพ้ยา spironolactone หรือส่วนประกอบอื่นๆ\r\nห้ามใช้ยานี้ในผู้ที่ไม่มีปัสสาวะหรือผู้ที่มีการทำงานของตับบกพร่องระดับรุนแรง หรือผู้ที่มีภาวะโพแทสเซียมสูง'),
(30, 'BERT03', 'Hyles *TAB* 100 MG.', 'เม็ด', 'Hyle100.jpg', 'Hyles tab 100.png', 'ใช้รักษาโรคภาวะหัวใจล้มเหลว\r\nรักษาภาวะบวม (edema) เนื่องจากการหลั่งฮอร์โมน aldosterone ที่มากเกินไป\r\nช่วยป้องกันภาวะโพแทสเซียมในเลือดต่ำ\r\nใช้รักษาภาวะบวมจากโรคตับแข็ง', 'ระดับโพแทสเซียมในร่างกายสูง เช่น หัวใจเต้นช้ากว่าปกติ ชีพจรเต้นอ่อนหรือรู้สึกชา\r\nอาการเกลือแร่ในร่างกายขาดสมดุล เช่น ปากแห้ง กระหายน้ำ ง่วงซึม ไม่มีแรง กระสับกระส่าย สับสน คลื่นไส้ อาเจียน ปัสสาวะมากขึ้น ตะคริว หรืออ่อนเพลีย หัวใจเต้นแรง ไม่ปัสสาวะหรือปัสสาวะน้อย หรือรู้สึกจะหมดสติ\r\nอาการแพ้ยา ได้แก่ ลมพิษ หายใจลำบาก หน้าบวม ปากบวม ลิ้นหรือคอบวม ควรไปพบแพทย์ทันที', 'ผู้ที่มีประวัติแพ้ยา spironolactone หรือส่วนประกอบอื่นๆ\r\nห้ามใช้ยานี้ในผู้ที่ไม่มีปัสสาวะหรือผู้ที่มีการทำงานของตับบกพร่องระดับรุนแรง หรือผู้ที่มีภาวะโพแทสเซียมสูง'),
(31, 'LORT03', 'LoRANTA Tab 50 mg', 'เม็ด', 'loranta50.jpg', 'Loranta tab 50.gif', 'ยาลดความดันโลหิตประเภทหนึ่ง ซึ่งออกฤทธิ์ทำให้หลอดเลือดขยายตัว และทำให้เลือดหมุนเวียนได้ดีขึ้น\r\nรักษาผู้ป่วยความดันโลหิตสูง ช่วยลดความเสี่ยงการเกิดเส้นเลือดในสมองแตกหรือตีบตันในผู้ป่วยโรคหัวใจ \r\nลดความเสียหายของไตในผู้ป่วยเบาหวานชนิดที่ 2 ที่มีภาวะความดันโลหิตสูงร่วมด้วย', 'อาการไอ เวียนหัว คัดจมูก ถ่ายเหลว ควรปรึกษาแพทย์หรือเภสัชกร โดยไม่จำเป็นต้องหยุดยาทันที\r\nหากเกิดอาการผิดปกติ บวมที่ใบหน้า เปลือกตา ริมฝีปาก ลมพิษ ผื่นแดง ปัสสาวะปริมาณลดลงหรือความถี่ลดลง หัวใจเต้นผิดจังหวะ วิงเวียน วูบหรือหมดสติ น้ำหนักเพิ่มขึ้นอย่างรวดเร็ว แขน ข้อเท้าและเท้าบวม ควรหยุดยาและพบแพทย์ทันที', 'ห้ามใช้ยานี้ในผู้ที่มีประวัติเคยแพ้ยาหรือส่วนประกอบของยานี้\r\nห้ามใช้ยานี้ร่วมกับยาอะลิสกิเรน (Aliskiren)\r\nห้ามใช้ยานี้ร่วมกับยากลุ่มเอซีอีไอ (ACEI)\r\nหลีกเลี่ยงการใช้ยานี้ในหญิงตั้งครรภ์ เพราะอาจมีอันตรายต่อทารกในครรภ์ได้ แต่แพทย์อาจพิจารณาสั่งใช้ยานี้หากมีเหตุผลทางการแพทย์');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `HN` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `cr_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `HN`, `message`, `status`, `cr_date`) VALUES
(7, '610610668', 'haudofhuo', 1, '2022-01-29 02:12:21.000000'),
(8, '610610668', 'dsagZHG', 1, '2022-01-29 02:16:20.000000'),
(11, '610610668', 'gyhuihbo', 0, '2022-01-29 02:30:48.000000'),
(12, '610610668', 'gfcvujnom', 0, '2022-01-29 02:31:04.000000'),
(15, '610610668', 'cfygbijnokpok', 0, '2022-01-29 02:33:26.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ordermed`
--

CREATE TABLE `ordermed` (
  `or_id` int(11) NOT NULL,
  `or_HN` varchar(100) NOT NULL,
  `or_code` varchar(255) NOT NULL,
  `or_n` varchar(255) NOT NULL,
  `or_tt` int(11) NOT NULL,
  `or_time` varchar(100) NOT NULL,
  `or_ptime` varchar(100) NOT NULL,
  `or_day` int(11) NOT NULL,
  `or_unit` varchar(255) NOT NULL,
  `or_med` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordermed`
--

INSERT INTO `ordermed` (`or_id`, `or_HN`, `or_code`, `or_n`, `or_tt`, `or_time`, `or_ptime`, `or_day`, `or_unit`, `or_med`) VALUES
(127, '610610257', 'TRIT07', 'Tritace Tab 2.5 mg', 90, 'ก่อนอาหาร', '1,2,3', 3, '', 9),
(128, '610610257', 'TRIT07', 'Tritace Tab 2.5 mg', 80, 'ก่อนอาหาร', '1,2,3', 2, '', 6),
(129, '610610257', 'ANAT05', 'ANapril *TAB. 20 MG.', 80, 'หลังอาหาร', '1,2', 2, '', 4),
(130, '610610257', 'FURT02', 'Furosemide Tab 40 mg', 30, 'ก่อนนอน', '4', 1, '', 1),
(131, '610610257', 'LIST02', 'Lispril Tab   5  mg', 60, 'ก่อนอาหาร', '3', 2, '', 2),
(132, '610610257', 'TRIT07', 'Tritace Tab 2.5 mg', 60, 'หลังอาหาร', '3', 2, '', 2),
(133, '610610257', 'TRIT08', 'Tritace Tab 5 mg', 90, 'หลังอาหาร', '3', 3, '', 3),
(134, '610610257', 'ard46', 'fyasffugw85', 90, 'ก่อนอาหาร', '1,2,3', 3, 'หลอด', 9),
(135, '610610257', '559+565', 'pjojojoko', 90, 'ก่อนอาหาร', '1,2,3', 3, 'ขวด', 9),
(141, '610610666', 'ANAT05', 'ANapril *TAB. 20 MG.', 90, 'ก่อนอาหาร', '1,2,3', 2, 'เม็ด', 6),
(142, '610610666', 'FURT01', 'Furosemide Tab 40 mg', 60, 'หลังอาหาร', '1,3', 3, 'เม็ด', 6),
(143, '610610666', 'LORT03', 'LoRANTA Tab 50 mg', 30, 'ก่อนนอน', '4', 1, 'เม็ด', 1),
(144, '610610233', 'ANAT03', 'Anapril Tab 5 mg', 90, 'หลังอาหาร', '1,3', 3, 'เม็ด', 6),
(145, '222222', 'BERT02', 'Hyles Tab 25 mg(Spironolactone)', 90, 'ก่อนอาหาร', '1,2,3', 3, 'เม็ด', 9);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `member_id` int(25) NOT NULL,
  `member_HN` int(11) NOT NULL,
  `member_fname` varchar(100) NOT NULL,
  `member_lname` varchar(100) NOT NULL,
  `member_gender` varchar(100) NOT NULL,
  `member_birth` varchar(255) NOT NULL,
  `member_age` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`member_id`, `member_HN`, `member_fname`, `member_lname`, `member_gender`, `member_birth`, `member_age`) VALUES
(47, 610610257, 'ไอนา', 'ดี', 'Female', '2009-10-28', '19'),
(50, 610610666, 'โจ๊ก', 'หมู', 'ชาย', '1998-11-16', '23'),
(51, 610610233, 'เฟิร์น', 'จาโฮ', 'หญิง', '2022-02-18', '20');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `or_id` int(11) NOT NULL,
  `or_HN` varchar(255) NOT NULL,
  `or_code` varchar(255) NOT NULL,
  `or_n` varchar(255) NOT NULL,
  `or_time` varchar(255) NOT NULL,
  `or_ptime` varchar(255) NOT NULL,
  `or_tt` int(100) NOT NULL,
  `or_day` int(100) NOT NULL,
  `or_unit` varchar(255) NOT NULL,
  `or_med` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`or_id`, `or_HN`, `or_code`, `or_n`, `or_time`, `or_ptime`, `or_tt`, `or_day`, `or_unit`, `or_med`) VALUES
(18, '610610257', 'TRIT07', 'Tritace Tab 2.5 mg', 'ก่อนอาหาร', '3', 230, 2, '', 2),
(19, '610610257', 'ANAT05', 'ANapril *TAB. 20 MG.', 'หลังอาหาร', '1,2', 80, 2, '', 4),
(20, '610610257', 'FURT02', 'Furosemide Tab 40 mg', 'ก่อนนอน', '4', 30, 1, '', 1),
(21, '610610257', 'LIST02', 'Lispril Tab   5  mg', 'ก่อนอาหาร', '3', 60, 2, '', 2),
(22, '610610257', 'TRIT08', 'Tritace Tab 5 mg', 'หลังอาหาร', '3', 90, 3, '', 3),
(23, '610610257', 'ard46', 'fyasffugw85', 'ก่อนอาหาร', '1,2,3', 90, 3, 'หลอด', 9),
(24, '610610257', '559+565', 'pjojojoko', 'ก่อนอาหาร', '1,2,3', 90, 3, 'ขวด', 9),
(30, '610610666', 'ANAT05', 'ANapril *TAB. 20 MG.', 'ก่อนอาหาร', '1,2,3', 90, 2, 'เม็ด', 6),
(31, '610610666', 'FURT01', 'Furosemide Tab 40 mg', 'หลังอาหาร', '1,3', 60, 3, 'เม็ด', 6),
(32, '610610666', 'LORT03', 'LoRANTA Tab 50 mg', 'ก่อนนอน', '4', 30, 1, 'เม็ด', 1),
(33, '610610233', 'ANAT03', 'Anapril Tab 5 mg', 'หลังอาหาร', '1,3', 90, 3, 'เม็ด', 6),
(34, '222222', 'BERT02', 'Hyles Tab 25 mg(Spironolactone)', 'ก่อนอาหาร', '1,2,3', 90, 3, 'เม็ด', 9);

-- --------------------------------------------------------

--
-- Table structure for table `timea`
--

CREATE TABLE `timea` (
  `timeid` int(100) NOT NULL,
  `timed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timea`
--

INSERT INTO `timea` (`timeid`, `timed`) VALUES
(1, 'ก่อนอาหาร'),
(2, 'หลังอาหาร'),
(3, 'ก่อนนอน');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(14, 'haru', 'harulee@gmail.com', '7a6a74cbe87bc60030a4bd041dd47b78'),
(44, 'jean', 'jean@gmail.com', '7a6a74cbe87bc60030a4bd041dd47b78'),
(45, 'duuang', 'duuang@gmail.com', '7a6a74cbe87bc60030a4bd041dd47b78');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirm_pt`
--
ALTER TABLE `confirm_pt`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`med_id`),
  ADD UNIQUE KEY `med_code` (`med_code`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermed`
--
ALTER TABLE `ordermed`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `timea`
--
ALTER TABLE `timea`
  ADD PRIMARY KEY (`timeid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirm_pt`
--
ALTER TABLE `confirm_pt`
  MODIFY `con_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `med_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ordermed`
--
ALTER TABLE `ordermed`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `member_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `timea`
--
ALTER TABLE `timea`
  MODIFY `timeid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
