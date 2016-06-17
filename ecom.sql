-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2016 at 03:29 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `no_invoice` varchar(30) NOT NULL,
  `order_code` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `num_qty` int(11) NOT NULL,
  `num_price` int(11) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `id_products` (`id_products`,`buyer`),
  KEY `id_user` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `no_invoice`, `order_code`, `id_products`, `seller`, `buyer`, `num_qty`, `num_price`, `order_date`) VALUES
(2, '2015102000001', 414, 2, 7, 10, 2, 6000000, '2015-10-20'),
(4, '2016061700001', 666, 16, 7, 7, 1, 4000000, '2016-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_category`, `category`, `slug`) VALUES
(1, 'Personal Care', 'personal-care'),
(2, 'Handphone', 'handphone');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkout`
--

CREATE TABLE IF NOT EXISTS `tbl_checkout` (
  `id_checkout` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_invoice` varchar(30) NOT NULL,
  `order_code` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `nama_penerima` varchar(35) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `courier` varchar(3) NOT NULL,
  `bank` text NOT NULL,
  `order_date` date NOT NULL,
  `send_date` date NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_checkout`),
  KEY `id_products` (`id_products`,`seller`,`buyer`),
  KEY `seller` (`seller`),
  KEY `buyer` (`buyer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`id_checkout`, `no_invoice`, `order_code`, `id_products`, `seller`, `buyer`, `qty`, `price`, `nama_penerima`, `alamat_penerima`, `telepon`, `province`, `city`, `postal_code`, `courier`, `bank`, `order_date`, `send_date`, `message`, `status`) VALUES
(1, '2015102500002', 700, 3, 4, 7, 1, 45000, 'asdasd', 'asdasdas', '234234', 'asda', 'adad', 234324, 'tik', 'sdfdsf', '2015-10-25', '0000-00-00', 'sdfsdf', 1),
(2, '2015102500001', 217, 14, 4, 7, 4, 1800000, 'ds', 'sdf', '35435', 'sd', 'asd', 34234, 'tik', 'qwewqe', '2015-10-25', '0000-00-00', 'wqewqe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id_products` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_products` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `berat` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  PRIMARY KEY (`id_products`),
  KEY `id_category` (`id_category`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id_products`, `id_category`, `id_user`, `name_products`, `slug`, `description`, `qty`, `kondisi`, `berat`, `price`, `image1`, `image2`, `image3`, `image4`, `image5`) VALUES
(1, 2, 7, 'Evercoss Elevate A66A', 'evercoss-elevate-a66a', 'S Pen baru yang disempurnakan dan pengalaman penggunaaan setiap hari dengan satu klik. S Pen yang disempurnakan ini didesain untuk benar-benar berfungsi dengan menghasilkan input dasar dan fitur kontrol. Hal ini sangat berarti dalam interaksi user dengan smartphone, membuat segalanya menjadi lebih mudah. Arahkan S Pen disisi manapun pada layar, dengan hanya mengklik tombol samngakses ke 5 fitur berguna dengan cepat. S Pen baru dapat mengakses menu universal dalam Action Memo, Scrapbooker, Screen Write, S Finder dan Pen Window via Air Command yang dapat menyelesaikan berbagai tugas dengan mudah dengan hanya mengklik sebuah tombol samtibility\nNote3 Neo didesain agar dapat berintegrasi dengan teknologi inovatif Galaxy Gear. Note 3 neo berfungsi sebagai host dari app dan fungsi lainnya tapi smartwatch-nya sendiri dapat menerima dan melakukan panggilan. Setiap SNS, IM atau email pada Galaxy Gear yang disinkronisasikan dengan smartphone, membuka aplikasi secara otomatis saat Anda mengakses Note3 Neo Anda tanpa delay. Auto Lock untuk keduanya dan mengaktifkan Galaxy Gear pada jarak 1,5 meter untuk melindungi penyalahgunaan Note3 Neo Anda.', 6, 'sec', '90', 1500000, '', '', '', '', ''),
(2, 2, 7, 'Jual iPhone S5 1GB Murah', 'jual-iphone-s5-1GB-murah', 'Leather stitch design\nGALAXY Note3 Neo hadir dengan bentuk ramelakang menyerupai kulit hingga membuatnya terkesan mewah. Anda akan merasa nyaman saat mengenggamnya tanpa khawatir licin dan terjatuh. Bentuk rampingnya memberikan tampilan unik dan penuh gaya. Tersedia dalam warna hitam dan putih, namun untuk Anda yang suka berpetualang, cobalah warna Mint agar Anda terlihat berbeda.', 2, 'new', '80', 3000000, '', '', '', '', ''),
(3, 1, 4, 'Pelembab Muka Wanita!! Murah', 'pelembab-muka-wanita-murah', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 'sec', '120', 45000, './assets/img/products/2015-10-05/rasya/4f260a365dd13b5f4ecd298c75002d9a.png', '', '', '', ''),
(7, 2, 8, 'Kabel Data Yang Saya Bawa', 'kabel-data-yang-saya-bawa', 'Haiii', 20, 'new', '20', 15000, './assets/img/products/2015-10-05/rasya/4f260a365dd13b5f4ecd298c75002d9a.png', '', '', '', ''),
(8, 1, 7, 'Pelembab Wanita Murah!! Meriah', 'pelembab-wanita-murah-meriah', 'Bagus untuk wanita yang a''am', 20, 'new', '90', 150000, './assets/img/products/2015-10-05/rasya/75e08f516d5484ff5ea95bf3ef098fb7.png', '', '', '', ''),
(14, 2, 4, 'LCD Evercoss a66a. asliii', 'lcd-evercoss-a66a-asliii', 'Garansi Uang kembali', 20, 'new', '10', 450000, './assets/img/products/2015-10-05/rasya/75e08f516d5484ff5ea95bf3ef098fb7.png', '', '', '', ''),
(15, 2, 4, 'LCD IPhone 6 Baru Asli', 'lcd-iphone-6-baru-asli', 'BIIKKASKAKSASASASAS', 12, 'new', '23', 1200000, './assets/img/products/2015-10-05/rasya/a2933bb91d9fd477c1066e3f20e3841b.jpg', '', '', '', ''),
(16, 2, 7, 'Jual iPhone 5', 'jual-iphone-5', 'Murah Worrr', 2, 'new', '500', 4000000, './assets/img/products/2016-06-17/rasya/0d6512f6806a29e2c690ce0327a32525.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `ip_address` varchar(35) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `email`, `password`, `nama_lengkap`, `gender`, `alamat`, `ip_address`, `user_agent`) VALUES
(4, 'maful', 'mafulprayoga@gmail.com', '96d1c238aacdb1542dada13bfcd4956d', 'Maful P Arnandi', 2, 'Banjarnegara', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(7, 'rasya', 'rasya@gmail.com', '805b5cd563ef7f6bf5cb2bbbfce47d95', 'Rasya P Arnandi', 2, 'Banjarnegara', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(8, 'brandon', 'brandonwoodward@gmail.com', '45917634c7cac19dcadcc247665f65a8', 'Brandon Woodward', 2, 'Amerika Serikat', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/44.0.2403.89 Chrome/44.0.2403.89 Safari/537.36'),
(9, 'namasaya', 'namasaya@gmail.com', '0b14d7a09244945b1c7986075ebbfe35', 'Nama Saya', 2, 'Nama Saya Adalah', '::1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/45.0.2454.85 Chrome/45.0.2454.85 Safari/537.36'),
(10, 'burhan', 'burhan@gmail.com', '45917634c7cac19dcadcc247665f65a8', 'Burhan', 2, 'Banjarnegara', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
