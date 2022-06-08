-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2022 pada 18.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk-360`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_kompetensi`
--

CREATE TABLE `isi_kompetensi` (
  `id_isi` int(11) NOT NULL,
  `id_kompetensi` int(11) DEFAULT NULL,
  `isi_kompetensi` text DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `isi_kompetensi`
--

INSERT INTO `isi_kompetensi` (`id_isi`, `id_kompetensi`, `isi_kompetensi`, `ket`) VALUES
(26, 8, 'Sikap Mental (Attitude) &amp; Motivasi Kerja', '0,1,2'),
(27, 8, 'Aktif dan Berani Mengemukakan Pendapat', '0,1,2'),
(28, 8, 'Kreatifitas', '0,1,2'),
(29, 9, 'Hubungan Baik Internal &amp; Eksternal', '0,1,2'),
(30, 9, 'Komunikasi Internal &amp; Eksternal', '0,1,2'),
(31, 9, 'Negosiasi &amp; Deal Sales ', '0,1,2'),
(32, 9, 'Pencapaian Target Kegiatan Bulanan', '0,1,2'),
(33, 10, 'Mencari Peluang Pasar Baru', '0,1,2'),
(34, 10, 'Ketepatan Laporan', '0,1,2'),
(35, 10, 'Penguasaan Area &amp; Pengetahuan Produk', '0,1,2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kompetensi`
--

CREATE TABLE `jenis_kompetensi` (
  `id_kompetensi` int(11) NOT NULL,
  `nama_kompetensi` varchar(50) DEFAULT '0',
  `bobot_kompetensi` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kompetensi`
--

INSERT INTO `jenis_kompetensi` (`id_kompetensi`, `nama_kompetensi`, `bobot_kompetensi`) VALUES
(8, 'Kepribadian', 20),
(9, 'Objektif Bisnis', 50),
(10, 'Keterampilan', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_user`
--

CREATE TABLE `jenis_user` (
  `id_jenis_user` int(10) NOT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_user`
--

INSERT INTO `jenis_user` (`id_jenis_user`, `jabatan`, `level`) VALUES
(0, 'Area Sales Manager', 0),
(1, 'Kepala Cabang', 3),
(2, 'Wakil Kepala Cabang', 2),
(3, 'Pegawai', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilai`
--

CREATE TABLE `penilai` (
  `id_penilai` int(11) NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `id_periode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilai`
--

INSERT INTO `penilai` (`id_penilai`, `nip`, `id_periode`) VALUES
(29, '1991011020202001', 3),
(30, '12345', 4),
(32, '123477', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_nilai` int(11) NOT NULL,
  `id_penilai_detail` int(11) DEFAULT NULL,
  `id_isi` int(11) DEFAULT NULL,
  `hasil_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_nilai`, `id_penilai_detail`, `id_isi`, `hasil_nilai`) VALUES
(709, 109, 26, 2),
(710, 109, 27, 3),
(711, 109, 28, 5),
(712, 109, 29, 5),
(713, 109, 30, 5),
(714, 109, 31, 6),
(715, 109, 32, 7),
(716, 109, 33, 5),
(717, 109, 34, 8),
(718, 109, 35, 9),
(749, 110, 26, 9),
(750, 110, 27, 9),
(751, 110, 28, 9),
(752, 110, 29, 8),
(753, 110, 30, 9),
(754, 110, 31, 10),
(755, 110, 32, 9),
(756, 110, 33, 7),
(757, 110, 34, 8),
(758, 110, 35, 9),
(769, 116, 26, 8),
(770, 116, 27, 7),
(771, 116, 28, 8),
(772, 116, 29, 5),
(773, 116, 30, 8),
(774, 116, 31, 7),
(775, 116, 32, 8),
(776, 116, 33, 10),
(777, 116, 34, 9),
(778, 116, 35, 9),
(779, 117, 26, 3),
(780, 117, 27, 2),
(781, 117, 28, 4),
(782, 117, 29, 6),
(783, 117, 30, 7),
(784, 117, 31, 8),
(785, 117, 32, 8),
(786, 117, 33, 7),
(787, 117, 34, 6),
(788, 117, 35, 8),
(799, 129, 26, 6),
(800, 129, 27, 7),
(801, 129, 28, 8),
(802, 129, 29, 2),
(803, 129, 30, 3),
(804, 129, 31, 4),
(805, 129, 32, 5),
(806, 129, 33, 6),
(807, 129, 34, 7),
(808, 129, 35, 8),
(809, 112, 26, 8),
(810, 112, 27, 8),
(811, 112, 28, 8),
(812, 112, 29, 7),
(813, 112, 30, 7),
(814, 112, 31, 7),
(815, 112, 32, 7),
(816, 112, 33, 8),
(817, 112, 34, 8),
(818, 112, 35, 8),
(819, 120, 26, 10),
(820, 120, 27, 9),
(821, 120, 28, 9),
(822, 120, 29, 9),
(823, 120, 30, 8),
(824, 120, 31, 9),
(825, 120, 32, 9),
(826, 120, 33, 10),
(827, 120, 34, 9),
(828, 120, 35, 8),
(839, 127, 26, 1),
(840, 127, 27, 2),
(841, 127, 28, 3),
(842, 127, 29, 4),
(843, 127, 30, 5),
(844, 127, 31, 4),
(845, 127, 32, 6),
(846, 127, 33, 7),
(847, 127, 34, 6),
(848, 127, 35, 8),
(849, 114, 26, 10),
(850, 114, 27, 9),
(851, 114, 28, 8),
(852, 114, 29, 5),
(853, 114, 30, 6),
(854, 114, 31, 7),
(855, 114, 32, 8),
(856, 114, 33, 9),
(857, 114, 34, 8),
(858, 114, 35, 7),
(869, 132, 26, 9),
(870, 132, 27, 8),
(871, 132, 28, 10),
(872, 132, 29, 7),
(873, 132, 30, 6),
(874, 132, 31, 8),
(875, 132, 32, 9),
(876, 132, 33, 9),
(877, 132, 34, 7),
(878, 132, 35, 8),
(909, 111, 26, 6),
(910, 111, 27, 5),
(911, 111, 28, 6),
(912, 111, 29, 9),
(913, 111, 30, 8),
(914, 111, 31, 9),
(915, 111, 32, 10),
(916, 111, 33, 9),
(917, 111, 34, 8),
(918, 111, 35, 10),
(919, 118, 26, 10),
(920, 118, 27, 10),
(921, 118, 28, 10),
(922, 118, 29, 10),
(923, 118, 30, 9),
(924, 118, 31, 9),
(925, 118, 32, 10),
(926, 118, 33, 8),
(927, 118, 34, 7),
(928, 118, 35, 8),
(939, 130, 26, 9),
(940, 130, 27, 8),
(941, 130, 28, 7),
(942, 130, 29, 8),
(943, 130, 30, 7),
(944, 130, 31, 6),
(945, 130, 32, 8),
(946, 130, 33, 7),
(947, 130, 34, 6),
(948, 130, 35, 6),
(949, 119, 26, 9),
(950, 119, 27, 8),
(951, 119, 28, 7),
(952, 119, 29, 5),
(953, 119, 30, 6),
(954, 119, 31, 7),
(955, 119, 32, 8),
(956, 119, 33, 8),
(957, 119, 34, 7),
(958, 119, 35, 8),
(969, 131, 26, 9),
(970, 131, 27, 8),
(971, 131, 28, 7),
(972, 131, 29, 8),
(973, 131, 30, 7),
(974, 131, 31, 8),
(975, 131, 32, 9),
(976, 131, 33, 9),
(977, 131, 34, 8),
(978, 131, 35, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilai_detail`
--

CREATE TABLE `penilai_detail` (
  `id_penilai_detail` int(11) NOT NULL,
  `id_penilai` int(11) NOT NULL,
  `nip` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilai_detail`
--

INSERT INTO `penilai_detail` (`id_penilai_detail`, `id_penilai`, `nip`) VALUES
(109, 29, '1991011020201001'),
(110, 29, '1991011020201002'),
(111, 29, '1991011020202001'),
(112, 29, '12345'),
(114, 29, '123477'),
(116, 30, '123477'),
(117, 30, '1991011020202001'),
(118, 30, '1991011020201001'),
(119, 30, '1991011020201002'),
(120, 30, '12345'),
(127, 32, '12345'),
(129, 32, '1991011020202001'),
(130, 32, '1991011020201001'),
(131, 32, '1991011020201002'),
(132, 32, '123477');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL,
  `tahun_ajar` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status_periode` int(11) NOT NULL,
  `setting` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id_periode`, `tahun_ajar`, `semester`, `status_periode`, `setting`) VALUES
(3, '2021', 'Ganjil', 0, '50;30;20'),
(4, '2021', 'Genap', 1, '50;30;20'),
(5, '2022', 'Ganjil', 0, '20;30;50'),
(6, '2019', '', 0, '20;30;50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nip` char(18) NOT NULL,
  `id_jenis_user` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `status_guru` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `status_nikah` char(1) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nip`, `id_jenis_user`, `password`, `nama_guru`, `status_guru`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `status_nikah`, `no_telp`) VALUES
('112244', 1, '12345', 'Kepala Cabang Bandung', 'TETAP', 'jln asdaj jashdadb', 'bandung', '2022-05-30', 'L', 'B', '089293910'),
('12345', 3, 'asep', 'asep', 'Kontrak', 'adfadf', 'asda', '2022-05-10', 'L', 'B', '098970'),
('123477', 3, 'jaka', 'jaka', 'Kontrak', 'asdasfsaf', 'bdg', '2022-05-02', 'L', 'B', '12315'),
('1991011020201001', 1, 'kcabang', 'Kepala Cabang', 'Tetap', 'Bandung', 'Bandung', '1996-03-21', 'L', 'N', '	08974650548'),
('1991011020201002', 2, 'wkcabang', 'Wakil Kepala Cabang', 'Tetap', 'Bandung', 'Bandung', '1996-12-21', 'L', 'B', '08974650548'),
('1991011020201003', 0, 'manager', 'Sales Manager', 'Tetap', 'Bandung', 'Bandung', '1990-08-31', 'L', 'B', '08974650548'),
('1991011020202001', 3, 'sales1', 'Pegawai 1', 'Tetap', 'Bandung', 'Bandung', '1990-06-12', 'L', 'B', '08974650548');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `isi_kompetensi`
--
ALTER TABLE `isi_kompetensi`
  ADD PRIMARY KEY (`id_isi`),
  ADD KEY `id_kompetensi` (`id_kompetensi`);

--
-- Indeks untuk tabel `jenis_kompetensi`
--
ALTER TABLE `jenis_kompetensi`
  ADD PRIMARY KEY (`id_kompetensi`);

--
-- Indeks untuk tabel `jenis_user`
--
ALTER TABLE `jenis_user`
  ADD PRIMARY KEY (`id_jenis_user`);

--
-- Indeks untuk tabel `penilai`
--
ALTER TABLE `penilai`
  ADD PRIMARY KEY (`id_penilai`),
  ADD KEY `nip` (`nip`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_isi` (`id_isi`),
  ADD KEY `id_penilai_detail` (`id_penilai_detail`);

--
-- Indeks untuk tabel `penilai_detail`
--
ALTER TABLE `penilai_detail`
  ADD PRIMARY KEY (`id_penilai_detail`),
  ADD KEY `id_penilai` (`id_penilai`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id_jenis_user` (`id_jenis_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `isi_kompetensi`
--
ALTER TABLE `isi_kompetensi`
  MODIFY `id_isi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `jenis_kompetensi`
--
ALTER TABLE `jenis_kompetensi`
  MODIFY `id_kompetensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jenis_user`
--
ALTER TABLE `jenis_user`
  MODIFY `id_jenis_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penilai`
--
ALTER TABLE `penilai`
  MODIFY `id_penilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT untuk tabel `penilai_detail`
--
ALTER TABLE `penilai_detail`
  MODIFY `id_penilai_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `isi_kompetensi`
--
ALTER TABLE `isi_kompetensi`
  ADD CONSTRAINT `FK_isi_kompetensi_jenis_kompetensi` FOREIGN KEY (`id_kompetensi`) REFERENCES `jenis_kompetensi` (`id_kompetensi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilai`
--
ALTER TABLE `penilai`
  ADD CONSTRAINT `FK_penilai_periode` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_penilai_user` FOREIGN KEY (`nip`) REFERENCES `user` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `FK_penilaian_isi_kompetensi` FOREIGN KEY (`id_isi`) REFERENCES `isi_kompetensi` (`id_isi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_penilaian_penilai_detail` FOREIGN KEY (`id_penilai_detail`) REFERENCES `penilai_detail` (`id_penilai_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilai_detail`
--
ALTER TABLE `penilai_detail`
  ADD CONSTRAINT `FK_penilai_detail_penilai` FOREIGN KEY (`id_penilai`) REFERENCES `penilai` (`id_penilai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_penilai_detail_user` FOREIGN KEY (`nip`) REFERENCES `user` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_jenis_user` FOREIGN KEY (`id_jenis_user`) REFERENCES `jenis_user` (`id_jenis_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
