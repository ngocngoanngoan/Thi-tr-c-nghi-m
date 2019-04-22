-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2019 lúc 09:45 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thitoan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cauhoi`
--

CREATE TABLE `tbl_cauhoi` (
  `ma_ch` int(10) NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `lc1` varchar(80) CHARACTER SET utf8 NOT NULL,
  `lc2` varchar(80) CHARACTER SET utf8 NOT NULL,
  `lc3` varchar(80) CHARACTER SET utf8 NOT NULL,
  `lc4` varchar(80) CHARACTER SET utf8 NOT NULL,
  `dapan` varchar(80) CHARACTER SET utf8 NOT NULL,
  `made` int(10) NOT NULL,
  `diem` double NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_cauhoi`
--

INSERT INTO `tbl_cauhoi` (`ma_ch`, `noidung`, `lc1`, `lc2`, `lc3`, `lc4`, `dapan`, `made`, `diem`, `trangthai`) VALUES
(5, '<p>&nbsp;Cho tập hợp A = {3; 7}. C&aacute;ch viết n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng?</p>', ' {3} ∈ A', '3 ⊂ A ', '{7} ⊂ A ', ' A ⊂ {7}', '3 ⊂ A ', 2, 0, 1),
(6, '<p>Số n&agrave;o sau đ&acirc;y chia hết cho cả 2 v&agrave; 3?</p>', '32', '42', '52', '62', '62', 2, 42, 1),
(7, '<p>Số nào sau đây là ước chung của 24 và 30 ?</p>', '9999999', '5', '4', '3', '8', 2, 3, 1),
(8, '<p>&nbsp;Kết quả sắp xếp c&aacute;c số &minus;2; &minus;3; &minus;101; &minus;99 theo thứ tự tăng dần l&agrave;:</p>', ' −2; −3; −99; −101 ', ' −101; −99; −2; −3 ', ' −101; −99; −3; −2 ', ' −99; −101; −2; −3', ' −2; −3; −99; −101 ', 2, 0, 1),
(9, '<p>&nbsp;Kết quả của ph&eacute;p t&iacute;nh ( &minus;13) + (&minus;28) l&agrave;:</p>', '-41', '-31', '15', '41', '-31', 2, -41, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dethi`
--

CREATE TABLE `tbl_dethi` (
  `made` int(11) NOT NULL,
  `tende` varchar(70) CHARACTER SET utf8 NOT NULL,
  `thongtin` text CHARACTER SET utf8 NOT NULL,
  `socau` int(10) NOT NULL,
  `tacgia` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hinhanh` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khoithi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timer` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_dethi`
--

INSERT INTO `tbl_dethi` (`made`, `tende`, `thongtin`, `socau`, `tacgia`, `hinhanh`, `khoithi`, `ngaydang`, `timer`) VALUES
(2, 'đề thi cntt', 'Đề thi học kỳ cntt, gồm 10 câu hỏi và thời gian làm bài 15 phút. học sinh chú ý đọc kỹ câu hỏi để làm bài cho tốt', 10, 'gv ngọc', '1.jpg', 'cntt', '2019/04/05', '15'),
(3, 'đề thi sư phạm tin', 'Đề thi sư phạm tin , gồm 25 câu hỏi và thời gian làm bài 30 phút. học sinh chú ý đọc kỹ câu hỏi để làm bài cho tốt', 25, 'gv ngọc', '2.jpg', 'spt', '2019/04/10', '30'),
(4, 'đề thi tài chính', 'Đề thi, gồm 25 câu hỏi và thời gian làm bài 30 phút. học sinh chú ý đọc kỹ câu hỏi để làm bài cho tốt', 25, 'gv ngọc', '3.jpg', 'tc', '2019/04/05', '30'),
(5, 'đề thi kế toán', 'Đề thi, gồm 20 câu hỏi và thời gian làm bài 25 phút. học sinh chú ý đọc kỹ câu hỏi để làm bài cho tốt', 20, 'gv ngọc', '4.jpg', 'kt', '2019/04/05', '25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hocsinh`
--

CREATE TABLE `tbl_hocsinh` (
  `idhs` varchar(20) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `ngaysinh` varchar(100) NOT NULL,
  `gioitinh` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `khoi` varchar(50) NOT NULL,
  `lop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_hocsinh`
--

INSERT INTO `tbl_hocsinh` (`idhs`, `hoten`, `pass`, `ngaysinh`, `gioitinh`, `diachi`, `khoi`, `lop`) VALUES
('601', 'Trần Văn Mi', '202cb962ac59075b964b07152d234b70', '1996-2-3', 'Nam', 'Đồng Hới - Quảng Bình', 'cntt', '56k1'),
('602', 'Lê Thị Hồng Nhung', '202cb962ac59075b964b07152d234b70', '1997-9-12', 'Nữ', 'Ba Đồn - Quảng Bình', 'cntt', '56k2'),
('701', 'Lê Thị Vi', '202cb962ac59075b964b07152d234b70', '2000-5-25', 'Nữ', 'Hoàn Lão - Bố Trạch - Quảng Bình', 'spt', '56A1'),
('702', 'Dương Văn Định', '202cb962ac59075b964b07152d234b70', '1996-8-3', 'Nam', 'Hòa Trạch - Bố Trạch - Quảng Bình', 'spt', '56A2'),
('801', 'Hoàng Văn Bách', '202cb962ac59075b964b07152d234b70', '1994-5-22', 'Nam', 'Phong Điền - Thừa Thiên Huế', 'xd', '56k1'),
('802', 'Lê Thị Hương', '202cb962ac59075b964b07152d234b70', '1997-9-4', 'Nữ', 'Tiểu Khu 7 - Hoàn Lão - BT- QB', 'kt', '56A1'),
('901', 'Hoàng Văn Hiếu', '202cb962ac59075b964b07152d234b70', '1996-5-12', 'Nam', 'Tây Trạch - Bố Trạch - Quảng Bình', 'xd', '56k2'),
('902', 'Nguyễn Văn Bình', '202cb962ac59075b964b07152d234b70', '1995-3-5', 'Nam', 'Hoàn Trạch - Bố Trạch - Quảng Bình', 'xd', '56A1'),
('909', 'Hoàng Minh Hiếu', '202cb962ac59075b964b07152d234b70', '1995-10-15', 'Nam', 'Nam Lý - Đồng Hới - Quảng Bình', 'kt', '56A1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khoihoc`
--

CREATE TABLE `tbl_khoihoc` (
  `makhoi` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tenkhoi` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_khoihoc`
--

INSERT INTO `tbl_khoihoc` (`makhoi`, `tenkhoi`) VALUES
('cntt', 'công nghệ thông tin'),
('kt', 'kế toán'),
('spt', 'sư phạm toán'),
('tc', 'tài chính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_kqlambai`
--

CREATE TABLE `tbl_kqlambai` (
  `id` int(10) NOT NULL,
  `idhs` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `made` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socau` int(10) NOT NULL,
  `caudung` int(10) NOT NULL,
  `ketqua` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_kqlambai`
--

INSERT INTO `tbl_kqlambai` (`id`, `idhs`, `made`, `socau`, `caudung`, `ketqua`) VALUES
(1, '', '3', 0, 0, 'Không đạt !'),
(2, '801', '2', 5, 0, 'Không đạt !');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ktbailam`
--

CREATE TABLE `tbl_ktbailam` (
  `id` int(11) NOT NULL,
  `idmade` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iduser` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ktbailam`
--

INSERT INTO `tbl_ktbailam` (`id`, `idmade`, `iduser`) VALUES
(1, '3', '601'),
(2, '2', '601'),
(3, '3', '701'),
(4, '2', '801'),
(5, '2', 'quantri'),
(6, '5', 'quantri'),
(7, '2', 'quantri'),
(8, '3', 'quantri'),
(9, '4', 'quantri'),
(10, '5', 'quantri');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomtat` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chitiet` text COLLATE utf8_unicode_ci,
  `hinhanh` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `linhvuc` int(10) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaydang` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `tieude`, `tomtat`, `chitiet`, `hinhanh`, `linhvuc`, `trangthai`, `ngaydang`) VALUES
(91, 'Lịch thi tập trung hết học kỳ II ', '<p>thông báo lịch thi</p>', '+ Đối với sinh viên chưa có lịch thi hoặc bị trùng lịch thi, sinh viên thông báo cho Nhà trường qua Trung tâm Đảm bảo Chất lượng biết để xếp lịch. \r\n+ Đối với sinh viên nghỉ thi có lý do chính đáng (trường hợp đau ốm hoặc sự cố bất thường phải có giấy tờ hợp lệ được Trưởng khoa chủ quản chấp nhận) sinh viên viết đơn và kèm theo minh chứng nộp cho Bộ phận một cửa chậm nhất sau 02 ngày kể từ ngày tổ chức thi môn đó.\r\n+ Lưu ý: \r\n- Sinh viên cần xem lại lịch thi vì lịch thi chính thức có thể đã thay đổi so với lịch thi dự kiến công bố trước đây.\r\n- Theo quy định Đánh giá giữa kỳ được tổ chức theo hình thức thi trắc nghiệm khách quan.\r\n- Theo Quy chế đào tạo cho sinh thì đối với học phần từ 3 Tín chỉ lý thuyết trở xuống thi 1 lần, đối với từ 4 tín chỉ lý thuyết trở lên thi 2 lần. \r\n- Sinh viên kiểm tra tài khoản học phí trên hệ thống, nếu trong tài khoản của sinh viên phát sinh dự nợ (không kể ít hay nhiều) sinh viên sẽ không được dự thi học phần. ', 'hocsinh.jpg', 2, 1, '2019/04/13'),
(108, 'aaaa', 'aaa', 'qqqqqqqqqqq', '', 1, 1, '2019/04/21'),
(93, 'thông báo thi b1', 'Lịch ôn tập và thi tiếng Anh B1 cho sinh viên K54 và K55, K56', 'I.  LỊCH THI, HỌC\r\n\r\n-        Từ ngày 26/12/2017 đến 04/01/2018 sinh viên nộp lệ phí thi, cấp chứng chỉ và đăng kí thi trên trang cá nhân.\r\n\r\n-        Ngày 05/01/2018 sinh viên xem lịch thi trên trang cá nhân. Khi đi thi cần mang theo: Thẻ sinh viên + Giấy chứng minh thư.\r\n\r\n-        Lịch thi: dự kiến ngày 06/01/2018\r\n\r\n-  Lịch học ôn, dự kiến khai giảng ngày 29/12/2017, đợt học này thi trong tháng 1/2018\r\n\r\nII.     ĐỊA ĐIỂM NỘP HỌC PHÍ\r\n\r\n \r\n\r\n-        Sinh viên nộp lệ phí ôn tập, lệ phí thi tại phòng thu học phí, sảnh nhà B2 (nộp vào tài khoản ngắn hạn). Đăng kí lịch ôn tập, và đăng kí thi theo nhu cầu trên trang cá nhân của sinh viên.\r\n\r\nIII.   GHI CHÚ\r\n\r\n-        Sinh viên đang học ôn tập chưa xong thì đăng ký thi vào các đợt thi khác\r\n\r\n-        Nếu trong tài khoản chính quy còn tiền, sinh viên vẫn phải nộp lệ phí ôn tập, vì không thể dùng tài khoản chính quy để đăng ký chứng chỉ ngắn hạn.\r\n\r\nThông tin chi tiết liên hệ sđt: 0983.799.233 (thầy Nguyễn Thanh Sơn) hoặc  0917.761.289 (cô Lê Thị Hà).', 'tuyensinhdiemthitotnghiep1.jpg', 3, 1, '2019/04/05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `idnv` int(11) NOT NULL,
  `tendn` varchar(100) NOT NULL,
  `tennv` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `ngaythem` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`idnv`, `tendn`, `tennv`, `email`, `password`, `level`, `ngaythem`) VALUES
(1, 'quantri', 'quản trị web', 'ngocngoanngoan84@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '13/05/2019'),
(2, 'gv', 'gvngoc', 'ngocngoanngoan84@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '04/03/2019');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  ADD PRIMARY KEY (`ma_ch`),
  ADD KEY `made` (`made`),
  ADD KEY `made_2` (`made`);

--
-- Chỉ mục cho bảng `tbl_dethi`
--
ALTER TABLE `tbl_dethi`
  ADD PRIMARY KEY (`made`),
  ADD KEY `made` (`made`);

--
-- Chỉ mục cho bảng `tbl_hocsinh`
--
ALTER TABLE `tbl_hocsinh`
  ADD PRIMARY KEY (`idhs`),
  ADD KEY `khoi` (`khoi`);

--
-- Chỉ mục cho bảng `tbl_khoihoc`
--
ALTER TABLE `tbl_khoihoc`
  ADD PRIMARY KEY (`makhoi`);

--
-- Chỉ mục cho bảng `tbl_kqlambai`
--
ALTER TABLE `tbl_kqlambai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idhs` (`idhs`),
  ADD KEY `idhs_2` (`idhs`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `tbl_ktbailam`
--
ALTER TABLE `tbl_ktbailam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`idnv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  MODIFY `ma_ch` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_dethi`
--
ALTER TABLE `tbl_dethi`
  MODIFY `made` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_kqlambai`
--
ALTER TABLE `tbl_kqlambai`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_ktbailam`
--
ALTER TABLE `tbl_ktbailam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `idnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  ADD CONSTRAINT `tbl_cauhoi_ibfk_1` FOREIGN KEY (`made`) REFERENCES `tbl_dethi` (`made`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
