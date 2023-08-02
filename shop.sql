-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 01, 2023 lúc 02:23 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bailab`
--

CREATE TABLE `bailab` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `ipSanPham` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `thanhTien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `ipSanPham`, `idUser`, `size`, `soLuong`, `thanhTien`, `status`, `createdAt`, `updatedAt`) VALUES
(401, 58, 12, 'M', 1, 427500, 2, '2023-04-12 01:16:25', '2023-04-12 01:17:36'),
(402, 64, 12, 'M', 1, 196000, 2, '2023-04-12 01:16:26', '2023-04-12 01:17:36'),
(403, 59, 12, 'M', 2, 1500000, 2, '2023-04-12 01:16:42', '2023-04-12 01:17:31'),
(404, 60, 12, 'L', 1, 675000, 2, '2023-04-12 01:16:48', '2023-04-12 01:17:31'),
(405, 70, 12, 'XL', 1, 490000, 2, '2023-04-12 01:16:57', '2023-04-12 01:17:31'),
(406, 58, 12, 'M', 1, 427500, 2, '2023-04-12 21:30:39', '2023-04-17 02:30:46'),
(407, 68, 12, 'M', 1, 533500, 2, '2023-04-13 00:10:22', '2023-04-17 02:30:46'),
(408, 95, 12, 'L', 1, 420000, 2, '2023-04-13 01:00:03', '2023-04-13 01:00:59'),
(409, 86, 12, 'M', 1, 720000, 2, '2023-04-13 01:21:28', '2023-04-17 02:30:42'),
(410, 72, 12, 'XL', 2, 700000, 2, '2023-04-13 02:20:49', '2023-04-17 02:30:42'),
(411, 93, 12, 'M', 1, 637500, 2, '2023-04-17 00:20:56', '2023-04-17 02:30:40'),
(413, 64, 12, 'M', 1, 735000, 2, '2023-04-17 01:09:06', '2023-04-17 02:30:40'),
(415, 68, 12, 'M', 1, 533500, 2, '2023-04-17 02:29:53', '2023-04-17 02:30:40'),
(416, 79, 12, 'M', 1, 245000, 2, '2023-04-17 02:31:34', '2023-04-17 02:31:46'),
(419, 79, 12, 'M', 1, 245000, 2, '2023-04-19 21:22:11', '2023-04-19 23:43:19'),
(423, 86, 12, '39', 1, 720000, 2, '2023-04-19 22:01:51', '2023-04-19 23:43:19'),
(424, 88, 12, '43', 1, 350000, 1, '2023-04-19 22:11:34', '2023-04-19 23:44:48'),
(434, 79, 16, 'M', 2, 490000, 2, '2023-04-20 09:32:21', '2023-04-20 09:35:38'),
(435, 79, 16, 'M', 1, 245000, 2, '2023-04-20 09:53:03', '2023-04-20 09:59:53'),
(436, 88, 12, '38', 2, 700000, 2, '2023-05-11 14:55:13', '2023-05-11 15:01:01'),
(437, 79, 12, 'XL', 2, 490000, 2, '2023-05-11 14:58:07', '2023-05-11 15:01:01'),
(439, 64, 12, 'M', 2, 1470000, 2, '2023-06-17 14:32:10', '2023-06-17 14:38:01'),
(440, 79, 12, 'XL', 2, 490000, 2, '2023-06-17 14:42:46', '2023-06-17 14:44:12'),
(441, 58, 12, 'L', 1, 427500, 2, '2023-06-17 14:48:12', '2023-06-17 14:48:46'),
(442, 80, 12, 'M', 1, 350000, 1, '2023-07-23 14:28:32', '2023-07-23 14:28:46'),
(443, 64, 12, 'XL', 2, 1470000, 2, '2023-07-26 15:34:26', '2023-07-26 15:35:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(13, 'Áo sơ mi', '2023-03-07 08:55:59', '2023-03-27 20:53:17'),
(14, 'Áo phông', '2023-03-07 08:56:10', '2023-03-27 20:50:36'),
(51, 'Quần Jeans', '2023-03-25 08:36:06', '2023-04-12 22:38:03'),
(56, 'Giày', '2023-03-27 20:54:37', '2023-04-12 22:37:22'),
(57, 'Áo Khoác', '2023-04-20 09:40:32', '2023-04-20 09:40:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tenThanhVien` varchar(255) NOT NULL,
  `gioiTinh` int(11) NOT NULL,
  `anhDaiDien` varchar(255) NOT NULL,
  `anhCK` varchar(255) NOT NULL,
  `soDienThoai` varchar(15) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `tienTk` int(11) NOT NULL,
  `tienNap` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `email`, `tenThanhVien`, `gioiTinh`, `anhDaiDien`, `anhCK`, `soDienThoai`, `diaChi`, `matKhau`, `tienTk`, `tienNap`, `status`, `createdAt`, `updatedAt`) VALUES
(11, 'hiennguyen02hd@gmail.com', 'Nguyễn Văn Hiển', 1, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1679675618/UploadFile/hgbzezbldlwumbzdtmdi.jpg', 'ádads', 'àafdf', 'Hải Dương 2', '$2a$10$m9OQ1AIKifBaIJ2goTwdoet1bZldXac2mvmUguQbhl.ERNG0ZNn4S', 494874500, 0, 0, '2023-03-25 09:40:42', '2023-04-16 14:23:26'),
(12, 'Nva@gmail.com', 'Nguyễn Văn Quang Tèorqefqe', 2, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1686987275/UploadFileMember/jt0ihtfihqixx5qvwaei.jpg', '', '0377125776', 'Điện biên', '$2a$10$1vER4s3kvH31K1Stw9pMseKpHDIO2AkMeTkkgdq/dxrhf6dM2/Iqm', 5821500, 15236000, 0, '2023-03-26 01:20:28', '2023-07-26 15:34:43'),
(13, 'Thenguyen9603@gmail.com', 'Nguyện ', 1, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681630011/UploadFileMember/rxsi8sreazbhwclpix9d.jpg', '', '0377115775', 'Đan Phượng', '$2a$10$.dVWONejwBofGok9w/DT9.v2o4bDDTvJ7ahPnREynaPKXBsJ0Lq4m', 88537000, 0, 0, '2023-03-30 09:52:54', '2023-04-16 14:26:51'),
(14, 'Thuan@gmail.com', 'Thuận', 1, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681628985/UploadFileMember/pmr8exov86qotaween4x.jpg', '', '0865815197', 'Đan phượng', '$2a$10$.dVWONejwBofGok9w/DT9.v2o4bDDTvJ7ahPnREynaPKXBsJ0Lq4m', 2222222, 0, 0, '2023-03-30 09:56:45', '2023-04-16 14:26:59'),
(16, 'nguyenntph26125@gmail.com', 'nguyenb ', 1, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681958180/UploadFileMember/pgy2j2jvq1inolamuk0v.jpg', 'https://tse4.mm.bing.net/th?id=OIP.eImXLrEHmxuAIYAz3_VKhAHaHt&pid=Api&P=0', '0377125775', 'ha nam', '$2a$10$ta6ctTdbqLwxWNpBovZSNOG0knzo/.PNx6dcXzHjIW8UNWra3acBG', 265000, 0, 0, '2023-04-20 09:29:28', '2023-05-11 14:56:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `anhTinTuc` varchar(255) NOT NULL,
  `tomTatTinTuc` text NOT NULL,
  `moTa` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `tieuDe`, `anhTinTuc`, `tomTatTinTuc`, `moTa`, `createdAt`, `updatedAt`) VALUES
(2, 'Giorgio Armani ra mắt BST Thu Đông 2023 trên núi tuyết dành cho nam giới', 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680676707/UploadNews/cipb5fgvko4n1nlypn7v.jpg', 'Giorgio Armani chắc chắn đồng nghĩa với sự sang trọng, liên tục mang đến những sản phẩm may mặc tinh xảo đầy sang trọng và đẳng cấp. Với uy tín đó, thương hiệu hiện đang hướng đến những đại lộ đầy nắng của Ý để giới thiệu các sản phẩm Thu/Đông 2023 tại Tuần lễ thời trang Milan.', '<p>Nhãn hiệu xa hoa gần đây đã đưa bộ phận Neve của mình đến dãy núi Alps huyền bí của St. Moritz, giới thiệu bộ sưu tập trượt tuyết mới nhất của họ tại sân vận động Olympic của thị trấn nghỉ dưỡng. Thiết kế chủ yếu là quần áo có cấu trúc và kiểu dáng đẹp, lý tưởng cho các sự kiện trượt tuyết. Vì vậy, cho dù bạn đang muốn nhâm nhi rượu vang trên vách đá hay mạo hiểm xuống những ngọn núi ở Thụy Sĩ, bộ sưu tập Thu/Đông 2022 của Giorgio Armani Neve đều đáp ứng được nhu cầu của bạn.</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/1-2023/images/2023-01-19/Giorgio-Armani-ra-mat-bo-suu-tap-Thu-dong-2023-tren-nui-tuyet-1-1674114025-622-width586height878.jpg\" alt=\"Giorgio Armani ra mắt BST Thu Đông 2023 trên núi tuyết dành cho nam giới - 1\"></figure><p>Mùa Thu/Đông 2023 thay đổi từ mùa này sang mùa khác, giới thiệu trang phục nam bảnh bao ở dạng tinh khiết nhất. Sàn diễn được thiết kế với tông màu chuyển sắc, bắt đầu với màu xám tinh tế nhanh chóng chuyển thành màu xanh nước biển và màu đen với những điểm nhấn tinh tế của màu đỏ.</p><p>Theo thông lệ của Giorgio Armani, những bộ vest tinh tế được may đo và nhìn qua lăng kính đương đại dành cho các chàng trai thành thị trên toàn cầu. Áo khoác ngoài bằng vải chéo và quần kẻ sọc đi kèm với áo khoác nhung, quần cargo và áo khoác ngoài in hình động vật bằng lông thú. Ngoài ra, cách giải thích của thương hiệu về trang phục thông minh được thể hiện qua những chiếc áo len đan đa năng, áo chui đầu có chữ lồng và quần áo da hiện đại, tất cả đều mang hơi hướng cảm hứng quân đội. Phần trước tiếp tục với áo khoác len bất đối xứng, áo khoác ngoài ca rô gọn gàng phù hợp với cà vạt cắt mỏng và áo khoác phi công được tạo điểm nhấn bằng găng tay da và kính râm giống kính bảo hộ.</p><p>Trong chương cuối cùng của bộ sưu tập, Giorgio Armani chuyển sang trang phục trượt tuyết, hướng đến những ngọn núi để trượt dốc nhanh chóng. Từ áo khoác ngoài puffer cho đến đồng phục Trượt tuyết Après và mọi thứ khác, Armani FW23 thực hiện một chuyến thám hiểm qua mọi khả năng.</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/1-2023/images/2023-01-19/Giorgio-Armani-ra-mat-bo-suu-tap-Thu-dong-2023-tren-nui-tuyet-21-1674114025-950-width586height878.jpg\" alt=\"Giorgio Armani ra mắt BST Thu Đông 2023 trên núi tuyết dành cho nam giới - 2\"></figure><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/1-2023/images/2023-01-19/Giorgio-Armani-ra-mat-bo-suu-tap-Thu-dong-2023-tren-nui-tuyet-19-1674114025-724-width586height878.jpg\" alt=\"Giorgio Armani ra mắt BST Thu Đông 2023 trên núi tuyết dành cho nam giới - 3\"></figure><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/1-2023/images/2023-01-19/Giorgio-Armani-ra-mat-bo-suu-tap-Thu-dong-2023-tren-nui-tuyet-18-1674114025-950-width586height878.jpg\" alt=\"Giorgio Armani ra mắt BST Thu Đông 2023 trên núi tuyết dành cho nam giới - 4\"></figure>', '2023-04-05 13:38:33', '2023-04-06 08:56:13'),
(3, 'Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới', 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680676842/UploadNews/kzedzkr1u41khsj4d61u.jpg', 'Dưới đây là các mẹo mix trang phục với các kiểu quần basic nhất của các chàng.', '<p><strong>1. Quần dài vải nhung</strong></p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-11-1667628736-748-width1200height1200.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 1\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>Đây là chất liệu vải được dệt từ bông hoặc len, xoắn lại tạo thành các đường song song. Len nhung là loại bền nhất và mặc đặc biệt tốt. Quần vải nhung khá ấm nên phù hợp mùa lạnh.</p><p>Hãy thử kết hợp một chiếc quần dài bằng vải nhung sẫm màu với một chiếc áo len và giày thể thao da để tạo set đồ lịch lãm.</p><p><strong>2. Quần len</strong></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-07/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-h1-1667816690-778-width679height744.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 2\"></figure><p>Được các blogger thời trang yêu thích và các giám đốc nghệ thuật trên toàn thế giới chú ý, quần len nam là item mang hơi hướng cổ điển. Chiếc quần len đã trở thành xu hướng trong nhiều năm - và sự phổ biến của loại quần này không hề có dấu hiệu suy giảm.</p><p>Quần len có thể phối với một đôi giày thể thao theo style năng động hoặc phối theo kiểu truyền thống với giày Derbies đều đẹp.</p><p><strong>3. Quần chinos</strong></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-07/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-h2-1667816770-415-width600height626.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 3\"></figure><p>Khi mặc quần chinos, các chàng sẽ có set đồ mang lại sự mát mẻ mà vẫn phong cách trong những ngày nắng nóng. Được sản xuất từ bông và được dệt để tạo ra bề mặt thoáng mát, quần chinos tạo sự phóng khoáng khi mặc.<br>Quý ông có thể mặc quần chinos với áo sơ mi, áo thun cùng sneaker. Bên cạnh đó, phái mạnh có thể mặc quần short chinos cũng rất khỏe khoắn và thoải mái.</p><p><strong>4. Quần ống rộng</strong></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-4-1667628736-766-width564height677.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 4\"></figure><p>Lấy cảm hứng từ thời trang những năm 1950, quần ống rộng đã trở lại trong phong cách thời trang nam ngày nay. Khi mặc quần ống rộng, hãy chọn loại vừa vặn mông và chiều dài đến nửa bàn chân. Tránh chiếc quần quá dài khiến các chàng trai trông lướt thướt. Phái mạnh có thể mặc quần jean ống rộng với áo thun và áo polo.</p><p><strong>5. Quần Linen</strong></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-a-1667629187-422-width714height1071.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 5\"></figure><p>Cách đây không lâu, những chiếc quần linen “không có chỗ đứng” trong tủ quần áo và phong cách của đàn ông hiện đại. Rất may những năm gần đây các nhà thiết kế đã làm mới lại quần linen và đưa item này quay trở lại đường đua thời trang. Quần linen được pha trộn vải lanh giúp cho chúng trở nên ứng dụng hơn, ít bị nhăn hơn nhưng vẫn mát mẻ.</p><p>Hãy thử quần linen với giày thể thao và áo phông trơn để tạo oufit thoải mái, năng động.</p><p><strong>6. Quần dây rút</strong></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-07/Bi-quyet-mix-do-voi-9-kieu-quan-pho-bien-cua-nam-gioi-h3-1667816824-439-width600height800.jpg\" alt=\"Bí quyết mix đồ với 9 kiểu quần phổ biến của nam giới - 6\"></figure><p>Quần dây rút là món đồ mang tính ứng dụng cực cao với trang phục nam giới trong một thập kỷ trong quá khứ. Cho đến gần đây, chiếc quần với cạp dây rút đã được giới hạn gần như chỉ sử dụng trong quần áo thể thao.</p><p>Ngày nay, quần dây rút được thiết kế riêng và có nhiều chất liệu hơn. Len, vải nhung tăm và đũi là những lựa chọn tốt nhất giúp chàng mặc quần dây rút thoải mái. Kiểu quần dây rút nên mix với sneaker, ankle boot và áo thun.</p>', '2023-04-05 13:40:46', '2023-04-06 08:55:58'),
(4, ' Chọn màu sắc trang phục theo sắc độ da cho quý ông', 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680676933/UploadNews/gyrhxpc55wrgozmdiy0j.jpg', 'Dưới đây là các mẹo mix trang phục với các kiểu quần basic nhất của các chàng.', '<p><strong>Sắc độ của da là gì?</strong></p><p>Sắc độ của da (undertones) là màu sắc của gân dưới da, nó sẽ giúp bạn tìm được màu sắc trang sức, mỹ phẩm và thời trang phù hợp.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Chon-mau-sac-trang-phuc-theo-undertones-cho-quy-ong-1-1667634608-684-width800height450.jpg\" alt=\"Chọn màu sắc trang phục theo sắc độ da cho quý ông - 1\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>Có 3 kiểu sắc độ của da:</p><p>Sắc độ da lạnh: gân dưới da màu xanh dương.</p><p>Sắc độ da ấm: gân dưới da màu xanh lá.</p><p>Sắc độ da trung tính: gân dưới da có cả màu xanh dương và xanh lá.</p><p>Bạn có thể kiểm tra sắc độ da của mình bằng cách giơ tay dưới ánh sáng tự nhiên.</p><p><strong>Sắc độ da lạnh</strong></p><p>Nhiều chàng trai da sáng sẽ thấy rằng họ có làn da tông lạnh, nhưng những người da sẫm màu cũng có thể có sắc độ da lạnh. Hãy tự hỏi bản thân những câu hỏi sau để biết liệu bạn có làn da tông lạnh hay không. Khi soi gương, làn da của bạn có chuyển sang màu hơi xanh không? Da bạn có thường xuyên bị bỏng nắng không? Nếu bạn trả lời có, rất có thể bạn là người sở hữu làn da săn chắc đáng tự hào.</p><p><i>Màu sắc nào trông đẹp nhất trên sắc độ da lạnh?</i></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Chon-mau-sac-trang-phuc-theo-undertones-cho-quy-ong-3-1667634608-132-width600height800.jpg\" alt=\"Chọn màu sắc trang phục theo sắc độ da cho quý ông - 2\"></figure><p>Nếu bạn có làn da nhợt nhạt và sáng, thì những màu sắc tương phản rõ ràng với màu da - theo đúng nghĩa đen - sẽ mang lại sự tươi tắn cho diện mạo.</p><p>Các màu tối hơn như xám, nâu, đỏ tía, xanh lá cây chai, xanh nước biển và các sắc thái đậm hơn của xanh lam đều phù hợp với tông da lạnh vì chúng tương phản với màu da của bạn.</p><p><i>Sắc độ da lạnh nên tránh những màu nào?</i></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-07/Chon-mau-sac-trang-phuc-theo-sac-do-cua-da-cho-quy-ong-h4-1667817642-912-width800height978.jpg\" alt=\"Chọn màu sắc trang phục theo sắc độ da cho quý ông - 3\"></figure><p>Những người có sắc độ da lạnh sẽ cần tránh những màu phấn nhẹ nhàng hoặc những màu sáng.</p><p><strong>Undertones ấm áp</strong></p><p>Nếu bạn có làn da có xu hướng rám nắng thì bạn có thể có sắc độ da ấm, phù hợp với phổ màu rộng hơn nhiều so với những người có nước da trắng hoặc nước da lạnh. Những chàng trai có màu da ô liu hoặc những người đàn ông da sẫm màu có xu hướng có tông da và sắc độ da kiểu này.</p><p><i>Màu sắc nào trông đẹp nhất trên sắc độ da ấm?</i></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-05/Chon-mau-sac-trang-phuc-theo-undertones-cho-quy-ong-2-1667634608-490-width640height853.jpg\" alt=\"Chọn màu sắc trang phục theo sắc độ da cho quý ông - 4\"></figure><p>Mặc dù hầu hết các màu sẽ phù hợp với sắc độ da ấm, nhưng bạn chọn các sắc thái sáng hơn hoặc tối hơn một chút so với màu trung bình. Điều đó có nghĩa chính xác hãy chọn màu be nhạt thay vì màu cát ấm hoặc thử màu tím đậm hơn.</p><p>Hoặc các chàng có thể thử một bảng màu sáng hơn, với màu trắng là sự lựa chọn để làm nổi bật màu da. Bạn nên chọn màu hạt dẻ, màu mù tạt, ô liu và nâu mocha. Vào mùa lạnh, hãy thử một chiếc quần jean trắng với áo khoác tối màu để tạo vẻ ngoài nổi bật.</p><p><i>Nên tránh những màu nào?</i></p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/4-2022/images/2022-11-07/Chon-mau-sac-trang-phuc-theo-sac-do-cua-da-cho-quy-ong-h2-1667817642-991-width577height725.jpg\" alt=\"Chọn màu sắc trang phục theo sắc độ da cho quý ông - 5\"></figure><p>Vì da của bạn có thể có sắc độ vàng hoặc xanh lá cây nên hãy tránh mặc những màu quá gần với màu da của mình.</p><p>Đối với những màu khó nhìn hơn như toàn màu trắng hoặc màu phấn nhạt, hãy đảm bảo bạn không có nước da quá đen, nếu không thì hãy tránh xa các trang phục màu này.</p><p><strong>Sắc độ da trung tính</strong></p><p>Cũng giống như những người có làn da trung bình, khi cần tìm màu sắc phù hợp với mình, những chàng trai có sắc độ da trung tính đã “trúng xổ số di truyền” và có thể thử sức với khá nhiều màu sắc mà không cần phải phân vân.</p>', '2023-04-05 13:42:42', '2023-04-06 08:55:47'),
(5, 'Nguyễn Đức Thuận thành đại sứ mới nhất của Bottega Veneta sau kỳ tích của Jung Kook với CK', 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680680310/UploadNews/jwsaighik3kkggsgm86f.jpg', 'Ngôi sao Đức Thuận - Hạ Mỗ đã chính thức được bổ nhiệm làm đại sứ mới nhất của Kotex.', '<h2><strong>Ngôi sao BTS - RM đã chính thức được bổ nhiệm làm đại sứ mới nhất của Bottega Veneta .</strong></h2><p>Giám đốc Sáng tạo Matthieu Blazy đã lên Instagram để chúc mừng ca sĩ K-Pop về vị trí mới của anh ấy. Thông báo này cho thấy RM trở thành đại sứ thương hiệu nổi tiếng đầu tiên và duy nhất cho nhãn hiệu thời trang cao cấp, một cột mốc quan trọng đối với cả ca sĩ và thương hiệu. Trong bài đăng trên Instagram, Blazy đã tiết lộ hình ảnh của RM trong chiếc áo sơ mi kẻ sọc và quần denim, món đồ nổi tiếng được Kate Moss mặc trên sàn diễn Xuân/Hè 2023. RM cũng được nhìn thấy mang chiếc túi Andiamo cổ điển mới bằng da nâu. Hình ảnh đi kèm với thông điệp của Blazy có nội dung: “Andiamo! Chào mừng đến với gia đình\".</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/2-2023/images/2023-04-04/Matthieu-Blazy-chao-mung-RM-cua-BTS-la-dai-su-moi-nhat-cua-Bottega-Veneta-1-1680596331-905-width1152height768.jpg\" alt=\"RM (BTS) thành đại sứ mới nhất của Bottega Veneta sau kỳ tích của Jung Kook với CK - 1\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>Đáp lại thông báo này, RM cũng đã lên các kênh truyền thông xã hội của riêng mình và viết: “Thật hạnh phúc khi được trở thành một phần của gia đình Bottega!” Một kỳ tích lớn đối với RM, có vẻ như người hâm mộ sẽ thấy nhiều hơn giữa thương hiệu và ca sĩ trong các chiến dịch trong tương lai và thậm chí tại các chương trình sắp tới. Hãy xem bên dưới các bài đăng trên Instagram và hình ảnh công bố vai trò đại sứ của RM.</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/2-2023/images/2023-04-04/Matthieu-Blazy-chao-mung-RM-cua-BTS-la-dai-su-moi-nhat-cua-Bottega-Veneta-2-1680596331-987-width768height956.jpg\" alt=\"RM (BTS) thành đại sứ mới nhất của Bottega Veneta sau kỳ tích của Jung Kook với CK - 2\"></figure><p>Mới đây Jung Kook (BST) cũng gây choáng váng giới mộ điệu khi xuất hiện trong BST nội y của CK.&nbsp;Ngày 27/3, Calvin Klein tung loạt video và hình ảnh xác nhận Jungkook là đại sứ toàn cầu của thương hiệu thời trang đình đám nước Mỹ. Dù chỉ diện hai set đồ đơn giản với trang phục Jeans và nội y, em út BTS khiến cộng đồng mạng toàn cầu “dậy sóng”. Bài đăng nào về Jungkook trên Instagram của hãng cũng thu hút hàng triệu lượt Thích. Hashtag #JungkookxCalvinKlein trở thành xu hướng trên Twitter với hàng triệu lượt đề cập.</p><p>Calvin Klein nhanh chóng nhận ra lựa chọn Jungkook là gương mặt đại diện cho chiến dịch quảng cáo bộ sưu tập Xuân 2023 rõ ràng là bước đi đúng đắn. Nổi tiếng với biệt danh “Sold Out King”, giọng ca sinh năm 1997 giúp bộ sưu tập quần áo của hãng “cháy” hàng chỉ sau vài giờ ra mắt vào ngày 29/3. Đáng nói hơn, kỳ tích này không chỉ xảy ra ở một mà nhiều quốc gia, bao gồm Mỹ, Trung Quốc, Hàn Quốc và Nhật Bản</p><figure class=\"image\"><img src=\"https://icdn.24h.com.vn/upload/2-2023/images/2023-04-05/Thanh-vien-nhom-BTS-tro-thanh-dai-su-moi-nhat-cua-Bottega-Veneta-1-1680660479-516-width645height806.jpeg\" alt=\"RM (BTS) thành đại sứ mới nhất của Bottega Veneta sau kỳ tích của Jung Kook với CK - 3\"></figure><p><i>Các mặt hàng được Jungkook quảng cáo giữ vị trí số 1 trong danh mục bestseller (đắt hàng) trên trang Naver của Calvin Klein Hàn Quốc trong vòng 24 giờ sau khi được bày bán.</i></p><p>Bộ phận hỗ trợ khách hàng của Calvin Klein nhận được hàng nghìn yêu cầu về quần áo của Jungkook, nhưng không đủ số lượng sản phẩm để đáp ứng. Nhiều người than phiền hãng sản xuất số lượng có hạn.</p><p>Không chỉ vậy, Calvin Klein cũng gặp rắc rối về khâu vận chuyển do nhu cầu đặt hàng quá lớn. Họ phải gửi thông báo đặc biệt cho khách hàng để giải thích cho sự chậm trễ.</p><p>Chưa dừng lại ở đó, cổ phiếu của công ty cũng tăng vọt không lâu sau khi Jungkook được công bố là người mẫu trong chiến dịch quảng cáo mới. Giá cổ phiếu của PHV Corp, công ty sở hữu Calvin Klein, tăng đến 20%, từ 72,26 USD/cổ phiếu lên 88,36 USD/cổ phiếu chỉ trong 4 ngày ngắn ngủi.</p>', '2023-04-05 14:38:55', '2023-04-13 01:05:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `idCart` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`idCart`)),
  `idUser` int(11) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `idCart`, `idUser`, `tongTien`, `status`, `createdAt`, `updatedAt`) VALUES
(110, '[401,402]', 12, 623500, 2, '2023-04-12 01:16:34', '2023-04-12 01:17:36'),
(111, '[403,404,405]', 12, 2665000, 2, '2023-04-12 01:17:18', '2023-04-12 01:17:31'),
(112, '[406,407]', 12, 961000, 2, '2023-04-13 00:10:39', '2023-04-17 02:30:46'),
(113, '[408]', 12, 420000, 3, '2023-04-13 01:00:13', '2023-04-13 01:01:46'),
(114, '[409,410]', 12, 1420000, 2, '2023-04-17 00:19:11', '2023-04-17 02:30:42'),
(115, '[411,413,415]', 12, 1906000, 3, '2023-04-17 02:30:03', '2023-04-19 23:43:10'),
(116, '[416]', 12, 245000, 3, '2023-04-17 02:31:38', '2023-04-19 23:43:07'),
(117, '[419,423]', 12, 965000, 2, '2023-04-19 22:02:13', '2023-04-19 23:43:19'),
(118, '[424]', 12, 350000, 1, '2023-04-19 23:44:48', '2023-04-20 09:39:40'),
(119, '[434]', 16, 490000, 3, '2023-04-20 09:34:42', '2023-04-20 09:36:00'),
(120, '[435]', 16, 245000, 2, '2023-04-20 09:59:08', '2023-04-20 09:59:53'),
(121, '[436,437]', 12, 1190000, 2, '2023-05-11 15:00:23', '2023-05-11 15:01:01'),
(122, '[439]', 12, 1470000, 3, '2023-06-17 14:32:54', '2023-06-17 14:38:05'),
(124, '[441]', 12, 427500, 2, '2023-06-17 14:48:33', '2023-06-17 14:48:46'),
(125, '[442]', 12, 350000, 0, '2023-07-23 14:28:46', '2023-07-23 14:28:46'),
(126, '[443]', 12, 1470000, 2, '2023-07-26 15:34:43', '2023-07-26 15:35:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `anhCK` text NOT NULL,
  `idUser` int(11) NOT NULL,
  `tienNap` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `prices`
--

INSERT INTO `prices` (`id`, `anhCK`, `idUser`, `tienNap`, `status`, `createdAt`, `updatedAt`) VALUES
(1, '123131', 11, 500000, 1, '2023-03-25 19:20:06', '2023-03-27 04:17:31'),
(2, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1679761867/UploadFileMember/r6o9zg1w8bsau9evo7km.png', 11, 5000000, 2, '2023-03-25 23:31:15', '2023-03-27 05:02:24'),
(9, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1679976956/UploadFileMember/ivt6hp6huwlxmun4oqbo.png', 12, 5000000, 1, '2023-03-28 11:15:57', '2023-03-29 15:11:32'),
(10, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680076826/UploadFileMember/di21herpcsbfq2ngxs2d.jpg', 12, 1000000, 1, '2023-03-29 15:00:33', '2023-03-29 15:11:32'),
(11, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680077605/UploadFileMember/onvesyu6rdjezxn1hs7j.png', 12, 500000, 1, '2023-03-29 15:13:31', '2023-03-29 15:16:50'),
(12, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680077918/UploadFileMember/yq4lfylavtkd3ozgkwrf.jpg', 12, 500000, 1, '2023-03-29 15:18:42', '2023-03-29 15:18:59'),
(13, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680077969/UploadFileMember/jma0mjvynyirzmpu14vn.png', 12, 500000, 1, '2023-03-29 15:19:32', '2023-03-29 15:19:43'),
(15, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680144890/UploadFileMember/wwup15i5bd3iszuuh4wl.jpg', 13, 1000000, 1, '2023-03-30 09:54:58', '2023-03-31 21:19:57'),
(16, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1680321005/UploadFileMember/ph2nteszrqtfymmnjgsd.jpg', 12, 2000000, 1, '2023-04-01 10:50:10', '2023-04-01 10:51:05'),
(18, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681841076/UploadFileMember/ceizh9y4cb44ssuryoy8.jpg', 12, 1000000, 1, '2023-04-19 01:04:39', '2023-04-19 01:04:56'),
(24, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681958024/UploadFileMember/xnku7f1d9akt4kymnpqj.jpg', 16, 500000, 1, '2023-04-20 09:33:46', '2023-04-20 09:34:02'),
(25, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1681959519/UploadFileMember/unu9ihpg4wmzmfuoiz6o.jpg', 16, 500000, 1, '2023-04-20 09:58:42', '2023-04-20 09:58:59'),
(27, 'https://res.cloudinary.com/djh5ubzth/image/upload/v1686987222/UploadFileMember/lvhe5ydwtbxxr6dzdgoe.jpg', 12, 1000000, 1, '2023-06-17 14:33:44', '2023-06-17 14:36:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `tenSp` varchar(255) NOT NULL,
  `hangSx` varchar(255) NOT NULL,
  `giaNhap` int(11) NOT NULL,
  `giaSanPham` int(11) NOT NULL,
  `idDanhSach` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `sizes` text NOT NULL,
  `hot` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `image` text NOT NULL,
  `mota` text NOT NULL,
  `luotXem` int(11) NOT NULL,
  `luotTim` int(11) NOT NULL,
  `luotMua` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `tenSp`, `hangSx`, `giaNhap`, `giaSanPham`, `idDanhSach`, `soLuong`, `sizes`, `hot`, `sale`, `image`, `mota`, `luotXem`, `luotTim`, `luotMua`, `createdAt`, `updatedAt`) VALUES
(58, 'Áo Louboutin Nhũ', 'LouBouTin', 50000, 450000, 14, 93, '', 0, 5, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1680319635/UploadFile/ttfttdu6vxgof8vtrd4n.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318917/UploadFile/kfu7gj4vwqzokrzms5gk.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318922/UploadFile/cgvutpevgghoe75s2brj.jpg\"]', '<p>kdladfla</p>', 0, 0, 6, '2023-04-01 10:27:32', '2023-06-17 14:48:46'),
(59, 'Quần Amiri Vá Đỏ', 'Amiri', 620000, 750000, 51, 48, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1680319947/UploadFile/iu3kpevwduufbah6c1rt.jpg\"]', '<p>quần quá đẹp luôn anh em mua có ny luôn</p>', 0, 0, 2, '2023-04-01 10:33:25', '2023-04-12 23:19:14'),
(60, 'Quần Amiri', 'Amiri', 500000, 750000, 51, 29, '', 0, 11, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1680320109/UploadFile/r5jc4ermp4twyiklfeqg.jpg\"]', '<p>Áa</p>', 0, 0, 1, '2023-04-01 10:35:22', '2023-04-19 01:42:32'),
(61, 'Amiri Vá Da Hồng', 'Amiri', 550000, 750000, 51, 25, '', 0, 5, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316235/UploadFile/unq5ji42ajggn68mvqfy.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316240/UploadFile/pmb0eif9n7huo3hsrnsf.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316245/UploadFile/qb1fkpveksoczylzq6pr.jpg\"]', '<p>Quần Amiri Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-01 10:36:16', '2023-04-12 23:17:36'),
(62, 'Amiri Xanh Vá Da Đen', 'Amiri', 620000, 750000, 51, 26, '', 1, 14, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316115/UploadFile/m2isury7msskyck0vnrh.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316128/UploadFile/bssyoxbemfmeev9pvwfu.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316136/UploadFile/leesyhynxclbn2h07wgl.jpg\"]', '<p>Quần Amiri Jeans Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 3, '2023-04-04 08:23:47', '2023-04-12 23:18:01'),
(63, 'Amiri Vá Vải', 'Amiri', 56000, 750000, 51, 26, '', 1, 16, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315953/UploadFile/xokjzm2ucpedoienmv5e.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315961/UploadFile/l6oc77jiuemabpbc0mwn.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315962/UploadFile/bouh6eby7t6mz92jszfm.jpg\"]', '<p>Quần Amiri Jeans Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-04 08:25:56', '2023-04-12 23:18:14'),
(64, 'Amiri Vá Da PlayBoy', 'Amiri', 550000, 750000, 51, 13, '', 1, 2, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1680571834/UploadFile/xym94o1hvouoxl90smlz.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1680571835/UploadFile/yux2nn6d2hlqhyhgvu2g.jpg\"]', '<p>Quần Amiri Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 12, '2023-04-04 08:30:39', '2023-07-26 15:35:19'),
(66, 'Amiri Bạc Vá Vảy Sơn', 'Amiri', 600000, 750000, 51, 30, '', 1, 2, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314417/UploadFile/kecyf28yvf0ellkdpeqn.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314419/UploadFile/psrxkkxriafs21emnx0o.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314425/UploadFile/sywpahsvstkrgz27ktdq.jpg\"]', '<p>Amiri Like Auth Sản Xuất Tại Quảng Châu anh em băm luôn cho mình nhé</p><ul><li>Đợt này mình về đủ size số anh em thoải mái nhé</li></ul>', 0, 0, 0, '2023-04-04 08:38:18', '2023-04-12 23:18:41'),
(67, 'Amiri Đính Đá ', 'Amiri', 550000, 750000, 51, 50, '', 1, 1, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314140/UploadFile/vvvitupcczvhso58qprc.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314153/UploadFile/ql0yvzoiluo8kgpfiwmq.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314159/UploadFile/fx5sd8noiobzitmjaamn.jpg\"]', '<p>Quần Amiri Đính Đá LikeAuth Sản Suất Tại Quảng Châu - &nbsp;Trung Quốc</p><ul><li>Đủ size số cho anh em nhà mình nhé</li><li>&nbsp;</li></ul>', 0, 0, 0, '2023-04-04 08:49:48', '2023-04-12 22:43:51'),
(68, 'Sơ Mi Thom Browne', 'Thom Browne', 450000, 550000, 13, 28, '', 0, 3, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315168/UploadFile/jjqggmkcrlepy9uxkmjo.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315175/UploadFile/pl2hp1lc6wjx6x3w9ezl.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315178/UploadFile/vhrfjxc5cifljnejo3pa.jpg\"]', '<p>Sơ Mi Thorm Browne Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 2, '2023-04-04 08:55:51', '2023-04-17 02:30:46'),
(69, 'Sơ Mi BBR', 'BBR', 350000, 450000, 13, 15, '', 0, 2, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315033/UploadFile/rpskobligy374io0evfz.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315037/UploadFile/whvtrdgiqvdkw1a7mee5.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681315037/UploadFile/y9iuaoorqxovqdmng18b.jpg\"]', '<p>Sơ Mi BBR Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-04 09:57:55', '2023-04-12 23:39:08'),
(70, 'Sơ Thom Browne', 'Thom Browne', 450000, 550000, 13, 35, '', 1, 2, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314839/UploadFile/lufvs58qfihjuy1rsuer.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314846/UploadFile/getxrgbpcpdwzcb5xdsp.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314846/UploadFile/qvycf2rsceieslhpmxlr.jpg\"]', '<p>Sơ Mi Thorm Browne Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 2, '2023-04-05 01:42:33', '2023-04-12 22:55:10'),
(71, 'Amiri Vá Da', 'Amiri', 600000, 750000, 51, 25, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314645/UploadFile/xrr1q9ahuync1agvbjdx.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681314651/UploadFile/kqmwayfhq5uqyiacrn3y.jpg\"]', '<p>Amiri Like Auth Sản Xuất Tại Quảng Châu anh em băm luôn cho mình nhé</p><ul><li>Đợt này mình về đủ size số anh em thoải mái nhé</li></ul>', 0, 0, 0, '2023-04-12 22:50:58', '2023-04-12 22:50:58'),
(72, 'Áo Phông LBT Chữ Kim Tuyến', 'LouBouTin', 250000, 350000, 14, 38, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316483/UploadFile/wdbys4mg10ijybx7pi5j.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316488/UploadFile/thefvtrd6poxpsabavie.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316492/UploadFile/xlbrewomksotrq4tpcob.jpg\"]', '<p>Phông LBT Siêu Cấp cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 2, '2023-04-12 23:21:55', '2023-04-17 02:30:42'),
(73, 'Sơ Mi Thom Browne', 'Thom Browne', 450000, 550000, 13, 14, '', 1, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316593/UploadFile/dzxtlhjtcufirkh7n1hf.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316599/UploadFile/ns9hvf7wbkvh6qfwltmu.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316603/UploadFile/rtmip5idat1wy5qvdurt.jpg\"]', '<p>Sơ Mi Thorm Browne Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-12 23:23:29', '2023-04-12 23:23:29'),
(74, 'Sơ Mi BBR', 'BBR', 350000, 500000, 13, 60, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316667/UploadFile/daaldcrojqifjj8kcpna.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316671/UploadFile/coccdvba0onvdx8vwu7f.jpg\"]', '<p>Sơ Mi BBR Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-12 23:24:43', '2023-04-12 23:24:43'),
(75, 'Sơ Mi Cộc Tay Louis Vutton', 'Louis Vutton', 350000, 650000, 13, 23, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316788/UploadFile/gsdu0mnnlm2kwtztd2ts.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316800/UploadFile/lyh1rkqvfj5hunahaki3.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316807/UploadFile/hmr2ysi8ewhobhu5vr1v.jpg\"]', '<p>Sơ Mi LV Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-12 23:27:00', '2023-04-12 23:27:00'),
(76, 'Sơ Mi Raza Kẻ Rách', 'Raza', 450000, 550000, 13, 30, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316912/UploadFile/lf6rjerxjikl308seve6.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316933/UploadFile/yzgdlta24mv0afuk1m5c.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681316935/UploadFile/xndhwdaseu9i36zghqyg.jpg\"]', '<p>Sơ Raza Kẻ Rách Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-12 23:29:10', '2023-04-12 23:29:10'),
(77, 'Sơ Mi BBR ', 'BBR', 350000, 450000, 13, 55, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317069/UploadFile/i90a3ulc2znslgcwbc1o.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317077/UploadFile/jbooygqou4w8fbvo5apa.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317090/UploadFile/tuh4otveu2h2jva7uevn.jpg\"]', '<p>Sơ Mi BBR Like Auth cho anh em nhé lần này hàng chất vải rất tốt&nbsp;</p><ul><li>Hàng Chuẩn Like Auth full box + bill nhé&nbsp;</li><li>Đủ size số cho anh em thoả sức mua nhé</li></ul>', 0, 0, 0, '2023-04-12 23:31:41', '2023-04-12 23:31:41'),
(78, 'Sơ Mi Thom Browne', 'Thom Browne', 250000, 500000, 13, 40, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317943/UploadFile/k2yxmk21sttrhuvwb9ru.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317944/UploadFile/aemmhod3pxpbrkxyqifw.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681317946/UploadFile/ietw19yv7vahzhhuyvix.jpg\"]', '<p>Áo Sơ Mi Kẻ Quá Đẹp Mặc Phát Co NY</p>', 0, 0, 0, '2023-04-12 23:46:11', '2023-04-12 23:46:11'),
(79, 'Tee Saint Laurent', 'Saint Laurent', 240000, 350000, 14, 41, '', 0, 30, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318151/UploadFile/kiolkjxosb8zinaxji40.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318156/UploadFile/bgfkqxgssufbaficidgy.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318161/UploadFile/pwpodokvysfgjqekwznj.jpg\"]', '<p>Tee Saint Lauren Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 9, '2023-04-12 23:50:24', '2023-06-17 14:44:12'),
(80, 'Tee Saint Laurent May Phối', 'Saint Laurent', 200000, 350000, 14, 30, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318340/UploadFile/fcljx3wek9d6y48ewzgo.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318373/UploadFile/nvcc1g7ztzrfz5xk1mjx.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318377/UploadFile/zdin1gq0ytnpzu6apmv5.jpg\"]', '<p>Tee Saint Lauren Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-12 23:53:07', '2023-04-12 23:53:07'),
(81, 'Tee Rolling Stone Thêu Xù', 'Rolling Stone', 200000, 350000, 14, 20, '', 1, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318463/UploadFile/ttmeeoyocu0o1xhhkzqm.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318468/UploadFile/hx7qbod4vqfmmyaagkil.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318487/UploadFile/cqdrfzat9ffzlfymrhc9.jpg\"]', '<p>Tee Rolling Stone Hàng siêu cấp về cho anh em nhà mình&nbsp;</p><ul><li>chất vải dày dặn</li><li>100% vải cotton</li><li>full bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-12 23:56:21', '2023-04-12 23:56:21'),
(82, 'Tee Snop Dog', 'Tnguyen Store', 200000, 350000, 14, 21, '', 0, 20, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318671/UploadFile/owz4cvoldspxdqktuwtm.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318688/UploadFile/cugaezrxxtfblfnexnkq.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681318694/UploadFile/tcfm8nanpwbefq36vbiw.jpg\"]', '<p>Tee Saint Lauren Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-12 23:58:27', '2023-04-12 23:58:42'),
(83, 'Tee Drew Hồng Cá Tính', 'Drew', 200000, 350000, 14, 20, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319043/UploadFile/ogyy6cpiurlehf3z4iix.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319048/UploadFile/cowumx6n2dgbqo7ley3m.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319054/UploadFile/ib2b5g3tu62vo1iddcrr.jpg\"]', '<p>Tee Drew Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-13 00:05:24', '2023-04-13 00:05:24'),
(84, 'Tee Chorm Hearts', 'Chorm Hearts', 200000, 300000, 14, 20, '', 1, 10, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319695/UploadFile/xv3ax9fowrba8t4uxagb.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319696/UploadFile/wucevyjmkyigt2llxerg.jpg\"]', '<p>Tee Saint Lauren Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-13 00:15:26', '2023-04-13 00:15:26'),
(85, 'Tee Tommy ', 'Tommy', 200000, 300000, 14, 30, '', 0, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319795/UploadFile/lfpaliqhmywbd8smi1ty.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319812/UploadFile/tafaa3jcppkzesbc3pwd.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681319827/UploadFile/mkblkhqwvehj48jn4mta.jpg\"]', '<p>Tee Tommy Hàng Siêu cấp đủ size số cho anh em nhà mình nhé</p><ul><li>chất vải cotton 100% Bền co giãn</li><li>đủ team tag + bill + box&nbsp;</li></ul>', 0, 0, 0, '2023-04-13 00:17:18', '2023-04-13 00:17:18'),
(86, 'Giày Saint Laurent', 'Saint Laurent', 600000, 800000, 56, 28, '', 0, 10, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320020/UploadFile/x4nobpkb28nfazpjd3df.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320029/UploadFile/ibglt9low392vpesikyw.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320034/UploadFile/gnvmfsv5l52ctrccodkt.jpg\"]', '<p>Giày Saint Laurent Hàng Like Auth đủ size số cho anh em nhà mình nhé</p><ul><li>Đi Cực Êm Chân Luôn Cả Nhà Ơi</li><li>đủ team tag + bill + box + size số</li></ul>', 0, 0, 2, '2023-04-13 00:21:16', '2023-04-19 23:43:19'),
(87, 'MLB Liner Siêu Cấp ', 'MLB', 450000, 550000, 56, 16, '', 0, 10, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320188/UploadFile/pgngjicyi5epiwih421v.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320190/UploadFile/b3pqjguwji1glgwrl61n.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320195/UploadFile/sfg19vsd4kfh5vjdtkyu.jpg\"]', '<p>Mlb liner siêu cấp Đủ size số cho cả nhà yêu&nbsp;</p><ul><li>Hàng Chuẩn Siêu Cấp Trung</li><li>Đi ôm Chân</li><li>Full bill + box cho cả nhà &lt;3</li></ul>', 0, 0, 0, '2023-04-13 00:24:00', '2023-04-13 00:24:00'),
(88, 'NB 500 Xanh Đen Siêu Cấp', 'NB 500', 300000, 500000, 56, 8, '', 0, 30, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320356/UploadFile/gtuib7ifpuuxgxocy7vr.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320362/UploadFile/zaojmnlxtjqaqznt3ogx.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320375/UploadFile/rptwxx3as1xd2xuz87xj.jpg\"]', '<p>Nb550 xanh đen siêu cấp cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 2, '2023-04-13 00:27:01', '2023-05-11 15:01:01'),
(89, 'Nike Hoa Cúc Siêu Cấp', 'NIke', 400000, 550000, 56, 13, '', 1, 10, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320496/UploadFile/mluskq576obvp12o368e.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320502/UploadFile/ugftaienxtyl94p4n2tq.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320509/UploadFile/px61zqqg0u7zse51unol.jpg\"]', '<p>Nb550 xanh đen siêu cấp cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 0, '2023-04-13 00:29:04', '2023-04-13 00:29:04'),
(90, 'MLB Siêu Cấp Trung', 'MLB', 400000, 550000, 56, 16, '', 0, 5, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320655/UploadFile/qcy65uuwthemn0zoxxie.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320664/UploadFile/ck43zyjahygjkrv40bxq.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320669/UploadFile/qapgucr35muoogp6h2yk.jpg\"]', '<p>MLB xanh đen siêu cấp cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 0, '2023-04-13 00:31:16', '2023-04-13 00:31:16'),
(91, 'Dior Chistian LikeAuth', 'Dior Chistian', 600000, 750000, 56, 26, '', 1, 30, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320777/UploadFile/k791sijmu0tsa1a9sryw.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320783/UploadFile/ti67r6t4cdemyvuvxkwy.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320796/UploadFile/nfhhqsvpngxe570tqjjx.jpg\"]', '<p>Dior Chistian &nbsp;siêu cấp cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 0, '2023-04-13 00:33:33', '2023-04-13 00:33:33'),
(92, 'Gucci Ngọc Trai LIkeAuth', 'Gucci', 550000, 750000, 56, 23, '', 1, 0, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320918/UploadFile/bgjktshpypyhebzlrbsd.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320925/UploadFile/l4jyud3gugg5hyeefdgx.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681320935/UploadFile/ira5xxn5jmjozoihzdn0.jpg\"]', '<p>Gucci Ngọc Trai &nbsp;LikeAuth cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 0, '2023-04-13 00:36:02', '2023-04-13 00:36:02'),
(93, 'Gucci For Love', 'Gucci', 600000, 750000, 56, 31, '', 1, 15, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321090/UploadFile/p8vhity0eguqeouzzaf9.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321110/UploadFile/ajtxmgzg959scaahfmtf.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321113/UploadFile/nm9bysux3v9mmoksketb.jpg\"]', '<p>Gucci &nbsp;For Love siêu cấp cho cả nhà yêu</p><ul><li>ĐI cực ôm chân</li><li>hàng chuẩn siêu câp đủ size số</li><li>full billl + box cho cả nhà yêu ạ &lt;3</li></ul>', 0, 0, 1, '2023-04-13 00:39:13', '2023-04-17 02:30:40'),
(94, 'Tee Doncle Leve', 'Doncle Leve AT', 250000, 350000, 14, 30, '', 1, 10, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321499/UploadFile/g6ud4a2dn4cetmu4n9i9.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321505/UploadFile/clowrll26wryxataasng.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321510/UploadFile/u37thh84izqrxfezhqxa.jpg\"]', '<p>Tee Hot Nhất Đang Được Boy Phố yêu thích</p>', 0, 0, 0, '2023-04-13 00:45:28', '2023-04-13 00:45:28'),
(95, 'Sơ Mi Thom Browne', 'Thom Browne', 400000, 700000, 57, 15, '', 1, 15, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321644/UploadFile/sptapjvofps5je3f8q9r.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321669/UploadFile/mqbhu1twy1p2lgjqt3mq.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321675/UploadFile/fxu8mquw7ojuxxvevbjx.jpg\"]', '<p>Quá Đẹp LIke Auth</p>', 0, 0, 1, '2023-04-13 00:48:03', '2023-04-20 09:41:03'),
(96, 'Amiri Vá Kim Tuyến', 'Amiri', 700000, 800000, 13, 20, '', 1, 15, '[\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321846/UploadFile/xvdp1pwktz309ovaakts.jpg\",\"https://res.cloudinary.com/djh5ubzth/image/upload/v1681321868/UploadFile/iaja0b0w2gocbfvyrr1r.jpg\"]', '<p>Quá Hot Luôn</p>', 0, 0, 0, '2023-04-13 00:51:14', '2023-06-17 14:37:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'ROLE', '2023-03-06 05:04:09', '2023-03-06 05:04:09'),
(2, 'Editter', 'ROLE', '2023-03-06 05:04:09', '2023-03-06 05:04:09'),
(3, 'Writer', 'ROLE', '2023-03-06 05:06:35', '2023-03-06 05:06:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230226060459-create-user.js'),
('20230226062426-create-user.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `roleID` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `phoneNumber`, `address`, `roleID`, `createdAt`, `updatedAt`) VALUES
(43, 'Nguyễn', 'Hiển', 'hiennguyen02hd@gmail.com', '$2a$10$tdXWxCnf8I36WFJW.IuHMeMzBHoSZahuRd9w5usE2BgtmBnnIaVl2', '0373753158', 'Thống nhất- Gia Lộc- Hải Dương', 1, '2023-03-27 11:28:05', '2023-03-27 11:28:05'),
(45, 'Long', 'Nguyen Văn', 'nguyenvanlong@gmail.com', '$2a$10$5P8CfChgkd9E7QrZQH93d.I5gO3PenZhRrpAQa6te2Ln/EzpAmCxa', '0373753158', 'Hà Nội', 1, '2023-04-11 08:27:09', '2023-04-11 08:27:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bailab`
--
ALTER TABLE `bailab`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDanhSach` (`idDanhSach`),
  ADD KEY `idDanhSach_2` (`idDanhSach`),
  ADD KEY `idDanhSach_3` (`idDanhSach`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bailab`
--
ALTER TABLE `bailab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idDanhSach`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
