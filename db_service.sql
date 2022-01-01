-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Jan 2022 pada 12.52
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_service`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `serial_number` varchar(30) NOT NULL,
  `seri` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `serial_number`, `seri`, `type`, `jenis_barang`) VALUES
(1, 'sn003', 's002', 't001', 'KB6'),
(3, 'sn009', '7982-9739-98', 'E12-23u4', 'KB6'),
(4, 'sn007', '1029-00-98734', 'L9894', 'KB5'),
(6, 'sn002', 'SL-0982', 'L-98384', 'KB14'),
(7, 'sn004', 'SL-902', '90972', 'KB9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id_chat`, `id_user`, `id_service`, `text`, `file`, `tgl`, `status`, `type`) VALUES
(1, 2, 4, 'Ganti Processor nit bang,biaya 1000000', '', '2021-09-10 13:09:05', 'seen', 'text'),
(2, 2, 3, 'seperti ini processornya bang', '', '2021-09-10 13:09:01', 'seen', 'text'),
(4, 4, 5, '11', '', '2021-09-10 13:09:03', 'seen', 'text'),
(5, 4, 6, 'seperti ini processornya bang', '', '2021-09-10 13:09:08', 'seen', 'text'),
(6, 4, 4, 'Bagaimana bang', '', '2021-09-10 13:18:41', 'seen', 'text'),
(7, 2, 4, 'kalau abang mau, langskkl', '', '2021-09-10 21:10:11', 'Seen', 'Text'),
(8, 2, 4, '', '11092021042438_IMG-20210910-WA0014.jpg', '2021-09-10 21:24:38', 'Seen', 'File'),
(9, 2, 4, '', '11092021042725_IMG-20210910-WA0004.jpg', '2021-09-10 21:27:25', 'Seen', 'File'),
(10, 2, 4, '', '11092021043800_IMG-20210910-WA0014.jpg', '2021-09-10 21:38:00', 'Seen', 'Image'),
(11, 2, 4, '', '11092021043810_Screenshot_20210909-143509.png', '2021-09-10 21:38:10', 'Seen', 'Image'),
(12, 2, 4, 'Saya tunggu sampek besok ya bang', '', '2021-09-10 21:49:05', 'Seen', 'Text'),
(14, 2, 6, 'iyah seperti itu', '', '2021-09-10 22:05:17', 'Seen', 'Text'),
(16, 2, 4, '', '11092021051305_IMG-20210910-WA0014.jpg', '2021-09-10 22:13:05', 'Seen', 'Image'),
(20, 2, 4, '', '11092021175707_IMG-20210910-WA0014.jpg', '2021-09-11 10:57:07', 'Seen', 'Image'),
(21, 2, 4, '', '11092021175716_IMG-20210909-WA0001.jpg', '2021-09-11 10:57:16', 'Seen', 'Image'),
(23, 2, 4, 'Hai', '', '2021-09-11 11:03:10', 'Seen', 'Text'),
(24, 2, 4, 'Hai juga', '', '2021-09-11 11:03:35', 'Seen', 'Text'),
(25, 2, 4, 'Hai', '', '2021-09-11 11:04:45', 'Seen', 'Text'),
(29, 4, 6, 'Harga berapa itu bang?', '', '2021-09-12 00:57:19', 'Seen', 'Text'),
(30, 4, 6, 'Cek', '', '2021-09-12 09:13:31', 'Seen', 'Text'),
(31, 4, 6, '', '12092021161340_IMG-20210912-WA0005.jpg', '2021-09-12 09:13:40', 'Seen', 'Image'),
(33, 1, 7, 'Hi, min', '', '2021-09-15 17:44:43', 'Seen', 'Text'),
(34, 6, 8, 'Jika ada pertanyaan silahkan hubungi kami disini', '', '2021-09-19 14:53:36', 'Seen', 'Text'),
(35, 6, 8, '', '19092021215356_FB_IMG_16320434810414557.jpg', '2021-09-19 14:53:56', 'Seen', 'Image'),
(36, 4, 1, 'Untuk biaya ganti lcd 350. 000 ', '', '2021-09-21 03:46:05', 'Seen', 'Text'),
(37, 4, 1, 'Bagaimana mas? ', '', '2021-09-21 03:46:10', 'Seen', 'Text'),
(38, 11, 2, 'Ini harus ganti Lampu bang', '', '2021-09-21 04:31:29', 'Seen', 'Text'),
(39, 11, 2, 'Biaya ganti nya 150000', '', '2021-09-21 04:31:37', 'Seen', 'Text'),
(40, 11, 2, 'Bagaimana? ', '', '2021-09-21 04:31:44', 'Seen', 'Text'),
(41, 12, 2, 'Boleh bang', '', '2021-09-22 14:17:36', 'Seen', 'Text');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `kode_service` varchar(15) NOT NULL,
  `serial_number` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kendala` varchar(255) NOT NULL,
  `kerusakan` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  `kelengkapan` varchar(255) NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `foto2` varchar(255) NOT NULL,
  `foto3` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id_service`, `kode_service`, `serial_number`, `id_user`, `kendala`, `kerusakan`, `tgl_masuk`, `tgl_keluar`, `kelengkapan`, `foto1`, `foto2`, `foto3`, `status`, `biaya`) VALUES
(1, 'KS', 'sn009', 1, 'Layar Mati', 'Ganti LCD', '2021-09-21', '2021-09-21', 'Tas dan Charger', '21092021103028_fb41e702-31e8-4e4e-afbb-9383ae54be285553902655062782350.jpg', '21092021103028_b7c1cb6e-8001-42c9-b170-2568112e7c7b386242685949803324.jpg', '21092021103029_aa98c358-95e3-472b-885b-89ee4b3d275e2107384190459486068.jpg', 'Selesai', 350000),
(2, 'KS1', 'sn002', 12, 'Lampu dalam mati', 'Ganti Lampu Kulkas', '2021-09-21', '2021-09-22', '-', '21092021103309_fb8ef9cd-3355-4255-b2f9-bd66ebe3af8e1722358899444657893.jpg', '21092021103309_b0013abf-804c-4b9d-a28c-8fa70b81666d214730981041285868.jpg', '21092021103309_ed5cb90a-3b59-48bb-a3d7-8e8109f4a9336964256172037416544.jpg', 'Serviced', 150000),
(3, 'KS2', 'sn009', 1, 'Tidak bisa hidup', 'Ganti LCD', '2021-09-23', '0000-00-00', 'Tas dan Charger', '23092021203257_caed8b0d-a292-4777-a3e6-b337a95e50725155114450482867117.jpg', '23092021203257_dc7445a7-8af1-4297-a7a6-37d73c0933fb2979790761302781187.jpg', '23092021203257_b72d3a20-2063-4396-a8fe-d023827ebc513412480537147093970.jpg', 'Serviced', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jenis_barang`
--

CREATE TABLE `tabel_jenis_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_jenis_barang`
--

INSERT INTO `tabel_jenis_barang` (`id`, `kode_barang`, `jenis_barang`) VALUES
(5, 'KB4', 'Monitor'),
(6, 'KB5', 'PC'),
(7, 'KB6', 'Laptop'),
(9, 'KB7', 'LCD'),
(10, 'KB9', 'CPU'),
(13, 'KB10', 'UPS'),
(15, 'KB14', 'kulkas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `foto`, `email`, `password`, `no_telp`, `level`) VALUES
(1, 'Bravo Aro C', '20092021155050_url.jpg', 'bravoaro@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '082377425464', 'Customer'),
(4, 'Hajir Mujib', '20092021155041_be9ed2e1cd3ac3964685621adca9f925.jpg', 'hajirmujib@gmail.com', '202cb962ac59075b964b07152d234b70', '98989', 'Admin'),
(10, 'aro', '20092021212927_url.jpg', 'aro@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02', '098726384', 'Customer'),
(11, 'Wayu', '21092021082409_makima-4k-minimalism-chainsaw-man-manga-besthqwallpapers_com-360x640.jpg', 'wahyu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '087863564', 'Teknisi'),
(12, 'Om Jimmy', '21092021103253_makima-4k-minimalism-chainsaw-man-manga-besthqwallpapers_com-360x640.jpg', 'omjimmy@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', '082377425464', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_barang` (`jenis_barang`),
  ADD KEY `serial_number` (`serial_number`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `serial_number` (`serial_number`);

--
-- Indeks untuk tabel `tabel_jenis_barang`
--
ALTER TABLE `tabel_jenis_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_jenis_barang`
--
ALTER TABLE `tabel_jenis_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`jenis_barang`) REFERENCES `tabel_jenis_barang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`serial_number`) REFERENCES `barang` (`serial_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
