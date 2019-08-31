-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2018 at 08:08 PM
-- Server version: 10.2.18-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hafidrfc_android_praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `idartikel` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`idartikel`, `idkategori`, `judul`, `content`, `status`) VALUES
(2, 2, 'Seru! Ronaldo Tantang Messi Pindah ke Serie A', 'Bola.net - Superstar Juventus Cristiano Ronaldo menantang rivalnya yakni Lionel Messi untuk mengikuti jejaknya pindah ke Italia.\r\n\r\nRonaldo sebelumnya berkarir selama enam tahun di Inggris bersama dengan Manchester United. Setelah itu mulai tahun 2009, ia memilih hijrah ke Real Madrid.\r\n\r\nIa bermukim di Santiago Bernabeu hingga musim panas 2018 kemarin sebelum akhirnya memutuskan untuk pindah ke Juventus.\r\n\r\nSementara itu, Messi mulai bermain bagi tim senior Barcelona sejak tahun 2004. Hingga kini ia setia bermain bagi klub Catalan tersebut.', 'publish'),
(3, 2, 'Ronaldo dan Pique Bicarakan Bisnis Bareng', 'Bola.net - Legenda sepakbola Brasil, Ronaldo mengungkapkan bahwa dirinya tengah menjalin komunikasi dengan bek andalan Barcelona, Gerard Pique perihal bisnis.\r\n\r\nSejak September lalu, Ronaldo resmi menjadi pemilik saham mayoritas di klub La Liga, Real Valladolid. Meski demikian, eks bomber Barcelona dan Real Madrid itu tak menjabat sebagai presiden klub.\r\n\r\nSementara itu, selain sebagai pesepakbola, di luar lapangan Pique juga akrab dengan bisnis. Eks pemain Manchester United itu dikenal sebagai petinggi turnamen tenis Davis Cup lewat grup Kosmos.', 'publish'),
(4, 2, 'Usia Masih 22 Tahun, Coman Berencana Pensiun Dini Karena Cedera', 'Bola.net - Eks penggawa Juventus, Kingsley Coman, nampak frustrasi lantaran badai cedera terus menghantamnya. Bahkan, ia tidak ragu untuk gantung sepatu walaupun masa depannya masih cerah dengan umur yang masih muda, yakni 22 tahun.\r\n\r\nComan merupakan salah satu pemain yang turut melihat kesuksesan Juventus pada tahun 2015 lalu. Pada musim debut sang pelatih, Massimiliano Allegri, Bianconeri berhasil meraih Scudetto dan Coppa Italia serta mencapai babak final Liga Champions.\r\n\r\nSayangnya, kesempatan bermain yang minim membuatnya harus angkat kaki dari Turin. Untungnya masih ada klub besar yang berminat dengan potensi besarnya hingga bersedia menampungnya, yakni Bayern Munchen.', 'publish'),
(5, 2, 'Rudiger Beri Gambaran Menyeramkannya Sarri Saat Chelsea Kalah', 'Bola.net - Pelatih Chelsea, Maurizio Sarri, rupanya merupakan tipikal orang yang akan mencak-mencak saat tim asuhannya kalah. Sang bek, Antonio Rudiger, belum lama ini menjelaskan bagaimana jika eks nahkoda Napoli itu marah.\r\n\r\nPenyebab kemarahan Sarri, menurut pengakuan Rudiger, adalah kekalahan mengejutkan atas Wolverhampton beberapa hari yang lalu. Saat itu, The Blues yang tampil dominan dan sempat unggul lebih dulu justru harus pulang dengan tangan hampa.\r\n\r\nHasil tersebut membuat Chelsea harus menelan kekalahan keduanya di musim ini. Posisinya di klasemen Premier League pun mengalami perubahan, di mana mereka harus rela disalip tim sekotanya, Tottenham, dan bertengger di posisi empat.', 'publish'),
(6, 2, 'Manchester City Resmi Perpanjang Kontrak Phil Foden', 'Bola.net - Klub kaya raya Premier League, Manchester City baru saja mengumumkan bahwa mereka telah resmi memperpanjang kontrak bintang muda Phil Foden hingga 2024 mendatang.\r\n\r\nFoden sudah menimba ilmu di akademi sepakbola milik City sejak berusia delapan tahun. Foden akhirnya menembus tim utama The Citizens pada musim 2016-17 lalu.\r\n\r\nFoden tampil cukup impresif dalam tur pramusim di Amerika Serikat kemarin. Pemain 18 tahun itu pun beberapa kali dimainkan oleh Pep Guardiola pada musim ini.', 'publish'),
(7, 1, 'Permak Fulham, Jose Mourinho: MU Sempurna!', 'Bola.net - Sebuah pujian dilayangkan Jose Mourinho kepada para anak asuhnya. Pelatih Manchester United itu menilai anak asuhnya tampil dengan sempurna pada laga melawan Fulham tadi malam.\r\n\r\nSebelumnya Manchester United sukses memetik kemenangan besar di pertandingan pekan ke 16 Premier League. Menjamu Fulham di Old Trafford, setan merah mampu menang dengan skor telak 4-1.\r\n\r\nPada laga ini setan merah memang tampil dominan di hadapan para pendukung mereka. Mereka terus menekan The Cottagers sejak awal, sehingga mereka hanya kebobolan dari titik putih.\r\n\r\nMourinho sendiri menilai bahwa performa timnya pada pertandingan itu benar-benar sempurna. \"Saya benar-benar puas dengan performa kami, semangat, para fans, para pemain saya dan semuanya,\" buka Mourinho kepada MUTV.', 'publish'),
(8, 2, 'Diogo Dalot, Bintang Muda MU yang Mulai Bersinar', 'Bola.net - Manchester United memang tampil apik secara keseluruhan saat menandaskan perlawanan Fulham dengan skor telak 4-1 pada pekan ke-16 Premier League 2018/19, Sabtu (8/12) malam WIB. Namun, jika ada satu pemain yang layak dianggap sebagai pemain terbaik, nama Diogo Dalot tak boleh diabaikan.\r\n\r\nBek muda itu tampil begitu impresif. Dia dipercaya mengisi pos bek kanan dan itu baru merupakan pertandingan kedua Dalot sejak menit awal bagi MU. Hasilnya, dia menjawab kepercayaan itu dengan tampil gemilang.\r\n\r\nPemain berusia 19 tahun ini menunjukkan semua hal yang seharusnya dimiliki bek kanan terbaik. Dia bertahan dengan stabil, membantu penyerangan dengan baik, juga mengirimkan umpan silang yang tepat sasaran.', 'publish'),
(9, 1, 'Kapan MU Juara? Mourinho: Saat Man City Kena Sanksi Transfer', 'Bola.net - Manajer Manchester United, Jose Mourinho, tidak tahu kapan timnya bisa kembali jadi juara Premier League. Menurut Mourinho, mungkin United harus menunggu Manchester City terkena sanksi transfer.\r\n\r\nUnited memang sudah cukup lama tidak lagi merasakan gelar juara Premier League. Gelar terakhir Setan Merah terjadi pada musim 2012-13 silam, pada era kepelatihan Sir Alex Ferguson.\r\n\r\nPasca era Fergie, United telah menunjuk David Moyes, Ryan Giggs [interim] dan Louis van Gaal sebagai manajer. Namun, mereka gagal memberikan gelar Premier League. Kini giliran Mourinho mengemban tugas itu.\r\n\r\nMourinho menyebut jika United punya kans juara Premier League Man City terkena sanksi. Mengapa bisa begitu? Simak ulasan selengkapnya di bawah ini.\r\n\r\n', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `idkategori` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`idkategori`, `keterangan`) VALUES
(1, 'berita utama'),
(2, 'artikel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `iduser` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `notelp` varchar(100) NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`iduser`, `email`, `nama`, `alamat`, `notelp`, `jeniskelamin`, `pekerjaan`, `password`) VALUES
(1, 'hafidparaiso@gmail.com', 'hafid rf', 'warujayeng, Tnajunganom, Nganjuk', '081233107483', 'laki-laki', 'Mahasiswa', 'test123'),
(11, 'hrf@gmail.com', 'rizqifaluthi', 'malang', '0990219029', 'Laki-laki', 'wiraswasta', 'haha123'),
(6, 'rahmawrah@gmail.com', 'Rahmawati', 'Madura', '081200009999', 'Perempuan', 'mahasiswa', 'test123'),
(7, 'hafid@gmail.com', 'Hafid Rizqifaluthi', 'Nganjuk', '081200990099', 'Laki-laki', 'Mahasiswa', 'test123'),
(13, 'sam@gmail.com', 'samsung', 'korea', '2312123', 'Perempuan', 'swasta', '123'),
(10, 'nisa@gmail.com', 'Annisa', 'hahahah', '1231231', 'Perempuan', 'Mahasiswa', 'test123'),
(14, 'hahah@ahhaha.com', 'ahahH', 'ajajja', '255088', 'Laki-laki', 'hshsh', 'test123'),
(15, 'ggg', 'jj', 'ghh', 'hhmm ', 'Perempuan', 'hhh', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`idartikel`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `idartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
