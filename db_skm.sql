-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbm_jawaban`
--

CREATE TABLE `tbm_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_pertanyaan` int(2) NOT NULL,
  `n_jawaban` varchar(50) NOT NULL,
  `bobot_nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_jawaban`
--

INSERT INTO `tbm_jawaban` (`id_jawaban`, `id_pertanyaan`, `n_jawaban`, `bobot_nilai`) VALUES
(1, 1, 'Sangat Baik', 4),
(2, 1, 'Baik', 3),
(3, 1, 'Kurang Baik', 2),
(4, 1, 'Tidak Baik', 1),
(5, 2, 'a. Tidak sesuai', 1),
(6, 2, 'b. Kurang sesuai', 2),
(7, 2, 'c. Sesuai', 3),
(8, 2, 'd. Sangat Sesuai', 4),
(9, 3, 'a. Tidak mudah', 1),
(10, 3, 'b. Kurang mudah', 2),
(11, 3, 'c. Mudah', 3),
(12, 3, 'd. Sangat mudah', 4),
(13, 4, 'a. Tidak cepat', 1),
(14, 4, 'b. Kurang cepat', 2),
(15, 4, 'c. Cepat', 3),
(16, 4, 'd. Sangat Cepat', 4),
(17, 5, 'a. Sangat mahal / Tidak sesuai', 1),
(18, 5, 'b. Cukup mahal / Kurang sesuai', 2),
(19, 5, 'c. Murah / Sesuai', 3),
(20, 5, 'd. Gratis / Tanpa biaya / Sangat sesuai dan tidak ', 4),
(21, 6, 'a. Tidak sesuai', 1),
(22, 6, 'b. Kurang sesuai', 2),
(23, 6, 'c. Sesuai', 3),
(24, 6, 'd. Sangat Sesuai', 4),
(25, 7, 'a. Tidak Kompeten / Tidak mampu', 1),
(26, 7, 'b. Kurang kompeten / Kurang mampu', 2),
(27, 7, 'c. Kompeten / mampu', 3),
(28, 7, 'd. Sangat kompeten / sangat mampu', 4),
(29, 8, 'a. Tidak sopan dan tidak marah', 1),
(30, 8, 'b. Kurang sopan dan kurang ramah', 2),
(31, 8, 'c. Sopan dan ramah', 3),
(32, 8, 'd. Sangat Sopan dan ramah', 4),
(33, 9, 'a. Buruk', 1),
(34, 9, 'b. Cukup', 2),
(35, 9, 'c. Baik', 3),
(36, 9, 'd. Sangat Baik', 4),
(37, 10, 'a. Tidak ada', 1),
(38, 10, 'b. Ada tetapi tidak berfungsi', 2),
(39, 10, 'c. Berfungsi kurang maksimal, lambat ditindaklanju', 3),
(40, 10, 'd. Dikelola dengan baik, cepat ditindaklanjuti', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbm_pekerjaan`
--

CREATE TABLE `tbm_pekerjaan` (
  `id_pekerjaan` int(1) NOT NULL,
  `n_pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_pekerjaan`
--

INSERT INTO `tbm_pekerjaan` (`id_pekerjaan`, `n_pekerjaan`) VALUES
(1, 'PNS'),
(2, 'TNI / Polri'),
(3, 'Pegawai Swasta'),
(4, 'Wiraswasta / Usahawan'),
(5, 'Palajar / Mahasiswa'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_pendidikan`
--

CREATE TABLE `tbm_pendidikan` (
  `id_pendidikan` int(1) NOT NULL,
  `n_pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_pendidikan`
--

INSERT INTO `tbm_pendidikan` (`id_pendidikan`, `n_pendidikan`) VALUES
(1, 'SD / MI'),
(2, 'SMP / MTs / Sederajat'),
(3, 'SMA / SMK / MA / Sederajat'),
(4, 'D-1 / D-3'),
(5, 'D4 / S-1'),
(6, 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_pertanyaan`
--

CREATE TABLE `tbm_pertanyaan` (
  `id_pertanyaan` int(2) NOT NULL,
  `n_pertanyaan` varchar(200) NOT NULL,
  `status` set('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_pertanyaan`
--

INSERT INTO `tbm_pertanyaan` (`id_pertanyaan`, `n_pertanyaan`, `status`) VALUES
(1, 'Penilaian umum', '1'),
(2, 'Persyaratan pelayanan', '1'),
(3, 'Prosedur Pelayanan', '1'),
(4, 'Kecepatan waktu', '1'),
(5, 'Biaya / Tarif', '1'),
(6, 'Kesesuaian dengan Standar Pelayanan', '1'),
(7, 'Kompetensi Petugas Pelayanan', '1'),
(8, 'Kesopanan dan Keramahan Petugas', '1'),
(9, 'Kualitas Sarana dan Prasarana', '1'),
(10, 'Penanganan Pengaduan, saran dan masukan pengguna layanan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_satker`
--

CREATE TABLE `tbm_satker` (
  `id_satker` int(3) NOT NULL,
  `n_satker` varchar(100) NOT NULL,
  `kode_satker` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_satker`
--

INSERT INTO `tbm_satker` (`id_satker`, `n_satker`, `kode_satker`) VALUES
(1, 'BIRO PEMERINTAHAN', 'A.1.1.1'),
(2, 'BIRO HUKUM', 'A.1.1.2'),
(3, 'BIRO KESEJAHTERAAN RAKYAT', 'A.1.1.3'),
(4, 'BIRO PEREKONOMIAN', 'A.1.2.1'),
(5, 'BIRO PENGADAAN BARANG DAN JASA', 'A.1.2.2'),
(6, 'BIRO ADMINISTRASI PEMBANGUNAN', 'A.1.2.3'),
(7, 'BIRO ORGANISASI', 'A.1.3.1'),
(8, 'BIRO UMUM', 'A.1.3.2'),
(9, 'BIRO ADMINISTRASI PIMPINAN', 'A.1.3.3'),
(10, 'SEKRETARIAT DPRD', 'B.1'),
(11, 'INSPEKTORAT PROVINSI KALIMANTAN BARAT', 'C.1'),
(12, 'DINAS PENDIDIKAN DAN KEBUDAYAAN', 'D.1.1'),
(13, 'DINAS KESEHATAN', 'D.2.1'),
(14, 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG', 'D.3.1'),
(15, 'DINAS PERUMAHAN RAKYAT DAN KAWASAN PERMUKIMAN', 'D.4.1'),
(16, 'DINAS SOSIAL', 'D.5.1'),
(17, 'DINAS DINAS LINGKUNGAN HIDUP DAN KEHUTANAN', 'D.6.1'),
(18, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', 'D.7.1'),
(19, 'DINAS PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', 'D.8.1'),
(20, 'DINAS PANGAN, PETERNAKAN DAN KESEHATAN HEWAN', 'D.9.1'),
(21, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'D.10.1'),
(22, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', 'D.11.1'),
(23, 'DINAS PERHUBUNGAN', 'D.12.1'),
(24, 'DINAS KOMUNIKASI DAN INFORMATIKA', 'D.13.1'),
(25, 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH', 'D.14.1'),
(26, 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 'D.15.1'),
(27, 'DINAS KEPEMUDAAN, OLAHRAGA DAN PARIWISATA', 'D.16.1'),
(28, 'DINAS PERPUSTAKAAN DAN KEARSIPAN', 'D.17.1'),
(29, 'DINAS KELAUTAN DAN PERIKANAN', 'D.18.1'),
(30, 'DINAS PERTANIAN TANAMAN PANGAN DAN HORTIKULTURA', 'D.19.1'),
(31, 'DINAS PERKEBUNAN', 'D.20.1'),
(32, 'DINAS ENERGI DAN SUMBER DAYA MINERAL', 'D.21.1'),
(33, 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'D.22.1'),
(34, 'SATUAN POLISI PAMONG PRAJA', 'D.23.1'),
(35, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', 'E.1.1'),
(36, 'BADAN KEUANGAN DAN ASET DAERAH', 'E.2.1'),
(37, 'BADAN PENDAPATAN DAERAH', 'E.3.1'),
(38, 'BADAN KEPEGAWAIAN DAERAH', 'E.4.1'),
(39, 'BADAN PENGEMBANGAN SUMBER DAYA MANUSIA', 'E.5.1'),
(40, 'BADAN PENELITIAN DAN PENGEMBANGAN', 'E.6.1'),
(41, 'BADAN PENANGGULANGAN BENCANA DAERAH', 'E.7.1'),
(42, 'BADAN PENGELOLA PERBATASAN DAERAH', 'E.8.1'),
(43, 'BADAN KESATUAN BANGSA DAN POLITIK', 'E.9.1'),
(44, 'BADAN PENGHUBUNG', 'E.10.1'),
(45, 'RSUD DR. SOEDARSO', 'F.1.1'),
(46, 'RUMAH SAKIT JIWA DAERAH SUNGAI BANGKONG', 'F.2.1'),
(47, 'RUMAH SAKIT JIWA PROVINSI', 'F.3.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_unit`
--

CREATE TABLE `tbm_unit` (
  `id_unit` int(3) NOT NULL,
  `id_satker` int(3) NOT NULL,
  `n_unit` varchar(100) NOT NULL,
  `kode_unit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_unit`
--

INSERT INTO `tbm_unit` (`id_unit`, `id_satker`, `n_unit`, `kode_unit`) VALUES
(1, 12, 'UPT TEKNOLOGI INFORMASI DAN KOMUNIKASI PENDIDIKAN', 'D.1.1.6'),
(2, 12, 'UPT TAMAN BUDAYA', 'D.1.1.7'),
(3, 12, 'UPT MUSEUM', 'D.1.1.8'),
(4, 12, 'UPT SATUAN PENDIDIKAN MENENGAH/KEJURUAN', 'D.1.1.9'),
(5, 13, 'UPT LABORATORIUM KESEHATAN', 'D.2.1.6'),
(6, 13, 'UPT PELAYANAN KESEHATAN PARU', 'D.2.1.7'),
(7, 13, 'UPT KESEHATAN KERJA DAN OLAHRAGA MASYARAKAT', 'D.2.1.8'),
(8, 13, 'UPT PELATIHAN KESEHATAN', 'D.2.1.9'),
(9, 14, 'UPT LABORATORIUM BAHAN KONSTRUKSI', 'D.3.1.6'),
(10, 15, 'UPT PANTI SOSIAL REHABILITASI LANJUT USIA MUSTIKA DHARMA', 'D.5.1.6'),
(11, 15, 'UPT PANTI SOSIAL REHABILITASI LANJUT USIA MULIA DHARMA', 'D.5.1.7'),
(12, 15, 'UPT PANTI SOSIAL ANAK', 'D.5.1.8'),
(13, 18, 'UPT LABORATORIUM KESEHATAN KERJA', 'D.7.1.6'),
(14, 18, 'UPT LATIHAN KERJA INDUSTRI', 'D.7.1.7'),
(15, 18, 'UPT LATIHAN KERJA INDUSTRI ENTIKONG', 'D.7.1.8'),
(16, 18, 'UPT PENGAWASAN KETENAGAKERJAAN WILAYAH I', 'D.7.1.9'),
(17, 18, 'UPT PENGAWASAN KETENAGAKERJAAN WILAYAH II', 'D.7.1.10'),
(18, 33, 'UPT INDUSTRI PANGAN OLAHAN DAN KEMASAN', 'D.22.1.7'),
(19, 33, 'UPT PENGUJIAN DAN SERTIFIKASI MUTU BARANG', 'D.22.1.8'),
(20, 30, 'UPT PEMBENIHAN TANAMAN PANGAN', 'D.19.1.6'),
(21, 30, 'UPT BALAI BENIH INDUK HORTIKULTURA', 'D.19.1.7'),
(22, 30, 'UPT PENDIDIKAN DAN PELATIHAN PERTANIAN', 'D.19.1.8'),
(23, 30, 'UPT PERLINDUNGAN TANAMAN PANGAN DAN HORTIKULTURA', 'D.19.1.9'),
(24, 30, 'UPT PENGAWASAN DAN SERTIFIKASI BENIH', 'D.19.1.10'),
(25, 20, 'UPT PELAYANAN KESEHATAN HEWAN, KESEHATAN MASYARAKAT VETERINER DAN KLINIK HEWAN', 'D.9.1.6'),
(26, 20, 'UPT PEMBIBITAN TERNAK DAN PAKAN TERNAK', 'D.9.1.7'),
(27, 31, 'UPT PENGAWASAN DAN SERTIFIKAT BENIH PERKEBUNAN', 'D.20.1.6'),
(28, 29, 'UPT PELABUHAN PERIKANAN', 'D.18.1.6'),
(29, 29, 'UPT PENERAPAN MUTU HASIL PERIKANAN', 'D.18.1.7'),
(30, 29, 'UPT PERIKANAN BUDIDAYA AIR PAYAU DAN LAUT', 'D.18.1.8'),
(31, 25, 'UPT PELATIHAN KOPERASI', 'D.14.1.6'),
(32, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH MELAWI', 'D.6.1.7'),
(33, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SAMBAS', 'D.6.1.8'),
(34, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KAPUAS HULU SELATAN', 'D.6.1.9'),
(35, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KAPUAS HULU TIMUR', 'D.6.1.10'),
(36, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KAPUAS HULU UTARA', 'D.6.1.11'),
(37, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KETAPANG SELATAN', 'D.6.1.12'),
(38, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KETAPANG UTARA', 'D.6.1.13'),
(39, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KUBU RAYA', 'D.6.1.14'),
(40, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SINTANG TIMUR', 'D.6.1.15'),
(41, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SINTANG UTARA', 'D.6.1.16'),
(42, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SANGGAU TIMUR', 'D.6.1.17'),
(43, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SANGGAU BARAT', 'D.6.1.18'),
(44, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH BENGKAYANG', 'D.6.1.19'),
(45, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH LANDAK', 'D.6.1.20'),
(46, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH MEMPAWAH', 'D.6.1.21'),
(47, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH KAYONG', 'D.6.1.22'),
(48, 17, 'UPT KESATUAN PENGELOLAAN HUTAN WILAYAH SEKADAU', 'D.6.1.23'),
(49, 37, 'UPT PELAYANAN PENDAPATAN DAERAH PONTIANAK WILAYAH I', 'E.3.1.5'),
(50, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH MEMPAWAH', 'E.3.1.6'),
(51, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH SINGKAWANG', 'E.3.1.7'),
(52, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH SANGGAU', 'E.3.1.8'),
(53, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH SINTANG', 'E.3.1.9'),
(54, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH PUTUSSIBAU', 'E.3.1.10'),
(55, 37, 'UPT PELAYANAN PENDAPATAN DAERAH WILAYAH KETAPANG', 'E.3.1.11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id_layanan` int(3) NOT NULL,
  `id_satker` int(3) NOT NULL,
  `id_unit` int(3) DEFAULT NULL,
  `n_layanan` varchar(50) NOT NULL,
  `n_dasar_hukum` varchar(500) NOT NULL,
  `biaya` int(7) NOT NULL,
  `standar_waktu` varchar(50) NOT NULL,
  `spesifikasi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_layanan`
--

INSERT INTO `tb_layanan` (`id_layanan`, `id_satker`, `id_unit`, `n_layanan`, `n_dasar_hukum`, `biaya`, `standar_waktu`, `spesifikasi`) VALUES
(1, 24, 0, 'Pelayanan Informasi', 'Keputusan Kepala Dinas Kominfo No : 59.b/DISKOMINFO/2020', 0, '3 Jam', 'Informasi mengenai opini yang berkembang dimasyarakat'),
(2, 24, 0, 'Layanan Pengaduan Masyarakat melalui SP4N LAPOR', 'Keputusan Kepala Dinas Kominfo No : 59.b/DISKOMINFO/2020', 0, '8 Hari kerja', 'Laporan penanganan pengaduan'),
(3, 24, 0, 'Pelayanan PPID Diskominfo', 'Keputusan Kepala Dinas Kominfo No : 59.b/DISKOMINFO/2020', 0, '10 Hari kerja', 'Informasi Badan Publik Diskominfo Prov.Kalbar'),
(4, 21, 0, 'Informasi Data Kependudukan ', 'Keputusan Kepala Dinas Dukcapil No : 63/2020', 0, '4 Hari kerja', 'Informasi Data Kependudukan'),
(5, 21, 0, 'Pelayanan Konsultasi Administrasi Kependudukan', 'Keputusan Kepala Dinas Dukcapil No : 63/2020', 0, '1 Hari', 'Pelayanan Konsultasi Administrasi Kependudukan'),
(6, 21, 0, 'Pelayanan Penyediaan Narasumber', 'Keputusan Kepala Dinas Dukcapil No : 63/2020', 0, '1 Hari kerja', 'PELAYANAN PENYEDIAAN NARASUMBER'),
(7, 47, 0, 'Surat keterangan bebas narkoba', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 300000, '1 Hari', 'Hasil pemeriksaan laboratorium'),
(8, 47, 0, 'Pendaftaran Pasien Rawat Jalan', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 0, '1 Hari', 'Pelayana Rawat Jalan'),
(9, 47, 0, 'Pelayanan Pembuatan Surat Keterangan Kesehatan JIw', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 760000, '1 Hari', 'Pelayanan Pemeriksaan Kesehatan Jiwa'),
(10, 47, 0, 'pelayanan pemeriksaan stres analyzer', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 250, '1 Hari', 'Pelayanan pemeriksaan spesialistik rehabilitasi medik, pelayanan pemeriksaan psikologi, fisitoterapi, terapi wicara, okupasi terapi'),
(11, 47, 0, 'Pelayanan Rawat Inap', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 0, '52 Hari', 'pelayana rawat inap'),
(12, 47, 0, 'pelayanan psikolog psikodiagnostik sederhana', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 250, '1 Hari', 'Jasa pelayanan psikologi'),
(13, 47, 0, 'pelayanan psikologi', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 545, '1 Hari', 'Jasa pelayanan psikologi'),
(14, 47, 0, 'Pelayanan Gigi dan Mulut', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 0, '1 Hari', 'Pemeriksaan gigi, Cabut gigi, Tumpatan tetap/sementara, Perawaatan syaraf, Scalling tiap region, Insisi abses intra oral, Bongkar tumpatan, Grinding dan open bur'),
(15, 47, 0, 'Pelayanan Penunjang Medik', 'Keputusan Direktur RSJ Prov. Kalbar No : 0006 Tahun 2020', 0, '1 Hari', 'Pelayanan Laboratorium'),
(16, 26, 0, 'Pembukaan Kantor Cabang.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari', 'Sertifikat Pembukaan Kantor Cabang yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(17, 26, 0, 'Izin Usaha Industri (IUI).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Industri (IUI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(18, 26, 0, 'Izin Kawasan Usaha Industri (IKUI).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Kawasan Usaha Industri (IKUI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(19, 26, 0, 'Izin Perluasan Industri (IPI).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Perluasan Industri (IPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(20, 26, 0, 'Persetujuan Pindah Lokasi.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Persetujuan Pindah Lokasi  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(21, 26, 0, 'zin Usaha Perdagangan (IUP). Kegiatan Izin Usaha P', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Perdagangan (IUP)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(22, 26, 0, 'Izin Usaha Perdagangan (IUP). Bidang Usaha Perdaga', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Perdagangan (IUP)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah'),
(23, 26, 0, 'Izin Usaha Lembaga Penempatan Tenaga Kerja Swasta ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Izin Usaha Lembaga Penempatan Tenaga Kerja Swasta (IU-LPTKS) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(24, 26, 0, 'Surat Izin Usaha Lembaga Penyalur Pekerja Rumah Ta', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Surat Izin Usaha Lembaga Penyalur Pekerja Rumah Tangga (IU-LPPRT)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(25, 26, 0, 'Surat Izin Perusahaan Penempatan Pekerja Migran In', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Surat Izin Perusahaan Penempatan Pekerja Migran Indonesia (SIP3MI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(26, 26, 0, 'Izin Kantor Cabang Perusahaan Penempatan Pekerja M', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Izin Kantor Cabang Perusahaan Penempatan Pekerja Migran Indonesia (SIP3MI) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(27, 26, 0, 'Perpanjangan Izin Kantor Cabang Perusahaan Penempa', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Izin Kantor Cabang Perusahaan Penempatan Pekerja Migran Indonesia (SIP3MI) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(28, 26, 0, 'Izin Operasional Perusahaan Penyediaan Jasa Tenaga', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Izin Operasional Perusahaan Penyediaan Jasa Tenaga Kerja yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(29, 26, 0, 'Izin Memperkerjakan Tenaga Kerja Asing (IMTA)/Noti', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '15 Jam', 'Izin Memperkerjakan Tenaga Kerja Asing (IMTA)/Notifikasi)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(30, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(31, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(32, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(33, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(34, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Logam  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(35, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Logam  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(36, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Logam  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(37, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Logam  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(38, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Batubara  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(39, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Batubara  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(40, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Batubara  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(41, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Izin Usaha Pertambangan (IUP) Eksplorasi Komoditas Batubara  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(42, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Perubahan', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan Eksplorasi Perubahan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(43, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Bukan Logam dan Batuan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(44, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Bukan Logam dan Batuan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(45, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Bukan Logam dan Batuan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(46, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Bukan Logam dan Batuan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(47, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Logam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(48, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Logam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(49, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Logam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(50, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Logam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(51, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(52, 26, 0, '7) Izin Usaha Pertambangan (IUP) Operasi Produksi ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(53, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(54, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Kom', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Komoditas Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(55, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Perpanjangan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(56, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Perpanjangan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(57, 26, 0, 'Izin Usaha Pertambangan (IUP) Operasi Produksi Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Perpanjangan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(58, 26, 0, '8) Izin Usaha Pertambangan (IUP) Operasi Produksi ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Pertambangan (IUP) Operasi Produksi Perpanjangan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(59, 26, 0, 'Izin Usaha Pertambangan (IUP) Eksplorasi Perubahan', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', '(IUP) Operasi Produksi Perubahan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(60, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan dan Pemu', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan dan Pemurnian Mineral  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(61, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan Batubara', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(62, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan Mineral ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(63, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan Mineral ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(64, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan Mineral ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(65, 26, 0, 'Izin Pertambangan Khusus untuk Pengolahan Mineral ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengolahan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(66, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(67, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Mineral Logam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(68, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(69, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(70, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(71, 26, 0, 'Izin Pertambangan Khusus untuk Pengangkutan dan Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Pengangkutan dan Penjualan Mineral Bukan Logam dan Batuan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(72, 26, 0, 'Izin Pertambangan Khusus untuk Penjualan Non Tamba', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Khusus untuk Penjualan Non Tambang yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(73, 26, 0, 'Izin Sementara Pengangkutan dan Penjualan Mineral ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Sementara Pengangkutan dan Penjualan Mineral dan Batubara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(74, 26, 0, 'Izin Pertambangan Rakyat/Surat Izin Pertambangan R', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Rakyat/Surat Izin Pertambangan Rakyat (IPR/SIPR) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(75, 26, 0, 'Izin Pertambangan Rakyat/Surat Izin Pertambangan R', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Rakyat/Surat Izin Pertambangan Rakyat (IPR/SIPR) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(76, 26, 0, 'Izin Pertambangan Rakyat/Surat Izin Pertambangan R', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Pertambangan Rakyat/Surat Izin Pertambangan Rakyat (IPR/SIPR) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(77, 26, 0, 'Izin Usaha Jasa Pertambangan(IUJP) untuk Inti.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Jasa Pertambangan(IUJP) untuk Inti yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(78, 26, 0, 'Izin Usaha Jasa Pertambangan(IUJP) untuk Non Inti.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Jasa Pertambangan untuk Non Inti yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(79, 26, 0, 'Pencabutan Izin Usaha Pertambangan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Izin Usaha Jasa Pertambangan untuk Non Inti yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(80, 26, 0, 'Surat Keputusan Penghentian Sementara Izin Usaha P', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Penghentian Sementara Izin Usaha Pertambangan Eksplorasi  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(81, 26, 0, 'Surat Keputusan Penghentian Sementara Izin Usaha P', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Penghentian Sementara Izin Usaha Pertambangan Operasi Produksi  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(82, 26, 0, 'Surat Keputusan Pengakhiran / Terminasi Izin Usaha', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Pengakhiran / Terminasi Izin Usaha Pertambangan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(83, 26, 0, 'Surat Keputusan Penetapan Wilayah Izin Usaha Perta', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Penetapan Wilayah Izin Usaha Pertambangan (WIUP) komuditas Bukan Logam dan Batuan   yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(84, 26, 0, 'Surat Keputusan Penetapan Wilayah Izin Usaha Perta', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Penetapan Wilayah Izin Usaha Pertambangan (WIUP) komuditas Bukan Logam dan Batuan   yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(85, 26, 0, 'Surat Keputusan Penetapan Wilayah Izin Usaha Perta', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keputusan Penetapan Wilayah Izin Usaha Pertambangan (WIUP) komuditas Bukan Logam dan Batuan   yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(86, 26, 0, 'Rekomendasi Persetujuan Perubahan Susunan Pemegang', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari kerja', 'Rekomendasi Persetujuan Perubahan Susunan Pemegang Saham  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(87, 26, 0, 'Surat Keterangan Terdaftar/Surat Tanda Registrasi ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keterangan Terdaftar/Surat Tanda Registrasi Usaha Jasa Penunjang  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(88, 26, 0, 'Surat Keterangan Terdaftar/Surat Tanda Registrasi ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '12 Hari kerja', 'Surat Keterangan Terdaftar/Surat Tanda Registrasi Usaha Jasa Penunjang  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(89, 26, 0, 'Surat Penetapan Jaminan Reklamasi.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari kerja', 'Surat Penetapan Jaminan Reklamasi  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(90, 26, 0, 'Surat Penetapan Jaminan Pasca Tambang.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari kerja', 'Surat Penetapan Jaminan Pasca Tambang  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(91, 26, 0, 'Surat Penetapan Jaminan Kesungguhan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari kerja', 'Surat Penetapan Jaminan Kesungguhan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(92, 26, 0, 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '18 Hari kerja', 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Pertambangan.  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(93, 26, 0, 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '18 Hari kerja', 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Pertambangan.  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(94, 26, 0, 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Per', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '18 Hari kerja', 'Surat Penetapan Tanda Batas Wilayah Izin Usaha Pertambangan.  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(95, 26, 0, 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL) Non B', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(96, 26, 0, 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL) Non B', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(97, 26, 0, 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL) Non B', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Izin Usaha Penyediaan Tenaga Listrik (IUPTL)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(98, 26, 0, 'Izin Operasi (Izin Usaha Penyediaan Tenaga Listrik', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '8 Hari kerja', 'Izin Operasi (Izin Usaha Penyediaan Tenaga Listrik)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(99, 26, 0, 'Izin Operasi (Izin Usaha Penyediaan Tenaga Listrik', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '8 Hari kerja', 'Izin Operasi (Izin Usaha Penyediaan Tenaga Listrik)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(100, 26, 0, 'Izin Usaha Jasa Penunjang Tenaga Listrik (IUJPTL) ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '8 Hari kerja', 'Izin Usaha Jasa Penunjang Tenaga Listrik (IUJPTL)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(101, 26, 0, '36) Surat Keterangan Terdaftar (Penyediaan Tenaga ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Surat Keterangan Terdaftar  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(102, 26, 0, 'Laporan (Penyediaan Tenaga Listrik untuk Kepenting', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '1 Hari kerja', 'Surat Laporan  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(103, 26, 0, 'Izin Usaha Niaga, Bahan Bakar Nabati (Biofuel) Kap', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Izin Usaha Niaga, Bahan Bakar Nabati (Biofuel) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(104, 26, 0, 'Izin Usaha Koperasi Simpan Pinjam (IUKSP).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Koperasi Simpan Pinjam (IUKSP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(105, 26, 0, 'Izin Pembukaan Kantor Cabang Koperasi Simpan Pinja', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Pembukaan Kantor Cabang Koperasi Simpan Pinjam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(106, 26, 0, 'Izin Usaha Perkebunan. (Izin Usaha Produksi Benih ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '6 Hari kerja', 'Izin Usaha Produksi Benih (IUPB) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(107, 26, 0, 'Izin Usaha Perkebunan. (Izin Usaha Perkebunan untu', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '6 Hari kerja', 'Izin Usaha Perkebunan untuk Budidaya (IUP-B) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(108, 26, 0, 'Izin Usaha Perkebunan. (Izin Usaha Perkebunan untu', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '6 Hari kerja', 'Izin Usaha Perkebunan untuk Pengolahan (IUP-P) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(109, 26, 0, 'Izin Usaha Perkebunan. (Izin Usaha Perkebunan Teri', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '6 Hari kerja', 'Izin Usaha Perkebunan Terintegrasi (Budidaya dan Pengolahan) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(110, 26, 0, 'Surat Persetujuan Penyaluran Benih Kelapa Sawit (S', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '6 Hari kerja', 'Surat Persetujuan Penyaluran Benih Kelapa Sawit (SP2BKS) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(111, 26, 0, 'Rekomendasi Kesesuaian dengan Rencana Makro Pemban', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '17 Hari kerja', 'Rekomendasi Kesesuaian dengan Rencana Makro Pembangnan Perkebunan Provinsi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(112, 26, 0, 'Izin Pengumpulan Sumbangan Lintas Daerah Kabupaten', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Jam', 'Izin Pengumpulan Sumbangan Lintas Daerah Kabupaten / Kota yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(113, 26, 0, 'Rekomendasi Pengumpulan Uang dan Barang (RPUB).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Rekomendasi Pengumpulan Uang dan Barang (RPUB)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(114, 26, 0, 'Rekomendasi Undian Gratis Berhadiah (RUGB).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Rekomendasi Undian Gratis Berhadiah (RUGB)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(115, 26, 0, 'Izin Lingkungan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '57 Hari kerja', 'Izin Lingkungan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(116, 26, 0, 'Izin Pengelolaan Limbah Bahan Berbahaya dan Beracu', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '23 Hari kerja', 'Izin Pengelolaan Limbah Bahan Berbahaya dan Beracun (Limbah B3) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(117, 26, 0, 'Surat Keputusan Kelayakan Lingkungan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '57 Hari kerja', 'Surat Keputusan Kelayakan Lingkungan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(118, 26, 0, 'Rekomendasi Kelayakan Lingkungan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '57 Hari kerja', 'Rekomendasi Kelayakan Lingkungan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(119, 26, 0, 'Rekomendasi Upaya Pengelolaan Lingkungan Hidup dan', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Rekomendasi Upaya Pengelolaan Lingkungan Hidup dan Upaya Pemantauan Lingkungan Hidup (UKL-UPL) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(120, 26, 0, 'Rekomendasi Pengelolaan Limbah Bahan Berbahaya dan', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '23 Hari kerja', 'Rekomendasi Pengelolaan Limbah Bahan Berbahaya dan Beracun (Limbah B3) Skala Nasional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(121, 26, 0, 'Surat Izin Usaha Perikanan (SIUP). (Baru)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Izin Usaha Perikanan (SIUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(122, 26, 0, 'Surat Izin Usaha Perikanan (SIUP)  (Perubahan)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Izin Usaha Perikanan (SIUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(123, 26, 0, 'Surat Izin Usaha Perikanan (SIUP) (Penggantian)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Izin Usaha Perikanan (SIUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(124, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) (Baru)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Usaha Perikanan (SIUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(125, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) (Perubahan)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Usaha Perikanan (SIUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(126, 26, 0, 'Perizinan : Surat Izin Penangkapan Ikan (SIPI) (Re', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Registrasi/Daftar Ulang  Surat Izin Usaha Perikanan (SIUP)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(127, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) (Penggantian)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Penangkapan Ikan (SIPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(128, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) Andon (Baru)', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Penangkapan Ikan (SIPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(129, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) Andon (Perubaha', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Penangkapan Ikan (SIPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(130, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) Andon (Perpanja', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Surat Izin Penangkapan Ikan (SIPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(131, 26, 0, 'Surat Izin Penangkapan Ikan (SIPI) Andon (Registra', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Registrasi/Daftar Ulang Surat Izin Penangkapan Ikan (SIPI)  yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(132, 26, 0, 'Izin Usaha Obat Hewan. (Izin Importir).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Obat Hewan untuk Izin Importir'),
(133, 26, 0, 'Izin Usaha Obat Hewan. (Izin Eksportir).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Obat Hewan untuk Izin Eksportir'),
(134, 26, 0, 'Izin Usaha Obat Hewan. (Izin Produsen).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Obat Hewan untuk Izin Produsen'),
(135, 26, 0, 'Izin Usaha Obat Hewan. (Sertifikat Cara Pembuatan ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin Usaha Obat Hewan untuk Sertifikat Cara Pembuatan Obat Yang Baik'),
(136, 26, 0, 'Izin pemasukan benih/bibit ternak.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'izin pemasukan benih/bibit ternak'),
(137, 26, 0, 'Izin pengeluaran benih/bibit ternak.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Izin pengeluaran benih/bibit ternak'),
(138, 26, 0, 'Rekomendasi Pemasukan karkas, daging, jeroan dan/a', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Rekomendasi Pemasukan karkas, daging, jeroan dan/atau olahannya'),
(139, 26, 0, 'Rekomendasi Pemasukan dan pengeluaran produk panga', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Rekomendasi Pemasukan dan pengeluaran produk pangan asal hewan'),
(140, 26, 0, 'Rekomendasi Pemasukan dan pengeluaran Ternak Rimin', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '4 Hari kerja', 'Rekomendasi Pemasukan dan pengeluaran produk pangan asal hewan'),
(141, 26, 0, 'Izin Usaha Industri Primer Hasil Hutan Kayu (IUIPH', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Usaha Industri Primer Hasil Hutan Kayu (IUIPHHK) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah'),
(142, 26, 0, 'Izin Usaha Industri Primer Hasil Hutan Bukan Kayu.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Usaha Industri Primer Hasil Hutan Bukan Kayu yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(143, 26, 0, 'Izin Pemungutan Hasil Hutan Bukan Kayu pada Kawasa', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemungutan Hasil Hutan Bukan Kayu pada Kawasan Hutan Negara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(144, 26, 0, 'Izin Pengumpulan Hasil Hutan Bukan Kayu pada Kawas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pengumpulan Hasil Hutan Bukan Kayu pada Kawasan Hutan Negara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(145, 26, 0, 'Izin Tempat Penampungan Terdaftar Hasil Hutan Buka', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Tempat Penampungan Terdaftar Hasil Hutan Bukan Kayu pada Kawasan Hutan Negara yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(146, 26, 0, 'Izin Usaha Pemanfaatan Hasil Hutan Bukan Kayu dari', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Usaha Pemanfaatan Hasil Hutan Bukan Kayu dari Hutan Alam atau Hutan Tanaman pada Hutan Produksi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(147, 26, 0, 'Izin Pengusahaan Wisata Alam.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pengusahaan Wisata Alam yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(148, 26, 0, 'Izin Pemanfaatan Jasa Lingkungan Air.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Jasa Lingkungan Air yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(149, 26, 0, 'Izin Pemanfaatan Jasa Lingkungan Aliran Air.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Jasa Lingkungan Aliran Air yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(150, 26, 0, 'Izin Pemanfaatan Jasa Lingkungan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Jasa Lingkungan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(151, 26, 0, 'Izin Pemanfaatan Jasa Lingkungan Perdagangan Karbo', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Jasa Lingkungan Perdagangan Karbon yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(152, 26, 0, 'Izin Pemanfaatan Jasa Lingkungan Bio Farmaka.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Jasa Lingkungan Bio Farmaka yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(153, 26, 0, 'Izin Pemanfaatan Kayu.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pemanfaatan Kayu yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(154, 26, 0, 'Izin Pinjam Pakai Kawasan Hutan Luas dibawah 5 Ha ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Izin Pinjam Pakai Kawasan Hutan Luas dibawah 5 Ha Non Komersial yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(155, 26, 0, 'Persetujuan Pembuatan dan atau Penggunaan Koridor.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Persetujuan Pembuatan dan atau Penggunaan Koridor yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(156, 26, 0, 'Rekomendasi Izin Pinjam Pakai Kawasan Hutan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Rekomendasi Izin Pinjam Pakai Kawasan Hutan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(157, 26, 0, 'Rekomendasi Izin Pelepasan Kawasan Hutan.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Rekomendasi Izin Pelepasan Kawasan Hutan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(158, 26, 0, 'Rekomendasi Areal Izin Usaha Pemanfaatan Hasil Hut', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '21 Hari kerja', 'Rekomendasi Areal Izin Usaha Pemanfaatan Hasil Hutan Kayu Hutan Tanaman/Hutan Alam/Restorasi Ekosistem yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(159, 26, 0, '1) Tanda Daftar Usaha Pariwisata (TDUP).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '3 Hari kerja', 'Tanda Daftar Usaha Pariwisata (TDUP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(160, 26, 0, 'Izin Mendirikan Rumah Sakit Kelas B Penanaman Moda', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Mendirikan Rumah Sakit Kelas B yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(161, 26, 0, 'Izin Operasional Rumah Sakit Kelas B Penanaman Mod', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Operasional Rumah Sakit Kelas B yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(162, 26, 0, 'Sertifikat Produksi Usaha Kecil Obat Tradisional.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Sertifikat Produksi UKOT yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(163, 26, 0, 'Sertifikat Produksi Usaha Mikro Obat Tradisional.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Sertifikat Produksi UMOT yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(164, 26, 0, 'Sertifikat Distribusi Cabang Pedagang Besar Farmas', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '14 Hari kerja', 'Sertifikat Distribusi Cabang Pedagang Besar Farmasi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(165, 26, 0, 'Sertifikat Distribusi Cabang Penyalur Alat Kesehat', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '11 Hari kerja', 'Sertifikat Distribusi Cabang Penyalur Alat Kesehatan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(166, 26, 0, 'Rekomendasi Izin Mendirikan Rumah Sakit Kelas A da', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Rekomendasi Izin Mendirikan Rumah Sakit Kelas A dan Rumah Sakit Penanaman Modal Asing yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(167, 26, 0, 'Rekomendasi Izin Operasional Rumah Sakit Kelas A d', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Operasional Rumah Sakit Kelas A dan Rumah Sakit Penanaman Modal Asing yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(168, 26, 0, '9) Rekomendasi Penetapan Sarana Prasarana Pelayana', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Rekomendasi Penetapan Sarana Prasarana Pelayanan Pemeriksaan Kesehatan Calon Tenaga Kerja Indonesia yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(169, 26, 0, 'Rekomendasi Izin Penyelenggaraan Pelayanan Dialisi', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Rekomendasi Penyelenggaraan Pelayanan Dialisis pada Fasilitas Pelayanan Kesehatan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(170, 26, 0, 'Rekomendasi Regirtrasi Puskesmas. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Surat Rekomendasi Penyelenggaraan Pelayanan Dialisis pada Fasilitas Pelayanan Kesehatan yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(171, 26, 0, 'Rekomendasi Sertifikat Produksi Alat Kesehatan dan', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Rekomendasi Sertifikat Produksi Alat Kesehatan dan PKRT yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(172, 26, 0, 'Rekomendasi Sertifikat Distribusi Alat Kesehatan d', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Rekomendasi Sertifikat Produksi Alat Kesehatan dan PKRT yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(173, 26, 0, 'Rekomendasi Sertifikat Distribusi Farmasi.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Rekomendasi Sertifikat Distribusi Farmasi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(174, 26, 0, 'Rekomendasi Sertifikat Produksi Kosmetika.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Rekomendasi Sertifikat Produksi Kosmetika yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(175, 26, 0, 'Izin Pembangunan Perkeretaapian Umum, Yang Jaringa', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '32 Hari kerja', 'Izin Pembangunan Perkeretaapian Umum yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(176, 26, 0, ' Izin Operasi Prasarana Perkeretaapian Umum, Yang ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '32 Hari kerja', 'Izin Operasi Prasarana Perkeretaapian Umum yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(177, 26, 0, 'Izin Operasi Sarana Perkeretaapian Umum  Yang Jari', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '32 Hari kerja', 'Izin Operasi Sarana Perkeretaapian Umum yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(178, 26, 0, 'Izin Pengadaan atau Pembangunan Kereta Api Khusus ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '32 Hari kerja', 'Izin Pengadaan atau Pembangunan Kereta Api Khusus yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(179, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(180, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(181, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(182, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(183, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(184, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(185, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek. ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(186, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(187, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(188, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.');
INSERT INTO `tb_layanan` (`id_layanan`, `id_satker`, `id_unit`, `n_layanan`, `n_dasar_hukum`, `biaya`, `standar_waktu`, `spesifikasi`) VALUES
(189, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(190, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(191, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(192, 26, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Tr', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '9 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(193, 26, 0, 'Izin Pembangunan Dan Pengoperasian Pelabuhan Pengu', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pembangunan Dan Pengoperasian Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(194, 26, 0, 'Izin Pembangunan dan Pengoperasian Sungai dan Dana', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pembangunan dan Pengoperasian Sungai dan Danau yang Melayani Trayek Lintas Daerah Kabupaten/Kota dalam Wilayah Provinsi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(195, 26, 0, 'Izin Usaha Badan Usaha Pelabuhan di Pelabuhan Peng', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Badan Usaha Pelabuhan di Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(196, 26, 0, 'Izin Pengembangan Pelabuhan Selama 24 Jam untuk Pe', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengembangan Pelabuhan Selama 24 Jam untuk Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(197, 26, 0, 'Izin Pekerjaan Pengerukan Wilayah Perairan Pelabuh', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pekerjaan Pengerukan Wilayah Perairan Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(198, 26, 0, 'Izin Pengelolaan Terminal Untuk Kepentingan Sendir', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengelolaan Terminal Untuk Kepentingan Sendiri (TUKS) didalam DLKR/DLKP Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(199, 26, 0, 'Izin Pengelolaan Terminal Untuk Kepentingan Sendir', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengelolaan Terminal Untuk Kepentingan Sendiri (TUKS) didalam DLKR/DLKP Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(200, 26, 0, 'Izin Pengelolaan Terminal Untuk Kepentingan Sendir', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengelolaan Terminal Untuk Kepentingan Sendiri (TUKS) didalam DLKR/DLKP Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(201, 26, 0, 'Izin Pengelolaan Terminal Untuk Kepentingan Sendir', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengelolaan Terminal Untuk Kepentingan Sendiri (TUKS) didalam DLKR/DLKP Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(202, 26, 0, 'Izin Usaha Perusahaan Angkutan Laut Pelayaran Raky', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Perusahaan Angkutan Laut Pelayaran Rakyat Yang Beroperasi Pada Lintas Pelabuhan Kabupaten/Kota Dalam Daerah Provinsi, Pelabuhan Antar Daerah Provinsi, Dan Pelabuhan Internasional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(203, 26, 0, 'Izin Trayek Penyelenggaraan Angkutan Sungai Dan Da', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Trayek Penyelenggaraan Angkutan Sungai Dan Danau Untuk Kapal Yang Melayani Trayek Antar Daerah Dalam Wilayah Provinsi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(204, 26, 0, 'Izin Usaha Perusahaan Bongkar Muat (SIUPBM).', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Perusahaan Bongkar Muat (SIUPBM) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(205, 26, 0, 'Izin Usaha Perusahaan Jasa Pengurusan Transportasi', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Perusahaan Jasa Pengurusan Transportasi (SIUJPT) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(206, 26, 0, 'Izin Usaha Perusahaan Angkutan Perairan Pelabuhan ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Perusahaan Angkutan Perairan Pelabuhan (SIUPAPP) yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(207, 26, 0, 'Izin Usaha Penyewaan Peralatan Angkutan Laut Atau ', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Penyewaan Peralatan Angkutan Laut Atau Peralatan Jasa Terkait Dengan Angkutan Laut yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(208, 26, 0, 'Izin Usaha Tally Mandiri.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Tally Mandiri yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(209, 26, 0, 'Izin Usaha Perusahaan Depo Peti Kemas.', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Usaha Perusahaan Depo Peti Kemas yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(210, 26, 0, 'Izin Pengembangan Pelabuhan Untuk Pelabuhan Pengum', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Pengembangan Pelabuhan Untuk Pelabuhan Pengumpan Regional yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(211, 26, 0, 'Rekomendasi Penerbitan Izin Trayek Angkutan Penyeb', 'Keputusan Gubernur Nomor : 649/DPMPTSP/2020', 0, '16 Hari kerja', 'Izin Trayek Penyelenggaraan Angkutan Sungai Dan Danau Untuk Kapal Yang Melayani Trayek Antar Daerah Dalam Wilayah Provinsi yang dicetak dengan kertas F4, concort, resmi dengan tanda tangan dan cap stempel basah.'),
(212, 13, 0, 'Pelayanan penerbitan Surat Tanda Register (STR)', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '6 Bulan', 'Surat  Tanda Register (STR)'),
(213, 13, 0, 'Ijin Usaha Kecil Obat Tradisional', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '14 Hari kerja', 'Sertifikat'),
(214, 13, 0, 'Sertifikat Distribusi Cabang Alat Kesehatan', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '14 Hari kerja', 'Sertifikat Distribusi Alkes'),
(215, 13, 0, 'Sertifikat Dsitribusi Cabang Farmasi (PBF)', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '14 Hari kerja', 'Sertifikat PBF'),
(216, 13, 0, 'Izin Operasional Rumah Sakit Tipe B', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '14 Hari kerja', 'Sertifikat Izin Operasional Rumah Sakit'),
(217, 13, 0, 'Pelayanan Legalisir Ijazah', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '10 Hari kerja', 'Legaliasir Ijazah'),
(218, 13, 0, 'Rekomendasi Registrasi Puskesmas', 'Keputusan Kadis Kesehatan No : 10 Tahun 2020', 0, '7 Hari kerja', 'Surat Rekomendasi Registrasi Puskesmas'),
(219, 11, 0, 'Pengaduan Masyarakat (Dumas)', '', 0, '3 Bulan', 'Penanganan Pengaduan Masyarakat'),
(220, 11, 0, 'Pengendalian Gratifikasi', '', 0, '7 Hari', 'Pengendalian Gratifikasi'),
(221, 11, 0, 'Whistel Blower System', '', 0, '15 Hari', 'Whistle Blower System'),
(222, 11, 0, 'Layanan Aspirasi dan Pengaduan Online Rakyat', '', 0, '3 Hari', 'LAPOR - SP4N!'),
(223, 11, 0, 'Pengaduan Saber Pungli', '', 0, '15 Hari', 'Pengaduan Saber Pungli'),
(224, 12, 0, 'Pengajuan Cuti Tahunan', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '7 Hari kerja', 'PENGAJUAN CUTI TAHUNAN'),
(225, 12, 0, 'Kenaikan Gaji Berkala (Golongan II - III.C)', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '3 Hari kerja', 'KENAIKAN GAJI BERKALA (Golongan II - III.C)'),
(226, 12, 0, 'Kenaikan Gaji Berkala (Golongan III.d - IV.a)', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '3 Hari kerja', 'KENAIKAN GAJI BERKALA (Golongan III.d - IV.a)'),
(227, 12, 0, 'Kenaikan Pangkat Reguler', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '3 Hari kerja', 'Kenaikan Pangkat Reguler'),
(228, 12, 0, 'Pembuatan Kartu Pegawai', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '3 Hari kerja', 'Pembuatan KARPEG'),
(229, 12, 0, 'Pengajuan NPSN (SMA, SMK, SLB)', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '2 Hari kerja', 'Pengajuan NPSN (SMA, SMK, SLB)'),
(230, 12, 0, 'Permintaan Informasi Publik', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '14 Hari kerja', 'PERMINTAAN INFORMASI PUBLIK'),
(231, 12, 0, 'Pengajuan Pensiun', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '10 Bulan', 'PENGAJUAN PENSIUN'),
(232, 12, 0, 'Ijin Belajar (untuk guru)', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '1 Hari', 'IJIN BELAJAR (GURU)'),
(233, 12, 0, 'Pengajuan Tunjangan Anak/Suami', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '1 Hari', 'Pengajuan tunjangan Anak/Suami'),
(234, 12, 0, 'Pengajuan Karis Karsu', 'Keputusan Kepala Dinas Pendidikan dan Kebudayaan No : 41 Tahun 2020', 0, '1 Hari', 'SOP Pengajuan Karis, Karsu dan Karpeg'),
(235, 15, 0, 'Penilaian Dokumen ANDAL, RKL-RPL', 'Keputusan Kepala Dinas LHK No : 127.1/DLHK-I/UAPR/2020', 0, '60 Hari', 'Penilaian Dokumen ANDAL, RKL-RPL'),
(236, 15, 0, 'Penilaian Dokumen UKL- UPL', 'Keputusan Kepala Dinas LHK No : 127.1/DLHK-I/UAPR/2020', 0, '10 Hari kerja', 'Persetujuan Dokumen UKL-UPL'),
(237, 15, 0, 'Penilaian Dokumen Addendum ANDAL, RKL dan RPL Tipe', 'Keputusan Kepala Dinas LHK No : 127.1/DLHK-I/UAPR/2020', 0, '55 Hari kerja', 'Persetujuan Dokumen Addendum ANDAL, RKL dan RPL'),
(238, 7, 0, 'Konsultasi ', 'Keputusan Kepala Biro Organisasi No : 065/002/OR-B', 0, '1 Hari kerja', '• Saran, masukan, pertimbangan, solusi, dan rekomendasi terhadap hal yang dikonsultasikan'),
(239, 7, 0, 'Data / Laporan / Informasi ', 'Keputusan Kepala Biro Organisasi No : 065/002/OR-B', 0, '1 Hari kerja', 'Data/informasi'),
(240, 7, 0, 'Audiensi Instansi Pemerintah, Pemerintah Daerah da', 'Keputusan Kepala Biro Organisasi No : 065/002/OR-B', 0, '1 Hari kerja', 'pertemuan membahas topik'),
(241, 7, 0, 'Penyediaan Narasumber', 'Keputusan Kepala Biro Organisasi No : 065/002/OR-B', 0, '4 Hari kerja', 'asistensi dan narasumber'),
(242, 7, 0, 'Pelayanan Perpustakaan', 'Keputusan Kepala Biro Organisasi No : 065/002/OR-B', 0, '15 Menit', 'Layanan Peminjaman Buku'),
(243, 45, 0, 'Pelayanan Gawat Darurat', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'IGD, OK IGD, IGD Kebidanan'),
(244, 45, 0, 'Pelayanan rawat Jalan', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Poli Anak, Poli Penyakit Dalam, Poli Bedah Umum, Poli Bedah Plastik, Poli Bedah Syaraf, Poli Kebidanan, Poli Syaraf, Poli Jantung, Poli Bedah Anak, Poli Urologi, Poli Orthopedi, Poli THT, Poli Mata, Poli Luka (stoma), Poli Geriatri, Poli Paru, Poli TBC, Poli TB MDR, Poli Kulit dan Kelamin, Poli Gigi Umum, Poli Bedah Mulut, Poli Penyakit Mulut, Poli Orthodenti, Poli Endodonsi, Pelayanan Hemodialisa, Pelayanan Thalasemia, Pelayanan Kateterisasi Jantung, Pelayanan Kamar Operasi, Pelayanan Rehab Medik, Pelayanan Unit Medik Sentral, Pelayanan Endoscopy, Poli Penyakit HIV, Poli Tumbuh Kembang'),
(245, 45, 0, 'Pelayanan Rawat Inap', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Rawat Inap pada Instalasi Rawat Inap A : Ruang C (Kelas II Umum), D (Arwana), G, VIP (IRNA), PPT, VVIP.\nPelayanan Rawat Inap pada Instalasi Rawat Inap B : Ruang A (Anak), B (Perinatologi), F (Ruang Infeksi), H (Penyakit Dalam Pria & Wanita), I (Paru), K (Bedah Pria & Wanita Kelas III), N (Nifas/Obstetri), L (Syaraf & Bedah Syaraf).'),
(246, 45, 0, 'Pelayanan Persalinan', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Bedah di Instalasi Bedah Sentral terdiri dari :\n-Kebidanan\n-Bedah Anak\n-Urologi\n-Orthopedi\n-THT\n-Mata\n-Bedah Mulut\n-Bedah Umum\n-Bedah Syaraf\n-Bedah Orthopedi\n-Bedah Plastik\n-Anestesi'),
(247, 45, 0, 'pelayanan KIA, KB', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', '1.Pemeriksaan pasien kasus Obstetri dengan risiko tinggi baik rujukan maupun non rujukan.\n2.Pemeriksaan pasien kasus Ginekologi dengan risiko baik rujukan maupun non rujukan.\n3.Pelayanan Keluarga berencana (KB) : \nIUD\nImplan\nSuntik\nPil\nKondom\n4.Pemeriksaan USG 4D.\n5.Pelayanan PAP SMEAR.\n6.Pelayanan Pasien Post Seksio Cesaria.\n7.Pelayanan pasien post operasi kasus Ginekologi.'),
(248, 45, 0, 'Pelayanan perinatologi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', '1.Pemeriksaan  pasien (bayi 0-28 hari) kasus resiko tinggi baik rujukan maupun non rujukan   \n2.Pelayanan bayi baru lahir : \nInisiasi Menyusui Dini (IMD)\nEdukasi tentang ASI EKSLUSIF \nPerawatan metode kanguru / Kanguroo Mother Care (KMC)\nInjeksi Neo. K\nImunisasi Hb 0 \n3.Perawatan bayi < 1200 gram\n4.Pemeriksaan ROP\n5.Perawatan bayi dengan Hiperbillirubin\n6.Perawatan bayi dengan kelainan kongenital\n7.Perawatan bayi dengan kelainan bedah seperti hernia diafragmatika, gastroschizis, atresia ani, hidrocepalus dll.'),
(249, 45, 0, 'Pelayanna perawatan Intensif', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 1, ' Menit', 'Pelayanan Rawat Inap pada Instalasi Rawat Inap Intensif / Khusus : Ruang ICU (Intensive Care Unit), ICCU (Intensive Care Coronary Care Unit), PICU/NICU (Pediatric Intensive Care Unit / Neonatal Intensive Care Unit) dan HCU (High Care Unit).'),
(250, 45, 0, 'Pelayanan Administrasi dan Manajemen', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', ''),
(251, 45, 0, 'Pelayanan Pasien BPJS', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Selisih bayar pasien BPJS naik kelas perawatan'),
(252, 45, 0, 'Pelayanan Bedah Sentral', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Bedah di Instalasi Bedah Sentral terdiri dari :\nKebidanan\nBedah Anak\nUrologi\nOrthopedi\nTHT\nMata\nBedah Mulut\nBedah Umum\nBedah Syaraf\nBedah Orthopedi\nBedah Plastik\nAnestesi'),
(253, 45, 0, 'Pelayanan Radiologi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', '1.Pemeriksaan Radiodiagnostik Konvensional:\nThorax\nBNO / Abdomen 3 Posisi\nSkull, Waters, TMJ, Mandibula, Nasal, Orbita, Mastoid\nPelvis\nVertebra meliputi Lumbosacral, Thoracal dan Cervikal\nEkstremitas Atas\nEkstremitas Bawah\nBone Survey\n\n2.Pemeriksaan Khusus (dengan kontras), meliputi:\nBNO / IVP\nEsophagography\nOMD / MD\nAppendicogram\nUrethrography\nCystography\nFistulography\n\n3.Pemeriksaan USG:\nUSG Abdomen\nUSG Thorax\nUSG Tiroid\nUSG Doppler\nUSG Mammae\nUSG Obgyn\nUSG Kepala bayi\n\n4.Pemeriksaan CT Scan:\nCt Scan Kepala (3D), Sinus, Orbita, Mastoid, Maxillofacial\nCt Scan Ekstremitas Atas\nCt Scan Ekstremitas Bawah\nCt Scan Vertebra\nCt Scan Thorax\nCt Scan Abdomen\nCt Scan Cardiac dan Calcium Score\nCt Scan Angiography\n\n5.Pemeriksaan MRI\nMri Brain dan MRA\nMri Ekstremitas\nMri Vertebra\n-Mri Abdomen, Pelvis dan MRCP\n\n\n6.Pelayanan C-Arm dikamar bedah\n7.Pemeriksaan Mammography\n8.Pemeriksaan Panoramic dan Cephalometri'),
(254, 45, 0, 'Pelayanan Rehabilitasi Medik', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Konsultasi Dokter Rehabilitasi Medik\nPelayanan fisioterapi\nPelayanan terapi wicara\nPelayanan Okupasi terapi'),
(255, 45, 0, 'Pelayanan Farmasi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Farmasi'),
(256, 45, 0, 'Pelayanan Patologi Klinik', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', ''),
(257, 45, 0, 'Pelayanan Patologi Anatomi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', '1.Pemeriksaan Biopsi Jarum Halus (FNAB)\n2.Pemeriksaan Histopatologi\n3.Pemeriksaan potong beku (VC)\n4.Pemeriksaan Sitologi\n5.Pemeriksaan Pap Smear\n6.Pemeriksaan Histokimia'),
(258, 45, 0, 'Pelayanan Bank Darah', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Darah Rawat Inap dan Rawat Jalan RSUD Dokter Soedarso'),
(259, 45, 0, 'Pelayanan Gizi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Gizi'),
(260, 45, 0, 'Pelayanan Rekam Medik', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pasien Umum : Dokumen Rekam Medis\nPasien BPJS : SEP (Surat Elegibilitas Pasien) dan SJP (Surat Jaminan Pasien) serta dokumen rekam medis'),
(261, 45, 0, 'Pelayanan pencegahan dan Pengendalian Infeksi', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', '1.Kewaspadaan Isolasi :\na.Kewaspadaan Standar\nb.Kewaspadaan Transmisi\n2.Surveilens\n3.Pendidikan / pelatihan\n4.Pencegahan Infeksi\n5.Penggunaan Antimikroba yang rasional\n6.ICRA'),
(262, 45, 0, 'Pelayanan sanitasi dan Kamar Jenazah', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Fardhu Kifayah, Autopsi'),
(263, 45, 0, 'Pelayanan Ambulance / Kereta Jenazah', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Ambulan Meliputi :\nAntar dan jemput pasien dalam wilayah kota\nMengantar Pasien keluar kota baik status pasien Umum atau BPJS\nMemberikan layanan dengan penuh ramah.\nTidak memungut biaya apapun diluar tarif Perda'),
(264, 45, 0, 'Pelayanan Logistik', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', ''),
(265, 45, 0, 'Pelayanan CSSD, Laundry dan Penjahitan', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan CSSD dan Binatu'),
(266, 45, 0, 'Pelayanan pemeliharaan Sarana Rumah Sakit', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pemeliharaan sarana, prasarana dan peralatan kesehatan.'),
(267, 45, 0, 'Pelayanan keamanan dan Parkir', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, ' Menit', 'Pelayanan Perparkiran Meliputi :\nArus mobilisasi kendaraan pengunjung mulai pintu masuk sampai pintu keluar\nPetugas parkir mengarahkan mengatur dan memastikan keamanan, ketertipan dan kenyamanan pengunjung.'),
(268, 45, 0, 'Pelayanan Pasien Thalassemia', 'Keputusan Direktur RSUD Soedarso No : 190 Tahun 2020', 0, '0 Menit', 'Pemeriksaan darah Perifer Lengkap, Pemeriksaan kadar Ferritin, Pemeriksaan Ureum, Creatinine, SGOT, SGPT, Pemeriksaan Kesehatan Gigi, Psikologi, Transfusi Darah One Day Care, Edukasi'),
(269, 31, 0, 'Izin Usaha Produksi Benih (IUPB)', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '7 Hari kerja', 'Pertimbangan Teknis Izin Usaha Produksi Benih (IUPB)'),
(270, 31, 0, 'Izin Usaha Perkebunan untuk Budidaya (IUP-B)', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '18 Hari kerja', 'Pertimbangan Teknis Izin Usaha Perkebunan untuk Budidaya (IUP-B)'),
(271, 31, 0, 'Izin Usaha Perkebunan untuk Pengolahan (IUP-P)', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '18 Hari kerja', 'Pertimbangan Teknis Izin Usaha Perkebunan untuk Pengolahan (IUP-P)'),
(272, 31, 0, 'Izin Usaha Perkebunan Terintegrasi (Budidaya dan P', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '18 Hari kerja', 'Pertimbangan Teknis Izin Usaha Perkebunan Terintegrasi (Budidaya dan Pengolahan)'),
(273, 31, 0, 'Surat Persetujuan Penyaluran Benih Kelapa Sawit (S', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '12 Hari kerja', 'Surat Persetujuan Penyaluran Benih Kelapa Sawit (SP2BKS)'),
(274, 31, 0, 'Rekomendasi Kesesuaian dengan Rencana Makro Pemban', 'Keputusan Kepala Dinas Perkebunan No : 800/SK/306/SET/III/2019', 0, '18 Hari kerja', 'Rekomendasi Kesesuaian dengan Rencana Makro Pembangunan Perkebunan Provinsi'),
(275, 16, 0, 'Pendirian Lembaga Konsultasi Kesejahteraan Keluarg', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '2 Hari', 'Lembaga Konsultasi Kesejahteraan Keluarga'),
(276, 16, 0, 'Pemberian Rekomendasi Adopsi Bagi Suami Istri WNI', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '12 Hari', 'Rekomendasi Adopsi Anak'),
(277, 16, 0, 'Izin Operasional Panti', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '1 Hari', 'Izin Operasional'),
(278, 16, 0, 'Pemulangan Warga Negara Indonesia Migran Korban Pe', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '5 Hari', 'Pelayanan WNI-M-KPO / Pekerja Migran Indonesia Bermasalah'),
(279, 16, 0, 'Pendaftaran Organisasi Sosial/Yayasan', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '2 Hari', 'Organisasi Sosial/Yayasan'),
(280, 16, 0, 'Rekomendasi Undian Gratis Berhadiah/Pengumpulan Ua', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '2 Hari', 'UGB/PUB'),
(281, 16, 0, 'Pendirian Karang Taruna', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Karang Taruna'),
(282, 16, 0, 'Wahana Kesejahteraan Sosial Berbasis Masyarakat (W', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '2 Hari', 'Wahana kesejahteraan sosial berbasis masyarakat'),
(283, 16, 0, 'Pengusulan Gelar Pahlawan', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Bulan', 'gelar pahlawan nasional'),
(284, 16, 0, 'penganugrahan perintis kemerdekaan', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Bulan', 'penganugrahan perintis kemerdekaan'),
(285, 16, 0, 'Pengusulan Kelompok Usaha Bersama (KUBE)/Rumah tid', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '1 Hari', 'KUBE/RTLH/SARLING'),
(286, 16, 0, 'Penanganan Orang Terlantar', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Pelayanan Korban Bencana Alam dan Sosial'),
(287, 16, 0, 'Penyaluran Bantuan Logistik', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Penyaluran Bantuan Logistik'),
(288, 16, 0, 'Pelayanan Pemberdayaan Komunitas Adat Terpencil', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Tahun', 'Komunitas Adat Terpencil'),
(289, 16, 0, 'Sistem Layanan Rujukan Terpadu (SLRT)', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Sistem Layanan Rujukan Terpadu'),
(290, 16, 0, 'Pekerja Sosial Masyarakat', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Pekerja Sosial Masyarakat'),
(291, 16, 0, 'Pelayanan Tenaga Kesejahteraan Sosial Kecamatan (T', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '6 Bulan', 'Tenaga Kesejahteraan Sosial Kecamatan'),
(292, 16, 0, 'Pelayanan CSR', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '3 Hari', 'Bantuan CSR'),
(293, 16, 0, 'Rekrutmen Calon Warga Binaan IPWL', 'Keputusan Kepala Dinas Sosial No : 114 Tahun 2020', 0, '5 Hari', 'IPWL'),
(294, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 93000, '15 Menit', 'Pemeriksaan Psikiatri'),
(295, 46, 0, 'Pelayanan Gawat Darurat', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 183000, '120 Menit', 'Pelayanan Instalasi Gawat Darurat ( IGD )'),
(296, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 0, '30 Menit', 'Konseling Napza'),
(297, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 0, '60 Menit', 'Pemeriksaan Klien Baru NAPZA'),
(298, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 0, '20 Menit', 'Pemeriksaan Klien Lama NAPZA'),
(299, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 200000, '30 Menit', 'Pembuatan SKBN (Surat Keterangan Bebas Narkoba) untuk melamar pekerjaan dan melanjutkan pendidikan'),
(300, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 265000, '30 Menit', 'Pembuatan SKBN (Surat Keterangan Bebas Narkoba) CPNS'),
(301, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 330000, '30 Menit', 'Pembuatan SKBN (Surat Keterangan Bebas Narkoba) untuk lelang jabatan'),
(302, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 630000, '90 Menit', 'Pembuatan SKBN (Surat Keterangan Bebas Narkoba) untuk melamar pekerjaan'),
(303, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 545000, '90 Menit', 'Pembuatan Surat Keterangan Bebas Narkoba (SKBN) dan Surat Kesehatan Jiwa ( SKJ) untuk TKHI'),
(304, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 93000, '30 Menit', 'Pemeriksaan Geriatri'),
(305, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 10000, '20 Menit', 'Program Terapi Rumatan Metadon'),
(306, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 63000, '60 Menit', 'PErawatan, dukungan dan Pengobatan ARV'),
(307, 46, 0, 'Pelayanan Rawat jalan ', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 0, '30 Menit', '1.Konseling pra test HIV, 2. Konseling test  HIV dan  3. Konseling post test HIV'),
(308, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 50000, '45 Menit', 'Pelayanan Konsultasi Psikologi'),
(309, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 150000, '150 Menit', 'Pelayanan Test Promosi Jabatan (Assosiate Staf)'),
(310, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 160000, '150 Menit', 'Pelayanan Promosi Jabatan (Excecutive Staff)'),
(311, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 185000, '150 Menit', 'Pelayanan Promosi Jabatan (Excecutive Staff)'),
(312, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 195000, '150 Menit', 'Pelayanan Promosi Jabatan (Excecutive Staff)'),
(313, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 200000, '150 Menit', 'Test Minat Bakat'),
(314, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '20 Menit', 'Test Intelengensi CPM'),
(315, 46, 0, 'Pelayanan  Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 50000, '20 Menit', 'Tes Intelegensi CFIT'),
(316, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 100000, '90 Menit', 'Test Intelengensi IST'),
(317, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 175000, '90 Menit', 'Test Intelengensi WAIS'),
(318, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 175000, '90 Menit', 'Test Intelengensi WISC'),
(319, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 175000, '90 Menit', 'Test Intelengensi Binet'),
(320, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '15 Menit', 'Tes Proyeksi Grafis'),
(321, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '15 Menit', 'Tes Proyeksi Wartegg'),
(322, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '15 Menit', 'Tes proyeksi DISC'),
(323, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 60000, '60 Menit', 'Tes Intelegensi EPSS'),
(324, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 175000, '60 Menit', 'Tes Intelegensi TAT'),
(325, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 100000, '15 Menit', 'Tes Kemampuan Kerja MSDT'),
(326, 46, 0, 'Pelayan rawat jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 100000, '30 Menit', 'Test kemampuan Kerja Kraeplin'),
(327, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 125000, '60 Menit', 'Test Kemampuan Kerja Pauli'),
(328, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 75000, '30 Menit', 'Tes Kemampuan Kerja Papi Konstick'),
(329, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '15 Menit', 'Tes Kejiwaan WW'),
(330, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 50000, '30 Menit', 'Terapi psikologi relaksasi'),
(331, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 70000, '30 Menit', 'Terapi Psikologi Typing'),
(332, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 100000, '30 Menit', 'Terapi Psikologi Psikotraumatologi'),
(333, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 29000, '30 Menit', 'Fisiotherapi dewasa TENS'),
(334, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 25000, '30 Menit', 'Fisiotherapi INFRA RED'),
(335, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 31000, '15 Menit', 'Fisiotherapi Electrical Stimulasi'),
(336, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 25000, '30 Menit', 'Fisiotherapi Diathermy (MWD)'),
(337, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 29000, '10 Menit', 'Fisiotherapi Ultra  Sonic'),
(338, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '30 Menit', 'Fisiotherapi Excercise Therapi'),
(339, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 32000, '30 Menit', 'Fisiotherapi manipulasi therapi'),
(340, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '60 Menit', 'Terapi latihan 2 (Pediatri)'),
(341, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '15 Menit', 'Pemeriksaan dan konsultasi dokter gigi'),
(342, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 60000, '30 Menit', 'Tambal Gigi Amalgam'),
(343, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 80000, '30 Menit', 'Tambal gigi tetap GIC'),
(344, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 120000, '30 Menit', 'Tambalan gigi CLRC'),
(345, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 45000, '30 Menit', 'Tambal gigi Sementara'),
(346, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 30000, '30 Menit', 'Pencabutan gigi (ekstraksi) anak'),
(347, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 60000, '60 Menit', 'Pencabutan Gigi (Ekstraksi) Dewasa'),
(348, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 120000, '30 Menit', 'Pembersihan Karang Gigi (Scaling)'),
(349, 46, 0, 'Pelayanan Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 100000, '60 Menit', 'Pencabutan gigi dengan penyulit'),
(350, 46, 0, 'Pelayana Rawat Jalan', 'Keputusan Direktur RSJ Daerah Sungai Bangkong No : 445.2/123/RSJDSB/TU-A/Tahun 2020', 250000, '60 Menit', 'Operasi kecil pada bagian Gigi dan Mulut'),
(351, 1, 0, 'Ijin Perjalanan Dinas Luar Negeri ', 'Keputusan Kepala Biro Pemerintahan No : 065/06/PEM', 0, '15 Hari kerja', 'Surat persetujuan ijin perjalanan dinas luar negeri'),
(352, 1, 0, 'Pembuatan Paspor Dinas &amp; Exit Permit', 'Keputusan Kepala Biro Pemerintahan No : 065/06/PEM', 0, '4 Hari kerja', 'Paspor Dinas &amp; Exit Permit'),
(353, 1, 0, 'Konsultasi Pelaporan LPPD  Provinsi Kalbar dan LKP', 'Keputusan Kepala Biro Pemerintahan No : 065/06/PEM', 0, '1 Jam', 'Bahan Perumusan Laporan LPDD Provinsi Kalbar dan LKPJ Gubernur Kalbar Akhir Tahun Anggaran'),
(354, 2, 0, 'Bantuan Hukum Litigasi', 'Keputusan Kepala Biro Hukum No : 31/HK/2020', 0, '36 Bulan', 'Penangan Perkara'),
(355, 2, 0, 'Bantuan Hukum Non Litigasi dan Perlindungan HAM', 'Keputusan Kepala Biro Hukum No : 31/HK/2020', 0, '7 Hari', 'Fasilitasi  / Penyelesaian Pengaduan Masyarakat'),
(356, 4, 0, 'penetapan harga eceran tertinggi (HET)Liquified Pe', 'Keputusan Kepala Biro Perekonomian No: 04/EKON/2020', 0, '1 Tahun', 'Informasi'),
(357, 5, 0, 'Pelayanan Helpdesk', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '45 Menit', 'Pelayanan Aplikasi Monev Tepra, SIRUP, SPSE, e-Katalog,SIKAP, SIPRAJA'),
(358, 5, 0, 'Pelayanan Registrasi dan Verifikasi SPSE', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '45 Menit', 'Pelayanan Registrasi dan Verifikasi SPSE'),
(359, 5, 0, 'Pelayanan Registrasi dan Verifikasi PA, KPA, PPK d', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '30 Menit', 'Pelayanan Registrasi dan Verifikasi PA, KPA, PPK dan PP'),
(360, 5, 0, 'Pelayanan Penggantian e-Mail dan/atau Reset Passwo', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '45 Menit', 'Pelayanan Penggantian e-Mail dan/atau Reset Password SPSE'),
(361, 5, 0, 'Pelayanan Penggantian Alamat e-Mail dan/atau Reset', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '30 Menit', 'Pelayanan Penggantian Alamat e-Mail dan/atau Reset Password PA, KPA, PPK dan PP'),
(362, 5, 0, 'Pelayanan Penggantian  PA, KPA, PPK dan PP', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '30 Menit', 'Pelayanan Penggantian  PA, KPA, PPK dan PP'),
(363, 5, 0, 'Pelayanan Pembuktian Kualifikasi', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '180 Menit', 'Pelayanan Pembuktian Kualifikasi'),
(364, 5, 0, 'Pelayanan Pengaduan', 'Keputusan Kepala Biro Pengadaan Barang Jasa No : 11 tahun 2020', 0, '45 Menit', 'Pelayanan Pengaduan'),
(365, 36, 0, 'Penyediaan Data Dan Informasi Tentang Aset/Barang ', 'Keputusan Kepala Biro Adpem No : 067/04/Adpem', 0, '7 Hari kerja', 'Data dan Informasi tentang Aset/BMD'),
(366, 36, 0, 'Pelayanan Pengajuan Sewa dan Perpanjangan Sewa Ata', 'Keputusan Kepala Biro Adpem No : 067/04/Adpem', 0, '30 Hari kerja', 'tanah, bangunan, tanah dan bangunan, selain tanah dan/atau bangunan.'),
(367, 36, 0, 'Pelayanan Peminjaman Dan Pengembalian Surat-Surat ', 'Keputusan Kepala Biro Adpem No : 067/04/Adpem', 0, '2 Hari kerja', 'Surat Berharga dalam bentuk Sertifikat Tanah atau BPKB Asli Milik Pemerintah Provinsi Kalimantan Barat.'),
(368, 24, 0, 'Pengelolaan Informasi dan Dokumentasi', '', 0, '10 Hari', 'Informasi dan Dokumentasi'),
(369, 8, 0, 'Penomoran Surat Perintah Tugas ASN Pemprov Kalbar', '', 0, '5 Menit', 'Nomor Surat Perintah Tugas'),
(370, 14, 0, 'Rekomendasi Teknis Perizinan Pengusahaan dan Pengg', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '10 Hari kerja', 'Surat Rekomendasi Teknis Pengusahaan atau Penggunaan Sumber Daya Air'),
(371, 14, 0, 'Penerbitan Rekomendasi Teknis Kesesuaian Tata Ruan', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '5 Hari kerja', 'Rekomendasi Teknis Kesesuaian Tata Ruang Provinsi Kalimantan Barat'),
(372, 14, 0, 'Rekomendasi Teknis Penggunaan Utilitas Jalan dan J', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '10 Hari kerja', 'Rekomendasi Teknis Penggunaan Utilitas Jalan dan Jembatan.'),
(373, 14, 0, 'Rekomendasi Teknis Analisa Kerusakan/Fungsi Bangun', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '10 Hari kerja', 'Berita Acara Penetapan Nilai Sisa Bangunan dalam Rangka Penghapusan Bangunan'),
(374, 14, 0, 'Rekomendasi Teknis Analisa Kebutuhan Pembangunan G', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '10 Hari kerja', 'Berita Acara  Rekomendasi Teknsi Analisis Kebutuhan Biaya (Perencanaan, Konstruksi, Pengawasan/Manajemen Konstruksi) Pembangunan Gedung Negara'),
(375, 14, 0, 'Rekomendasi Teknis Analisa Kebutuhan Biaya Perawat', 'Keputusan Kadis PUPR No : 29/DPUPR-D.2/2020', 0, '10 Hari kerja', 'Berita Acara  Rekomendasi Teknsi Analisis Kebutuhan Biaya Perawatan Bangunan Gedung Negara'),
(376, 18, 0, 'Pelayanan Penempatan TKI di Luar Negeri', 'Keputusan Kadis Tenaga Kerja dan Transmigrasi No : 54/NT.SET-2/2019', 0, '1 Bulan', 'Penempatan Tenaga Kerja'),
(377, 18, 0, 'Perpanjangan RPTKA', 'Keputusan Kadis Tenaga Kerja dan Transmigrasi No : 54/NT.SET-2/2019', 0, '1 Minggu', 'Perpanjangan RPTKA'),
(378, 18, 0, 'akreditasi LPK', 'Keputusan Kadis Tenaga Kerja dan Transmigrasi No : 54/NT.SET-2/2019', 0, '1 Bulan', 'akreditasi LPK'),
(379, 19, 0, 'Pelayanan Terpadu Perempuan dan Anak', 'Keputusan Kepala DPPPA No : 021/DPP-PA.A Tahun 2020', 0, '14 Hari', 'Penanganan Kekerasan, Perlindungan Perempuan Dan Anak'),
(380, 20, 0, 'Penerbitan surat rekomendasi pemasukan vaksin ', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '1 Hari', 'Surat Rekomendasi Pemasukan Vaksin'),
(381, 20, 0, 'Surat Rekomendasi Izin Usaha Distributor Obat Hewa', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '4 Hari', 'Surat Rekomendasi Izin Usaha Distributor Obat Hewan'),
(382, 20, 0, 'Penerbitan Sertifikat Veteriner', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '45 Menit', 'Sertifikat Veteriner'),
(383, 20, 0, 'Penerbitan Sertifikat bebas Pullorum ', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '3 Hari', 'Sertifikat bebas Pullorum'),
(384, 20, 0, 'Penerbitan Sertifikat NKV (Nomor Kontrol Veteriner', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '3 Hari', 'Sertifikat NKV'),
(385, 20, 0, 'Surat Pertimbangan Teknis Pemasukan dan Pengeluara', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '30 Menit', 'Surat Pertimbangan Teknis  Pemasukan dan Pengeluaran Produk Ternak'),
(386, 20, 0, 'Surat Pertimbangan Teknis Rekomendasi Pengeluaran ', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '1 Hari', 'Pertimbangan Teknis Rekomendasi Pemasukan dan Pengeluaran Ternak Unggas'),
(387, 20, 0, 'Surat Pertimbangan Teknis Rekomendasi Pengeluaran ', 'Keputusan Kadis PPKH No : 050 Tahun 2020', 0, '1 Hari', 'Surat Pertimbangan Teknis Pengeluaran Ternak Besar'),
(388, 22, 0, 'Konsultasi', 'Keputusan Kadis PMD No : 050.1/DPMD/2019', 0, '45 Menit', 'Saran, masukan, pertimbangan, solusi, dan rekomendasi terhadap hal yang dikonsultasikan'),
(389, 22, 0, 'Penyediaan Data dan Informasi', 'Keputusan Kadis PMD No : 050.1/DPMD/2019', 0, '45 Menit', 'Data dan informasi terkait Pemerintahan Desa, Pembangunan Kawasan Perdesaan, serta Pembangunan dan Pemberdayaan Masyarakat Desa'),
(390, 22, 0, 'Audiensi Instansi Pemerintah, Pemerintah Daerah da', 'Keputusan Kadis PMD No : 050.1/DPMD/2019', 0, '2 Hari', 'Pertemuan audiensi dengan pejabat/pelaksana di Dinas Pemberdayaan Masyarakat dan Desa Prov. Kalbar untuk melakukan pembahasan terkait topik yang disampaikan'),
(391, 22, 0, 'Penyediaan Narasumber', 'Keputusan Kadis PMD No : 050.1/DPMD/2019', 0, '2 Hari', 'Asistensi / bimtek / sosialisasi disertai dengan penunjukan / penugasan narasumber yang akan menyampaikan materi.'),
(392, 23, 0, 'Pertimbangan Teknis Ketinggan Kawasan Keselamatan ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Ketinggan Kawasan Keselamatan Operasional Penerbangan (KKOP)'),
(393, 23, 0, 'Pertimbangan Teknis Pembangunan dan Pengoperasian ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pembangunan dan Pengoperasian Pelabuhan Pengumpan Regional'),
(394, 23, 0, 'Pertimbangan Teknis Pembangunan dan Pengoperasian ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pembangunan dan Pengoperasian Pelabuhan Sungai dan Danau yang melayani Trayek Lintas Kabupaten/Kota dalam Provinsi'),
(395, 23, 0, 'Pertimbangan Teknis Badan Usaha Pelabuhan di Pelab', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Badan Usaha Pelabuhan di Pelabuhan Pengumpan Regional'),
(396, 23, 0, 'Pertimbangan Teknis Pengoperasian Pelabuhan selama', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengoperasian Pelabuhan selama 24 jam untuk Pelabuhan Pengumpan Regional'),
(397, 23, 0, 'Pertimbangan Teknis Pekerjaan Pengerukan Wilayah P', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pekerjaan Pengerukan Wilayah Perairan Pelabuhan Pengumpan Regional'),
(398, 23, 0, 'Pertimbangan Teknis Reklamasi di Wilayah Perairan ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Reklamasi di Wilayah Perairan Pelabuhan Pengumpan Regional'),
(399, 23, 0, 'Pertimbangan Teknis Pengelolaan Terminal untuk kep', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengelolaan Terminal untuk kepentingan Sendiri (TUKS) di dalam DLKR/DLKP  Pelabuhan Pengumpan Regional'),
(400, 23, 0, 'Pertimbangan Teknis Membangun Memindahkan/ Membong', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Membangun Memindahkan/ Membongkar Bangunan atau Instalasi pada Alur Pelayaran Sungai dan Danau Kelas II'),
(401, 23, 0, 'Pertimbangan Teknis Pembangunan/ Pengoperasian/ Pe', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pembangunan/ Pengoperasian/ Pemeliharaan Alur Pelayaran Sungai dan Danau Kelas II'),
(402, 23, 0, 'Pertimbangan Teknis Usaha Angkutan Laut Pelayaran ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Angkutan Laut Pelayaran Rakyat'),
(403, 23, 0, 'Pertimbangan Teknis Pengoperasian Kapal Angkutan S', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengoperasian Kapal Angkutan Sungai dan Danau (Trayek antar Daerah Kabupaten / Kota dalam Daerah Provinsi).'),
(404, 23, 0, 'Pertimbangan Teknis Usaha Bongkar Muat Barang', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Bongkar Muat Barang'),
(405, 23, 0, 'Pertimbangan Teknis Usaha Angkutan Perairan Pelabu', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Angkutan Perairan Pelabuhan'),
(406, 23, 0, 'Pertimbangan Teknis usaha angkutan perairan pelabu', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Angkutan Perairan Pelabuhan'),
(407, 23, 0, 'Pertimbangan Teknis Usaha Penyewaan Peralatan Angk', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Penyewaan Peralatan Angkutan Laut atau Peralatan Jasa Terkait dengan Angkutan Laut.'),
(408, 23, 0, 'Pertimbangan Teknis Usaha Tally Mandiri', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Tally Mandiri'),
(409, 23, 0, 'Pertimbangan Teknis Usaha Depo Peti Kemas', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Usaha Depo Peti Kemas'),
(410, 23, 0, 'Pertimbangan Teknis Pengembangan Pelabuhan untuk P', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengembangan Pelabuhan untuk Pelabuhan Pengumpan Regional'),
(411, 23, 0, 'Pertimbangan Teknis Pengoperasian Kapal Angkutan P', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengoperasian Kapal Angkutan Penyeberangan (Lintasan Penyeberangan antar daerah Kab./ Kota dalam Daerah Provinsi)'),
(412, 23, 0, 'Pertimbangan Teknis Rekomendasi Gubernur Mengenai ', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Rekomendasi Gubernur Mengenai kesesuaian Rencana Lokasi Terminal Khusus Dengan rencana Tata Ruang Wilayah Provinsi'),
(413, 23, 0, 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek d', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '10 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Dalam Trayek dan Angkutan Orang Tidak dalam Trayek.'),
(414, 23, 0, 'Penerbitan Kartu Pengawasan (KP) untuk setiap kend', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 400000, '14 Hari kerja', 'Penerbitan Kartu Pengawasan (KP) untuk setiap kendaraan Angkutan Orang Dalam Trayek dan Angkutan Orang Tidak dalam Trayek'),
(415, 23, 0, 'Permohonan Perpanjangan Izin Penyelenggaraan Angku', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 400000, '14 Hari kerja', 'Permohonan Izin Perpanjangan Izin Penyelenggaraan Angkutan Orang Dalam Trayek dan Angkutan Orang Tidak dalam Trayek'),
(416, 23, 0, 'Izin Penyelenggaraan Angkutan Orang Tidak dalam Tr', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '14 Hari kerja', 'Izin Penyelenggaraan Angkutan Orang Tidak Dalam Trayek'),
(417, 23, 0, 'Penerbitan Kartu Pengawasan (KP) untuk setiap kend', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 1050000, '14 Hari kerja', 'Penerbitan Kartu Pengawasan (KP) untuk setiap kendaraan Izin Penyelenggaraan Angkutan Orang Tidak dalam Trayek'),
(418, 23, 0, 'Permohonan Izin Perpanjangan Penyelenggaraan Angku', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 1050000, '14 Hari kerja', 'Permohonan Izin Perpanjangan Penyelenggaraan Angkutan Orang Tidak dalam Trayek'),
(419, 23, 0, 'Permohonan Informasi Publik', 'Keputusan Kepala Dinas Perhubungan No : 27 Tahun 2020', 0, '30 Menit', 'Pelayanan Permohonan Informasi Publik'),
(420, 25, 0, 'Penyuluhan Perkoperasian', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '1 Hari', 'pelayanan penyuluhan koperasi provinsi'),
(421, 25, 0, 'Pembinaan Organisasi Koperasi', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '1 Tahun', 'Laporan Kegiatan Pembinaan Koperasi'),
(422, 25, 0, 'Penyelenggaraan Perizinan Simpan Pinjam Koperasi', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '7 Hari kerja', 'Surat Izin Koperasi Simpan Pinjam'),
(423, 25, 0, 'Pelayanan Data Koperasi', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '7 Hari kerja', 'Sistem Informasi Data Koperasi'),
(424, 25, 0, 'Pengajuan Bantuan Pemerintah bagi Wirausaha Pemula', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '3 Bulan', 'Bantuan pemerintah dalam bentuk Bansos /hibah'),
(425, 25, 0, 'Pelayanan Data UMKM', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '7 Hari kerja', 'Sistem Informasi Data UMKM'),
(426, 25, 0, 'Pelayanan Konsultasi PLUT', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '7 Hari kerja', 'Rekomendasi/Pertimbangan Teknis'),
(427, 25, 0, 'Pelayanan Keikutsertaan dalam Pameran / Promosi Pr', 'Keputusan Kepala Dinas Koperasi, UKM No : 322/Tahun 2019', 0, '3 Hari kerja', 'Pameran/ Promosi Produk UKM'),
(428, 27, 0, 'Alur Pelayanan', 'Keputusan Kadis PORAPAR No : 065\'/050/DISPORAPAR-A', 0, '10 Menit', 'Berupa Jawaban / Surat'),
(429, 28, 0, 'Layanan Umum', '', 0, '10 Menit', 'Layanan Peminjaman Buku, Pengembalian Buku dan Baca ditempat'),
(430, 28, 0, 'Layanan Keanggotaan', '', 0, '2 Hari kerja', 'Layanan Anggota Perpustakaan'),
(431, 28, 0, 'Layanan Internet/Wifi Gratis', '', 0, '1 Hari kerja', 'Layanan Internet/Wifi gratis'),
(432, 28, 0, 'Layanan Referensi', '', 0, '1 Hari kerja', 'Layanan Referensi : Koran, Tabloid, Majalah, buku - buku Ensiklopedia (Baca ditempat atau fotocopy)'),
(433, 28, 0, 'Layanan Anak', '', 0, '1 Hari kerja', 'Berkunjung dan bercerita bagi siswa PAUD/PG/TK');
INSERT INTO `tb_layanan` (`id_layanan`, `id_satker`, `id_unit`, `n_layanan`, `n_dasar_hukum`, `biaya`, `standar_waktu`, `spesifikasi`) VALUES
(434, 28, 0, 'Layanan Deposit', '', 0, '1 Hari kerja', 'Layanan Deposit : Buku - buku koleksi lokal konten'),
(435, 29, 0, 'Pertimbangan Teknis Surat Izin Kapal Pengangkutan ', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '3 Hari', 'Pertimbangan Surat Izin Kapal Pengangkutan Ikan (SIKPI)'),
(436, 29, 0, 'Pertimbangan Teknis Surat Izin Penangkapan Ikan (S', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '3 Hari', 'Pertimbangan Teknis Surat Izin Penangkapan Ikan (SIPI) (Baru, Perpanjangan, Perubahan, Andon dan Registrasi)'),
(437, 29, 0, 'Pertimbangan Teknis Izin Usaha Perikanan (SIUP)', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '3 Hari', 'Pertimbangan Teknis Izin Usaha Perikanan (SIUP)'),
(438, 29, 0, 'Pertimbangan Teknis Tanda Daftar Kapal Perikanan U', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '3 Hari', 'Pertimbangan Teknis Tanda Daftar Kapal Perikanan Untuk Nelayan'),
(439, 29, 0, 'Pertimbangan Teknis Persetujuan Pengadaan Kapal', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '3 Hari', 'Pertimbangan Teknis Persetujuan Pengadaan Kapal'),
(440, 29, 0, 'Pertimbangan Teknis Surat Izin Pengelolaan Peraira', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '8 Hari', 'Pertimbangan Teknis Surat Izin Pengelolaan Perairan di Wilayah Pesisir dan Pulau-Pulau Kecil (SIPPWP3K)'),
(441, 29, 0, 'Pertimbangan Teknis Surat Izin Lokasi Perairan di ', 'Keputusan Kadis Kelautan dan Perikanan No : 29 Tahun 2020', 0, '8 Hari', 'Pertimbangan Teknis Surat Izin Lokasi Perairan di Wilayah Pesisir dan Pulau-Pulau Kecil'),
(442, 30, 0, 'Standar Pelayanan Konsultasi', 'Keputusan Kadis Pertanian Tanaman Pangan dan Hortikultura No : 27.1 Tahun 2019', 0, '30 Menit', 'Saran, masukan, pertimbangan, solusi, dan/atau rekomendasi terhadap permasalahan yang dikonsultasikan atau konsultasi terkait pertanian.'),
(443, 30, 0, 'Standar Pelayanan Data / Laporan / Informasi', 'Keputusan Kadis Pertanian Tanaman Pangan dan Hortikultura No : 27.1 Tahun 2019', 0, '30 Menit', 'data, laporan, informasi terkait pertanian'),
(444, 30, 0, 'Standar Pelayanan Audiensi Instansi Pemerintah, Pe', 'Keputusan Kadis Pertanian Tanaman Pangan dan Hortikultura No : 27.1 Tahun 2019', 0, '3 Hari', 'Pertemuan audiensi dengan pejabat/pelaksana di Dinas Pertanian Tanaman Pangan dan Hortikultura Provinsi Kalimantan Barat untuk melakukan pembahasan terkait topik yang disampaikan'),
(445, 30, 0, 'Penyediaan Narasumber', 'Keputusan Kadis Pertanian Tanaman Pangan dan Hortikultura No : 27.1 Tahun 2019', 0, '4 Hari', 'Asistensi/bimtek/sosialisasi disertai dengan penunjukan/penugasan narasumber yang akan menyampaikan materi'),
(446, 30, 0, 'Standar Pelayanan Penelitian dan Permagangan', 'Keputusan Kadis Pertanian Tanaman Pangan dan Hortikultura No : 27.1 Tahun 2019', 0, '2 Hari', 'Penelitian mahasiswa untuk tugas akhir; Penelitian mahasiswa untuk permagangan; Permagangan bagi petani/ penyuluh/ mahasiswa/ Pelajar /umum terkait bidang pertanian atau non pertanian'),
(447, 17, 0, 'Penerbitan Rekomendasi Nomor Seri Faktur Angkutan ', '', 0, '10 Hari', 'Surat Rekomendasi Nomor Seri FA-HHBK'),
(448, 17, 0, 'Penerbitan Surat Pertimbangan Teknis Izin Pemungut', '', 0, '18 Hari', 'Surat Pertimbangan Teknis Izin Pemungutan Hasil Hutan Bukan Kayu'),
(449, 17, 0, 'Penerbitan Pertimbangan Teknis Izin Pengumpulan Ha', '', 0, '18 Hari', 'Surat Pertimbangan Teknis Izin Pengumpulan Hasil Hutan Bukan Kayu'),
(450, 17, 0, 'Penerbitan Pertimbangan Teknis/Rekomendasi Penetap', '', 0, '10 Hari', 'Surat Pertimbangan Teknis/Rekomendasi Penetapan Tempat Penimbunan Kayu Antara Dalam Hutan'),
(451, 17, 0, 'Penerbitan Pertimbangan Teknis/Rekomendasi Penetap', '', 0, '10 Hari', 'Surat Pertimbangan Teknis/Rekomendasi Penetapan Tempat Penampungan Kayu  Terdaftar Kayu Bulat/Olahan'),
(452, 32, 0, 'Standar Pelayanan Konsultasi', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '1 Hari kerja', '• Saran, masukan, pertimbangan, solusi, dan rekomendasi terhadap hal yang dikonsultasikan  • Konsultasi terkait Mineral dan Batubara (Izin Pertambangan, Produksi dan Penerimaan Negara Bukan Pajak (PNBP), Lingkungan, Reklamasi dan Pasca Tambang. • Konsultasi terkait Geologi dan Air Tanah (Pemetaan geologi dan air tanah, Konservasi air tanah dan Perizinan Air Tanah) • Konsultasi terkait Ketenagalistrikan (Izin Usaha Jasa Penunjang Tenaga Listrik (IUJPTL), Izin Usaha Penyediaan Tenaga Listrik (IUPTL), Sertifikat Laik Operasi, Daerah Belum Berlistrik, Prosedur Pengaduan Subsidi Listrik Tepat Sasaran) • Konsultasi terkait Energi (Pengembangan EBT, Pengusahaan EBT dan Konservasi EBT)'),
(453, 32, 0, 'Pelayanan Permohonan Data/ Informasi/ Laporan', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '1 Hari kerja', '• Data/laporan/informasi terkait Geologi dan Air Tanah (Pemetaan geologi, Izin Air Tanah, dan Konservasi Air Tanah)  • Data/laporan/informasi terkait Mineral dan Batubara (IUP, Produksi dan Penerimaan Negara Bukan Pajak (Landrent dan Royalti), Pertambangan Tanpa Izin (PETI), Perusahaan yang sudah melakukan reklamasi dan pasca tambang) • Data/laporan/informasi terkait Ketenagalistrikan (Prosedur perizinan, SLO, Format Laporan Berkala IUPTL yang telah diterbitkan, Rasio Elektrifikasi, Daftar Lembaga Inspeksi Teknis yang dapat melakukan uji laik operasi dan/atau menerbitkan Sertifikat Laik Operasi, Subsidi Listrik) • Data/laporan/informasi terkait Energi (Potensi EBT, Permohonan Pembangunan EBT, Gas Rumah Kaca, Audit Energi, Kampaye Hemat Energi, Izin Biofuell)'),
(454, 32, 0, 'Pertimbangan Teknis Izin Pengeboran Air Tanah', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Pengeboran Air Tanah'),
(455, 32, 0, 'Pertimbangan Teknis Izin Pemakaian Air Tanah', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '4 Hari kerja', 'Pertimbangan Teknis Pemakaian Air Tanah'),
(456, 32, 0, 'Pertimbangan Teknis Izin Penggalian Air Tanah', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '4 Hari kerja', '• Pertimbangan Teknis Penggalian Air Tanah'),
(457, 32, 0, 'Pertimbangan Teknis Izin Pengusahaan Air Tanah', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '4 Hari kerja', 'Pertimbangan Teknis Pengusahaann Air Tanah'),
(458, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Eksplo', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Usaha Pertambangan Eksplorasi Komoditas Bukan Logam dan Batuan'),
(459, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Komoditas Bukan Logam dan Batuan'),
(460, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Eksplo', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Usaha Pertambangan Eksplorasi Perubahan'),
(461, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Perubahan'),
(462, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Perpanjangan'),
(463, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Khusus Pengolahan dan Pemurnian MIneral'),
(464, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Khusus Pengolahan Batubara'),
(465, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Khusus Pengolahan Mineral Bukan Logam dan Batuan'),
(466, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Pengangkutan dan Penjualan Batubara'),
(467, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Khusus Pengangkutan dan Penjualan Mineral Logam'),
(468, 32, 0, 'Pertimbangan Teknis Izin Usaha Pertambangan Operas', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', '• Pertimbangan Teknis Izin Usaha Pertambangan Operasi Produksi Khusus Penjualan Mineral Bukan Logam dan Batuan'),
(469, 32, 0, 'Pertimbangan Teknis Izin Prinsip Pengolahan Minera', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Prinsip Pengolahan Mineral Bukan Logam dan Batuan'),
(470, 32, 0, 'Pertimbangan Teknis Izin Prinsip Pengolahan dan Pe', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Prinsip Pengolahan dan Pemurnian Mineral Logam'),
(471, 32, 0, 'Pertimbangan Teknis Izin Prinsip Pengolahan Batuba', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '10 Hari kerja', 'Pertimbangan Teknis Izin Prinsip Pengolahan Batubara'),
(472, 32, 0, 'Rekomendasi Teknis Izin Usaha Penyediaan Tenaga LI', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '14 Hari kerja', 'Rekomendasi Teknis Izin Usaha Penyediaan Tenaga Listrik Untuk Kepentingan Umum'),
(473, 32, 0, 'Rekomendasi Teknis Izin Operasi (IUPTL) Untuk Kepe', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '14 Hari kerja', 'Rekomendasi Teknis Izin Operasi/ IUPTL Untuk Kepentingan Sendiri Kapasitas &gt; 200 kVA'),
(474, 32, 0, 'Rekomendasi Teknis Izin Usaha Jasa Penunjang Tenag', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '7 Hari kerja', 'Rekomendasi Teknis IUJPTL'),
(475, 32, 0, 'Penerbitan Surat Pertimbangan Teknis Penerbitan Se', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '7 Hari kerja', 'SURAT PERTIMBANGAN TEKNIS PENERBITAN SERTIFIKAT LAIK OPERASI (SLO)'),
(476, 32, 0, 'Penomoran Registrasi Sertifikat Laik Operasi (SLO)', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '3 Hari kerja', 'Nomor register  SLO'),
(477, 32, 0, 'Penerbitan Surat Pertimbangan Teknis Penunjukkan L', 'Keputusan Kepala Dinas ESDM No : 43/DESDM/Tahun 2020', 0, '8 Hari kerja', 'Surat Pertimbangan Teknis Penunjukkan Lembaga Inspeksi Teknik (LIT) Tenaga Listrik'),
(478, 33, 0, 'Pelayanan Penerbitan Surat Keterangan Asal (SKA)', 'Keputusan Kepala Dinas Perindag No : 25 Tahun 2020', 25000, '21 Menit', 'Pelayanan Penerbitan Surat Keterangan Asal (SKA)'),
(479, 33, 0, 'Standar  Pelayanan Penerbitan Surat Keterangan Asa', 'Keputusan Kepala Dinas Perindag No : 25 Tahun 2020', 0, '21 Menit', 'Peneerbitan SKA'),
(480, 34, 0, 'Konsultasi/Koordinasi', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '1 Hari kerja', 'Konsultasi/Koordinasi'),
(481, 34, 0, 'Penyediaan Narasumber/Instruktur', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '2 Hari kerja', 'Penyediaan Narasumber/Instruktur'),
(482, 34, 0, 'Audensi Pemerintah atau Lembaga Lain', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '1 Hari kerja', 'Audensi Pemerintah atau Lembaga Lain'),
(483, 34, 0, 'Pengamanan Objek Vital dan Lokasi Kegiatan', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '1 Hari kerja', 'Pengamanan Objek Vital dan Lokasi Kegiatan'),
(484, 34, 0, 'Bantuan Personel Kegiatan', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '1 Hari kerja', 'Bantuan Personel Kegiatan'),
(485, 34, 0, 'Administrasi Penyidik Pegawai Negeri Sipil (PPNS)', 'Keputusan Kasat POLPP No : 53/SATPOL.PP/2020', 0, '1 Hari kerja', 'Administrasi Penyidik Pegawai Negeri Sipil (PPNS)'),
(486, 35, 0, 'Pelayanan Konsultasi', 'Keputusan Kepala BAPPEDA No : 127 Tahun 2020', 0, '5 Hari kerja', 'Informasi mengenai Perencanaan pembangunan'),
(487, 35, 0, 'Data atau laporan', 'Keputusan Kepala BAPPEDA No : 127 Tahun 2020', 0, '5 Hari kerja', 'Dokumen Perencanaan pembangunan'),
(488, 35, 0, 'Penyediaan Nara Sumber', 'Keputusan Kepala BAPPEDA No : 127 Tahun 2020', 0, '1 Minggu', 'Terpenuhinya Pelayanan Nara Sumber khususnya dalam bidang perencaan pembangunan'),
(489, 36, 0, 'Penyediaan Data dan Informasi Keuangan dan Pendapa', '', 0, '10 Hari kerja', 'Berupa data dan infromasi tertulis tentang keuangan dan pendapatan yang menjadi kewenangan BPKPD Prov. Kalbar'),
(490, 36, 0, 'Pelayanan Pencairan Hibah', '', 0, '6 Hari kerja', 'Dokumen Pencairan Dana Hibah'),
(491, 36, 0, 'Asistensi dan Verifikasi Penyusunan Rencana Kerja ', '', 0, '5 Jam', 'Naskah RKA atau RKA Perubahan yang sudah diverifikasi dan siap input sebagai bahan penyusunan Rancangan Peraturan Daerah Provinsi Kalimantan Barat tentang APBD atau APBD Perubahan'),
(492, 36, 0, 'Fasilitasi Penetapan Wajib Pungut Pajak Bahan Baka', '', 0, '14 Hari kerja', 'Keputusan Kepala Badan Pengelolaan Keuangan dan Pendapatan Daerah Provinsi Kalimantan Barat tentang Nilai Jual Kendaraan Bermotor di kalimantan Barat'),
(493, 36, 0, 'Pelayanan Pertanggungjawaban Hibah', '', 0, '1 Bulan', 'Tanda Terima Bukti Laporan Pertanggungjawaban Hibah'),
(494, 38, 0, 'Pemberian Ijin Perceraian', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '2 Minggu', 'SK pemberian Ijin Perceraian'),
(495, 38, 0, 'Pemberian Cuti Bagi Pejabat Eselon I.II.III Selaku', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '2 Minggu', 'Surat Ijin Tidak Masuk Kerja/Cuti'),
(496, 38, 0, 'Penerbitan Kartu Pegawai ', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '3 Minggu', 'Penerbitan Kartu Pegawai'),
(497, 38, 0, 'Pemberian Bantuan Ijin Belajar', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '3 Hari', 'Bantuan Ijin Belajar'),
(498, 38, 0, 'Kenaikan Gaji Berkala Golongan II/d KE Atas', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '2 Minggu', 'SK Kenaikan Gaji Berkala Gol II/D diatas'),
(499, 38, 0, 'Kenaikan Pangkat Golongan IV.a Keatas', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '6 Bulan', 'SK Kenaikan Pangkat IV.a Keatas'),
(500, 38, 0, 'Mutasi PNS', 'Keputusan Kepala BKD No : 71/BKD-A Tahun 2020', 0, '2 Bulan', 'SK Mutasi PNS'),
(501, 39, 0, 'Konsultasi Penyelenggaraan Pelatihan', 'Keputusan Kepala BPSDM No : 065/204/BPSDM-A/2019', 0, '1 Hari kerja', '• Saran, masukan, pertimbangan, solusi, dan rekomendasi terhadap hal yang dikonsultasikan  • Konsultasi terkait Penyelenggaraan Pengembangan Kompetensi Teknis ( Penyelenggaraan, jenis Pengembangan Kompetensi Tenis yang akan dilaksanakan) pada Bidang Pengembangan Kompetensi Teknis  • Konsultasi terkait Penyelenggaraan Pelatihan Manejerial dan Fungsional (Penyelenggaraan, Diklat Kepemimpinan, Latsar CPNS jenis Diklat untuk Jabatan Fungsional yang akan dilaksanakan) pada Bidang Pengembangan Kompetensi Manejerial dan Fungsional • Konsultasi terkait sertifikasi dan pelaksanaan Ujian Kompetensi Jabatan struktural dan Fungsional, evaluasi penyelenggaran Pelatihan pada ( Bidang Sertifikasi Kompetensi dan Pengelolaan Kelembagaan).'),
(502, 39, 0, 'Fasilitasi Peminjaman Sarana Prasarana BPSDM Provi', 'Keputusan Kepala BPSDM No : 065/204/BPSDM-A/2019', 0, '1 Hari kerja', '• Fasilitasi Peminjaman Ruang Kelas Pelatihan • Fasilitasi Peminjaman Aula Kantor • Fasilitasi Peminjaman Meja atau Kursi Kantor • Fasilitasi Peminjaman Asrama Pelatihan • Fasilitasi Peminjaman Pendopo/ Ruang saji'),
(503, 39, 0, 'Penyediaan Narasumber/ Widyaiswara', 'Keputusan Kepala BPSDM No : 065/204/BPSDM-A/2019', 0, '1 Hari kerja', 'Bimtek / sosialisasi disertai dengan penunjukan / penugasan narasumber yang akan menyampaikan materi dan penugasan penyedia  Narasumber / widyaiswara yang akan memberikan materi pada kegiatan pengembangan kompetensi.'),
(504, 39, 0, 'Pelayanan Perpustakaan', 'Keputusan Kepala BPSDM No : 065/204/BPSDM-A/2019', 0, '1 Hari kerja', '1) Baca koleksi bahan bacaan ditempat;  2) Peminjaman buku ; 3) Buku, buku referensi, majalah, buletin, tabloid, jurnal, Laporan Proyek Perubahan, kamus, ensiklopedia, dll.'),
(505, 40, 0, 'Pelayanan Pengusulan Hak Paten Litbangyasa', '', 0, '15 Hari', 'Proposal HKI Litbangyasa'),
(506, 40, 0, 'Surat Izin Penelitian', '', 0, '7 Hari', 'Penerbitan Izin Penelitian'),
(507, 40, 0, 'Penerbitan Jurnal Ilmiah', '', 0, '55 Hari', 'Jurnal Litbang (Borneo Akcaya)'),
(508, 40, 0, 'Lomba Karya Ilmiah (LKI) dan Lomba Karya Perekayas', '', 0, '4 Bulan', 'Lomba Karya Ilimah dan Lomba Karya Perekayasaan'),
(509, 44, 0, 'Pelayanan Tamu Mess Kamar VIP-A', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 185000, '24 Jam', 'Tempat tidur lengkap, AC, TV, Perlengkapan Mandi, Toilet'),
(510, 44, 0, 'Pelayanan Tamu Mess Kamar VIP-B', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 175000, '24 Jam', 'Tempat tidur lengkap, AC, TV, Perlengkapan Mandi, Toilet'),
(511, 44, 0, 'Pelayanan Tamu Mess Kamar VIP-C', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 105000, '24 Jam', 'Tempat tidur lengkap, AC, TV, Perlengkapan Mandi, Toilet'),
(512, 44, 0, 'Pelayanan Tamu Mess Kamar Standart', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 65000, '24 Jam', 'Tempat tidur lengkap, AC'),
(513, 44, 0, 'Pelayanan Sewa Rumah Panjang Anjungan Kalbar TMII ', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 25000, '24 Jam', 'Tempat tidur dan Kipas Angin'),
(514, 44, 0, 'Pelayanan Sewa Gedung Anjungan Kalbar TMII', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 250000, '8 Jam', 'Area Panggung terbuka dan Selasar Rumah Panjang'),
(515, 44, 0, 'Pelayanan Sewa Aula Asrama Mahasiswa Putra Rahadi ', 'Keputusan Kepala Badan Penghubung No : 065/26/TU', 400000, '8 Jam', 'Ruangan Aula Asrama'),
(516, 41, 0, 'Pelayanan Penanganan Darurat Bencana Yang Disebabk', 'Keputusan Kepala BPBD No : 489 Tahun 2020', 0, '3 Hari', 'Laporan penanganan pengaduan'),
(517, 41, 0, 'Logistik', 'Keputusan Kepala BPBD No : 489 Tahun 2020', 0, '1 Hari', 'Bantuan Logistik Korban Pasca Bencana'),
(518, 41, 0, 'Permohonan Pemadaman Karhutla', 'Keputusan Kepala BPBD No : 489 Tahun 2020', 0, '1 Hari', 'Pemadaman Karhutla'),
(519, 43, 0, 'Data/ Informasi / Laporan', '', 0, '2 Jam', 'Data/ Laporan/ Informasi'),
(520, 43, 0, 'Konsultasi Terkait Kelembagaan', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '2 Jam', '• Saran, masukan, pertimbangan, solusi, dan rekomendasi terhadap hal yang dikonsultasikan  • Konsultasi terkait Kelembagaan (Kelembagaan Perangkat Daerah Provinsi, Kabupaten/Kota dan UPT, tata usaha biro, analisis organisasi, kapasitas kelembagaan, evaluasi kelembagaan) • Konsultasi terkait Ketatalaksanaan (standarisasi sistem dan prosedur, pelayanan publik, akuntabilitas kinerja, SOP, tata naskah dinas, pakaian dinas, standarisasi sarana prasarana, standar pelayanan publik, SKM, SPM, inovasi pelayanan publik, pengembangan kinerja, budaya kerja, LAKIP/LKj, Perjanjian Kinerja, SAKIP).  • Konsultasi terkait Analisis Jabatan dan Kepegawaian (analisis jabatan, evaluasi jabatan, formasi, reformasi birokrasi, kepegawaian setda, usulan kebutuhan diklat, usulan jabatan, kenaikan pangkat, pensiun, penataan kebutuhan pegawai, pembinaan dan peningkatan disiplin pegawai, peningkatan kesejahteraan pegawai, pengelolaan sistem informasi manajemen kepegawaian, perpustakaan setda)'),
(521, 43, 0, 'Audensi Instansi Pemerintah, Pemerintah Daerah, Da', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '2 Jam', 'Audensi Instansi Pemerintah, Pemerintah Daerah, dan Lembaga'),
(522, 43, 0, 'Pelayanan Pendaftaran Ormas ', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '1 Bulan', 'Pendaftaran Ormas'),
(523, 43, 0, 'Data/Laporan/Informasi', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '8 ', 'saran dan masukan, pertimbangan, solusi, dan rekomendasi terhadap hal berkaitan dengan data/ laporan/informasi'),
(524, 43, 0, 'audiensi instansi pemerintah, pemerintah daerah, d', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '8 ', 'saran dan masukan, pertimbangan, solusi, dan rekomendasi terhadap audiensi pemerintah daerah dan lembaga'),
(525, 43, 0, 'pendaftaran dan pengelolaan sistem ormas ', 'Keputusan Kepala Badan Kesbangpol No : 47 Tahun 2020', 0, '8 ', 'Pendaftaran Organisasi kemasyarakatan'),
(526, 18, 14, 'Layanan Pelatihan Kepada Masyarakat', '', 0, '1 Bulan', 'Pelatihan'),
(527, 18, 15, 'Layanan Pelatihan Kepada Masyarakat', '', 0, '1 Bulan', 'Pelatihan'),
(528, 8, 0, 'Pelayanan Surat Masuk', 'Keputusan Kepala Biro Umum No : 0210 Tahun 2020', 0, '2 Menit', 'Pengelolaan Surat Menyurat'),
(529, 8, 0, 'Pelayanan Surat Turun', 'Keputusan Kepala Biro Umum No : 0210 Tahun 2020', 0, '5 Menit', 'Pelayanan Surat Turun'),
(530, 8, 0, 'Pelayanan Pengecekan Surat', 'Keputusan Kepala Biro Umum No : 0210 Tahun 2020', 0, '5 Menit', 'Pelayanan Pengecekan Surat'),
(531, 8, 0, 'Pelayanan Penomoran Surat Keluar', 'Keputusan Kepala Biro Umum No : 0210 Tahun 2020', 0, '2 Menit', 'Pelayanan Penomoran Surat Keluar'),
(532, 8, 0, 'Pelayanan Pengecapan Surat', 'Keputusan Kepala Biro Umum No : 0210 Tahun 2020', 0, '1 Menit', 'Pelayanan Pengecapan Surat'),
(533, 30, 24, 'Penerbitan Kompetensi Produsen dan Pengedar Benih ', '', 0, '1 Minggu', 'Sertifikat Kompetensi Produsen dan Pengedar Benih Hortikultura'),
(534, 42, 0, 'Permohonan Informasi PLBN Wilayah Aruk', 'Keputusan Kepala BPPD No : 060.21/BPPD-A/2020', 0, '10 Menit', 'Data/informasi'),
(535, 42, 0, 'Permohonan Informasi PLBN Wilayah Jagoi Babang', 'Keputusan Kepala BPPD No : 060.21/BPPD-A/2020', 0, '10 Menit', 'Data/informasi'),
(536, 42, 0, 'Permohonan Informasi PLBN Sungai Kelik', 'Keputusan Kepala BPPD No : 060.21/BPPD-A/2020', 0, '10 Menit', 'Data/informasi'),
(537, 42, 0, 'Permohonan Informasi PLBN Entikong', 'Keputusan Kepala BPPD No : 060.21/BPPD-A/2020', 0, '10 Menit', 'Data/informasi'),
(538, 42, 0, 'Permohonan Informasi PLBN Badau', 'Keputusan Kepala BPPD No : 060.21/BPPD-A/2020', 0, '10 Menit', 'Data/informasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masukan`
--

CREATE TABLE `tb_masukan` (
  `id_masukan` int(7) NOT NULL,
  `id_responden` int(7) NOT NULL,
  `n_masukan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` int(7) NOT NULL,
  `id_layanan` int(1) NOT NULL,
  `id_satker` int(2) NOT NULL,
  `id_unit` int(2) NOT NULL,
  `id_responden` int(7) NOT NULL,
  `id_pertanyaan` int(1) NOT NULL,
  `id_jawaban` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_responden`
--

CREATE TABLE `tb_responden` (
  `id_responden` int(7) NOT NULL,
  `umur` int(2) NOT NULL,
  `jk` set('LK','PR') DEFAULT NULL,
  `id_pendidikan` int(2) NOT NULL,
  `id_pekerjaan` int(2) NOT NULL,
  `tgl_survey` date NOT NULL DEFAULT current_timestamp(),
  `penilaian_umum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(3) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_unit` int(3) NOT NULL,
  `hak_akses` set('1','2') NOT NULL,
  `status` set('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbm_jawaban`
--
ALTER TABLE `tbm_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- Indexes for table `tbm_pekerjaan`
--
ALTER TABLE `tbm_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `tbm_pendidikan`
--
ALTER TABLE `tbm_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tbm_pertanyaan`
--
ALTER TABLE `tbm_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tbm_satker`
--
ALTER TABLE `tbm_satker`
  ADD PRIMARY KEY (`id_satker`);

--
-- Indexes for table `tbm_unit`
--
ALTER TABLE `tbm_unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD KEY `id_satker` (`id_satker`);

--
-- Indexes for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id_layanan`),
  ADD KEY `id_satker` (`id_satker`,`id_unit`),
  ADD KEY `id_unit` (`id_unit`);

--
-- Indexes for table `tb_masukan`
--
ALTER TABLE `tb_masukan`
  ADD PRIMARY KEY (`id_masukan`),
  ADD KEY `id_responden` (`id_responden`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_layanan` (`id_layanan`,`id_unit`,`id_satker`,`id_responden`,`id_pertanyaan`,`id_jawaban`),
  ADD KEY `id_unit` (`id_unit`),
  ADD KEY `id_satker` (`id_satker`),
  ADD KEY `id_responden` (`id_responden`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD KEY `id_jawaban` (`id_jawaban`);

--
-- Indexes for table `tb_responden`
--
ALTER TABLE `tb_responden`
  ADD PRIMARY KEY (`id_responden`),
  ADD KEY `id_pendidikan` (`id_pendidikan`,`id_pekerjaan`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_unit` (`id_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbm_jawaban`
--
ALTER TABLE `tbm_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbm_pekerjaan`
--
ALTER TABLE `tbm_pekerjaan`
  MODIFY `id_pekerjaan` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbm_pendidikan`
--
ALTER TABLE `tbm_pendidikan`
  MODIFY `id_pendidikan` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbm_pertanyaan`
--
ALTER TABLE `tbm_pertanyaan`
  MODIFY `id_pertanyaan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbm_satker`
--
ALTER TABLE `tbm_satker`
  MODIFY `id_satker` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbm_unit`
--
ALTER TABLE `tbm_unit`
  MODIFY `id_unit` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  MODIFY `id_layanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `tb_masukan`
--
ALTER TABLE `tb_masukan`
  MODIFY `id_masukan` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_responden`
--
ALTER TABLE `tb_responden`
  MODIFY `id_responden` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbm_jawaban`
--
ALTER TABLE `tbm_jawaban`
  ADD CONSTRAINT `tbm_jawaban_ibfk_1` FOREIGN KEY (`id_pertanyaan`) REFERENCES `tbm_pertanyaan` (`id_pertanyaan`);

--
-- Constraints for table `tbm_unit`
--
ALTER TABLE `tbm_unit`
  ADD CONSTRAINT `tbm_unit_ibfk_1` FOREIGN KEY (`id_satker`) REFERENCES `tbm_satker` (`id_satker`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD CONSTRAINT `tb_layanan_ibfk_2` FOREIGN KEY (`id_unit`) REFERENCES `tbm_unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_layanan_ibfk_3` FOREIGN KEY (`id_satker`) REFERENCES `tbm_satker` (`id_satker`);

--
-- Constraints for table `tb_masukan`
--
ALTER TABLE `tb_masukan`
  ADD CONSTRAINT `tb_masukan_ibfk_1` FOREIGN KEY (`id_responden`) REFERENCES `tb_responden` (`id_responden`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD CONSTRAINT `tb_penilaian_ibfk_2` FOREIGN KEY (`id_unit`) REFERENCES `tbm_unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `tb_layanan` (`id_layanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_4` FOREIGN KEY (`id_satker`) REFERENCES `tbm_satker` (`id_satker`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_5` FOREIGN KEY (`id_responden`) REFERENCES `tb_responden` (`id_responden`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_6` FOREIGN KEY (`id_pertanyaan`) REFERENCES `tbm_pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_7` FOREIGN KEY (`id_jawaban`) REFERENCES `tbm_jawaban` (`id_jawaban`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_responden`
--
ALTER TABLE `tb_responden`
  ADD CONSTRAINT `tb_responden_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `tbm_pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `tb_responden_ibfk_2` FOREIGN KEY (`id_pendidikan`) REFERENCES `tbm_pendidikan` (`id_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_unit`) REFERENCES `tbm_unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
