-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 11:11 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `review_real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cusemppro`
--

CREATE TABLE `cusemppro` (
  `idCusEmpPro` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `discript` text,
  `idProduct` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idEmployee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cusemppro`
--

INSERT INTO `cusemppro` (`idCusEmpPro`, `status`, `discript`, `idProduct`, `idCustomer`, `idEmployee`) VALUES
(1, 1, 'hoang ml', 1, 33, NULL),
(2, 1, 'Dang giao dich', 2, 39, NULL),
(3, 1, 'Dang giao dich, Khanh chuan bi mua', 3, 36, NULL),
(6, 1, NULL, 5, 40, NULL),
(7, 1, NULL, 6, 39, 161),
(9, 1, NULL, 1, 137, NULL),
(10, 1, NULL, 1, 137, NULL),
(11, 1, NULL, 1, 32, NULL),
(12, 2, 'Khach hang tiem nang', 1, 137, 161),
(13, 1, NULL, 1, 137, NULL),
(14, 1, NULL, 1, 137, NULL),
(15, 1, NULL, 1, 138, NULL),
(16, 1, NULL, 1, 138, NULL),
(17, 1, NULL, 1, 137, NULL),
(18, 1, NULL, 1, 139, 167);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `idCustomer` int(11) NOT NULL,
  `nameCustomer` varchar(50) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `gender` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`idCustomer`, `nameCustomer`, `mail`, `phoneNumber`, `birthday`, `gender`, `status`) VALUES
(32, 'Ta Thi Loan Chau', 'ledinhhaoct@gmail.com', '0329938049', '1989-02-05', 2, 2),
(33, 'Doan Kieu Thu', 'thachtuongnguyen@gmail.com', '0786521907', '1956-02-06', 2, 1),
(34, 'Ngo Ngan Truc', 'nguyenthanhvanhg@fpt.edu.vn', '0791454748', '1979-05-24', 2, 1),
(35, 'Quach Viet Ha', 'cuhuykhanhhg@outlook.com', '0388645386', '1958-09-18', 2, 1),
(36, 'Banh My Yen', 'luongxuantruong@outlook.com', '0963309091', '1975-10-15', 2, 1),
(37, 'To Thanh Hang', 'cungockhanghg@fpt.edu.vn', '0968268159', '1992-05-23', 2, 1),
(38, 'Tang Thu Thao', 'ngophuoclochg@gmail.com', '0344886759', '1979-06-05', 2, 1),
(39, 'Trinh Diep Vy', 'taphuongtamct@gmail.com', '0372817874', '1958-04-02', 2, 1),
(40, 'Do Cam Nhung', 'lamducan@fpt.edu.vn', '0705473490', '1972-10-18', 2, 1),
(41, 'Truong Que Lam', 'macquangnhathg@gmail.com', '0774497737', '1981-11-12', 2, 1),
(42, 'Tang Thu Thao', 'nguyenhuucanh@outlook.com', '0977017810', '1977-03-01', 2, 1),
(43, 'Ma Phuong Que', 'hoduycuonghg@fpt.edu.vn', '0338033512', '1953-05-11', 2, 1),
(44, 'Dang Anh Le', 'quachdanhvantg@outlook.com', '0842585883', '1989-07-17', 2, 1),
(45, 'Pham Tuyet Loan', 'tonhathoa@outlook.com', '0394102983', '1975-04-19', 2, 1),
(46, 'Cao Cam Thuy', 'vuxuanquyhg@fpt.edu.vn', '0344395379', '1972-06-15', 2, 1),
(47, 'Tran Tuyet Vy', 'mahuutam@fpt.edu.vn', '0339156724', '1993-08-04', 2, 1),
(48, 'Quach Ngoc Yen', 'lamthunganct@fpt.edu.vn', '0325488770', '1962-04-11', 2, 1),
(49, 'Trieu Thien Giang', 'lythaibinh@outlook.com', '0829457502', '1966-08-15', 2, 1),
(50, 'Duong Thanh Hao', 'mackienvanct@fpt.edu.vn', '0394282594', '1958-07-09', 2, 1),
(51, 'Bui Kieu Diem', 'buingochienhg@gmail.com', '0325224960', '1993-08-18', 2, 1),
(52, 'Banh Minh Chau', 'nguyenquochoang@gmail.com', '0967890971', '1995-04-04', 2, 1),
(53, 'Cao Hong Thu', 'trangphuongthuy@outlook.com', '0864443714', '1975-10-14', 2, 1),
(54, 'Le Mong Huong', 'quachhuonglanhg@outlook.com', '0853877518', '1977-06-23', 2, 1),
(55, 'Vo Tu Quyen', 'daodinhtoan@outlook.com', '0824810281', '1979-05-13', 2, 1),
(56, 'Duong Anh Duong', 'thachthungoc@gmail.com', '0704407669', '1953-05-12', 2, 1),
(57, 'To Truc Vy', 'laixuanhienhg@outlook.com', '0567452579', '1953-05-09', 2, 1),
(58, 'Tran Ha Mi', 'banhandi@outlook.com', '0841384275', '1972-08-13', 2, 1),
(59, 'Mai Hong Diep', 'dovietphongct@fpt.edu.vn', '0357685723', '1967-12-15', 2, 1),
(60, 'Hua An Binh', 'khuuxuanbaohg@outlook.com', '0839361635', '1962-05-07', 1, 1),
(61, 'Vo Thuy Uyen', 'tabaothuyct@fpt.edu.vn', '0797144913', '1980-12-03', 1, 1),
(62, 'Huynh The Vinh', 'dinhkhanhhoitg@outlook.com', '0848142165', '1986-04-02', 1, 1),
(63, 'Thach Hai Long', 'luongthivanthanhct@gmail.com', '0343244277', '1965-02-20', 1, 1),
(64, 'Quach Cong Giang', 'luonghongminhct@gmail.com', '0984900424', '1972-06-06', 1, 1),
(65, 'Khuu Bao Chau', 'hanghiahoact@fpt.edu.vn', '0761265807', '1952-10-05', 1, 1),
(66, 'Ong Tai Duc', 'huynhtrangnhatg@outlook.com', '0983836143', '1979-06-23', 1, 1),
(67, 'Banh Gia Can', 'hacamlien@fpt.edu.vn', '0386422842', '1995-07-24', 1, 1),
(68, 'Cu Huu Tho', 'macgiathinh@gmail.com', '0819840115', '1974-12-14', 1, 1),
(69, 'Trang Viet Khai', 'tranhuucanh@fpt.edu.vn', '0812503997', '1954-10-18', 1, 1),
(70, 'Tran Duc Hai', 'mainhuhong@gmail.com', '0708253842', '1965-03-17', 1, 1),
(71, 'Truong Gia Kiet', 'hobaophuonghg@fpt.edu.vn', '0844408865', '1980-07-21', 1, 1),
(72, 'Ho Thien Thanh', 'nguyenquocbinh@fpt.edu.vn', '0349798297', '1966-02-25', 1, 1),
(73, 'Lai Truong Vu', 'mauyennhu@outlook.com', '0325752132', '1975-02-27', 1, 1),
(74, 'Dao Truong Thanh', 'tathutrangct@gmail.com', '0836800676', '1970-04-27', 1, 1),
(75, 'Dang Sy Dan', 'caovannhi@fpt.edu.vn', '0332786657', '1989-03-04', 1, 1),
(76, 'Ngo Khoi Phong', 'nguyenhuemy@gmail.com', '0825020418', '1963-02-13', 1, 1),
(77, 'Ho Tuan Anh', 'phungbaotran@outlook.com', '0325893910', '1991-12-21', 1, 1),
(78, 'Cao Thai Tan', 'laihuonglienct@gmail.com', '0398561618', '1985-10-21', 1, 1),
(79, 'Tang Bao Hoang', 'daothuytienct@gmail.com', '0765870324', '1980-12-05', 1, 1),
(80, 'Mac Cao Son', 'laithunhanct@fpt.edu.vn', '0864854139', '1954-11-04', 1, 1),
(81, 'Phan Viet Thong', 'cuthucoanhct@fpt.edu.vn', '0969242600', '1961-02-10', 1, 1),
(82, 'Cu Tung Chau', 'phungchivinhct@fpt.edu.vn', '0812289507', '1979-10-22', 1, 1),
(83, 'Cu Cao Minh', 'duongduchoa@gmail.com', '0822002016', '1990-12-04', 1, 1),
(84, 'Tran Thieu Bao', 'duongvinhthuyhg@outlook.com', '0381785874', '1968-09-01', 1, 1),
(85, 'Cu Tuong Lam', 'doangiabaohg@fpt.edu.vn', '0705169664', '1968-06-24', 1, 1),
(86, 'Cao Tuong Anh', 'trieuduchoahg@gmail.com', '0339347357', '1950-03-18', 1, 1),
(87, 'Ho Kien Trung', 'daotuankhai@fpt.edu.vn', '0784310122', '1954-12-11', 1, 1),
(88, 'Banh Uy Vu', 'trangquynhlam@gmail.com', '0359353052', '1981-05-07', 1, 1),
(89, 'Cao Manh Cuong', 'trangtrucloantg@outlook.com', '0363575407', '1962-07-18', 1, 1),
(90, 'Trinh Cong Hao', 'doanthanhlonghg@fpt.edu.vn', '0342913890', '1996-06-08', 1, 1),
(91, 'Lai Tri Hung', 'trinhxuanphuong@outlook.com', '0335702485', '1966-04-02', 1, 1),
(92, 'Ta Kim Thinh', 'manhatdung@gmail.com', '0968555149', '1993-03-10', 1, 1),
(93, 'To Truong An', 'tangduchuy@outlook.com', '0768935967', '1958-04-24', 1, 1),
(94, 'Phan Nguyen Dan', 'daoquangduong@gmail.com', '0561866968', '1994-08-21', 1, 1),
(95, 'Dao Quang Duc', 'doansyhoang@fpt.edu.vn', '0345147437', '1982-09-20', 1, 1),
(96, 'Khuu Viet Cuong', 'nguyenxuantruongtg@outlook.com', '0982516497', '1969-09-04', 1, 1),
(97, 'Mac Ngoc Hien', 'quachthingockhanhct@fpt.edu.vn', '0776328018', '1950-02-13', 1, 1),
(98, 'Truong Minh Quang', 'luongbinhan@fpt.edu.vn', '0843363283', '1986-06-15', 1, 1),
(99, 'Ong Dang Minh', 'ongkhuclan@gmail.com', '0764980926', '1967-08-22', 1, 1),
(100, 'Ha Huu Thong', 'truongbachhoahg@outlook.com', '0391621468', '1953-11-09', 1, 1),
(101, 'Duong Hoai Thanh', 'lamainhitg@outlook.com', '0379588580', '1955-05-27', 1, 1),
(102, 'Pham Thuy Mien', 'daophuchoa@gmail.com', '0798814662', '1988-02-03', 1, 1),
(103, 'Vo Huu Vinh', 'tothanhtuyenhg@fpt.edu.vn', '0386495011', '1953-05-13', 1, 1),
(104, 'Ma Nam Thanh', 'cuyentrangct@fpt.edu.vn', '0374439769', '1951-08-14', 1, 1),
(105, 'Phan Trong Ha', 'lenguyetcamct@fpt.edu.vn', '0819815275', '1972-02-26', 1, 1),
(106, 'Dinh Khoi Nguyen', 'trinhthiengianghg@fpt.edu.vn', '0963266707', '1998-02-05', 1, 1),
(107, 'Pham Sy Dan', 'lainamtu@gmail.com', '0353033120', '1964-11-23', 1, 1),
(108, 'Trieu Gia Bach', 'cuduytamhg@outlook.com', '0823942583', '1972-06-23', 1, 1),
(109, 'Banh Hoang Viet', 'lambaohoang@outlook.com', '0346021844', '1952-08-26', 1, 1),
(110, 'Quach Nam Phi', 'daoancohg@gmail.com', '0829727888', '1993-09-11', 1, 1),
(111, 'Ly Tuan Tu', 'duongtruongthanhhg@gmail.com', '0367600918', '1997-03-19', 1, 1),
(112, 'Cu The Minh', 'buiquangdatct@fpt.edu.vn', '0333919027', '1983-03-27', 1, 1),
(113, 'Ma Nhat Quoc', 'trangtruclamct@gmail.com', '0813227052', '1973-08-03', 1, 1),
(114, 'Dam Manh Cuong', 'laihuuvinhhg@gmail.com', '0973278309', '1980-09-10', 1, 1),
(115, 'Cao Gia Minh', 'tatoanthangct@fpt.edu.vn', '0323083408', '1951-05-14', 1, 1),
(116, 'Pham Nguyen Phong', 'vuphuongdiemct@fpt.edu.vn', '0376673085', '1982-10-03', 1, 1),
(117, 'Duong Giang Nam', 'trangbathinhhg@gmail.com', '0988133995', '1977-11-07', 1, 1),
(118, 'Tran Trong Tan', 'ongbinhminhtg@outlook.com', '0771634771', '1982-09-03', 1, 1),
(119, 'Duong Tuan Minh', 'banhhaiuyenhg@outlook.com', '0371843897', '1989-07-05', 1, 1),
(120, 'Mai Chinh Huu', 'nguyenhaithuytg@outlook.com', '0374619945', '1966-03-14', 1, 1),
(121, 'Vo Kien Binh', 'thachhuongtramhg@gmail.com', '0966506645', '1961-10-19', 1, 1),
(125, 'Nguyen Thanh Thanh', 'nhannt@gmail.com', '0965512345', '1900-01-01', 1, 1),
(126, 'Nguyen Thanh Nhan', 'nhanntt@gmail.com', '0965689631', '1900-01-01', 1, 1),
(127, 'thanh nhan', 'nhantc@gmail.com', '0965689456', '1900-01-01', 1, 1),
(128, 'Nhan Thanh', 'nhanthanh@gmail.com', '0965686546', '1900-01-01', 1, 1),
(129, 'Nhan Nguyen Thanh', 'nhannguyenthanh@gmail.com', '0965689789', '1900-01-01', 1, 1),
(130, 'Nguyen Truong Hoai', 'nguyentruonghoai@gmail.com', '0965456321', '2019-11-12', 1, 1),
(131, 'Nguyen Truong Hoai', 'nguyentruonghoai@gmail.com', '0965456321', '2019-11-12', 1, 1),
(132, 'Nguyen Hai Duong', 'nguyenhaiduong@fpt.edu.vn', '0987654125', '1900-01-01', 1, 1),
(133, 'Nguyen Hai Duong', 'nguyenhaiduong@fpt.edu.vn', '0987654125', '1900-01-01', 1, 1),
(134, 'Nguyen Hau Nguyen', 'nguyenhaunguyen@gmail.com', '0965369258', '1900-01-01', 1, 1),
(137, 'Nguyen Thanh Nhan', 'nguyenthanhnhan@gmail.com', '0965689616', '1999-01-01', 1, 1),
(138, 'aa', 'nguye@adas.mail.com', '0965689611', '2019-11-08', 2, 1),
(139, 'Nguyá»?n ThÃ nh NhÃ¢na', 'nguyenthanhnhaaan@gmail.com', '0965689612', '2019-11-08', 2, 1),
(140, 'linh', 'linh@gmail.com', '0974440621', '2019-11-10', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `idDistricts` int(11) NOT NULL,
  `nameDistrict` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`idDistricts`, `nameDistrict`, `status`) VALUES
(1, 'Ninh Kieu', 1),
(2, 'Binh Thuy', 1),
(3, 'Cai Rang', 1),
(4, 'Phong Dien', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) NOT NULL,
  `nameEmployee` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `account` varchar(150) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`idEmployee`, `nameEmployee`, `gender`, `address`, `mail`, `phone`, `birthday`, `account`, `password`, `status`, `idRole`) VALUES
(61, 'Truong Thi Kieu Oanh', 2, 'Can Tho', 'truongthithucoanh@fpt.edu.vn', '0846990822', '1988-02-01', 'truongthithucoanh', '78766cd6f42389428a808c69b2abbdc5', 1, 2),
(62, 'Huynh Thien Thao', 2, 'Quang Trung, P. Phu Thu, Q. Cai Rang', 'huynhthienthaotg@outlook.com', '0328560468', '1998-10-06', 'huynhthienthao', '376b88892a0bf52bc448d94a8ef1eabd', 1, 2),
(63, 'Ta Uyen Minh', 2, 'Tran Viet Chau, P. An Hoa, Q. Ninh Kieu', 'tauyenminh@outlook.com', '0821227133', '1957-09-02', 'tauyenminh', 'a5943a0c31ffe76b81ebcbe11ac51120', 1, 2),
(64, 'Dang Kieu Nuong', 2, 'Tran Phu, P. Cai Khe, Q. Ninh Kieu', 'dangkieunuongct@gmail.com', '0981680057', '1982-04-13', 'dangkieunuong', '565763a1c899b09bd235741969c4d524', 1, 2),
(65, 'Duong Mong Nhi', 2, 'Ngo Gia Tu, P. An Hoi, Q. Ninh Kieu', 'duongmongnhihg@gmail.com', '0567589252', '1983-05-08', 'duongmongnhi', '25eae30f921c0d926c16a5f36deebd2d', 1, 2),
(66, 'Ly Diep Anh', 2, 'Phan Van Tri, P. An Phu, Q. Ninh Kieu', 'lydiepanhtg@outlook.com', '0812098735', '1955-03-05', 'lydiepanh', 'eedaa69b5e6967930c846464f10919e1', 1, 2),
(67, 'Ong Nguyet Uyen', 2, 'Nguyen Trai, P. An Hoi, Q. Ninh Kieu', 'ongnguyetuyen@outlook.com', '0326041233', '1987-07-22', 'ongnguyetuyen', '1a17b2d5719db4e6560f8a15caa4d801', 1, 2),
(68, 'Dam Nhu Quan', 2, 'Ql91B, P. Long Hoa, Q. Binh Thuy', 'damnhuquanhg@outlook.com', '0839865183', '1950-07-17', 'damnhuquan', 'f508777d2b3b19353cf615299fd8a713', 1, 2),
(69, 'Cao Vu Hong', 2, 'Dinh Cong Trang, P. Xuan Khanh, Q. Ninh Kieu', 'caovuhongtg@outlook.com', '0706176530', '1952-06-23', 'caovuhong', '97b984f2e950b181c45db3ded8581d14', 1, 2),
(70, 'Banh Huong Lan', 2, 'Ung Van Khiem, P. Cai Khe, Q. Ninh Kieu', 'banhhuonglanct@fpt.edu.vn', '0791348228', '1981-11-15', 'banhhuonglan', 'e73f015793f4c8246bf8b4fa47cb4484', 1, 2),
(71, 'Huynh Tuyet Loan', 2, 'Nguyen Dinh Chieu, P. An Hoi, Q. Ninh Kieu', 'huynhtuyetloantg@outlook.com', '0862319264', '1963-05-14', 'huynhtuyetloan', 'f5799d8222694b2c64a5152b193b455f', 1, 2),
(72, 'Ho Huyen Ngoc', 2, 'Tran Hoang Na, P. Hung Loi, Q. Ninh Kieu', 'hohuyenngocct@fpt.edu.vn', '0974044538', '1967-08-05', 'hohuyenngoc', '263558de282ea2cc4d45e7e47d64c4e0', 1, 2),
(73, 'Khuu Phuong Yen', 2, '30/4, P. An Phu, Q. Ninh Kieu', 'khuuphuongyenhg@outlook.com', '0989580768', '1968-12-12', 'khuuphuongyen', 'dbe69395edd4e870d86e7b3d053b19f7', 1, 2),
(74, 'Doan Kieu Hanh', 2, 'Nguyen Dinh Chieu, P. An Hoi, Q. Ninh Kieu', 'doankieuhanhhg@outlook.com', '0365637749', '1971-04-02', 'doankieuhanh', '43226af18f39662bc1665869530700a5', 1, 2),
(75, 'Duong Mong Lan', 2, 'Phan Van Tri, P. An Phu, Q. Ninh Kieu', 'duongmonglanhg@gmail.com', '0332587032', '1963-04-06', 'duongmonglan', '825a3ef9927b014a909b99abdcf05a98', 1, 2),
(76, 'Duong Bich Loan', 2, '3/2, P. Hung Loi, Q. Ninh Kieu', 'duongbichloanct@fpt.edu.vn', '0771470940', '1979-02-01', 'duongbichloan', '6b6c46df3e4f1b17ae300c8b49df92cc', 1, 2),
(77, 'Thach Tuyet Nhung', 2, 'Tran Ngoc Que, P. Xuan Khanh, Q. Ninh Kieu', 'thachtuyetnhung@outlook.com', '0838861036', '1957-04-17', 'thachtuyetnhung', '73eef00cc792ddc37ed99c801678057f', 1, 2),
(78, 'Dam Quynh Thanh', 2, 'Song Hau, P. Cai Khe, Q. Ninh Kieu', 'damquynhthanhct@fpt.edu.vn', '0326945625', '1956-09-16', 'damquynhthanh', '89342e14c099acacc7486d254aeab425', 1, 2),
(79, 'Lam Yen Phuong', 2, 'Mau Than, P. An Hoa, Q. Ninh Kieu', 'lamyenphuongtg@outlook.com', '0328709962', '1962-09-10', 'lamyenphuong', '49d38b99ca45137f6687dcac499fe114', 1, 2),
(80, 'Tang Phuong Nghi', 2, 'Hung Vuong, P. Thoi Binh, Q. Ninh Kieu', 'tangphuongnghi@gmail.com', '0329718574', '1957-11-20', 'tangphuongnghi', 'aab74d11690452d3d4020bd991946295', 1, 2),
(81, 'To Nguyet Uyen', 2, 'Ql91B, P. Hung Loi, Q. Ninh Kieu', 'tonguyetuyenct@gmail.com', '0378652640', '1971-04-07', 'tonguyetuyen', '4f2d3e3def61dedcc7729f192b1abba4', 1, 2),
(82, 'Huynh Nhat Lan', 2, 'Ngo Huu Hanh, P. An Hoi, Q. Ninh Kieu', 'huynhnhatlanhg@outlook.com', '0567938591', '1983-11-01', 'huynhnhatlan', 'c037d904c0d5e5251b23ed091a5ac14d', 1, 2),
(83, 'Dang Thien Kim', 2, 'Nguyen Thi Minh Khai, P. An Lac, Q. Ninh Kieu', 'dangthienkim@fpt.edu.vn', '0351658175', '1969-12-06', 'dangthienkim', 'f5f32e4e5508bae06298f105aca90789', 1, 2),
(84, 'Cu Giang Tien', 2, 'Ngo Quyen, P. An Cu, Q. Ninh Kieu', 'cugiangtienhg@gmail.com', '0705891251', '1972-12-04', 'cugiangtien', '62afa45ebdbc66446b7ff6307d0356d4', 1, 2),
(85, 'Dao Cat Tien', 2, 'Ql1A, Q. Cai Rang', 'daocattienhg@fpt.edu.vn', '0792437668', '1991-10-09', 'daocattien', '9646550674fd1be06ede59f9ab5a8a03', 1, 2),
(86, 'Dang Minh Phuong', 2, 'Vo Van Kiet, P. An Thoi, Q. Binh Thuy', 'dangminhphuong@gmail.com', '0327366649', '1968-08-16', 'dangminhphuong', '3687beb1885d74538e8d99850f80cb6e', 1, 2),
(87, 'Truong Tam Trang', 2, 'Vo Thi Sau, P. An Hoi, Q. Ninh Kieu', 'truongtamtrangct@gmail.com', '0821077383', '1974-09-07', 'truongtamtrang', '1141a22e95349fe4154d9b3d78b399ce', 1, 2),
(88, 'Nguyen Thu Giang', 2, 'Nguyen Thai Hoc, P. Tan An, Q. Ninh Kieu', 'nguyenthugiangct@gmail.com', '0964734886', '1994-07-10', 'nguyenthugiang', '503810bd987c36b2487b218bf7192682', 1, 2),
(89, 'Duong Le Thuy', 2, 'Dien Bien Phu, P. Tan An, Q. Ninh Kieu', 'duonglethuy@outlook.com', '0394490982', '1956-12-01', 'duonglethuy', '51b4e6b2c2438345db01583ff23b9b65', 1, 2),
(90, 'Mai Nguyet Anh', 2, 'Mau Than, P. An Hoa, Q. Ninh Kieu', 'mainguyetanhhg@outlook.com', '0866941121', '1970-06-27', 'mainguyetanh', 'b3cfe48bded7df601e1bf362b7888f41', 1, 2),
(91, 'Ho Ngoc Bich', 2, 'Ngo Quyen, P. An Cu, Q. Ninh Kieu', 'hongocbich@fpt.edu.vn', '0843547371', '1979-03-26', 'hongocbich', '0af16766130996b938cf6108b3a9a261', 1, 2),
(92, 'Duong Kieu Dung', 2, 'Chau Van Liem, P. An Lac, Q. Ninh Kieu', 'duongkieudungct@fpt.edu.vn', '0843894358', '1996-03-17', 'duongkieudung', '1c6964cc359d24b2266cc1a8fd069627', 1, 2),
(93, 'Lam Suong Suong', 2, 'Le Loi, P. Cai Khe, Q. Ninh Kieu', 'lamsuongsuong@fpt.edu.vn', '0764813262', '1982-05-08', 'lamsuongsuong', 'dff8047c5df576a55588f70314a014ba', 1, 2),
(94, 'Vo Ngoc Thi', 2, 'Phan Van Tri, P. An Phu, Q. Ninh Kieu', 'vongocthihg@fpt.edu.vn', '0367112416', '1964-06-01', 'vongocthi', '3cbcd2ead80c1987cef7f753c2ecf64c', 1, 2),
(95, 'Vo Mai Hien', 2, 'Phan Dinh Phung, P. Tan An, Q. Ninh Kieu', 'vomaihien@fpt.edu.vn', '0977356748', '1986-03-10', 'vomaihien', 'cc041757247028fe768729faa830cf75', 1, 2),
(96, 'Thach Lan Phuong', 2, 'Tan Trao, P. Tan An, Q. Ninh Kieu', 'thachlanphuonghg@gmail.com', '0377148856', '1956-12-13', 'thachlanphuong', '6d30a36a5206e42f959c9bfa6f41f4be', 1, 2),
(97, 'Bui An Nhien', 2, '3/2, P. Hung Loi, Q. Ninh Kieu', 'buiannhien@outlook.com', '0386467510', '1973-11-16', 'buiannhien', '49aff3b8c88c4cb3195f89ef3345daf9', 1, 2),
(98, 'Vo Bach Hoa', 2, 'Ly Thuong Kiet, P. Tan An, Q. Ninh Kieu', 'vobachhoahg@fpt.edu.vn', '0789417660', '1964-08-16', 'vobachhoa', '07541326504781d2a90fb401c3ccb540', 1, 2),
(99, 'Truong Tu Uyen', 2, 'Ql91, Q. O Mon', 'truongtuuyen@outlook.com', '0826531326', '1961-12-12', 'truongtuuyen', '1f9c1426fe699dd42cbdbee7d0823a88', 1, 2),
(100, 'Dang Khanh Linh', 2, 'Ngo Huu Hanh, P. An Hoi, Q. Ninh Kieu', 'dangkhanhlinhhg@fpt.edu.vn', '0358437407', '1994-04-13', 'dangkhanhlinh', 'bb9b362064b2aad61e11c18fd8b642cd', 1, 2),
(101, 'Ho Phuong Nhung', 2, 'Nguyen Van Cu Noi Dai, P. An Khanh, Q. Ninh Kieu', 'hophuongnhungtg@outlook.com', '0565836993', '1971-02-26', 'hophuongnhung', '40ed9d87fb5cf4d4fa734a5b63d184a2', 1, 2),
(102, 'Mai Nguyet Minh', 2, 'Phan Van Tri, P. An Phu, Q. Ninh Kieu', 'mainguyetminhct@fpt.edu.vn', '0767285267', '1967-09-05', 'mainguyetminh', '4864a69da3db617d9cdcb2f2d06ba311', 1, 2),
(103, 'Cu Ngoc Lan', 2, 'Nguyen Trai, P. An Hoi, Q. Ninh Kieu', 'cungoclanhg@fpt.edu.vn', '0818792241', '1959-12-22', 'cungoclan', 'f2ecb51afbfb4ee1251953a9564460ff', 1, 2),
(104, 'Phung Hong Diem', 2, 'Hai Ba Trung, P. Tan An, Q. Ninh Kieu', 'phunghongdiem@outlook.com', '0813329637', '1995-03-05', 'phunghongdiem', '7e5b55e329336e3c4ac2f960fa991731', 1, 2),
(105, 'Banh Lan Truc', 2, '3/2, P. Hung Loi, Q. Ninh Kieu', 'banhlantruchg@gmail.com', '0852451457', '1957-12-26', 'banhlantruc', '017bf228c8331327bdfb67b1798bff80', 1, 2),
(106, 'Dinh My Le', 2, 'Nam Ky Khoi Nghia, P. Tan An, Q. Ninh Kieu', 'dinhmylect@fpt.edu.vn', '0331396908', '1957-05-19', 'dinhmyle', '23c8e0f2a4ed6d3dc8350dc142b38974', 1, 2),
(107, 'Duong Bao Ha', 2, 'Dinh Cong Trang, P. Xuan Khanh, Q. Ninh Kieu', 'duongbaohahg@gmail.com', '0847085340', '1980-07-24', 'duongbaoha', '47b91e041ebac1ac6f69f540a92ca4f8', 1, 2),
(108, 'Ly Hong Thuy', 2, 'Nam Ky Khoi Nghia, P. Tan An, Q. Ninh Kieu', 'lyhongthuy@gmail.com', '0858050758', '1978-05-11', 'lyhongthuy', '0c7941e3d62949df142016b4b865bb01', 1, 2),
(109, 'Banh Thuy Vy', 2, 'Phan Dinh Phung, P. Tan An, Q. Ninh Kieu', 'banhthuyvytg@outlook.com', '0339025546', '1962-02-25', 'banhthuyvy', '42d34d8d163f8afc0b73b9393c8bc19a', 1, 2),
(110, 'Ly Kim Hoa', 2, 'Song Hau, P. Cai Khe, Q. Ninh Kieu', 'lykimhoa@outlook.com', '0335786935', '1976-07-07', 'lykimhoa', '6567efabab5ea8727b64577669b3016d', 1, 2),
(111, 'Cu Khac Vu', 1, 'Phan Van Tri, P. An Phu, Q. Ninh Kieu', 'cukhacvu@fpt.edu.vn', '0347915084', '1955-06-04', 'cukhacvu', '992dbf4c0c025ddb8787151c41d3b0f0', 1, 2),
(112, 'Doan Xuan Ninh', 1, 'Mau Than, P. Xuan Khanh, Q. Ninh Kieu', 'doanxuanninhct@fpt.edu.vn', '0789191514', '1996-10-22', 'doanxuanninh', '6b3dc68ccbf7c856098f92ce8c0766b4', 1, 2),
(113, 'Trieu Viet Hung', 1, 'Quang Trung, P. Hung Phu,  Q. Cai Rang', 'trieuviethung@gmail.com', '0326147169', '1981-12-22', 'trieuviethung', '035be8d72e43df2726dff4bed034205e', 1, 2),
(114, 'Phan Khoi Nguyen', 1, 'Tran Van Kheo, P. Cai Khe, Q. Ninh Kieu', 'phankhoinguyenhg@fpt.edu.vn', '0844556964', '1979-07-17', 'phankhoinguyen', 'fe28236fbffe621b345eb925f426d9a6', 1, 2),
(115, 'Pham Thanh Phong', 1, 'Vo Van Kiet, P. An Thoi, Q. Binh Thuy', 'phamthanhphonghg@outlook.com', '0702395500', '1989-09-18', 'phamthanhphong', 'aafdfa92faa21bab61d7680200854d64', 1, 2),
(116, 'Phan Viet Khai', 1, 'Tan Trao, P. Tan An, Q. Ninh Kieu', 'phanvietkhaihg@gmail.com', '0396949958', '1975-06-14', 'phanvietkhai', 'da5d8225cf9a9ceb4d582ea0d7d30667', 1, 2),
(117, 'To Thang Long', 1, 'Ngo Quyen, P. An Cu, Q. Ninh Kieu', 'tothanglonghg@gmail.com', '0854663749', '1980-05-01', 'tothanglong', '14a4541fbe6646703012885c00774c65', 1, 2),
(118, 'Ma Thuy Du', 1, 'Ql91B, P. Hung Loi, Q. Ninh Kieu', 'mathuydu@gmail.com', '0369106859', '1958-09-26', 'mathuydu', '062345dd0d17b8438adfd4e0652ee582', 1, 2),
(119, 'Quach Xuan Nam', 1, 'Ly Tu Trong, P. An Cu, Q. Ninh Kieu', 'quachxuannamct@gmail.com', '0792571374', '1988-10-26', 'quachxuannam', '4b1faf652e90b0bab07e4d5a47bcbbdb', 1, 2),
(120, 'Phung Quang Trieu', 1, 'Ngo Huu Hanh, P. An Hoi, Q. Ninh Kieu', 'phungquangtrieuhg@gmail.com', '0354641104', '1998-03-19', 'phungquangtrieu', 'fa4814c5982714320697cb3cbcab57b8', 1, 2),
(121, 'Lam Tat Hieu', 1, 'Quang Trung, P. Hung Phu,  Q. Cai Rang', 'lamtathieu@gmail.com', '0329394481', '1983-02-03', 'lamtathieu', 'f30e8e341b691d51f0f2bb0c1b7ecabd', 1, 2),
(122, 'Duong Tai Duc', 1, 'Ngo Gia Tu, P. An Hoi, Q. Ninh Kieu', 'duongtaiduc@gmail.com', '0394785956', '1955-11-01', 'duongtaiduc', '4a31e3faeef2e98953d56f94e643da32', 1, 2),
(123, 'Dinh Thien Manh', 1, 'Tran Phu, P. Cai Khe, Q. Ninh Kieu', 'dinhthienmanhhg@outlook.com', '0961976957', '1972-10-02', 'dinhthienmanh', 'b8d6bae86b09337d9b969036d7c151e2', 1, 2),
(124, 'Trang Khanh Phi', 1, 'Ly Tu Trong, P. An Cu, Q. Ninh Kieu', 'trangkhanhphict@gmail.com', '0783437375', '1973-05-17', 'trangkhanhphi', 'c23a63cdbdd4060daedada0c0621d4ab', 1, 2),
(125, 'Ho Chi Bao', 1, 'Tran Van Hoai, P. Xuan Khanh, Q. Ninh Kieu', 'hochibao@outlook.com', '0322763757', '1952-02-13', 'hochibao', 'ec1e7077d02cb3dbd61ab73018c4a319', 1, 2),
(126, 'Tran Ngoc Khuong', 1, '30/4, P. An Phu, Q. Ninh Kieu', 'tranngockhuonghg@outlook.com', '0765297383', '1968-07-15', 'tranngockhuong', '028b9d6d5995022d0e4ceb558356405b', 1, 2),
(127, 'Quach Ngoc Khoi', 1, 'Tran Ngoc Que, P. Xuan Khanh, Q. Ninh Kieu', 'quachngockhoitg@outlook.com', '0825172256', '1983-02-06', 'quachngockhoi', '9547610a42e52200c166547fbeef13b9', 1, 2),
(128, 'Truong Tri Dung', 1, 'Mau Than, P. An Hoa, Q. Ninh Kieu', 'truongtridung@gmail.com', '0707744894', '1997-05-05', 'truongtridung', '52c2ed6e0c256c227ef0c03fce6e4b17', 1, 2),
(129, 'Tang Trung Duc', 1, 'Chau Van Liem, P. An Lac, Q. Ninh Kieu', 'tangtrungduc@outlook.com', '0356194479', '1970-02-19', 'tangtrungduc', '54d5de71f0d6882d6fa9a6e07073bf5d', 1, 2),
(130, 'Mai Viet Hong', 1, 'Hung Vuong, P. Thoi Binh, Q. Ninh Kieu', 'maiviethong@gmail.com', '0853867409', '1989-09-24', 'maiviethong', 'c71cbe0842e937579bedfe92bc12a372', 1, 2),
(131, 'Do Tuan Anh', 1, 'Duong Truc Chinh, Q. Binh Thuy', 'dotuananhhg@gmail.com', '0327377920', '1992-09-14', 'dotuananh', '4f054538eb0da3faf60d4977d04fef84', 1, 2),
(132, 'Quach Phuc Lam', 1, 'Dinh Cong Trang, P. Xuan Khanh, Q. Ninh Kieu', 'quachphuclamhg@outlook.com', '0367396943', '1968-11-01', 'quachphuclam', 'c3b905d14604164c65e14d4d643f66a8', 1, 2),
(133, 'Dinh Tuong Lan', 1, 'Ql91, Q. O Mon', 'dinhtuonglanct@fpt.edu.vn', '0369886823', '1977-10-13', 'dinhtuonglan', 'f8339d218d5e9f3139aea68f4212b1e3', 1, 2),
(134, 'Ong Xuan Nam', 1, 'Tan Trao, P. Tan An, Q. Ninh Kieu', 'ongxuannam@outlook.com', '0813272435', '1964-12-19', 'ongxuannam', '39edcacda888e27929953cde28d43320', 1, 2),
(135, 'Do Cong Vinh', 1, 'Song Hau, P. Cai Khe, Q. Ninh Kieu', 'docongvinh@fpt.edu.vn', '0839317136', '1984-11-16', 'docongvinh', 'd237df781cc086b129f101629625f344', 1, 2),
(136, 'Cao Gia An', 1, 'Ql91, Q. O Mon', 'caogiaan@fpt.edu.vn', '0969717277', '1959-06-08', 'caogiaan', 'f84f8a678e5391aa0e785d54d14810ef', 1, 2),
(137, 'Lai Huu Tam', 1, 'Le Hong Phong, P. Tra Noc, Q. Binh Thuy', 'laihuutamhg@fpt.edu.vn', '0375495568', '1971-09-02', 'laihuutam', '3146c01d4054ef8a3467b7d155e05d25', 1, 2),
(138, 'Ho Gia Bach', 1, 'Ql91B, P. Hung Loi, Q. Ninh Kieu', 'hogiabachct@fpt.edu.vn', '0818848552', '1958-06-23', 'hogiabach', 'ff24b864fbf51f385dc9dc7cc3e2e72a', 1, 2),
(139, 'Vu Dung Tri', 1, 'Hai Ba Trung, P. Tan An, Q. Ninh Kieu', 'vudungtri@gmail.com', '0394460729', '1985-02-12', 'vudungtri', 'b5b5b597e4027c785ed831b66ef29e4e', 1, 2),
(140, 'To Thien Sinh', 1, 'Tran Hoang Na, P. Hung Loi, Q. Ninh Kieu', 'tothiensinh@outlook.com', '0823407486', '1976-08-18', 'tothiensinh', '2574a3ccb616725023a474ed062e7e2f', 1, 2),
(141, 'Do Dinh Toan', 1, 'Le Loi, P. Cai Khe, Q. Ninh Kieu', 'dodinhtoanhg@gmail.com', '0704140523', '1954-03-09', 'dodinhtoan', '1888f3e43668b22d9b282238e8ccdcfb', 1, 2),
(142, 'Doan Truong Giang', 1, 'Nam Ky Khoi Nghia, P. Tan An, Q. Ninh Kieu', 'doantruonggiang@outlook.com', '0777890812', '1966-02-14', 'doantruonggiang', 'c38ec9a78448bf490ea74354f9d98592', 1, 2),
(143, 'Le Hai Dang', 1, 'Song Hau, P. Cai Khe, Q. Ninh Kieu', 'lehaidangct@gmail.com', '0398725289', '1990-10-06', 'lehaidang', '15ef7c061f169c5ee0d522812fab8e3e', 1, 2),
(144, 'Tran Cao Phong', 1, 'Hai Ba Trung, P. Tan An, Q. Ninh Kieu', 'trancaophongtg@outlook.com', '0363939932', '1973-11-14', 'trancaophong', '2e6f577ffd8983d9df46fd01bd4de840', 1, 2),
(145, 'Pham Hiep Vu', 1, 'Le Loi, P. Cai Khe, Q. Ninh Kieu', 'phamhiepvuhg@fpt.edu.vn', '0968195910', '1998-06-08', 'phamhiepvu', 'ea194a56d21cf68393ccf8aa4ab2f6da', 1, 2),
(146, 'Phung Xuan Cung', 1, 'Nguyen An Ninh, P. Tan An, Q. Ninh Kieu', 'phungxuancung@outlook.com', '0823816682', '1987-02-06', 'phungxuancung', '3b3ec82492f2aa5eac834f40bcdc750e', 1, 2),
(147, 'Truong Quang Khai', 1, 'Duong Truc Chinh, Q. Binh Thuy', 'truongquangkhaitg@outlook.com', '0563942163', '1972-08-03', 'truongquangkhai', 'c3c71d376d7f05dd3cc552c3c9d2043f', 1, 2),
(148, 'Luong Minh An', 1, '30/4, P. An Phu, Q. Ninh Kieu', 'luongminhanct@fpt.edu.vn', '0354506564', '1971-07-11', 'luongminhan', '117befa0edb36df97901c932654af2dc', 1, 2),
(149, 'Doan Trong Hung', 1, '30/4, P. An Phu, Q. Ninh Kieu', 'doantronghung@outlook.com', '0989152810', '1961-09-03', 'doantronghung', '50e33d4b76f9657de49a311b7a4be48c', 1, 2),
(150, 'Cu Huu Tan', 1, 'Vo Van Kiet, P. An Thoi, Q. Binh Thuy', 'cuhuutanct@gmail.com', '0367947129', '1999-07-26', 'cuhuutan', '2fc030bd1d95d19ecf3ae20c8bd4cee5', 1, 2),
(151, 'Banh An Thien', 1, 'Phan Dang Luu, P. Thoi Binh, Q. Ninh Kieu', 'banhanthien@gmail.com', '0367067185', '1996-06-18', 'banhanthien', '01bad9c5145aacc2864b4abe599f9086', 1, 2),
(152, 'Khuu Nguyen Giap', 1, 'Tran Hoang Na, P. Hung Loi, Q. Ninh Kieu', 'khuunguyengiap@gmail.com', '0974517929', '1976-03-25', 'khuunguyengiap', '551081d1d00d9f3266a5ccf4bde64640', 1, 2),
(153, 'Pham Nam Hung', 1, 'Ly Tu Trong, P. An Cu, Q. Ninh Kieu', 'phamnamhung@outlook.com', '0855981304', '1991-07-04', 'phamnamhung', '4ef21db8dd23816182b371fbbc96c6d8', 1, 2),
(154, 'Doan Gia Phuc', 1, 'Hoa Binh, P.Tan An, Q.Ninh Kieu', 'doangiaphuc@outlook.com', '0346363118', '1987-03-21', 'doangiaphuc', '3f7c202f792832ad2af4954f99f393db', 1, 2),
(155, 'Khuu Duc Toan', 1, 'Ngo Quyen, P. An Cu, Q. Ninh Kieu', 'khuuductoan@fpt.edu.vn', '0971425811', '1990-02-13', 'khuuductoan', 'b6059262044eabcb0df593e81b4e5b1c', 1, 2),
(156, 'Phung Huu Tai', 1, 'Le Loi, P. Cai Khe, Q. Ninh Kieu', 'phunghuutai@gmail.com', '0763362923', '1992-03-19', 'phunghuutai', '00359b631834e26a7f656cb89ccf9fdb', 1, 2),
(157, 'Ta Quoc Hiep', 1, 'Nam Ky Khoi Nghia, P. Tan An, Q. Ninh Kieu', 'taquochiep@fpt.edu.vn', '0791613525', '1950-11-01', 'taquochiep', '675d1565388848a48909d0c896229a6a', 1, 2),
(158, 'Thach Kien Trung', 1, 'Nam Ky Khoi Nghia, P. Tan An, Q. Ninh Kieu', 'thachkientrungct@gmail.com', '0796217959', '1956-03-02', 'thachkientrung', '0f0da02505771233c5897fe00e0f4963', 1, 2),
(159, 'Khuu Tri Huu', 1, 'Nguyen Van Cu Noi Dai, P. An Khanh, Q. Ninh Kieu', 'khuutrihuuhg@gmail.com', '0334351062', '1960-03-04', 'khuutrihuu', 'cd934004686bcbbba8b3ac2d4f9d4366', 1, 2),
(160, 'Duong Hoang Khang', 1, 'Nguyen Van Cu Noi Dai, P. An Khanh, Q. Ninh Kieu', 'duonghoangkhangct@gmail.com', '0782462644', '1995-04-11', 'duonghoangkhang', '44e9f27d837864091b90c2e51ba63e6e', 1, 2),
(161, 'Nguyen Thanh Nhan', 1, '65 so 5 street', 'nhanntce130377@fpt.edu.vn', '0965689616', '1926-08-20', 'nhannt', 'e051d12657d2ddb7ccd8982ab5798de1', 1, 2),
(162, 'Nguyen Thanh Dat', 1, '65 so 5 street', 'datntce130377@fpt.edu.vn', '0965689617', '3899-03-21', 'datnt', 'e051d12657d2ddb7ccd8982ab5798de1', 1, 1),
(163, 'Nguyen Hoai Bao', 1, 'Can Tho', 'nguyenthanhdat@gmail.com', '0965665656', '1970-01-01', 'nguyenthanhbao', 'e051d12657d2ddb7ccd8982ab5798de1', 1, 1),
(165, 'Nguyen Thanh Nhan', 1, '65 so 5 street', 'nhanntce130377@fpt.edu.vn', '0965689123', '1999-01-01', 'nhanntce', 'e051d12657d2ddb7ccd8982ab5798de1', 1, 1),
(166, 'Nhan Thanh', 1, 'Can Tho', 'nhan', '0978456321', '1999-01-01', 'nhan', 'e051d12657d2ddb7ccd8982ab5798de1', 1, 2),
(167, 'Thanh Nhan', 1, 'Can Tho', 'thanhnhan@gmail.com', '0965689616', '1999-12-13', 'nhan', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `idImage` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`idImage`, `image`, `idProduct`) VALUES
(4, '1-4.jpg', 1),
(264, '43-111.jpeg', 43),
(265, '43-12pexels-photo-271753.jpeg', 43),
(266, '43-13pexels-photo-279719.jpeg', 43),
(267, '43-14pexels-photo-1457842.jpeg', 43),
(268, '43-15pexels-photo-1571458.jpeg', 43),
(269, '44-111.jpeg', 44),
(270, '44-12pexels-photo-271753.jpeg', 44),
(271, '44-13pexels-photo-279719.jpeg', 44),
(272, '44-14pexels-photo-1457842.jpeg', 44),
(273, '44-15pexels-photo-1571458.jpeg', 44),
(274, '45-11pexels-photo-1457842.jpeg', 45),
(275, '45-12pexels-photo-1571453.jpeg', 45),
(276, '45-13pexels-photo-1571458.jpeg', 45),
(277, '45-14pexels-photo-2062426.jpeg', 45),
(278, '1-1.jpeg', 1),
(279, '1-2.jpeg', 1),
(280, '1-3.jpeg', 1),
(281, '2-1.jpg', 2),
(282, '2-2.jpg', 2),
(283, '2-4.jpg', 2),
(284, '2-3.jpg', 2),
(285, '3-1.jpg', 3),
(286, '3-2.jpg', 3),
(287, '3-3.jpeg', 3),
(288, '3-4.jpeg', 3),
(289, '4-4.jpg', 4),
(290, '4-3.jpg', 4),
(291, '4-2.jpg', 4),
(292, '4-1.jpg', 4),
(293, '4-5.jpg', 4),
(294, '5-4.jpeg', 5),
(295, '5-3.jpeg', 5),
(296, '5-2.jpeg', 5),
(297, '5-1.jpeg', 5),
(298, '6-1.jpeg', 6),
(299, '6-2.jpeg', 6),
(300, '6-3.jpeg', 6),
(301, '6-4.jpeg', 6),
(302, '6-5.jpeg', 6),
(303, '6-1.jpeg', 8),
(304, '6-1.jpeg', 8),
(305, '6-1.jpeg', 8),
(306, '6-1.jpeg', 8),
(307, '6-1.jpeg', 8),
(308, '6-1.jpeg', 6),
(309, '7-1.jpeg', 7),
(310, '7-1.jpg', 7),
(311, '7-2.jpeg', 7),
(312, '7-3.jpeg', 7),
(313, '7-4.jpeg', 7),
(314, '7-5.jpeg', 7),
(315, '7-1.jpeg', 9),
(316, '7-1.jpg', 9),
(317, '7-2.jpeg', 9),
(318, '7-3.jpeg', 9),
(319, '7-4.jpeg', 9),
(320, '7-5.jpeg', 9),
(321, '10-1.jpeg', 10),
(322, '10-2.jpeg', 10),
(323, '10-3.jpeg', 10),
(324, '10-4.jpeg', 10),
(325, '10-5.jpeg', 10),
(331, '11-1.jpeg', 11),
(332, '11-2.jpeg', 11),
(333, '11-3.jpeg', 11),
(334, '11-4.jpeg', 11),
(335, '11-5.jpeg', 11),
(341, '12-1.jpeg', 12),
(342, '12-2.jpeg', 12),
(343, '12-3.jpeg', 12),
(344, '12-4.jpeg', 12),
(345, '12-5.jpeg', 12),
(351, '13-1.jpeg', 13),
(352, '13-2.jpeg', 13),
(353, '13-3.jpeg', 13),
(354, '13-4.jpeg', 13),
(355, '13-5.jpeg', 13),
(361, '14-1.jpeg', 14),
(362, '14-2.jpeg', 14),
(364, '14-4.jpeg', 14),
(365, '14-5.jpeg', 14),
(371, '15-1.jpeg', 15),
(372, '15-2.jpeg', 15),
(373, '15-3.jpeg', 15),
(374, '15-4.jpeg', 15),
(375, '15-5.jpeg', 15),
(381, '16-1.jpeg', 16),
(382, '16-2.jpeg', 16),
(383, '16-3.jpeg', 16),
(384, '16-4.jpeg', 16),
(385, '16-5.jpeg', 16),
(391, '17-1.jpeg', 17),
(392, '17-2.jpeg', 17),
(393, '17-3.jpeg', 17),
(394, '17-4.jpeg', 17),
(395, '17-5.jpeg', 17),
(401, '18-1.jpeg', 18),
(402, '18-2.jpeg', 18),
(403, '18-3.jpeg', 18),
(404, '18-4.jpeg', 18),
(405, '18-5.jpeg', 18),
(411, '19-1.jpeg', 19),
(412, '19-2.jpeg', 19),
(413, '19-3.jpeg', 19),
(414, '19-4.jpeg', 19),
(415, '19-5.jpeg', 19),
(421, '30-1.jpeg', 30),
(422, '30-2.jpeg', 30),
(423, '30-3.jpeg', 30),
(424, '30-4.jpeg', 30),
(425, '30-5.jpeg', 30),
(431, '31-1.jpeg', 31),
(432, '31-2.jpeg', 31),
(433, '31-3.jpeg', 31),
(434, '31-4.jpeg', 31),
(435, '31-5.jpeg', 31),
(441, '31-1.jpeg', 41),
(442, '31-2.jpeg', 41),
(443, '31-3.jpeg', 41),
(444, '31-4.jpeg', 41),
(445, '31-5.jpeg', 41),
(446, '11-1.jpeg', 21),
(447, '11-2.jpeg', 21),
(448, '11-3.jpeg', 21),
(449, '11-4.jpeg', 21),
(450, '11-5.jpeg', 21),
(451, '10-1.jpeg', 20),
(452, '10-2.jpeg', 20),
(453, '10-3.jpeg', 20),
(454, '10-4.jpeg', 20),
(455, '10-5.jpeg', 20),
(456, '12-1.jpeg', 22),
(457, '12-2.jpeg', 22),
(458, '12-3.jpeg', 22),
(459, '12-4.jpeg', 22),
(460, '12-5.jpeg', 22),
(461, '13-1.jpeg', 23),
(462, '13-2.jpeg', 23),
(463, '13-3.jpeg', 23),
(464, '13-4.jpeg', 23),
(465, '13-5.jpeg', 23),
(466, '14-1.jpeg', 24),
(467, '14-2.jpeg', 24),
(468, '14-3.jpeg', 24),
(469, '14-4.jpeg', 24),
(470, '14-5.jpeg', 24),
(471, '15-1.jpeg', 25),
(472, '15-2.jpeg', 25),
(473, '15-3.jpeg', 25),
(474, '15-4.jpeg', 25),
(475, '15-5.jpeg', 25),
(476, '16-1.jpeg', 26),
(477, '16-2.jpeg', 26),
(478, '16-3.jpeg', 26),
(479, '16-4.jpeg', 26),
(480, '16-5.jpeg', 26),
(481, '17-1.jpeg', 27),
(482, '17-2.jpeg', 27),
(483, '17-3.jpeg', 27),
(484, '17-4.jpeg', 27),
(485, '17-5.jpeg', 27),
(486, '18-1.jpeg', 28),
(487, '18-2.jpeg', 28),
(488, '18-3.jpeg', 28),
(489, '18-4.jpeg', 28),
(490, '18-5.jpeg', 28),
(491, '19-1.jpeg', 29),
(492, '19-2.jpeg', 29),
(493, '19-3.jpeg', 29),
(494, '19-4.jpeg', 29),
(495, '19-5.jpeg', 29),
(496, '32-1.jpeg', 42),
(497, '32-2.jpeg', 42),
(498, '32-3.jpeg', 42),
(499, '32-4.jpeg', 42),
(500, '32-5.jpeg', 42),
(501, '32-1.jpeg', 32),
(503, '32-3.jpeg', 32),
(504, '32-4.jpeg', 32),
(505, '32-5.jpeg', 32),
(506, '32-1.jpeg', 39),
(508, '32-3.jpeg', 39),
(509, '32-4.jpeg', 39),
(510, '32-5.jpeg', 39),
(511, '33-1.jpeg', 38),
(512, '33-2.jpeg', 38),
(513, '33-3.jpeg', 38),
(514, '33-4.jpeg', 38),
(515, '33-5.jpeg', 38),
(516, '33-1.jpeg', 33),
(517, '33-2.jpeg', 33),
(518, '33-3.jpeg', 33),
(519, '33-4.jpeg', 33),
(520, '33-5.jpeg', 33),
(521, '33-1.jpeg', 34),
(522, '33-2.jpeg', 34),
(523, '33-3.jpeg', 34),
(524, '33-4.jpeg', 34),
(525, '33-5.jpeg', 34),
(526, '33-1.jpeg', 35),
(527, '33-2.jpeg', 35),
(528, '33-3.jpeg', 35),
(529, '33-4.jpeg', 35),
(530, '33-5.jpeg', 35),
(531, '13-1.jpeg', 36),
(532, '13-2.jpeg', 36),
(533, '13-3.jpeg', 36),
(534, '13-4.jpeg', 36),
(535, '13-5.jpeg', 36),
(536, '14-1.jpeg', 37),
(537, '14-2.jpeg', 37),
(539, '14-4.jpeg', 37),
(540, '14-5.jpeg', 37),
(545, '17-1.jpeg', 40),
(546, '17-2.jpeg', 40),
(547, '17-3.jpeg', 40),
(548, '17-4.jpeg', 40),
(549, '17-5.jpeg', 40),
(551, '32-edit-15', 32),
(552, '32-edit-15', 32),
(556, '9-edit-15', 9),
(558, '23-edit-15', 23),
(559, '2-edit-15Admin.jpg', 2),
(560, '2-edit-15', 2),
(561, '46-111.jpeg', 46),
(562, '46-121-1.jpeg', 46),
(563, '46-131-2.jpeg', 46),
(564, '46-141-3.jpeg', 46),
(565, '47-11pexels-photo-1571453 (1).jpeg', 47),
(566, '47-12pexels-photo-1571453.jpeg', 47),
(567, '47-13pexels-photo-1571458.jpeg', 47),
(568, '47-14pexels-photo-1643383.jpeg', 47);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `discript` text NOT NULL,
  `price` mediumtext NOT NULL,
  `square` double NOT NULL,
  `status` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  `idDistricts` int(11) NOT NULL,
  `position` varchar(200) NOT NULL,
  `shape` varchar(100) NOT NULL,
  `direction` varchar(100) NOT NULL,
  `juridical` varchar(100) NOT NULL,
  `rightOfWay` double NOT NULL,
  `publicTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProduct`, `discript`, `price`, `square`, `status`, `idType`, `idDistricts`, `position`, `shape`, `direction`, `juridical`, `rightOfWay`, `publicTime`) VALUES
(1, 'Facade house, two floor', '4000', 80, 2, 1, 2, 'alley 4, Bui Huu Nghia street', '20 x 4', 'Northeast', '100% residential', 6, '2019-11-08'),
(2, 'Facade house, three floor, near school', '2000', 8, 2, 1, 2, 'alley 11, Nguyen Viet Dung street', '20 x 4', 'Northeast', '100% residential', 6, '2019-11-14'),
(3, 'House roof, facede house, near Bui Huu Nghia high shool, An Thoi secondary shool, An Thoi primary shool', '5000', 100, 1, 1, 2, '82, Tran Quang Dieu street, An Thoi ward, Binh Thuy district, Can Tho city', '5x20', 'Northeast', '100% residential', 6, '2019-11-02'),
(4, 'Facade house, a living room, a kitchen, three bedrooms and two bathrooms', '3000', 120, 1, 1, 2, '16/18, Tran Quang Dieu street, An Thoi ward, Binh Thuy district, Can Tho city', '6x20', 'Northeast', '100% residential', 6, '2019-11-02'),
(5, 'Facade house, new 100%, one living room, three bedrooms, one study room, ', '4500', 120, 1, 1, 2, 'National Road 91b, Long Tuyen, Binh Thuy and Can Tho', '6x20', 'Northeast', '100% residential', 6, '2019-11-02'),
(6, 'A beautiful house, near Binh Thuy secondary shool, Binh Thuy primary shool ', '2500', 80, 1, 1, 2, 'Le Hong Phong street, Binh Thuy district, Can Tho city', '4x20', 'Northeast', '100% residential', 6, '2019-11-02'),
(7, 'The house is designed European style, near market', '6000', 100, 1, 1, 2, '192 Nguyen Thong Street, Binh Thuy District, Can Tho City', '5x20', 'West', '100% residential', 8, '2019-11-02'),
(8, 'House roof, one living room, two bedrooms', '2300', 100, 1, 1, 2, '192 Nguyen Thong Street, Binh Thuy District, Can Tho City', '5x20', 'West', '100% residential', 8, '2019-11-12'),
(9, 'Facade house, beautiful house, one living room, one bedroom, near market', '6000', 100, 1, 1, 2, '129 Nguyen Thong Street, Binh Thuy District, Can Tho City', '5x20', 'West', '100% residential', 8, '2019-11-12'),
(10, 'The house has a luxurious design, with furniture, near residential areas', '4000', 125, 1, 1, 2, 'Binh Thuy District, Can Tho City ', '5x25', 'South', 'residential', 3, '2019-11-04'),
(11, 'level 3 houses, near market', '600', 150, 1, 1, 4, 'Phong Dien District, Can Tho City ', '5x24', 'West', 'residential', 3, '2019-11-02'),
(12, 'level 3 houses, near market', '600', 150, 1, 2, 4, 'Phong Dien District, Can Tho City ', '5x24', 'West', 'residential', 3, '2019-11-02'),
(13, '2-storey house with car parking', '4000', 200, 1, 1, 4, 'Phong Dien District, Can Tho City ', '4x20', 'South', 'residential', 3, '2019-08-15'),
(14, 'The mini villa has an interior', '3000', 100, 1, 1, 4, 'Phong Dien District, Can Tho City ', '4x15', 'South', 'residential', 3, '2019-11-12'),
(15, '1-storey house is luxuriously designed', '5000', 200, 1, 1, 4, 'Phong Dien District, Can Tho City ', '5x20', 'South', 'residential', 3, '2019-04-11'),
(16, 'The house has 4 bedrooms with 2 floors, luxurious interior design', '7000', 400, 1, 1, 4, 'Phong Dien District, Can Tho City ', '7x30', 'South', 'residential', 3, '2019-06-21'),
(17, 'The house is not upstairs, has 3 bedrooms, luxurious furniture', '1000', 250, 1, 1, 4, 'Phong Dien District, Can Tho City ', '4x20', 'South', 'residential', 3, '2019-09-18'),
(18, 'The house is located in the center of the market, in a densely populated area', '5000', 200, 1, 1, 4, 'Phong Dien District, Can Tho City ', '4x20', 'South', 'residential', 3, '2019-01-08'),
(19, 'The house is located on an open street, near schools and markets', '2500', 220, 1, 1, 4, 'Phong Dien District, Can Tho City ', '4x25', 'South', 'residential', 3, '2019-05-28'),
(20, 'The house has a luxurious design, with furniture, near residential areas', '4000', 250, 1, 1, 4, 'Phong Dien District, Can Tho City ', '5x25', 'South', 'residential', 3, '2019-05-25'),
(21, 'High-class residential area', '3700', 90, 1, 1, 3, 'Street 4 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'South West', '100% residential', 8, '2019-11-02'),
(22, 'High-class residential area', '11000', 258, 1, 1, 3, 'Street 3 Nam Long residental area, Cai Rang District, Can Tho City', '15x19', 'North', '100% residential', 6, '2019-11-02'),
(23, 'The ground of residential', '3000', 79.8, 1, 1, 3, 'Street 1 Nam Long  residental area, Cai Rang District, Can Tho City', '5.1x14', 'East', '100% residential', 6, '2019-11-13'),
(24, 'High-class residential area', '6000', 250, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'West', '100% residential', 7, '2019-11-02'),
(25, 'High-class residential area', '9000', 500, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'West', '100% residential', 5, '2019-11-02'),
(26, 'High-class residential area', '4500', 250, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'South', '100% residential', 6, '2019-11-02'),
(27, 'High-class residential area', '5500', 300, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'South West', '100% residential', 8, '2019-11-02'),
(28, 'High-class residential area', '5200', 270, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'North West', '100% residential', 6, '2019-11-02'),
(29, 'High-class residential area', '1300', 60, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'South Eats', '100% residential', 7, '2019-11-02'),
(30, 'High-class residential area', '2600', 90, 1, 1, 3, 'Street 3 Long Thinh residental area, Cai Rang District, Can Tho City', '4.5x20', 'East', '100% residential', 8, '2019-11-02'),
(31, 'House 1 ground 2 floors, modern furniture all materials used high-class wood use (timber), 4 large bedrooms, 1 church, 1 living room, 1 kitchen, with car parking', '5200', 250, 1, 1, 1, 'Hang Bang residential area - An Binh Ward - Ninh Kieu District - Can Tho City', '4x20', 'West', '100% residential', 30, '2019-11-06'),
(32, '1 ground floor 4 floors, still new, can buy or sell business', '1800', 200, 1, 1, 1, ' Nguyen Van Cu Street - An Hoa Ward - Ninh Kieu District - Can Tho City', '4.5x20', 'West', '100% residential', 50, '2019-11-12'),
(33, 'densely populated area with high population, high population, and new housing may enter or re-rent on the day', '3100', 120, 1, 1, 1, ' Hang Bang residential area - An Binh Ward - Ninh Kieu District - Can Tho City', '4x14', ' South East ', '100% residential', 6, '2019-11-06'),
(34, 'house with modern design, near market, school, hospital, busy shopping and trading area, house with beds, fridge washing machine, 8 cameras, convenient for permanent residence, young couple separated, The house is very new and airy', '2100', 80, 1, 1, 1, 'Area 5, An Binh ward, Ninh Kieu district, Can Tho city', '4.5x12', ' South', '100% residential', 3, '2019-11-06'),
(35, 'Spacious living room, ground floor with 1 bedroom, 2nd floor of bedroom, kitchen, WC', '2300', 60, 1, 1, 1, ' alley 207, Dong Van Cong street, An Binh ward, Ninh Kieu district, Can Tho city', '5x12', ' SouthWest', '100% residential', 4, '2019-11-06'),
(36, '500m radius, Near Ba Bo market, Mobile Police School, Phuong Chau International Hospital, new house, get some high quality furniture', '3200', 120, 1, 1, 1, ' Hang Bang residential area, An Binh ward, Ninh Kieu district, Can Tho city', '4x16', ' SouthWest', '100% residential', 6, '2019-11-06'),
(37, 'The foundation is 400m from Nguyen Van Cu street and 100m from Nguyen Huu Tri street.', '3900', 120, 1, 2, 1, ' Road 18, Van Phat residential area, Cai Khe Ward, Ninh Kieu District, Can Tho City', '5x24', ' NorthWest', '100% residential', 21, '2019-11-07'),
(38, '500m radius, Near Ba Bo market, Mobile Police School, Phuong Chau International Hospital, new house, get some high quality furniture', '3200', 120, 1, 1, 1, ' Hang Bang residential area, An Binh ward, Ninh Kieu district, Can Tho city', '4x16', ' SouthWest', '100% residential', 6, '2019-11-06'),
(39, 'The foundation is 400m from Nguyen Van Cu street and 100m from Nguyen Huu Tri street.', '3900', 120, 1, 2, 1, ' Road 18, Van Phat residential area, Cai Khe Ward, Ninh Kieu District, Can Tho City', '5x24', ' NorthWest', '100% residential', 21, '2019-11-07'),
(40, '150m away from Nguyen Van Cu, nice location, axis Through Bung Xa Xang, Can Tho University', '2500', 30, 1, 2, 1, '12-20 Nguyen Van Cu street, An Binh Ward, Ninh Kieu District, Can Tho City', '4.5x6', ' NorthWest', '100% residential', 15, '2019-11-07'),
(41, 'The ground is located in the center of Hung Loi ward within a radius of 300m with full: gas station, market, People\'s Committee of Hung Loi ward, grade 1 school', '2000', 50, 1, 2, 1, '534 30/4 street, Hung Loi Ward, Ninh Kieu District, Can Tho City', '3.5x4', ' NorthWest', '100% residential', 9, '2019-11-07'),
(42, 'Convenient location Business Buy and sell', '1800', 50, 1, 2, 1, '77 Pham Ngu Lao street, Hung Loi Ward, Ninh Kieu District, Can Tho City', '4x12', ' NorthEast', '100% residential', 3, '2019-11-07'),
(43, 'Facade house, beautiful house, one living room, one bedroom, near market', '2000', 100, 1, 1, 1, '65, So 5 street, Thoi Nhut, Ninh Kieu, Can Tho', '5 x 20', 'West', '100% residential', 6, '2019-11-07'),
(44, 'The house is not upstairs, has 3 bedrooms, luxurious furniture', '4000', 80, 1, 1, 1, '58, So 2 street, Thoi Nhut, Ninh Kieu, Can Tho', '20 x 4', 'West', '100% residential', 6, '2019-11-07'),
(45, 'The house is located on an open street, near schools and markets', '8000', 150, 1, 1, 1, '65, 30/4 street, Ninh Kieu district, Can Tho city', '15 x 10', 'West', '100% residential', 20, '2019-11-08'),
(46, 'aaaaaaaa', '22', 22, 1, 1, 4, 'can tho', '5 x 20', 'West', '100% residential', 6, '2019-11-15'),
(47, 'aaaaa', '55', 55, 1, 1, 1, '58, So 2 street, Thoi Nhut, Ninh Kieu, Can Tho', '24x36', 'West', '100% residential', 6, '2019-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `roleName` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idRole`, `roleName`, `status`) VALUES
(1, 'admin', 1),
(2, 'employee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `idType` int(11) NOT NULL,
  `nameType` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`idType`, `nameType`, `status`) VALUES
(1, 'House', 1),
(2, 'Land', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cusemppro`
--
ALTER TABLE `cusemppro`
  ADD PRIMARY KEY (`idCusEmpPro`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idEmployee` (`idEmployee`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`idDistricts`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`),
  ADD KEY `idRole` (`idRole`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idDistricts` (`idDistricts`),
  ADD KEY `idType` (`idType`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`idType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cusemppro`
--
ALTER TABLE `cusemppro`
  MODIFY `idCusEmpPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `idDistricts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cusemppro`
--
ALTER TABLE `cusemppro`
  ADD CONSTRAINT `cusemppro_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`),
  ADD CONSTRAINT `cusemppro_ibfk_2` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`),
  ADD CONSTRAINT `cusemppro_ibfk_3` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idDistricts`) REFERENCES `districts` (`idDistricts`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idType`) REFERENCES `types` (`idType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
