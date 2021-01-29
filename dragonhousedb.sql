-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 29, 2021 lúc 07:26 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dragonhousedb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblaccomodation`
--

CREATE TABLE `tblaccomodation` (
  `ACCOMID` int(11) NOT NULL,
  `ACCOMODATION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ACCOMDESC` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblaccomodation`
--

INSERT INTO `tblaccomodation` (`ACCOMID`, `ACCOMODATION`, `ACCOMDESC`) VALUES
(12, 'Standard Room', 'max 22hrs.'),
(13, 'Travelers Time', 'max of 12hrs.'),
(15, 'Bayanihan Room', 'max 22hrs.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblauto`
--

CREATE TABLE `tblauto` (
  `autoid` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblauto`
--

INSERT INTO `tblauto` (`autoid`, `start`, `end`) VALUES
(1, 11122, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblfirstpartition`
--

CREATE TABLE `tblfirstpartition` (
  `FirstPID` int(11) NOT NULL,
  `FirstPTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstPImage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstPSubTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstPDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblfirstpartition`
--

INSERT INTO `tblfirstpartition` (`FirstPID`, `FirstPTitle`, `FirstPImage`, `FirstPSubTitle`, `FirstPDescription`) VALUES
(1, 'Welcome to Dragon House', '5page-img1.png', 'In our Hotel', 'Nằm trên những ngọn đồi của Nice, cách Promenade des Anglais nổi tiếng một đoạn ngắn, Hotel Anise là một trong những khách sạn ở Costa Azzurra (hay Bờ biển Xanh) có thể đáp ứng các nhu cầu khác nhau của du khách với sự thoải mái và dịch vụ hạng nhất. Nó chỉ là 2 km từ sân bay và từ các lối ra đường cao tốc. Khách sạn có một bãi đậu xe rộng, một khu vực sang trọng thực sự ở một thành phố như Nice.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblguest`
--

CREATE TABLE `tblguest` (
  `GUESTID` int(11) NOT NULL,
  `REFNO` int(11) NOT NULL,
  `G_FNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_LNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_CITY` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_ADDRESS` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DBIRTH` date NOT NULL,
  `G_PHONE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_NATIONALITY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_COMPANY` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_CADDRESS` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_TERMS` tinyint(4) NOT NULL,
  `G_EMAIL` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_UNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_PASS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ZIP` int(11) NOT NULL,
  `LOCATION` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmeal`
--

CREATE TABLE `tblmeal` (
  `MealID` int(11) NOT NULL,
  `MealType` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MealPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblmeal`
--

INSERT INTO `tblmeal` (`MealID`, `MealType`, `MealPrice`) VALUES
(4, 'Lunch', 10),
(7, 'HB', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpayment`
--

CREATE TABLE `tblpayment` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  `CONFIRMATIONCODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PQTY` int(11) NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `SPRICE` double NOT NULL,
  `MSGVIEW` tinyint(1) NOT NULL,
  `STATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblreservation`
--

CREATE TABLE `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRANSDATE` date NOT NULL,
  `ROOMID` int(11) NOT NULL,
  `ARRIVAL` datetime NOT NULL,
  `DEPARTURE` datetime NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `STATUS` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BOOKDATE` datetime NOT NULL,
  `REMARKS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblroom`
--

CREATE TABLE `tblroom` (
  `ROOMID` int(11) NOT NULL,
  `ROOMNUM` int(11) NOT NULL,
  `ACCOMID` int(11) NOT NULL,
  `ROOM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROOMDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NUMPERSON` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `ROOMIMAGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OROOMNUM` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblroom`
--

INSERT INTO `tblroom` (`ROOMID`, `ROOMNUM`, `ACCOMID`, `ROOM`, `ROOMDESC`, `NUMPERSON`, `PRICE`, `ROOMIMAGE`, `OROOMNUM`, `RoomTypeID`) VALUES
(11, 0, 12, 'Wing A', 'without TV', 1, 10, 'rooms/1.jpg', 1, 0),
(12, 0, 12, 'Wing A', 'Without TV', 2, 15, 'rooms/1.jpg', 1, 0),
(13, 1, 13, 'Wing A', 'Without TV', 1, 445, 'rooms/2.jpg', 3, 0),
(14, 2, 13, 'Wing A', 'Without TV', 2, 495, 'rooms/3.jpg', 4, 0),
(15, 1, 15, 'Wing A', 'Without TV | for groups - minimum of 5 pax | 250php per person', 5, 1250, 'rooms/4.jpg', 1, 0),
(16, -2, 12, 'Wing B and Ground Floor', 'With TV', 1, 725, 'rooms/3page-img13.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblslideshow`
--

CREATE TABLE `tblslideshow` (
  `SlideID` int(11) NOT NULL,
  `SlideImage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SlideCaption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblslideshow`
--

INSERT INTO `tblslideshow` (`SlideID`, `SlideImage`, `SlideCaption`) VALUES
(15, 'images.jpg', ''),
(16, 'slide-image-3.jpg', ''),
(17, 'header-bg1.jpg', ''),
(18, 'slide-image-3.jpg', ''),
(19, 'Desert.jpg', ''),
(20, 'Koala.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltitle`
--

CREATE TABLE `tbltitle` (
  `TItleID` int(11) NOT NULL,
  `Title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltitle`
--

INSERT INTO `tbltitle` (`TItleID`, `Title`, `Subtitle`) VALUES
(1, 'Dragon House', '24hrs.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER_NAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPASS` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `UNAME`, `USER_NAME`, `UPASS`, `ROLE`, `PHONE`) VALUES
(1, 'Anonymous', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 912856478);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_setting_contact`
--

CREATE TABLE `tbl_setting_contact` (
  `SetCon_ID` int(11) NOT NULL,
  `SetConLocation` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SetConEmail` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SetConContactNo` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_setting_contact`
--

INSERT INTO `tbl_setting_contact` (`SetCon_ID`, `SetConLocation`, `SetConEmail`, `SetConContactNo`) VALUES
(1, 'Guanzon Street, Kabankalan Catholic College Kabankalan City, 6111 philippines', 'kcc_1927@yahoo.com', '(034)471-24-79');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  ADD PRIMARY KEY (`ACCOMID`);

--
-- Chỉ mục cho bảng `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoid`);

--
-- Chỉ mục cho bảng `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  ADD PRIMARY KEY (`FirstPID`);

--
-- Chỉ mục cho bảng `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GUESTID`);

--
-- Chỉ mục cho bảng `tblmeal`
--
ALTER TABLE `tblmeal`
  ADD PRIMARY KEY (`MealID`);

--
-- Chỉ mục cho bảng `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`),
  ADD KEY `GUESTID` (`GUESTID`);

--
-- Chỉ mục cho bảng `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`),
  ADD KEY `ROOMID` (`ROOMID`),
  ADD KEY `GUESTID` (`GUESTID`),
  ADD KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`);

--
-- Chỉ mục cho bảng `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ROOMID`),
  ADD KEY `ACCOMID` (`ACCOMID`);

--
-- Chỉ mục cho bảng `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Chỉ mục cho bảng `tblslideshow`
--
ALTER TABLE `tblslideshow`
  ADD PRIMARY KEY (`SlideID`);

--
-- Chỉ mục cho bảng `tbltitle`
--
ALTER TABLE `tbltitle`
  ADD PRIMARY KEY (`TItleID`);

--
-- Chỉ mục cho bảng `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Chỉ mục cho bảng `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  ADD PRIMARY KEY (`SetCon_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  MODIFY `ACCOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  MODIFY `FirstPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GUESTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblmeal`
--
ALTER TABLE `tblmeal`
  MODIFY `MealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ROOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tblroomtype`
--
ALTER TABLE `tblroomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblslideshow`
--
ALTER TABLE `tblslideshow`
  MODIFY `SlideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbltitle`
--
ALTER TABLE `tbltitle`
  MODIFY `TItleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  MODIFY `SetCon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
