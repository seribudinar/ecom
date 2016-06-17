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

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02e239c9ec4f848e086d2f4a9108c200c80a5b68', '127.0.0.1', 1445845618, '__ci_last_regenerate|i:1445845591;'),
('0bc4e8cfed125e8a792462d52654b622c87722eb', '127.0.0.1', 1445769653, '__ci_last_regenerate|i:1445769456;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('131948bd6d3264f9d71295e2f4d63197008b5770', '127.0.0.1', 1445775513, '__ci_last_regenerate|i:1445775492;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('14355300cde1a58eb9ac7f2201b12e149fce4766', '127.0.0.1', 1445844439, '__ci_last_regenerate|i:1445844386;'),
('1b32ceb536a363111bf7751593caa943d85feeff', '127.0.0.1', 1445779381, '__ci_last_regenerate|i:1445779122;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('24f292f888d9dcf241e2d47cf64b8206f9e5c2aa', '127.0.0.1', 1445845486, '__ci_last_regenerate|i:1445845215;'),
('3b809ef94858acba29817031ac30f178da71b81e', '127.0.0.1', 1445776209, '__ci_last_regenerate|i:1445776179;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('3d74b7f8828db517414a4a075c42603030baf60e', '127.0.0.1', 1445769125, '__ci_last_regenerate|i:1445768890;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('44215900479c5096f52f7ab9625f2a6de1ef9c49', '127.0.0.1', 1466123789, '__ci_last_regenerate|i:1466123789;'),
('56115889af6faad53ad70b9628ad1d6bff5c1fc1', '127.0.0.1', 1445786622, '__ci_last_regenerate|i:1445786601;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('576554540d2aba68455252db717f0136a2387a4c', '::1', 1462579033, '__ci_last_regenerate|i:1462578820;email|s:22:"mafulprayoga@gmail.com";id|s:1:"4";nama_lengkap|s:15:"Maful P Arnandi";username|s:5:"maful";'),
('6b2401357d5e23a19d878772437391efa622e68b', '127.0.0.1', 1445780470, '__ci_last_regenerate|i:1445780242;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('6e0d7dc47c82df55ae76c14d75dd65a029c32820', '127.0.0.1', 1445786970, '__ci_last_regenerate|i:1445786963;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('7184b239e9c3514051311aa287a7607309ee501c', '127.0.0.1', 1466118636, '__ci_last_regenerate|i:1466118529;'),
('72973ec5e37ff538375db4050f26d33b736b302e', '127.0.0.1', 1445778159, '__ci_last_regenerate|i:1445778066;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('72c178d7aa3b36074ca4379b8d093448d51ac9ef', '127.0.0.1', 1445778923, '__ci_last_regenerate|i:1445778654;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('772338a80ec1941652ba8a80db565d78758fe6bc', '127.0.0.1', 1445779979, '__ci_last_regenerate|i:1445779737;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('776e9761da9356516eee367ae82473e40f0d397b', '127.0.0.1', 1445779691, '__ci_last_regenerate|i:1445779428;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('85fdd64679fe9a475f7dca2743a9d92b36945ef1', '127.0.0.1', 1445781550, '__ci_last_regenerate|i:1445781543;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('8ccd7856ed4b4bc5155a2dc8c80fd3827c19a49b', '::1', 1462579318, '__ci_last_regenerate|i:1462579150;email|s:22:"mafulprayoga@gmail.com";id|s:1:"4";nama_lengkap|s:15:"Maful P Arnandi";username|s:5:"maful";'),
('8d06476d549a0f60b1e37919b2093b6c0f68de44', '127.0.0.1', 1445775145, '__ci_last_regenerate|i:1445775112;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('9230e74a782f341b2b15d6f36d3998447236ad3e', '127.0.0.1', 1445783011, '__ci_last_regenerate|i:1445782958;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('a5e7967288b97f834ac1b033b0d8b5bab2a6d3df', '127.0.0.1', 1445771200, '__ci_last_regenerate|i:1445771200;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('a6483aad184353015e7b7c253d3e4a0b03453744', '127.0.0.1', 1445780775, '__ci_last_regenerate|i:1445780570;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('a7322e7b388a0bcd5dad985064e2bd6bc570c504', '127.0.0.1', 1445782804, '__ci_last_regenerate|i:1445782521;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('af1f24b0ac470441dfb218e1405ed7cd3db75f8b', '127.0.0.1', 1445786346, '__ci_last_regenerate|i:1445786047;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('b359213bd50be5d2c4debb974a01ce809ff2d1c1', '127.0.0.1', 1466119683, '__ci_last_regenerate|i:1466119386;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('b976b1666726e2a77978ccc178a08cac953f6476', '127.0.0.1', 1466119934, '__ci_last_regenerate|i:1466119934;'),
('de364c8d61e24ccab514fef15bd6be8941f7c05f', '127.0.0.1', 1445785704, '__ci_last_regenerate|i:1445785704;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('e2812006f7ccd188fad35051e07460b5e4ac8d62', '127.0.0.1', 1466123168, '__ci_last_regenerate|i:1466122973;'),
('e336a030891c224c9a4aece2d5754a03dd1fd59d', '::1', 1462579731, '__ci_last_regenerate|i:1462579494;email|s:22:"mafulprayoga@gmail.com";id|s:1:"4";nama_lengkap|s:15:"Maful P Arnandi";username|s:5:"maful";'),
('e8da1e8add868c686b348396cc64ccc4c31365b6', '127.0.0.1', 1466122300, '__ci_last_regenerate|i:1466122282;'),
('f1fa82af5b84737f408304aa2bae14f1958c8e01', '127.0.0.1', 1445780993, '__ci_last_regenerate|i:1445780987;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('f9528df928ca9bc2703c9a172501bfd7304ea3b7', '127.0.0.1', 1445772489, '__ci_last_regenerate|i:1445772228;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";'),
('ff19d9b9c51d64e2a264c2e21b1aaa140ec7b921', '::1', 1462580021, '__ci_last_regenerate|i:1462579998;email|s:22:"mafulprayoga@gmail.com";id|s:1:"4";nama_lengkap|s:15:"Maful P Arnandi";username|s:5:"maful";'),
('fffdd6067f1c4c5e598733ce90349f668d6fa082', '127.0.0.1', 1445777734, '__ci_last_regenerate|i:1445777721;email|s:15:"rasya@gmail.com";id|s:1:"7";nama_lengkap|s:15:"Rasya P Arnandi";username|s:5:"rasya";');

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
