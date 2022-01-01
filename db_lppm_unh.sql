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
-- Database: `db_lppm_unh`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_atk` int(11) NOT NULL,
  `atk_judul` varchar(255) NOT NULL,
  `atk_isi` char(255) NOT NULL,
  `atk_tanggal` datetime NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_atk`, `atk_judul`, `atk_isi`, `atk_tanggal`, `file`) VALUES
(116, 'Rapat LPPM Untuk Penelitian Dan Pengabdian Tahun 2021', '<b>Isi <i><u>artikel jlkjkljsd</u></i></b>', '2021-07-31 15:36:43', '03092021220518_images_(5).jpeg'),
(118, 'Pembukaan Usulan Proposal Tahun 2021', '', '2021-08-01 14:33:16', '03082021161544__20210803_211512.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `ketebalan` int(5) NOT NULL,
  `tahun_terbit` varchar(5) NOT NULL,
  `no_edisi` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tahun` int(5) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `id_penelitian`, `judul`, `pengarang`, `penerbit`, `ketebalan`, `tahun_terbit`, `no_edisi`, `file`, `tahun`, `id_users`) VALUES
(1, 6, 'Pengambilan Keputusan Dan Sistem Informasi', 'Fery Purnama, S.Kom, M.Kom', 'Bumi Aksara : Jakarta', 212, '2021', '-', '30082021211607_20_Lembar_Kontrol_Penelitian_Kerja_Praktek.docx', 2021, 12),
(3, 1, 'Judul buku', 'Fery purnama', 'Gramedia', 50, '2021', '1', '30082021204658_17_LISTING_PROGRAM.docx', 2021, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_harian`
--

CREATE TABLE `catatan_harian` (
  `id_file` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `catatan_harian`
--

INSERT INTO `catatan_harian` (`id_file`, `id_penelitian`, `file`, `tanggal`, `keterangan`, `id_user`) VALUES
(1, 2, '09072021060622_3. DAFTAR ISI (SELESAI).docx', '2021-07-09 06:06:22', 'sosialisasi penelitian', 12),
(2, 5, '09072021144045_17 LISTING PROGRAM.docx', '2021-07-09 14:40:45', 'sosialisasi', 11),
(3, 6, '09072021214540_images (5).jpeg', '2021-07-09 21:45:40', 'sosialisasi penelitian', 12),
(8, 5, '27082021020529_18_Lembaran_Kontrol_Bimbingan_Kerja_Praktek.docx', '2021-08-27 02:05:29', 'kegiatan Minggu pertama', 11),
(9, 1, '04092021033511_Screenshot_20201216-205411.png', '2021-09-04 03:35:11', 'kegiatan Perdana Penelitian', 12),
(10, 2, '04092021053122_17_LISTING_PROGRAM.docx', '2021-09-04 05:31:22', 'kegiatan Minggu pertama penelitian', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hki`
--

CREATE TABLE `hki` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `no_permohonan` varchar(50) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_ciptaan` varchar(100) NOT NULL,
  `judul_ciptaan` varchar(255) NOT NULL,
  `tgl_diumumkan` date NOT NULL,
  `tempat_diumumkan` varchar(50) NOT NULL,
  `jangka_waktu` varchar(5) NOT NULL,
  `no_pencatatan` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tahun` int(5) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hki`
--

INSERT INTO `hki` (`id`, `id_penelitian`, `no_permohonan`, `tgl_permohonan`, `nama`, `jenis_ciptaan`, `judul_ciptaan`, `tgl_diumumkan`, `tempat_diumumkan`, `jangka_waktu`, `no_pencatatan`, `file`, `tahun`, `id_users`) VALUES
(3, 4, 'EC00201802432', '2018-07-10', 'Fery Purnama', 'Program Komputer', 'Sistem Informasi Manajemen Desa (SIMDesa)', '2018-08-31', 'Jambi', '50', '000101051', '30082021070552_makima-4k-minimalism-chainsaw-man-manga-besthqwallpapers_com-360x640.jpg', 2021, 12),
(4, 1, '1092', '2021-08-16', 'Fery Purnama S.Kom', 'Program Komputer', 'HKI penelitian', '2021-08-23', 'Jambi', '50', '1290', '30082021180151_17_LISTING_PROGRAM.docx', 2021, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_info` int(11) NOT NULL,
  `info_judul` varchar(255) NOT NULL,
  `info_isi` char(255) NOT NULL,
  `info_tanggal` datetime NOT NULL,
  `lampiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_info`, `info_judul`, `info_isi`, `info_tanggal`, `lampiran`) VALUES
(7, 'Hasil Rapat LPPM Untuk Usulan Proposal Penelitian Dan Pengabdian', '<p>Isi nya</p>', '2021-08-01 16:12:50', '01082021112400_545915.jpg'),
(8, 'Jadwal Pembukaan Usulan Proposal Penelitian 2021', '<p>Haiii</p>', '2021-08-01 23:10:28', '01082021231029_19_Surat_Keterangan_Penelitian.docx'),
(9, 'Pengumuman Daftar Proposal Penelitian dan Pengabdian Diterima', '<p>Haii</p>', '2021-08-01 23:11:00', '01082021231100_images-1.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `no` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `tanggal` datetime NOT NULL,
  `skema` varchar(255) NOT NULL,
  `abstrak` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`id`, `id_penelitian`, `judul`, `no`, `volume`, `tahun`, `tanggal`, `skema`, `abstrak`, `cover`, `link`, `id_user`) VALUES
(5, 3, 'ini judul jurnal 3', '1', '2', '2021', '2021-07-26 20:05:00', 'Penelitian Unggul 3', '', '', 'http://google.com', 10),
(6, 6, 'ini judul jurnal 3', '1', '2', '2020', '2021-07-26 20:05:48', 'Penelitian Unggul 3', '', '', 'http://google.com', 10),
(7, 8, 'ini judul jurnal 3', '1', '2', '2021', '2021-07-26 20:07:01', 'Penelitian Unggul 3', '', '', 'http://google.com', 10),
(16, 12, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMAAN BEASISWA PADA MIS BETUNG BERBASIS WEB  ', '1', '2', '2021', '2021-09-04 03:41:54', 'Penelitian Unggulan', '04092021022445_Screen_Shot_2021-07-21_at_15_30_52.png', '04092021022658_Screen_Shot_2021-07-21_at_15_38_50.png', 'https://drive.google.com/file/d/1Ug93zgGgthung6oXz7yiyTZtvMtu1Nl2/view ', 12),
(17, 12, 'Aplikasi Booking Hotel Berbasis Mobile', '2', '1', '2018', '2021-09-04 07:28:20', 'Program Kemitraan Masyarakat', '04092021072820_Screen_Shot_2021-07-21_at_15_30_52.png', '04092021072820_Screen_Shot_2021-07-21_at_15_38_50.png', 'https://www.youtube.com/watch?v=fZaRq-ffIVs&list=RDGMEMHDXYb1_DDSgDsobPsOFxpA&index=27 ', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_proposal` int(11) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_proposal`, `isi`, `tanggal`, `id_users`) VALUES
(1, 2, 'Maaf salah file', '2021-07-09 01:28:55', 12),
(10, 4, 'cek okey', '2021-08-15 16:36:57', 11),
(11, 3, 'oke', '2021-08-15 16:47:40', 5),
(19, 5, 'proposal segera di buat kan kegiatan penelitian', '2021-08-15 18:01:08', 5),
(20, 21, 'sudah bagus, tapi tolong di perbaiki di bagian..... ', '2021-08-24 02:37:16', 11),
(21, 21, 'sudah saya perbaiki', '2021-08-24 02:39:20', 12),
(22, 21, 'Okey, silahkan tunggu pemberitahuan dari lppm', '2021-08-24 02:44:28', 11),
(23, 21, 'kegiatan penelitian sudah bisa dimulai, silahkan cek di bagian menu penelitian', '2021-08-24 02:48:03', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_kegiatan`
--

CREATE TABLE `komentar_kegiatan` (
  `id_komentar` int(11) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar_kegiatan`
--

INSERT INTO `komentar_kegiatan` (`id_komentar`, `id_kegiatan`, `isi`, `tanggal`, `id_users`) VALUES
(1, 2, 'humm', '2021-07-09 05:56:01', 5),
(2, 2, 'silahkan lengkapi laporan', '2021-07-09 06:10:35', 5),
(3, 2, 'siap', '2021-07-09 06:11:05', 12),
(4, 6, 'Oke, silahkan upload laporan kemajuan', '2021-07-09 21:46:58', 5),
(5, 6, 'Silahkan upload jurnal dan hasil keluaran dari penelitian', '2021-07-09 21:51:59', 5),
(14, 1, 'Silahkan Upload Kegiatan penelitianya', '2021-09-03 06:54:00', 5),
(15, 1, 'Terimakasih Sudah Saya Upload. ', '2021-09-04 03:35:29', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lainya`
--

CREATE TABLE `lainya` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lainya`
--

INSERT INTO `lainya` (`id`, `id_penelitian`, `nama`, `keterangan`, `file`, `tahun`, `id_users`) VALUES
(1, 6, 'Sertifikasi Penelitian Terbaik Pada Ajang Penelitian Dosen Se-Jambi', 'Acara Dilaksanakan Di Universitas Batang Hari Pada 20-01-2020 sampai 20-07-2020', '30082021211607_20_Lembar_Kontrol_Penelitian_Kerja_Praktek.docx', '2021', 12),
(3, 1, 'Keluaran lainya', 'Keterangan lainya', '30082021211607_20_Lembar_Kontrol_Penelitian_Kerja_Praktek.docx', '2021', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id`, `id_penelitian`, `file`, `jenis`, `id_users`) VALUES
(1, 2, '09072021011119_4. ISI PROPOSAL(SELESAI).docx', 'kemajuan', 12),
(5, 5, '09072021094147_17 LISTING PROGRAM.docx', 'kemajuan', 11),
(6, 5, '09072021094152_18 Lembaran Kontrol Bimbingan Kerja Praktek.docx', 'akhir', 11),
(7, 6, '09072021164746_16 DAFTAR PUSTAKA.docx', 'kemajuan', 12),
(8, 6, '09072021164750_19 Surat Keterangan Penelitian.docx', 'akhir', 12),
(16, 4, '29082021022328_16_DAFTAR_PUSTAKA.docx', 'kemajuan', 10),
(21, 1, '29082021024821_16_DAFTAR_PUSTAKA.docx', 'akhir', 12),
(23, 1, '04092021033625_20_Lembar_Kontrol_Penelitian_Kerja_Praktek.docx', 'kemajuan', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paten`
--

CREATE TABLE `paten` (
  `id` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `no_permohonan` varchar(50) NOT NULL,
  `pemohon` varchar(50) NOT NULL,
  `judul_invensi` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paten`
--

INSERT INTO `paten` (`id`, `id_penelitian`, `tgl_pengajuan`, `no_permohonan`, `pemohon`, `judul_invensi`, `file`, `tahun`, `id_users`) VALUES
(1, 6, '2019-07-16', '123', 'Fery Purnama', 'KINCIR ANGIN KERJA GANDA (DOUBLE ACTING)\rSEBAGAI PENGGERAK POMPA PISTON', '09072021194506_19 Surat Keterangan Penelitian.docx', '2020', 12),
(4, 1, '2021-08-17', '12344321', 'fery purnama', 'Judul Invansi', '30082021200549_16_DAFTAR_PUSTAKA.docx', '2021', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sumber_dana` varchar(20) NOT NULL,
  `dana_tersedia` int(10) NOT NULL,
  `dana_terpakai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `judul`, `tahun`, `tanggal`, `jenis`, `status`, `id_user`, `sumber_dana`, `dana_tersedia`, `dana_terpakai`) VALUES
(1, 'APLIKASI PENGOLAHAN DATA RENTAL DVD TIGA SAUDARA DI MUARO JAMBI ', '2020', '2021-07-09 05:30:45', 'penelitian', 'Belum Selesai', 12, 'internal', 7500000, 0),
(2, 'Aplikasi Manajemen Penelitian Dan Pengabdian Masyarakat Pada LPPM Universitas Nurdin Hamzah Berbasis Mobile', '2018', '2021-07-09 05:34:33', 'pengabdian', 'Belum Selesai', 12, 'eksternal', 0, 0),
(3, 'SISTEM INFORMASI PENGAJUAN JUDUL SKRIPSI ONLINE BERBASIS WEB PADA STMIK NURDIN HAMZAH', '2019', '2021-07-09 05:39:09', 'penelitian', 'Belum Selesai', 12, 'eksternal', 0, 0),
(4, 'Penerapan Forward Chaining dan Deterministic Finite Automata Pada Sistem Pakar Diagnosa Awal Penyakit Saraf', '2017', '2021-07-09 05:41:50', 'penelitian', 'Belum Selesai', 10, 'internal', 4000000, 0),
(5, 'Sistem Informasi Penjualan Obat-Obatan Pada PT. Sapta Sari Tama Jambi ', '2018', '2021-07-09 14:39:57', 'penelitian', 'Belum Selesai', 13, 'eksternal', 8000000, 0),
(6, 'SISTEM INFORMASI PENGOLAHAN DATA ASET PADA KANTOR DESA TALANG BABAT TANJUNG JABUNG TIMUR ', '2021', '2021-07-09 21:41:13', 'pengabdian', 'Belum Selesai', 12, 'Internal', 0, 0),
(8, 'sistem pendukung keputusan siswa terbaik', '2021', '2021-08-16 14:17:20', 'pengabdian', 'Belum Selesai', 12, 'internal', 5000000, 0),
(11, 'SISTEM INFORMASI PENGOLAHAN DATA ASET PADA KANTOR DESA TALANG BABAT TANJUNG JABUNG TIMUR ', '2020', '2021-08-18 16:59:52', 'pengabdian', 'Belum Selesai', 12, 'internal', 5000000, 0),
(12, 'APLIKASI FUZZY MULTI ATTRIBUTE DECISION MAKING (FMADM) UNTUK PENENTUAN LOKASI TERBAIK MEMBANGUN PEMANCAR TELEVISI DENGAN METODE SIMPLE ADDITIVE WEIGHTING (SAW)  ', '2019', '2021-08-24 02:47:33', 'penelitian', 'Belum Selesai', 12, 'internal', 7500000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_usulan`
--

CREATE TABLE `proposal_usulan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `proposal_usulan`
--

INSERT INTO `proposal_usulan` (`id`, `judul`, `proposal`, `status`, `tanggal`, `tahun`, `jenis`, `id_users`, `id_reviewer`) VALUES
(2, 'Aplikasi Penjualan Batik Jambi Faraz Berbasis Mobile', '23082021125459_18_Lembaran_Kontrol_Bimbingan_Kerja_Praktek.docx', 'Revisi', '2021-07-09 01:15:21', '2021', 'penelitian', 12, 11),
(3, 'Penerapan Forward Chaining dan Deterministic Finite Automata Pada Sistem Pakar Diagnosa Awal Penyakit Saraf', '02082021130220_2018-05-07-00-38-19-1139323996.jpeg', 'Diterima', '2021-07-09 03:23:12', '2023', 'penelitian', 10, 11),
(4, 'Sistem Informasi Penjualan Obat-Obatan Pada PT. Sapta Sari Tama Jambi', '15082021070316_17_LISTING_PROGRAM.docx', 'Diterima', '2021-07-09 14:30:57', '2021', 'penelitian', 11, 10),
(5, 'SISTEM INFORMASI PENGOLAHAN DATA ASET PADA KANTOR DESA TALANG BABAT TANJUNG JABUNG TIMUR', '09072021163822_18 Lembaran Kontrol Bimbingan Kerja Praktek.docx', 'Diterima', '2021-07-09 20:16:47', '2022', 'pengabdian', 12, 10),
(6, 'APLIKASI PENGOLAHAN DATA ADMINISTRASI PADA CV. ASSYIFA TEBO ', '09072021210935_16 DAFTAR PUSTAKA.docx', 'Review', '2021-07-09 21:09:35', '2020', 'penelitian', 10, 11),
(17, 'Aplikasi Sistem Penyewaan Alat Pesta Pada CV. Pelangi Steel Berbasis Web', '23082021203259_BAB_I-6_Hajir.docx', 'Review', '2021-08-23 20:32:59', '2022', 'penelitian', 12, 11),
(20, 'Sistem Informasi Dana Bergulir Pada PNPM Kecamatan Batin XXIV', '23082021205312_16_DAFTAR_PUSTAKA.docx', 'Review', '2021-08-23 20:53:12', '2022', 'penelitian', 12, 14),
(21, 'Sistem Informasi Pengolahan Data Pasien di Klinik Sakyakirti Muaro Jambi  ', '23082021213909_17_LISTING_PROGRAM.docx', 'Diterima', '2021-08-24 02:31:27', '2021', 'penelitian', 12, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_usulan_proposal`
--

CREATE TABLE `tahun_usulan_proposal` (
  `id` int(11) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_usulan_proposal`
--

INSERT INTO `tahun_usulan_proposal` (`id`, `tahun`, `status`) VALUES
(1, '2021', 'Tutup'),
(4, '2022', 'Tutup'),
(5, '2023', 'Tutup'),
(9, '2020', 'Tutup'),
(13, '2021', 'Tutup'),
(14, '2021', 'Tutup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `nama`, `nidn`, `foto`, `email`, `password`, `level`, `fakultas`, `prodi`) VALUES
(5, 'Pariyadi, M.Kom', '1013029002', '', 'lppm@gmail.com', '202cb962ac59075b964b07152d234b70', 'lppm', 'Ilmu Komputer', 'Teknik Informatika'),
(10, 'Novhirtamely Kahar, ST. M.Kom', '1015118101', '', 'novmely@ymail.com', '202cb962ac59075b964b07152d234b70', 'reviewer', 'Ilmu Komputer', 'Teknik Informatika'),
(11, 'Ezrifal Sany, ST. M. Kom', '1702015', '04082021092928__20200622_024643.JPG', 'ezrifal@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'reviewer', 'Ilmu Komputer', 'Teknik Informatika'),
(12, 'Fery Purnama, S.Kom. M.Kom', '1025098901', '', 'fery@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'dosen', 'Ilmu Komputer', 'Teknik Informatika'),
(13, 'Ir. Azrifal, M.Ep.', '1005047201', '', 'azrifal@gmail.com', '202cb962ac59075b964b07152d234b70', 'dosen', 'Ilmu Komputer', 'Sistem Informasi'),
(14, '', '', '', '', '', 'reviewer', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_atk`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian_2` (`id_penelitian`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_penelitian` (`id_penelitian`);

--
-- Indeks untuk tabel `catatan_harian`
--
ALTER TABLE `catatan_harian`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `hki`
--
ALTER TABLE `hki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_penelitian_2` (`id_penelitian`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_proposal` (`id_proposal`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `komentar_kegiatan`
--
ALTER TABLE `komentar_kegiatan`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_kegiatan` (`id_kegiatan`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `lainya`
--
ALTER TABLE `lainya`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `paten`
--
ALTER TABLE `paten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `proposal_usulan`
--
ALTER TABLE `proposal_usulan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_reviewer` (`id_reviewer`),
  ADD KEY `id_users_2` (`id_users`);

--
-- Indeks untuk tabel `tahun_usulan_proposal`
--
ALTER TABLE `tahun_usulan_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_atk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `catatan_harian`
--
ALTER TABLE `catatan_harian`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `hki`
--
ALTER TABLE `hki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `komentar_kegiatan`
--
ALTER TABLE `komentar_kegiatan`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `lainya`
--
ALTER TABLE `lainya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `paten`
--
ALTER TABLE `paten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `proposal_usulan`
--
ALTER TABLE `proposal_usulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tahun_usulan_proposal`
--
ALTER TABLE `tahun_usulan_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `catatan_harian`
--
ALTER TABLE `catatan_harian`
  ADD CONSTRAINT `catatan_harian_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `catatan_harian_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `hki`
--
ALTER TABLE `hki`
  ADD CONSTRAINT `hki_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `hki_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD CONSTRAINT `jurnal_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `jurnal_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_proposal`) REFERENCES `proposal_usulan` (`id`),
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `komentar_kegiatan`
--
ALTER TABLE `komentar_kegiatan`
  ADD CONSTRAINT `komentar_kegiatan_ibfk_1` FOREIGN KEY (`id_kegiatan`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `komentar_kegiatan_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `lainya`
--
ALTER TABLE `lainya`
  ADD CONSTRAINT `lainya_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `lainya_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `paten`
--
ALTER TABLE `paten`
  ADD CONSTRAINT `paten_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`),
  ADD CONSTRAINT `paten_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `proposal_usulan`
--
ALTER TABLE `proposal_usulan`
  ADD CONSTRAINT `proposal_usulan_ibfk_1` FOREIGN KEY (`id_reviewer`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `proposal_usulan_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
