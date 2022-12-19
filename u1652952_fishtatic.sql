-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2022 at 12:45 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1652952_fishtatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(254) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(8, 'Air Payau', '2022-11-28 13:13:43'),
(9, 'Air Tawar', '2022-11-28 13:14:12'),
(10, 'Air Asin', '2022-11-28 13:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(12, 'Admin', '1234@gmail.com', '$2y$10$HvZmXU4CbnoK.5RT/L9A8e0jZDlX5asMF1p8cKyF.zK6htoe6mz0q', '1231231', 'asdsadsadas', '2022-11-28 10:21:51', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `tgldibuat`) VALUES
(30, 9, 'Gurame', '../produk/16Ag6o6cp0dbo.jpg', 'Ikan Gurami (Osphronemus gouramy) adalah sejenis ikan air tawar yang populer sebagai ikan konsumsi di Asia Tenggara dan Asia Selatan. Di samping itu, gurami juga sering dipelihara dalam akuarium. Selain dikenal dengan nama gurami, ikan ini juga memiliki beberapa sebutan lokal seperti gurame (Sd.), grameh (Jw.), kaloi (My.), Kalui (Mng.), ikan kali (Plg.), dan lain-lain', '2022-11-29 04:27:16'),
(31, 9, 'Lele', '../produk/16MrHTgbEd9Qo.jpg', 'Lele atau ikan keli, adalah suatu keluarga ikan yang hidup di air tawar. Lele mudah dikenali karena tubuhnya yang licin, agak pipih memanjang, serta memiliki \"kumis\" yang panjang, yang mencuat dari sekitar bagian mulutnya. Ikan ini banyak dikonsumsi karena rasanya yang enak jika di masak dan biasanya di goreng atau dibakar.', '2022-11-29 04:28:51'),
(32, 9, 'Mas', '../produk/16BTKvcYjwYKU.jpg', 'Ikan mas atau Ikan karper (Cyprinus carpio) adalah ikan air tawar yang memiliki nilai ekonomis penting dan sudah tersebar luas di Indonesia.', '2022-11-29 04:31:18'),
(35, 8, 'Bandeng', '../produk/16dXpaT5BgrK6.jpg', 'Ikan bandeng (Chanos chanos) adalah ikan pangan populer di Asia Tenggara dan Oseania. Ikan ini merupakan satu-satunya spesies yang masih ada dalam suku Chanidae (bersama enam genus tambahan yang dilaporkan pernah ada namun sudah punah). Dalam bahasa Bugis dan Makassar dikenal sebagai ikan bolu, dalam Bahasa Tagalog sebagai bangus, dan dalam bahasa Inggris sebagai milkfish)', '2022-11-30 06:57:34'),
(36, 8, 'Belanak', '../produk/16zaw9vlfE4Bw.jpeg', 'Belanak (Crenemugil seheli); adalah sejenis ikan laut tropis dan subtropis di suku Mugilidae yang bentuknya hampir menyerupai bandeng. Dalam bahasa Inggris dikenal sebagai blue-spot mullet atau blue-tail mullet.', '2022-11-30 06:58:11'),
(39, 8, 'Kakap Putih', '../produk/16RlXi0AoE5Rw.jpg', 'Kakap putih atau Baramundi adalah suatu jenis Ikan berpindah dalam keluarga Latidae dari ordo Perciformes. Jenis ikan ini tersebar luas di wilayah Hindia-Pasifik Barat mulai dari Asia Tenggara sampai Papua New guninea dan Australia Utara. Ikan ini dikenal dengan nama Pla kapong di Thailand dan Barramundi di Australia. Oleh komunitas ilmiah internasional ikan ini disebut sebagai Asian sea bass (kakap laut Asia) atau Australian sea bass (kakap laut Australia). Ikan ini merupakan salah-satu komoditas budidaya laut unggulan di Indonesia.', '2022-11-30 07:07:58'),
(40, 10, 'Salmon', '../produk/16o330gMIvwlI.jpeg', 'Salmon atau salem adalah jenis ikan dari famili Salmonidae. Ikan lain yang berada dalam satu famili dengan salmon adalah Trout. Perbedaan kedua jenis ikan tersebut antara lain: salmon bermigrasi, sedangkan trout hidup menetap. Salmon hidup di Samudra Atlantik dan Samudra Pasifik. Secara umum, salmon adalah spesies anadromous, yaitu spesies yang bermigrasi untuk berkembang biak. Salmon lahir di perairan air tawar, bermigrasi ke laut, lalu kembali ke air tawar untuk bereproduksi.', '2022-11-30 07:15:57'),
(41, 10, 'Cakalang', '../produk/16lh8uNSxUT.E.jpeg', 'Ikan Cakalang (Katsuwonus pelamis) adalah ikan berukuran sedang dari familia Scombridae (tuna). Satu-satunya spesies dari genus Katsuwonus. Cakalang terbesar, panjang tubuhnya bisa mencapai 1 m dengan berat lebih dari 18 kg. Cakalang yang banyak tertangkap berukuran panjang sekitar 50 cm. Nama-nama lainnya di antaranya cakalan, cakang, kausa, kambojo, karamojo, turingan, dan ada pula yang menyebutnya tongkol. Dalam bahasa Inggris dikenal sebagai skipjack tuna.', '2022-11-30 07:17:41'),
(42, 10, 'Trout', '../produk/167oM8S66myJo.jpg', 'Trout adalah nama untuk sejumlah jenis ikan air tawar genus Oncorhynchus, Salmo dan Salvelinus, semua Salmoninae subfamili dari keluarga Salmonidae. Nama Ikan ini juga digunakan sebagai bagian dari nama beberapa ikan non-salmonid seperti Cynoscion nebulosus, seperti ikan trout berbintik-bintik.', '2022-11-30 07:26:59'),
(43, 10, 'Tuna', '../produk/160YJw4F.3Ci2.png', 'Tuna adalah ikan laut pelagik yang termasuk bangsa Thunnini, terdiri dari beberapa spesies dari famili skombride, terutama genus Thunnus. Ikan ini adalah perenang andal (pernah diukur mencapai 77 km/jam). Tidak seperti kebanyakan ikan yang memiliki daging berwarna putih, daging tuna berwarna merah muda sampai merah tua. Hal ini karena otot tuna lebih banyak mengandung myoglobin daripada ikan lainnya. Beberapa spesies tuna yang lebih besar, seperti tuna sirip biru Atlantik (Thunnus thynnus), dapat menaikkan suhu darahnya di atas suhu air dengan aktivitas ototnya. Hal ini menyebabkan mereka dapat hidup di air yang lebih dingin dan dapat bertahan dalam kondisi yang beragam. Kebanyakan bertubuh besar, tuna adalah ikan yang memiliki nilai komersial tinggi.', '2022-11-30 07:27:32'),
(46, 9, 'Seluang', '../produk/166bQSj6dEBoQ.jpg', 'Ikan Seluang Ialah salah satu spesies Rasbora spp.. Ikan seluang merupakan ikan yang banyak terdapat di sungai di daerah asia tenggara, termasuk Malaysia, Brunei, dan Indonesia. Ikan ini bersisik seperti ikan lampam tetapi berbentuk tirus seperti anak Jelawat. Berukuran antara 2 hingga 4 inci. Pola pertumbuhan ikan seluang betina bersifat allometrik positif,dan ikan seluang jantan bersifat allometrik negatif.', '2022-11-30 07:48:27'),
(47, 9, 'Bawal', '../produk/16runCMoo8bHU.jpg', ' Bawal  Halaman Pembicaraan Baca Sunting Sunting sumber Lihat riwayat Dari Wikipedia bahasa Indonesia, ensiklopedia bebas  Artikel ini perlu dikembangkan agar dapat memenuhi kriteria sebagai entri Wikipedia. Bantulah untuk mengembangkan artikel ini. Jika tidak dikembangkan, artikel ini akan dihapus. Pomfret Brama brama.jpg Atlantic pomfret, Brama brama Klasifikasi ilmiah Kerajaan:	Animalia Kelas:	Actinopterygii Ordo:	Perciformes Subordo:	Percoidei Superfamili:	Percoidea Famili:	Bramidae Bonaparte, 1831 Genera[1] Brama Eumegistus Pteraclis Pterycombus Taractes Taractichthys Xenobrama  Bawal Laut (bahasa Inggris: Pomfret) adalah sejenis ikan dari keluarga Bramidae. Ikan ini berasal dari Hawaii dan sejumlah daerah di Indonesia. Ikan ini hidup berkoloni dan termasuk jenis ikan predator. Ikan ini jauh berbeda dengan ikan Bawal Air Tawar atau Pacu (Colossoma macropomum) yang termasuk kedalam famili Serrasalmidae.', '2022-11-30 08:07:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
