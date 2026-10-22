-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Okt 2026 pada 04.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smk_infokom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_info`
--

CREATE TABLE `academic_info` (
  `id` int(11) NOT NULL,
  `section_key` varchar(60) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `content` text DEFAULT NULL,
  `icon` varchar(60) DEFAULT 'fa-solid fa-book-open',
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `academic_info`
--

INSERT INTO `academic_info` (`id`, `section_key`, `title`, `content`, `icon`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'kurikulum', 'Kurikulum', 'Sekolah menerapkan Kurikulum Merdeka yang berfokus pada penguatan kompetensi keahlian dan karakter siswa.\r\nKurikulum Pembelajaran\r\n\r\nKurikulum pembelajaran di sekolah terdiri dari muatan umum,muatan kejuruan sesuai program keahlian, serta program implementasi tambahan yang mendukung pengembangan kompetensi dan pengalaman siswa di dunia industri.\r\n1. Kelompok Muatan Umum\r\n\r\nMata pelajaran muatan umum wajib dipelajari oleh seluruh siswa dari kelas X hingga kelas XII, terlepas dari program keahlian yang dipilih.\r\nMata Pelajaran\r\n\r\n* Pendidikan Agama dan Budi Pekerti\r\n* Pendidikan Pancasila dan Kewarganegaraan (PPKn)\r\n* Bahasa Indonesia\r\n* Matematika\r\n* Sejarah\r\n* Bahasa Inggris dan Bahasa Asing Lainnya\r\n* Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)\r\n* Seni Budaya\r\n* Projek Ilmu Pengetahuan Alam dan Sosial (IPAS)\r\n\r\n2. Kelompok Muatan Kejuruan\r\nKelompok muatan kejuruan disesuaikan dengan program keahlian masing-masing siswa.Pembelajaran kejuruan mencakup dasar-dasar program keahlian pada kelas X serta pengembangan kompetensi dan konsentrasi keahlian pada kelas XI dan XII.\r\n\r\nRekayasa Perangkat Lunak (RPL)\r\nBerfokus pada pengembangan perangkat lunak, pemrograman, pengelolaan basis data, serta pengembangan aplikasi berbasis web dan perangkat bergerak.\r\n\r\nMata Pelajaran Kejuruan:\r\n\r\n* Dasar-Dasar Teknik Jaringan Komputer dan Telekomunikasi\r\n* Pemrograman Berorientasi Objek (PBO)\r\n* Pemrograman Web dan Perangkat Bergerak\r\n* Basis Data (Database Management)\r\n* Produk Kreatif dan Kewirausahaan (PKK)\r\n\r\nTeknik Komputer dan Jaringan (TKJ)\r\n\r\nBerfokus pada pembangunan dan pengelolaan infrastruktur jaringan, administrasi sistem, perangkat keras, serta keamanan jaringan.\r\n\r\nMata Pelajaran Kejuruan:\r\n\r\n* Dasar-Dasar Teknik Komputer dan Informatika\r\n* Administrasi Infrastruktur Jaringan (AIJ)\r\n* Administrasi Sistem Jaringan (ASJ)\r\n* Teknologi Jaringan Berbasis Luas (WAN)\r\n* Keamanan Jaringan dan Cyber Security\r\n\r\nDesain Komunikasi Visual (DKV) / Multimedia\r\n\r\nBerfokus pada pengembangan kemampuan desain grafis, ilustrasi, animasi, produksi visual, serta pengolahan audio dan video.\r\n\r\nMata Pelajaran Kejuruan:\r\n\r\n* Dasar-Dasar Seni Visual dan Desain\r\n* Desain Grafis, Percetakan, dan Media Digital\r\n* Animasi 2D dan 3D\r\n* Desain Efek Visual dan Ilustrasi\r\n* Teknik Pengolahan Audio dan Video\r\n\r\nProduksi dan Siaran Program Televisi (Broadcasting)\r\n\r\nBerfokus pada proses produksi program penyiaran, jurnalistik, pengoperasian kamera, tata cahaya, tata suara, hingga proses editing dan pascaproduksi.\r\n\r\nMata Pelajaran Kejuruan:\r\n\r\n* Dasar-Dasar Penyiaran dan Jurnalistik Media\r\n* Manajemen Produksi Siaran Televisi\r\n* Tata Kamera, Tata Cahaya, dan Tata Suara\r\n* Editing Video dan Pascaproduksi Siaran\r\n* Penyutradaraan dan Scriptwriting\r\n\r\n3. Program Implementasi Tambahan\r\n\r\nSelain pembelajaran di kelas, siswa juga mengikuti berbagai program yang bertujuan untuk meningkatkan pengalaman, karakter, kreativitas, serta kesiapan menghadapi dunia kerja.\r\nProjek Penguatan Profil Pelajar Pancasila (P5)\r\n\r\nKegiatan kokurikuler yang dirancang untuk mengembangkan karakter, kreativitas, kolaborasi, serta kepedulian siswa melalui berbagai tema dan projek yang relevan.\r\n\r\nPraktik Kerja Lapangan (PKL)\r\n\r\nProgram pembelajaran berbasis industri yang memberikan kesempatan kepada siswa untuk memperoleh **pengalaman kerja secara langsung** di dunia usaha dan dunia industri.\r\n\r\nPKL dilaksanakan sesuai program dan ketentuan sekolah, terutama sebagai bagian dari persiapan siswa sebelum memasuki dunia kerja maupun melanjutkan pendidikan.\r\n\r\nStruktur Singkat\r\nMuatan Umum\r\n→ Pendidikan umum yang dipelajari seluruh siswa\r\n\r\nMuatan Kejuruan\r\n→ Kompetensi khusus sesuai program keahlian:\r\n\r\n* RPL\r\n* TKJ\r\n* DKV / Multimedia\r\n* Broadcasting\r\n\r\nProgram Implementasi Tambahan\r\n→ P5 dan PKL', 'fa-solid fa-book-open', 1, 1, '2026-09-20 08:29:24', '2026-09-27 20:18:43'),
(2, 'kalender', 'Kalender Pendidikan', 'Kalender pendidikan tahun ajaran berjalan belum diisi. Admin dapat memperbaruinya melalui Dashboard Admin > Akademik.\r\nKalender Pendidikan Tahun Ajaran 2026/2027\r\n\r\nKalender pendidikan berikut memuat jadwal utama kegiatan pembelajaran, asesmen, libur semester, serta kegiatan penting selama Tahun Ajaran 2026/2027.\r\n\r\n Semester 1 (Ganjil)\r\n\r\n| Waktu                               | Kegiatan                                                                                              |\r\n| **13 Juli 2026**                    | Hari pertama masuk sekolah dan awal Tahun Ajaran 2026/2027                                            |\r\n| **13–15 Juli 2026**                 | Masa Pengenalan Lingkungan Sekolah (MPLS) bagi siswa baru kelas X                                     |\r\n| **September 2026**                  | Asesmen Nasional (ANBK) dan perkiraan Sumatif Tengah Semester (STS) / Penilaian Tengah Semester (PTS) |\r\n| **Awal Desember 2026**              | Sumatif Akhir Semester (SAS) / Penilaian Akhir Semester (PAS) Ganjil                                  |\r\n| **18 Desember 2026**                | Pembagian Rapor Semester Ganjil                                                                       |\r\n| **21 Desember 2026–2 Januari 2027** | Libur Semester Ganjil                                                                                 |\r\n\r\nSemester 2 (Genap)\r\n\r\n| Waktu                   | Kegiatan                                                                    |\r\n| **4 Januari 2027**      | Hari pertama masuk sekolah Semester Genap                                   |\r\n| **8–12 Februari 2027**  | Perkiraan libur awal Ramadan 1448 H                                         |\r\n| **8–19 Maret 2027**     | Perkiraan libur Hari Raya Idulfitri 1448 H                                  |\r\n| **Februari–Maret 2027** | Ujian Kompetensi Keahlian (UKK) produktif kejuruan bagi siswa kelas XII     |\r\n| **Mei 2027**            | Perkiraan pengumuman kelulusan siswa kelas XII                              |\r\n| **Awal Juni 2027**      | Sumatif Akhir Tahun (SAT) / Penilaian Akhir Tahun (PAT) bagi kelas X dan XI |\r\n| **25 Juni 2027**        | Pembagian Rapor Semester Genap / Kenaikan Kelas                             |\r\n| **28 Juni–Juli 2027**   | Libur Akhir Tahun Pelajaran                                                 \r\nCatatan\r\n\r\nJadwal pelaksanaan ujian, kegiatan pembelajaran, serta agenda internal SMK Infokom Bogor, seperti kunjungan industri, Praktik Kerja Lapangan (PKL), dan kegiatan sekolah lainnya, dapat disesuaikan dengan kebijakan dan kalender kegiatan sekolah.\r\n\r\nKeterangan:\r\nTanggal yang tercantum di atas merupakan jadwal/perkiraan kegiatan dan dapat mengalami perubahan sesuai dengan ketentuan yang berlaku.', 'fa-solid fa-calendar-check', 2, 1, '2026-09-20 08:29:24', '2026-09-27 20:23:16'),
(3, 'pkl', 'Praktik Kerja Lapangan (PKL)', 'Siswa melaksanakan PKL di industri mitra sesuai kompetensi keahlian masing-masing.', 'fa-solid fa-briefcase', 3, 1, '2026-09-20 08:29:24', '2026-09-20 08:29:24'),
(4, 'ekstrakurikuler', 'Ekstrakurikuler', 'Daftar ekstrakurikuler belum diisi. Admin dapat memperbaruinya melalui Dashboard Admin > Akademik.', 'fa-solid fa-people-group', 4, 1, '2026-09-20 08:29:24', '2026-09-20 08:29:24'),
(5, 'kesiswaan', 'Kesiswaan', 'Bidang Kesiswaan mengelola pembinaan karakter, kedisiplinan, OSIS, dan pengembangan minat-bakat siswa untuk mendukung tumbuh kembang peserta didik secara akademik maupun non-akademik.', 'fa-solid fa-user-graduate', 2, 1, '2026-09-22 12:34:40', '2026-09-22 12:34:40'),
(6, 'bk', 'Bimbingan Konseling (BK)', 'Layanan Bimbingan Konseling mendampingi siswa dalam pengembangan pribadi, sosial, belajar, dan karir, termasuk konsultasi akademik dan pengarahan lanjutan studi.', 'fa-solid fa-comments', 6, 1, '2026-09-22 12:34:40', '2026-09-22 12:34:40'),
(7, 'bkk', 'Bursa Kerja Khusus (BKK)', 'BKK SMK INFOKOM BOGOR menjembatani lulusan dengan dunia industri melalui informasi lowongan kerja, rekrutmen bersama mitra perusahaan, pelatihan kesiapan kerja, dan penyaluran alumni.', 'fa-solid fa-handshake', 7, 1, '2026-09-22 12:34:40', '2026-09-22 12:34:40'),
(8, 'luar-negeri', 'Program Luar Negeri', 'Program kerja sama dan pengembangan wawasan internasional bagi siswa dan lulusan, meliputi informasi magang/kerja ke luar negeri serta kelas persiapan bahasa asing bersama mitra terkait.', 'fa-solid fa-earth-asia', 8, 1, '2026-09-22 12:34:40', '2026-09-22 12:34:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `level` enum('Kabupaten/Kota','Provinsi','Nasional','Internasional') DEFAULT 'Kabupaten/Kota',
  `year` year(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `source_url` varchar(500) DEFAULT NULL,
  `source_name` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `image`, `level`, `year`, `description`, `source_url`, `source_name`, `created_at`) VALUES
(2, 'MOBILE LEGEND', 'prestasi/e6bbbae73f94ae97137ae493.jpg', 'Kabupaten/Kota', '2026', 'Alhamdulillah, perjuangan panjang dan latihan keras yang penuh strategi akhirnya membuahkan hasil manis dengan meraih kemenangan membanggakan di turnamen Mobile Legends ini. Gelar juara dan trofi yang kami raih bukan hanya sekadar angka kemenangan, melainkan bukti nyata dari chemistry tim yang kuat, disiplin draft pick, serta komitmen bersama untuk saling mendukung di setiap team fight. Terima kasih kepada seluruh pendukung yang terus memberikan semangat dari awal laga, semoga pencapaian ini menjadi batu loncatan bagi tim kami untuk terus berkembang, mengasah mekanik dan makro permainan, serta konsisten mengukir prestasi gemilang di turnamen-turnamen berikutnya. 🏆🎮 #MobileLegends #EsportsIndonesia #Champions #TeamWork Wins', NULL, NULL, '2026-10-15 14:27:20'),
(3, 'JAPAN KANJI', 'prestasi/be68a53b71479cd079cec7b2.jpg', 'Kabupaten/Kota', '2026', '', NULL, NULL, '2026-10-17 22:03:27'),
(4, 'LOMBA KANJI JUARA 1', 'prestasi/7bf677060dc52b12301dcc71.jpg', 'Kabupaten/Kota', '2025', '', NULL, NULL, '2026-10-17 22:04:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` enum('superadmin','admin') DEFAULT 'admin',
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `full_name`, `photo`, `role`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@smkinfokombogor.sch.id', '$2b$10$TPn0g//uVB/aI0ymmrE/zukWnOAYjtYG/WDbKsA00/zcWOo.gybE6', 'Administrator', 'lainnya/dda474ff90f816d03da07db1.png', 'superadmin', 1, '2026-10-22 08:58:24', '2026-09-19 20:07:37', '2026-10-22 08:58:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agendas`
--

CREATE TABLE `agendas` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT 'Agenda',
  `event_date` date DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'otomatis'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agendas`
--

INSERT INTO `agendas` (`id`, `title`, `description`, `category`, `event_date`, `location`, `is_active`, `created_at`, `status`) VALUES
(1, 'Job Fair Kota Bogor 2025', 'Job Fair Kota Bogor 2025 merupakan kegiatan bursa kerja yang mempertemukan pencari kerja dengan perusahaan yang membuka kesempatan rekrutmen. Kegiatan ini berlangsung pada 15–17 Oktober 2025 pukul 10.00–16.00 WIB. Agenda dapat menjadi referensi bagi siswa dan alumni SMK Infokom Bogor untuk memperoleh informasi dunia kerja dan peluang karier.', 'Agenda', '2025-10-14', 'Plaza Jambu Dua, Lantai 2, Jl. Jenderal Ahmad Yani No. 1, Bantarjati, Kota Bogor', 1, '2026-10-21 10:41:20', 'otomatis'),
(2, 'Informasi Rekrutmen Kerja BKK SMK Infokom', 'Bursa Kerja Khusus (BKK) SMK Infokom Bogor membantu siswa dan alumni memperoleh informasi lowongan pekerjaan, persyaratan rekrutmen, serta prosedur pengiriman lamaran kerja. Informasi lowongan dapat mencakup bidang administrasi, desain grafis, teknologi informasi, dan bidang pekerjaan lainnya sesuai kebutuhan perusahaan.', 'Agenda', '2026-10-14', 'BKK SMK Infokom Bogor', 1, '2026-10-21 10:43:15', 'otomatis'),
(3, 'Pembekalan Karier dan Persiapan Memasuki Dunia Kerja', 'Kegiatan pembekalan karier ditujukan untuk membantu siswa SMK Infokom Bogor mempersiapkan diri memasuki dunia kerja. Materi dapat meliputi pembuatan CV, teknik wawancara kerja, komunikasi profesional, etika kerja, serta pengenalan kebutuhan industri. Kegiatan ini diharapkan membantu siswa meningkatkan kepercayaan diri dan kesiapan menghadapi proses rekrutmen.', 'Agenda', '2026-10-14', 'SMK Infokom Bogor', 1, '2026-10-21 10:43:55', 'otomatis'),
(4, 'Peringatan Hari Sumpah Pemuda 2026', 'SMK Infokom Kota Bogor akan memperingati Hari Sumpah Pemuda pada 28 Oktober 2026 sebagai bentuk penghormatan terhadap semangat perjuangan pemuda Indonesia. Kegiatan ini bertujuan menumbuhkan rasa cinta tanah air, memperkuat persatuan, serta meningkatkan semangat belajar dan kreativitas siswa. Melalui peringatan ini, seluruh siswa diharapkan dapat menerapkan nilai-nilai persatuan dan berkontribusi positif bagi sekolah, masyarakat, dan bangsa.', 'Agenda', '2026-10-28', 'smk infokom kota bogor', 1, '2026-10-21 11:57:44', 'akan_datang'),
(5, 'Pelaksanaan Tes Kemampuan Akademik (TKA) Tahun 2026', 'Tes Kemampuan Akademik (TKA) merupakan kegiatan evaluasi akademik yang bertujuan untuk mengukur kemampuan siswa dalam bidang pembelajaran. Seluruh siswa yang menjadi peserta diharapkan mempersiapkan diri dengan belajar secara rutin, menjaga kesehatan, serta mengikuti arahan dari pihak sekolah. Informasi lebih lanjut mengenai jadwal, tata tertib, dan teknis pelaksanaan TKA akan disampaikan melalui pengumuman resmi SMK Infokom Kota Bogor.', 'Agenda', '2026-10-26', 'smk infokom kota bogor', 1, '2026-10-21 11:58:52', 'akan_datang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'Pengumuman',
  `event_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `file_attachment` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_pinned` tinyint(1) DEFAULT 0,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `image`, `category`, `event_date`, `deadline`, `location`, `file_attachment`, `is_active`, `is_pinned`, `published_at`, `created_at`) VALUES
(2, 'GLADI BERSIH TKA', 'Pelaksanaan Gladi bersih tes kemampuan akademik (TKA)', NULL, 'Pengumuman', NULL, NULL, NULL, NULL, 1, 0, NULL, '2026-10-20 20:31:59'),
(3, 'Pengumuman Pelaksanaan Tes Kemampuan Akademik (TKA)', 'Kepada seluruh siswa yang terdaftar sebagai peserta Tes Kemampuan Akademik (TKA), diharapkan mempersiapkan diri dan mengikuti pelaksanaan tes sesuai jadwal serta ketentuan yang berlaku.\r\nPeserta diminta hadir sebelum ujian dimulai untuk mengikuti pemeriksaan dan pengarahan dari panitia. Selama pelaksanaan, peserta wajib menjaga ketertiban, mengerjakan soal secara mandiri, dan mematuhi seluruh tata tertib ujian.\r\nApabila terdapat kendala teknis atau informasi yang belum dipahami, peserta dapat menghubungi panitia atau guru yang bertugas.\r\nSemoga seluruh peserta dapat mengikuti kegiatan dengan lancar.', NULL, 'Pengumuman', NULL, NULL, NULL, NULL, 1, 0, NULL, '2026-10-22 09:04:40'),
(4, 'Pengumuman Pengumpulan Berkas Praktik Kerja Lapangan (PKL)', 'Diberitahukan kepada siswa yang akan melaksanakan Praktik Kerja Lapangan (PKL) agar melengkapi dan mengumpulkan berkas administrasi sesuai ketentuan sekolah.\r\nBerkas yang diperlukan dapat mencakup formulir data siswa, dokumen persyaratan, surat pengantar, atau dokumen lain sesuai arahan guru pembimbing.\r\nSiswa diharapkan memeriksa kelengkapan berkas sebelum pengumpulan dan memastikan seluruh data yang dicantumkan benar.\r\nApabila terdapat pertanyaan mengenai persyaratan atau batas waktu pengumpulan, siswa dapat menghubungi guru pembimbing PKL atau bagian yang bertanggung jawab.\r\nTerima kasih atas perhatian dan kerja sama seluruh siswa.', NULL, 'Pengumuman', NULL, NULL, NULL, NULL, 1, 0, NULL, '2026-10-22 09:05:37'),
(5, 'Pengumuman Persiapan Uji Kompetensi Keahlian (UKK)', 'Diberitahukan kepada seluruh siswa kelas XII SMK Infokom Bogor bahwa persiapan Uji Kompetensi Keahlian (UKK) perlu dilakukan sesuai arahan guru pembimbing dan ketentuan program keahlian masing-masing.\r\nSiswa diharapkan memeriksa kembali proyek yang akan dipresentasikan, menyiapkan dokumen pendukung, memastikan aplikasi dapat dijalankan, serta memahami kode program dan fungsi setiap fitur.\r\nKhusus siswa Rekayasa Perangkat Lunak, persiapan meliputi pengujian aplikasi, pemeriksaan database, penjelasan alur program, dan latihan menjawab pertanyaan asesor.\r\nSeluruh peserta diharapkan mengikuti arahan pembimbing agar pelaksanaan UKK berjalan tertib dan lancar.', NULL, 'Pengumuman', NULL, NULL, NULL, NULL, 1, 0, NULL, '2026-10-22 09:06:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button2_text` varchar(50) DEFAULT NULL,
  `button2_link` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `image`, `button_text`, `button2_text`, `button2_link`, `button_link`, `is_active`, `sort_order`, `created_at`) VALUES
(2, 'SMK INFOKOM KOTA BOGOR', 'SMK INFORMATIKA &\r\nTELEKOMUNIKASI (INFOKOM) KOTA BOGOR', 'lainnya/fd62d225a63434b3e45f7ef6.png', '', NULL, NULL, '', 1, 0, '2026-09-20 11:25:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bkk_sections`
--

CREATE TABLE `bkk_sections` (
  `id` int(11) NOT NULL,
  `section_key` varchar(60) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `content` text DEFAULT NULL,
  `icon` varchar(60) DEFAULT 'fa-solid fa-briefcase',
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bkk_sections`
--

INSERT INTO `bkk_sections` (`id`, `section_key`, `title`, `content`, `icon`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'tentang', 'Tentang BKK', 'Tentang BKK menjelaskan mengenai keberadaan dan peran Bursa Kerja Khusus di SMK INFOKOM. BKK merupakan bagian dari sekolah yang membantu menghubungkan lulusan dengan dunia kerja dan dunia industri. Melalui BKK, siswa dan alumni dapat memperoleh informasi mengenai lowongan pekerjaan, kebutuhan tenaga kerja, proses rekrutmen, serta berbagai kegiatan yang berkaitan dengan persiapan memasuki dunia kerja.\r\n\r\nBKK SMK INFOKOM juga menjadi sarana untuk membantu siswa mempersiapkan diri sebelum memasuki dunia profesional. Kegiatan yang dapat dilakukan antara lain pemberian informasi karier, pendataan alumni, penyampaian informasi lowongan kerja, serta koordinasi dengan perusahaan atau mitra industri yang membutuhkan tenaga kerja sesuai kompetensi lulusan.', 'fa-solid fa-building-user', 1, 1, '2026-09-22 20:01:44', '2026-09-28 20:57:10'),
(2, 'tujuan', 'Tujuan BKK', 'Tujuan BKK adalah membantu siswa dan lulusan SMK INFOKOM agar memiliki akses yang lebih mudah terhadap informasi dan kesempatan kerja yang sesuai dengan kompetensi mereka. BKK juga bertujuan meningkatkan kesiapan siswa dalam menghadapi proses rekrutmen serta memberikan gambaran mengenai kebutuhan dan tuntutan dunia kerja.\r\n\r\nSelain itu, BKK berperan dalam membangun hubungan yang baik antara sekolah dengan dunia usaha dan dunia industri. Dengan adanya kerja sama tersebut, sekolah dapat memperoleh informasi mengenai kebutuhan tenaga kerja sehingga pembinaan dan persiapan siswa dapat lebih sesuai dengan perkembangan dunia kerja.', 'fa-solid fa-bullseye', 2, 1, '2026-09-22 20:01:44', '2026-09-28 20:57:52'),
(3, 'fungsi', 'Fungsi BKK', 'BKK memiliki fungsi sebagai pusat informasi dan layanan karier bagi siswa tingkat akhir maupun alumni SMK INFOKOM. BKK membantu menyampaikan berbagai informasi terkait lowongan pekerjaan, perusahaan mitra, proses seleksi, jadwal rekrutmen, serta persyaratan yang harus dipenuhi oleh calon pelamar.\r\n\r\nFungsi lainnya adalah membantu siswa dalam mempersiapkan diri menghadapi dunia kerja, seperti memberikan informasi mengenai proses pembuatan lamaran, wawancara kerja, etika di tempat kerja, dan kesiapan kompetensi. BKK juga dapat melakukan pendataan alumni serta membangun komunikasi dengan perusahaan untuk menciptakan peluang kerja bagi lulusan.', 'fa-solid fa-gears', 3, 1, '2026-09-22 20:01:44', '2026-09-28 20:58:14'),
(4, 'layanan', 'Layanan BKK', 'Layanan BKK merupakan berbagai bentuk bantuan yang diberikan kepada siswa dan alumni dalam proses persiapan dan pencarian kerja. Layanan tersebut dapat mencakup penyebaran informasi lowongan pekerjaan, informasi rekrutmen perusahaan, pendataan pencari kerja, serta pemberian informasi mengenai jadwal dan tahapan seleksi.\r\n\r\nBKK juga dapat menyediakan layanan pendampingan karier, informasi persyaratan pekerjaan, serta membantu siswa memahami proses rekrutmen dari tahap pendaftaran hingga seleksi. Dengan layanan tersebut, siswa dan alumni diharapkan dapat memperoleh informasi kerja yang lebih terarah serta mempersiapkan diri secara lebih baik sebelum memasuki dunia profesional.', 'fa-solid fa-handshake', 4, 1, '2026-09-22 20:01:44', '2026-09-28 20:58:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bkk_settings`
--

CREATE TABLE `bkk_settings` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_phone` varchar(50) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `coordinator_name` varchar(150) DEFAULT NULL,
  `coordinator_position` varchar(150) DEFAULT NULL,
  `coordinator_photo` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bkk_settings`
--

INSERT INTO `bkk_settings` (`id`, `description`, `contact_phone`, `contact_email`, `contact_address`, `coordinator_name`, `coordinator_position`, `coordinator_photo`, `updated_at`) VALUES
(1, 'Bursa Kerja Khusus (BKK) SMK INFOKOM merupakan layanan sekolah yang membantu siswa tingkat akhir dan alumni dalam mempersiapkan diri memasuki dunia kerja.', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-28 21:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `extracurriculars`
--

CREATE TABLE `extracurriculars` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(170) NOT NULL,
  `category` varchar(80) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `schedule` varchar(150) DEFAULT NULL,
  `supervisor` varchar(150) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `achievement_note` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `extracurriculars`
--

INSERT INTO `extracurriculars` (`id`, `name`, `slug`, `category`, `photo`, `description`, `schedule`, `supervisor`, `location`, `achievement_note`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'PASKIBRA', 'paskibra', NULL, 'kesiswaan/ekstrakurikuler/13a07874ad35b91e4f3cee20.jpg', '', 'Jumat, 15.30–17.00 WIB', 'Pembina Paskibra SMK INFOKOM', 'Lapangan sekolah', '', 1, 0, '2026-09-27 20:30:28', '2026-10-17 12:16:22'),
(2, 'PMR ( PALANG MERAH REMAJA )', 'pmr-palang-merah-remaja', NULL, 'kesiswaan/ekstrakurikuler/8f5bbcb4a5cb0db6c3f22579.webp', '', 'Sabtu, 08.00–10.00 WIB', 'Pembina PMR SMK INFOKOM', 'Ruang UKS & lingkungan sekolah', '', 1, 0, '2026-09-27 20:32:24', '2026-10-17 21:58:42'),
(3, 'PRAMUKA', 'pramuka', NULL, 'kesiswaan/ekstrakurikuler/fb2b32dfa453c6d140a21c53.jpg', '', 'Sabtu, 14.00–16.00 WIB', 'Pembina Pramuka SMK INFOKOM', 'Lapangan sekolah', '', 1, 0, '2026-09-27 20:35:16', '2026-10-17 12:16:44'),
(4, 'FUTSAL', 'futsal', 'olahraga', 'kesiswaan/ekstrakurikuler/5d212653c2c776ba96f7ebfa.jpg', '', 'Jumat, 13.00–15.00 WIB', NULL, 'Lapangan putsal', '', 1, 0, '2026-10-15 14:47:52', '2026-10-17 12:14:38'),
(5, 'BASKET', 'basket', 'olahraga', 'kesiswaan/ekstrakurikuler/f6b2df7b290eaaeba0d4cba7.jpg', '', 'jumat, 14.00–16.00 WIB', 'Pembina Paskibra SMK INFOKOM', NULL, '', 1, 0, '2026-10-17 12:15:12', '2026-10-17 12:15:36'),
(6, 'JIC ( JAPAN INDONESIA COMUNITY )', 'jic-japan-indonesia-comunity', NULL, 'kesiswaan/ekstrakurikuler/03b7cd1d5bd369a5f238ab0a.jpg', '', 'Sabtu, 10.00–12.00 WIB', NULL, 'Sekolah', '', 1, 0, '2026-10-17 21:56:32', '2026-10-17 21:58:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `image`, `description`, `sort_order`, `created_at`) VALUES
(3, 'LAPANGAN', 'fasilitas/883235e140c85823e5322e05.jpg', '', 0, '2026-09-27 19:45:06'),
(4, 'TOILET', 'fasilitas/63717a2dd3ac529d2a1d8bcf.jpg', '', 0, '2026-09-27 19:55:48'),
(5, 'PERPUSTAKAAN', 'fasilitas/a4025f736e18c9b7c243aa45.jpg', '', 0, '2026-09-27 19:57:21'),
(6, 'LAB (RPL)', 'fasilitas/79e282ef7063f56697a1ece1.jpg', '', 0, '2026-09-27 19:57:38'),
(7, 'GEDUNG BELAKANG', 'fasilitas/6817b3269cc9b50bdee95e6f.jpg', '', 0, '2026-09-27 19:58:03'),
(8, 'ADMINISTRASI', 'fasilitas/df5927d449cf851f330d3019.jpg', '', 0, '2026-09-27 19:58:47'),
(9, 'MUSHOLA', 'fasilitas/5b9c69daf58694d6e3c7d2ef.jpg', '', 0, '2026-09-27 19:59:07'),
(10, 'RUANG GURU', 'fasilitas/b9aef72cb9212c3ecf89ad2b.jpg', '', 0, '2026-09-27 19:59:28'),
(11, 'LAB (TKJ)', 'fasilitas/28e247fa404a4f6b5f970a96.jpg', '', 0, '2026-09-27 19:59:50'),
(12, 'GEDUNG DEPAN', 'fasilitas/485eb5d4730b4150c5dbc49f.jpg', '', 0, '2026-09-27 20:00:17'),
(13, 'TATA USAHA (TU)', 'fasilitas/ae16fded862fa7a2863389e9.jpg', '', 0, '2026-09-27 20:01:02'),
(14, 'LAB (DKV)', 'fasilitas/83bd1c1ea4dac10af104f332.jpg', '', 0, '2026-09-27 20:01:28'),
(15, 'RUANG KELAS', 'fasilitas/af48d13aebd33fd76931ff5d.jpg', '', 0, '2026-09-27 20:01:50'),
(16, 'KANTIN', 'fasilitas/a461f149db2322c094aecc1a.jpg', '', 0, '2026-09-27 20:02:17'),
(17, 'STUDIO (PSPT)', 'fasilitas/159137b63792ca72d89b20cc.jpg', '', 0, '2026-09-27 20:02:50'),
(18, 'RUANG UKS', 'fasilitas/3002fb2ae6d5270777f473d1.jpg', '', 0, '2026-10-15 14:21:06'),
(19, 'RUANG WAKA', 'fasilitas/7a723234ea2eba3a806b8766.jpg', '', 0, '2026-10-20 14:46:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `category_id`, `title`, `image`, `created_at`) VALUES
(1, 1, 'lomba 17 agustus', 'galeri/4005f7c3172308336d5baf63.jpg', '2026-09-22 09:17:55'),
(2, 1, 'upacara  bendera', 'galeri/e52e1efe51c95b42a2a962a3.jpeg', '2026-09-22 09:18:39'),
(3, 1, 'upacara 17 agustus', 'galeri/577100e38dc1494f2791b091.jpg', '2026-09-22 09:19:50'),
(4, NULL, '', 'galeri/b8909d4be87b52f84aefdf99.jpg', '2026-09-22 09:39:14'),
(14, 8, 'ANGELIA CALLISTA', 'galeri/dd44d65165274aa3b7fa2fa4.jpg', '2026-09-29 09:42:44'),
(16, 8, 'SURYA DIFRAJA', 'galeri/00df506cdc82a2e0520daf6d.jpg', '2026-09-29 09:44:04'),
(17, 8, 'AZZAHRA PUJIA', 'galeri/7975c9381ca1348bbc4a8aaa.jpg', '2026-09-29 09:44:43'),
(18, NULL, NULL, 'galeri/de480d0dc5b7f8b86ee6972f.jpg', '2026-09-30 06:39:36'),
(21, 8, 'NAJIB SOFIAN', 'galeri/5dd20ff72b9f7d10cac3156c.jpg', '2026-09-30 11:50:42'),
(23, 8, 'IRFAN RIZQOLLAH', 'galeri/3395d9441075cb99a1f51a11.jpg', '2026-09-30 11:53:07'),
(24, 8, 'ARIFRODHI.T', 'galeri/20d37e63ae14d5389d2d3551.jpg', '2026-09-30 13:14:27'),
(25, NULL, NULL, 'galeri/ed5a79b1e8daa4c924cfac9f.jpg', '2026-10-17 22:11:31'),
(26, NULL, NULL, 'galeri/05938924e9aa227ad8f7bfe6.jpg', '2026-10-17 22:11:39'),
(27, NULL, NULL, 'galeri/de248e641aab4babf5d83a37.jpg', '2026-10-17 22:11:45'),
(28, NULL, NULL, 'galeri/0fd43613183b1e7dbafa7343.jpg', '2026-10-17 22:12:07'),
(29, NULL, NULL, 'galeri/e9d68b6022363ce766ae3bf9.jpg', '2026-10-17 22:18:27'),
(30, NULL, NULL, 'galeri/615bf3fb121999a1724f8909.jpg', '2026-10-17 22:18:33'),
(31, NULL, NULL, 'galeri/2d707bde701290b687656f81.jpg', '2026-10-17 22:18:39'),
(33, 8, 'M NABIHA', 'galeri/38afdfd980635d68676a731c.jpg', '2026-10-17 22:33:05'),
(34, 8, 'THANIA KEMUNING', 'galeri/a61f49fbd0e8aaea53e7508a.jpg', '2026-10-17 22:33:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `slug`) VALUES
(1, 'Kegiatan Sekolah', 'kegiatan-sekolah'),
(2, 'Pembelajaran', 'pembelajaran'),
(3, 'Praktik', 'praktik'),
(4, 'Lomba', 'lomba'),
(5, 'Prestasi', 'prestasi'),
(6, 'Event', 'event'),
(7, 'Ekstrakurikuler', 'ekstrakurikuler'),
(8, 'Program Jepang', 'program-jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `industry_visits`
--

CREATE TABLE `industry_visits` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `participants` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `industry_visits`
--

INSERT INTO `industry_visits` (`id`, `title`, `company`, `location`, `visit_date`, `participants`, `description`, `image`, `is_active`, `created_at`) VALUES
(1, 'KUNJUNGAN INDUSTRI KE JOGJA', NULL, 'JOGJA', '2025-02-21', NULL, '', 'kunjungan/f170279b4a736db81871ec35.jpg', 1, '2026-10-16 11:25:29'),
(2, 'UNIVERSITAS AMIKOM', 'AMIKOM', 'JOGJA', '2025-02-21', NULL, '', 'kunjungan/ccb0d7f6a44165fbd862fd26.jpg', 1, '2026-10-16 11:29:43'),
(3, '', NULL, 'JOGJA', '2025-02-21', NULL, '', 'kunjungan/33212157778248f1262f595f.jpg', 1, '2026-10-17 08:57:40'),
(4, '', NULL, 'Jakarta Selatan', '2026-02-16', NULL, '', 'kunjungan/e01e6d0ad5437b456ba79683.jpg', 1, '2026-10-21 08:49:08'),
(5, '', NULL, 'Jakarta Selatan', '2026-02-16', NULL, '', 'kunjungan/f544b85d3479c2dd3fb0a5a9.jpg', 1, '2026-10-21 11:51:38'),
(6, 'STUDIO TRANS 7', NULL, 'Jakarta Selatan', '2026-02-16', NULL, '', 'kunjungan/a8e1141f3560efc590bd945b.jpg', 1, '2026-10-21 11:52:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jepang_profile`
--

CREATE TABLE `jepang_profile` (
  `id` int(11) NOT NULL,
  `about` text DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `target_participants` text DEFAULT NULL,
  `duration` varchar(150) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `important_info` text DEFAULT NULL,
  `source_url` varchar(500) DEFAULT NULL,
  `source_name` varchar(150) DEFAULT NULL,
  `video_url` text DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jepang_profile`
--

INSERT INTO `jepang_profile` (`id`, `about`, `purpose`, `target_participants`, `duration`, `status`, `important_info`, `source_url`, `source_name`, `video_url`, `updated_at`) VALUES
(1, 'Program Kerja ke Jepang merupakan program persiapan dan pengembangan kompetensi bagi siswa dan lulusan yang memiliki minat untuk memperoleh pengalaman kerja di Jepang. Program ini membekali peserta dengan kemampuan bahasa Jepang, kedisiplinan, keterampilan kerja, serta pemahaman budaya dan lingkungan kerja Jepang.', 'Mempersiapkan peserta agar memiliki kompetensi dan sikap kerja yang sesuai dengan kebutuhan dunia industri.\r\nMeningkatkan kemampuan komunikasi bahasa Jepang.\r\nMemberikan pemahaman mengenai budaya dan etika kerja di Jepang.\r\nMembekali peserta dengan kesiapan administrasi dan proses seleksi kerja.\r\nMembuka peluang pengalaman kerja internasional bagi peserta.', 'Program ditujukan bagi siswa tingkat akhir dan/atau lulusan SMK yang memenuhi persyaratan program serta memiliki minat untuk mengikuti proses persiapan dan seleksi kerja ke Jepang.', 'Disesuaikan dengan program dan ketentuan penyelenggara.', 'Program dan proses pendaftaran disesuaikan dengan informasi serta kerja sama yang sedang berlaku.', NULL, NULL, NULL, 'https://youtu.be/Mu-SRdUvVVk?si=cqC7tPXLpCGOUqKW', '2026-10-18 21:13:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jepang_sections`
--

CREATE TABLE `jepang_sections` (
  `id` int(11) NOT NULL,
  `module` enum('persyaratan','pelatihan_bahasa','pelatihan_kompetensi','budaya_etika','tahapan') NOT NULL,
  `tag` varchar(80) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `icon` varchar(60) DEFAULT 'fa-solid fa-circle-info',
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jepang_sections`
--

INSERT INTO `jepang_sections` (`id`, `module`, `tag`, `title`, `content`, `icon`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'persyaratan', 'Persyaratan Umum', 'Persyaratan Mengikuti Program', 'Persyaratan dapat ditetapkan oleh sekolah dan mitra program. Secara umum peserta perlu:\r\n\r\nBerstatus sebagai siswa kelas akhir atau lulusan SMK sesuai ketentuan program.\r\nMemiliki kondisi fisik dan kesehatan yang memenuhi persyaratan.\r\nMemiliki kedisiplinan dan sikap kerja yang baik.\r\nBersedia mengikuti pembelajaran dan pelatihan bahasa Jepang.\r\nBersedia mengikuti seluruh tahapan seleksi.\r\nMemenuhi persyaratan administrasi dan dokumen yang ditentukan.\r\nMemiliki komitmen untuk mengikuti program sampai selesai.', 'fa-solid fa-circle-info', 0, 1, '2026-09-28 09:39:51', '2026-09-28 09:39:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_vacancies`
--

CREATE TABLE `job_vacancies` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position` varchar(150) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `registration_link` varchar(255) DEFAULT NULL,
  `status` enum('aktif','ditutup') DEFAULT 'aktif',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `job_vacancies`
--

INSERT INTO `job_vacancies` (`id`, `company_id`, `company_name`, `image`, `position`, `program_id`, `location`, `description`, `requirements`, `deadline`, `registration_link`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'PT Mitra Copierindo Mandiri (MCM)', 'lowongan/8bb22385569edecc851d9a1c.jpg', 'Technician', NULL, NULL, '1. PT Mitra Copierindo Mandiri (MCM)\r\nPosisi Technician, kebutuhan 7 laki-laki, dengan jurusan yang sesuai Teknik Komputer dan Jaringan (TKJ).\r\n2. PT Aghanim Multi Industri (Octarine Parfume)\r\nPosisi Production Operator dengan kebutuhan 20 orang. Lowongan terbuka untuk semua jurusan.', '1. Menyiapkan Curriculum Vitae (CV).\r\n2. Mengisi formulir pencari kerja BKK SMK Infokom Bogor\r\n3. Memilih posisi yang sesuai dengan jurusan dan kemampuan.\r\n4. Memenuhi ketentuan jumlah kebutuhan dan kualifikasi yang tercantum pada poster untuk posisi yang dipilih.\r\n5. Mengonfirmasi persyaratan tambahan kepada pihak BKK atau perusahaan terkait.\r\n\r\nCatatan: Persyaratan pendidikan, pengalaman kerja, dan batas usia tidak dicantumkan pada poster.', NULL, NULL, 'aktif', '2026-10-21 08:39:49', '2026-10-21 09:46:36'),
(2, NULL, 'Misono Corp.', 'lowongan/d9d11463df2451ec60a906b0.webp', 'Pengolahan makanan.', NULL, 'Kagoshima, Jepang.', '', '1. Perempuan.\r\n2. Bersedia mengikuti pendidikan bahasa Jepang selama 1 tahun.\r\n3. Memiliki ketertarikan pada bidang pengolahan makanan.\r\n4. Menyiapkan CV dalam bahasa Inggris atau bahasa Jepang.\r\n5. Mengirimkan CV kepada BKK SMK Infokom Kota Bogor sesuai jadwal pendaftaran.\r\n6. Mengikuti proses wawancara melalui Zoom sesuai jadwal yang ditetapkan.', NULL, NULL, 'aktif', '2026-10-21 09:46:13', '2026-10-21 09:46:13'),
(3, NULL, 'Cendol\'in Bogor', 'lowongan/adf15d861345c76ff1fb267a.webp', 'Outlet Crew – Cashier, Cook, Steward', NULL, 'cibinong, Ciomas, dan Cibungbulang', 'Cendol\'in Bogor membuka lowongan kerja untuk posisi Outlet Crew dengan tiga pilihan bidang pekerjaan, yaitu Cashier, Cook, dan Steward.\r\n\r\nPenempatan kerja meliputi wilayah Cibinong, Ciomas, dan Cibungbulang.\r\n\r\nPelamar diharapkan mampu bekerja sama dalam tim, bersikap jujur dan bertanggung jawab, serta memberikan pelayanan yang ramah. Pengalaman kerja di bidang Food and Beverage (F&B) menjadi nilai tambah.\r\n\r\nPelamar dapat membaca informasi dan melakukan pendaftaran melalui tautan yang tercantum pada poster lowongan kerja.\r\n\r\nBatas pendaftaran yang tercantum pada poster adalah 15 Oktober 2025.', '1. Laki-laki.\r\n2. Melaksanakan salat lima waktu.\r\n3. Usia maksimal 35 tahun.\r\n4. Berpengalaman kerja di bidang Food and Beverage (F&B) diutamakan.\r\n5. Berdomisili dekat dengan lokasi penempatan diutamakan.\r\n6. Berpenampilan bersih, rapi, dan ramah.\r\n7. Jujur dan bertanggung jawab.\r\n8. Mampu bekerja dalam tekanan.\r\n9. Mampu bekerja sama dalam tim.', NULL, NULL, 'ditutup', '2026-10-21 10:19:02', '2026-10-21 10:19:02'),
(4, NULL, 'PT Dwi Tunggal Jaya Abadi', 'lowongan/ca4a1e2ce08cb18a84985781.webp', 'Admin (Komputer) & Programmer / Operator Komputer Operasional', NULL, NULL, '', '1. Laki-laki.\r\n2. Untuk posisi Admin (Komputer), menguasai penggunaan komputer.\r\n3. Untuk posisi Admin (Komputer), mampu mengemudikan mobil.\r\n4. Menyiapkan CV untuk disampaikan kepada staff BKK SMK Infokom.\r\n5. Mengonfirmasi persyaratan tambahan kepada pihak BKK.', NULL, NULL, 'ditutup', '2026-10-21 10:21:01', '2026-10-21 10:33:59'),
(6, NULL, 'PT Dwi Tunggal Jaya Abadi', 'lowongan/52e2bef91e6f66aa7d53466b.webp', 'Desain Grafis (Laki-laki / Perempuan)', 3, NULL, '', '1. Laki-laki atau perempuan.\r\n2. Memiliki minat atau keterampilan di bidang desain grafis.\r\n3. Mampu membuat desain flyer dan leaflet.\r\n4. Menyiapkan Curriculum Vitae (CV).\r\n5. Mengirimkan CV kepada staf BKK SMK Infokom Bogor.\r\n6. Mengonfirmasi persyaratan tambahan kepada pihak BKK.', NULL, NULL, 'aktif', '2026-10-21 10:36:15', '2026-10-21 10:36:15'),
(7, NULL, 'Bursa Lowongan Kerja Kota Bogor', 'lowongan/3f1b1844b04ac439ed5104b7.jpg', 'Berbagai Posisi Pekerjaan (Job Fair)', NULL, 'Mall BTM Bogor, Lantai LG, Kota Bogor', 'Bursa Lowongan Kerja Kota Bogor merupakan kegiatan pencarian kerja yang mempertemukan pencari kerja dengan lebih dari 20 perusahaan. Kegiatan ini memberikan kesempatan kepada lulusan SMK Infokom, SMA/SMK sederajat, serta lulusan D3 dan S1 dari semua jurusan untuk mendapatkan informasi dan peluang kerja sesuai kualifikasi perusahaan.\r\nAcara pada poster dijadwalkan berlangsung pada 20–21 November 2024, pukul 10.00–15.00 WIB, di Mall BTM Bogor, Lantai LG. Pendaftaran diinformasikan gratis.', '1. Pendidikan minimal SMA/SMK sederajat.\r\n2. Lulusan SMK Infokom dapat mengikuti sesuai kualifikasi lowongan.\r\n3. Lulusan D3 dan S1 dari semua jurusan juga dapat mengikuti.\r\n4. Usia tidak dicantumkan pada poster.\r\n5. Pengalaman kerja mengikuti persyaratan masing-masing perusahaan.\r\n6. Menyiapkan CV atau daftar riwayat hidup.\r\n7. Menyiapkan ijazah atau surat keterangan lulus.\r\n8. Membawa dokumen pendukung sesuai persyaratan perusahaan.', NULL, NULL, 'aktif', '2026-10-21 12:03:48', '2026-10-21 12:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(220) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `excerpt` varchar(300) DEFAULT NULL,
  `content` text NOT NULL,
  `source_url` varchar(500) DEFAULT NULL,
  `source_name` varchar(150) DEFAULT NULL,
  `status` enum('draft','published') DEFAULT 'draft',
  `views` int(11) DEFAULT 0,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `category_id`, `admin_id`, `title`, `slug`, `thumbnail`, `excerpt`, `content`, `source_url`, `source_name`, `status`, `views`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Kegiatan Pengabdian kepada Masyarakat melalui Pelatihan Informatika di SMK Infokom Bogor', 'kegiatan-pengabdian-kepada-masyarakat-melalui-pelatihan-informatika-di-smk-infokom-bogor-443c7', 'berita/ba1b85c9c19d5f4ece4137cf.jpg', 'Kegiatan pengabdian kepada masyarakat yang dilaksanakan di SMK Infokom Bogor. Kegiatan ini berupa pelatihan informatika yang melibatkan mahasiswa dan siswa dalam proses belajar bersama, meningkatkan keterampilan teknologi, serta mempererat kerja sama di bidang pendidikan.', 'SMK Infokom Bogor melaksanakan kegiatan pengabdian kepada masyarakat berupa pelatihan informatika. Kegiatan ini diikuti oleh siswa dan mahasiswa yang bersama-sama belajar dan mempraktikkan keterampilan teknologi. Melalui kegiatan ini, siswa diharapkan dapat meningkatkan pengetahuan, kreativitas, dan kemampuan di bidang informatika.', 'https://share.google/hCdlOJbqT8HmTfIKw', NULL, 'published', 15, '2026-09-22 04:34:49', '2026-09-22 09:34:49', '2026-10-19 08:32:11'),
(2, 1, 1, 'Gelar Karya dan Gelar Budaya: Wujud Kreativitas dan Pelestarian Budaya', 'gelar-karya-dan-gelar-budaya-wujud-kreativitas-dan-pelestarian-budaya-65b27', 'berita/5a5805f86297fe1132909a8b.jpg', 'Gelar Karya Gelar Budaya Vol. 2 SMK INFOKOM Kota Bogor menjadi wadah bagi siswa untuk mengembangkan kreativitas, menunjukkan potensi diri, meningkatkan kepercayaan diri, serta menumbuhkan kecintaan terhadap budaya Indonesia. Kegiatan ini mendukung pembentukan karakter, kerja sama, dan semangat berka', 'SMK INFOKOM Kota Bogor menghadirkan kegiatan Gelar Karya Gelar Budaya Vol. 2 sebagai wadah untuk mengekspresikan kreativitas, mengembangkan potensi, dan menumbuhkan apresiasi terhadap kebudayaan Indonesia.\r\n\r\nKegiatan ini menjadi kesempatan bagi peserta didik untuk menunjukkan kreativitas serta mengembangkan kemampuan di luar kegiatan pembelajaran di kelas. Melalui kegiatan gelar karya dan gelar budaya, siswa dapat memperoleh pengalaman dalam mengekspresikan ide, membangun rasa percaya diri, meningkatkan kerja sama, serta menghargai keberagaman budaya.\r\n\r\nGelar Karya Gelar Budaya juga mencerminkan pentingnya pendidikan yang menggabungkan pengetahuan, keterampilan, kreativitas, dan pembentukan karakter. Dengan memberikan ruang bagi siswa untuk berkarya, sekolah mendorong peserta didik agar lebih aktif, inovatif, dan berani menunjukkan potensi diri.\r\n\r\nMelalui penyelenggaraan kegiatan ini, diharapkan semangat berkarya dan kecintaan terhadap budaya Indonesia terus tumbuh di kalangan generasi muda. Kegiatan tersebut sekaligus menjadi bagian dari upaya membangun lingkungan pendidikan yang kreatif, inspiratif, dan berkarakter.', NULL, NULL, 'published', 14, '2026-09-22 04:40:46', '2026-09-22 09:40:24', '2026-10-19 08:32:15'),
(3, 1, 1, 'Peringatan Maulid Nabi Muhammad SAW', 'peringatan-maulid-nabi-muhammad-saw-27c88', 'berita/e1a494ed58fb4d5891553c70.jpg', 'SMK INFOKOM Bogor menyelenggarakan Peringatan Maulid Nabi Muhammad SAW pada Kamis, 27 Agustus 2026 dengan tema “Menjadikan Rasulullah SAW sebagai Teladan Utama dalam Etika di Lingkungan Sekolah dan Bermasyarakat\".', 'SMK INFOKOM Bogor akan menyelenggarakan kegiatan Peringatan Maulid Nabi Muhammad SAW pada Kamis, 27 Agustus 2026, bertepatan dengan 14 Rabi’ul Awal 1448 H.\r\n\r\nKegiatan ini mengusung tema “Menjadikan Rasulullah SAW sebagai Teladan Utama dalam Etika di Lingkungan Sekolah dan Bermasyarakat.” Tema tersebut menjadi pengingat bagi seluruh warga sekolah untuk menjadikan akhlak dan keteladanan Rasulullah SAW sebagai pedoman dalam kehidupan sehari-hari, khususnya dalam membangun etika yang baik di lingkungan sekolah maupun masyarakat.\r\n\r\nDalam poster kegiatan, acara menghadirkan Ust. Arian Faqih sebagai pengisi kajian. Kegiatan ini menjadi bagian dari upaya SMK INFOKOM Bogor dalam menanamkan nilai-nilai keagamaan, membentuk karakter peserta didik, serta meningkatkan sikap saling menghormati dan berakhlak mulia.', 'https://www.instagram.com/p/DcciRUJoev0/?stkn=MWF1OWs2dzhxNzAwMA==', NULL, 'published', 24, '2026-09-28 15:50:10', '2026-09-28 20:50:10', '2026-10-18 17:47:28'),
(4, 1, 1, 'SMK INFOKOM Bogor Memperingati Hari Batik Nasional 2026', 'smk-infokom-bogor-memperingati-hari-batik-nasional-2026-67d8c', 'berita/e3caa6ec62f460fd62efaab8.jpg', 'Keluarga besar SMK INFOKOM Kota Bogor mengucapkan Selamat Hari Batik Nasional yang diperingati pada 2 Oktober 2026. Mari lestarikan batik sebagai warisan budaya Indonesia dengan mengenakannya secara bangga serta menjaga nilai seni dan tradisi bangsa untuk generasi mendatang.', 'Bogor, 2 Oktober 2026 — Keluarga besar SMK INFOKOM Kota Bogor turut memperingati Hari Batik Nasional yang jatuh setiap tanggal 2 Oktober. Peringatan ini menjadi momentum untuk meningkatkan rasa cinta terhadap budaya Indonesia sekaligus menjaga kelestarian batik sebagai salah satu warisan budaya bangsa.\r\n\r\nDengan mengusung tema “Lestarikan Warisan, Kenakan dengan Bangga”, SMK INFOKOM Bogor mengajak seluruh warga sekolah untuk menghargai keindahan, filosofi, dan nilai budaya yang terkandung dalam setiap motif batik Indonesia.\r\n\r\nBatik bukan sekadar kain bermotif, melainkan bagian dari identitas dan kekayaan budaya bangsa yang diwariskan dari generasi ke generasi. Keberagaman motif batik dari berbagai daerah mencerminkan kreativitas, tradisi, serta nilai-nilai luhur masyarakat Indonesia.\r\n\r\nMelalui peringatan Hari Batik Nasional ini, diharapkan para siswa dapat semakin mengenal, mencintai, dan turut melestarikan budaya Indonesia di tengah perkembangan teknologi dan modernisasi. Generasi muda memiliki peran penting dalam menjaga warisan budaya agar tetap dikenal dan dibanggakan hingga masa mendatang.\r\nSelamat Hari Batik Nasional, 2 Oktober 2026!\r\n\r\nMari lestarikan warisan budaya Indonesia dan kenakan batik dengan bangga sebagai wujud cinta terhadap bangsa dan negara.\r\n\r\nSMK INFOKOM Kota Bogor — Berkarakter, Berbudaya, dan Unggul dalam Teknologi.', 'https://www.instagram.com/p/Dd-M82RSStm/?dlrf=eDIwbm5yOGRuYWVy', NULL, 'published', 5, '2026-10-16 08:01:55', '2026-10-16 13:01:55', '2026-10-17 14:59:09'),
(5, 3, 1, 'SMK INFOKOM Kota Bogor Sosialisasikan SPMB Tahun Ajaran 2026/2027', 'smk-infokom-kota-bogor-sosialisasikan-spmb-tahun-ajaran-2026-2027-e3cff', 'berita/89153cee759b4ac07ecca7c2.jpg', 'SMK INFOKOM Kota Bogor menyediakan empat program keahlian dalam SPMB Tahun Ajaran 2026/2027, yaitu TKJ, RPL, DKV, dan PSPT. Poster penerimaan mencantumkan tiga gelombang pendaftaran dengan penawaran bonus berbeda, mulai dari laptop hingga seragam. Informasi lebih lanjut tersedia melalui kontak resmi', '**Bogor** — SMK INFOKOM Kota Bogor, di bawah naungan Yayasan Telekomunikasi Nasional dan berstatus terakreditasi A, menghadirkan informasi Sistem Penerimaan Murid Baru (SPMB) untuk Tahun Ajaran 2026/2027. Informasi ini ditujukan kepada calon murid yang ingin melanjutkan pendidikan di bidang teknologi informasi, desain, dan industri kreatif.\r\n\r\nSMK INFOKOM Kota Bogor menawarkan empat program keahlian yang terbagi dalam dua bidang. Bidang Teknologi Informasi mencakup Teknik Komputer dan Jaringan (TKJ) serta Rekayasa Perangkat Lunak (RPL). Sementara itu, bidang Seni dan Ekonomi Kreatif mencakup Desain Komunikasi Visual (DKV) serta Produksi dan Siaran Program Televisi (PSPT).\r\n\r\nBerdasarkan poster penerimaan murid baru, pendaftaran dibagi menjadi tiga gelombang. Gelombang pertama berlangsung pada 15 Desember 2025 hingga 30 April 2026 dengan bonus satu unit laptop. Gelombang kedua berlangsung pada 1 Mei hingga 30 Juni 2026 dengan bonus pembebasan SPP selama tiga bulan. Adapun gelombang ketiga berlangsung pada 1 Juli hingga 30 Agustus 2026 dengan bonus seragam berupa jas almamater, seragam olahraga, dan seragam jurusan.\r\n\r\nCalon murid dan orang tua dapat memperoleh informasi lebih lanjut melalui nomor telepon atau WhatsApp 0878-7307-1400, Instagram @smk.infokom_official, kanal YouTube SMK INFOKOM Bogor, serta situs web www.smkinfokom-bogor.sch.id.\r\n\r\nLayanan informasi pendaftaran yang tercantum pada poster dijadwalkan berlangsung Senin hingga Sabtu, pukul 08.00–15.00 WIB, di SMK INFOKOM Kota Bogor yang beralamat di Jalan Letjen Ibrahim Adjie No. 178, Kota Bogor.\r\n\r\nMelalui informasi SPMB ini, calon murid diharapkan dapat mengenal pilihan program keahlian yang tersedia dan menentukan bidang pendidikan sesuai minat serta rencana masa depan mereka.', 'https://www.instagram.com/p/DYqs_11E_y-/?srtk=MTJlZnczbXczYWlqeA==', NULL, 'published', 5, '2026-10-17 03:41:10', '2026-10-17 08:41:10', '2026-10-21 20:43:53'),
(6, 1, 1, 'Peringatan Hari Kesaktian Pancasila 1 Oktober 2026 di SMK Infokom Kota Bogor', 'peringatan-hari-kesaktian-pancasila-1-oktober-2026-di-smk-infokom-kota-bogor-f2bb1', 'berita/df0681c0975df1cebb767fe7.jpg', 'SMK Infokom Kota Bogor memperingati Hari Kesaktian Pancasila pada 1 Oktober 2026 sebagai bentuk penghormatan terhadap nilai-nilai Pancasila serta penguatan semangat persatuan dan cinta tanah air di lingkungan sekolah.', 'Dalam rangka memperingati Hari Kesaktian Pancasila yang jatuh pada tanggal 1 Oktober 2026, SMK Infokom Kota Bogor mengajak seluruh warga sekolah untuk terus mengamalkan nilai-nilai Pancasila dalam kehidupan sehari-hari.\r\n\r\nPeringatan Hari Kesaktian Pancasila menjadi momentum penting untuk mengenang sejarah perjuangan bangsa Indonesia sekaligus memperkuat semangat persatuan, kesatuan, dan cinta tanah air. Nilai-nilai Pancasila diharapkan dapat menjadi pedoman bagi seluruh siswa dalam bersikap, belajar, dan berinteraksi di lingkungan sekolah maupun masyarakat.\r\n\r\nMelalui peringatan ini, siswa diharapkan semakin memahami pentingnya menjaga kerukunan, menghargai perbedaan, serta menerapkan nilai-nilai Pancasila dalam kehidupan sehari-hari.\r\n\r\nSMK Infokom Kota Bogor berkomitmen untuk terus menanamkan karakter positif kepada peserta didik agar menjadi generasi muda yang berintegritas, bertanggung jawab, dan memiliki semangat kebangsaan.\r\n\r\nSelamat Hari Kesaktian Pancasila, 1 Oktober 2026! Mari kita jaga persatuan dan terus mengamalkan nilai-nilai Pancasila demi Indonesia yang lebih baik.', NULL, NULL, 'published', 2, '2026-10-21 06:46:30', '2026-10-21 11:46:30', '2026-10-21 21:07:54'),
(7, 3, 1, 'SMK Infokom Kota Bogor Gelar Pra-MPLS dan MPLS Ramah Tahun Ajaran 2026/2027', 'smk-infokom-kota-bogor-gelar-pra-mpls-dan-mpls-ramah-tahun-ajaran-2026-2027-f2c79', 'berita/7eba66dc7367baa02e6dd1f2.jpg', 'SMK Infokom Kota Bogor menginformasikan jadwal Pra-MPLS dan MPLS Ramah pada 13–17 Juli 2026 bagi peserta didik baru, dengan kegiatan tatap muka dan pertemuan daring bersama orang tua siswa.', 'SMK Infokom Kota Bogor menyelenggarakan rangkaian kegiatan Pra-Masa Pengenalan Lingkungan Sekolah (Pra-MPLS) dan MPLS Ramah pada bulan Juli 2026 sebagai bagian dari penyambutan peserta didik baru tahun ajaran 2026/2027.\r\n\r\nBerdasarkan informasi yang disampaikan melalui poster resmi sekolah, kegiatan Pra-MPLS dilaksanakan pada Senin, 13 Juli 2026, dengan jadwal sebagai berikut:\r\n\r\nPukul 09.00–11.30 WIB: Pra-MPLS untuk siswa secara tatap muka.\r\n\r\nPukul 13.00 WIB hingga selesai: Pertemuan melalui Zoom Meeting untuk orang tua siswa. Informasi tautan Zoom akan disampaikan kemudian.\r\n\r\nSelanjutnya, kegiatan MPLS Ramah bagi peserta didik baru dijadwalkan berlangsung pada Selasa hingga Jumat, 14–17 Juli 2026.\r\n\r\nKegiatan MPLS Ramah bertujuan membantu siswa baru mengenal lingkungan sekolah, memahami tata tertib, serta membangun hubungan yang positif dengan guru, tenaga kependidikan, dan teman-teman baru.\r\n\r\nMelalui kegiatan ini, diharapkan peserta didik baru dapat beradaptasi dengan lingkungan sekolah secara nyaman, aman, dan menyenangkan sehingga siap mengikuti proses pembelajaran.\r\n\r\nSMK Infokom Kota Bogor berharap seluruh peserta didik baru dan orang tua dapat memperhatikan informasi yang disampaikan serta mengikuti kegiatan sesuai jadwal yang telah ditentukan.\r\n\r\nMari sambut tahun ajaran baru dengan semangat belajar, sikap positif, dan lingkungan sekolah yang ramah bagi semua.', NULL, NULL, 'published', 4, '2026-10-21 06:47:40', '2026-10-21 11:47:40', '2026-10-21 21:12:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `slug`) VALUES
(1, 'Kegiatan Sekolah', 'kegiatan-sekolah'),
(2, 'Prestasi', 'prestasi'),
(3, 'Pengumuman', 'pengumuman'),
(4, 'Akademik', 'akademik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_gallery`
--

CREATE TABLE `news_gallery` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `organization_structure`
--

CREATE TABLE `organization_structure` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `organization_structure`
--

INSERT INTO `organization_structure` (`id`, `name`, `position`, `group_name`, `photo`) VALUES
(1, 'Ir. Hj. Liliek Rahmaningsih, M.MPd', 'kepala sekolah', 'Pimpinan', 'lainnya/4433b0501e16ddeafe9d9f91.jpg'),
(2, 'Dea Rijalul Fikri, S.Kom.,Gr.', 'Wakil Kepala Sekolah Bidang Kesiswaan', 'Kesiswaan & Kurikulum', 'lainnya/a6c1d158c451823e29cc86f7.jpg'),
(4, 'R. Radiani Srirestuti Dewi, SS.,Gr.', 'Wakil Kepala Sekolah Bidang Hubungan Industri dan Masyarakat', 'Bidang Sarana dan Prasarana,PSDM,HUBINMAS', 'lainnya/f4067d61e9d63eeea70ca196.jpg'),
(5, 'Mila Yaelasari, M.Pd.', 'Wakil Kepala Sekolah Bidang Kurikulum', 'Kesiswaan & Kurikulum', 'lainnya/8fea01e0c2f5d05e053172bd.jpg'),
(6, 'Heny Handayani, S.Pd.', 'Wakil Kepala Sekolah Bidang Pengembangan Sumber Daya Manusia', 'Bidang Sarana dan Prasarana,PSDM,HUBINMAS', 'lainnya/07ea002ee70d3235a07748e2.jpg'),
(7, 'Agus Tiyono, M.Pd.', 'Wakil Kepala Sekolah Bidang Sarana dan Prasarana', 'Bidang Sarana dan Prasarana,PSDM,HUBINMAS', 'lainnya/5a56c40d2fcb0e9c2a5330fd.jpg'),
(8, 'Aditya Nugraha, ST.', 'Ketua Manajemen Mutu Kepala & Program Keahlian Jurusan TKJ', 'program keahlian (jurusan)', 'lainnya/0f9ea84f5834372a4758a582.jpg'),
(9, 'Cahyadi Rozi, ST.', 'Kepala Tata Usaha', 'Kepala Tata Usaha,Kepala Bendahara & ⁠Kepala Perpustakaan', 'lainnya/dd6f395c14024f82e2bac04f.jpg'),
(10, 'Drs. Puji Marhaen Waluyo', '⁠Kepala Perpustakaan', 'Kepala Tata Usaha,Kepala Bendahara & ⁠Kepala Perpustakaan', 'lainnya/e9835ad811cb8fec7b1dee7c.jpg'),
(11, 'Putri Riandini, S.Hut., M.Pd.,Gr.', 'Kepala Bendahara', 'Kepala Tata Usaha,Kepala Bendahara & ⁠Kepala Perpustakaan', 'lainnya/e46c79532ef249153586bcce.jpg'),
(12, 'Muhammad Ibnu Arif, S.IKom.', 'Kepala Program Keahlian DKV', 'program keahlian (jurusan)', 'lainnya/ae525031c0b470c40e5ce03b.jpg'),
(13, 'Ridwan Hala, S.Kom.,Gr.', 'Kepala Program Keahlian RPL', 'program keahlian (jurusan)', 'lainnya/ebe7fb59e36c7354be120894.jpg'),
(14, '⁠Erli Suherli, A.Md.Kom.', 'Kepala Program Keahlian PSPT', 'program keahlian (jurusan)', 'lainnya/ec068798e67da52fdbfc4b94.jpg'),
(15, 'Ahmad Hotib, S.Pd.I', 'pembina osis', 'Pembina OSIS', 'lainnya/5ff5f8ae69beb6dfe1c67695.jpg'),
(16, 'Abdul Azis, M.Pd.', 'pembina osis', 'Pembina OSIS', 'lainnya/2c5d2b12624b04297a369bb1.jpg'),
(17, 'Vera Yuni Astuti, SP., M.IKom.,Gr.', 'Kurikulum', '⁠Staf Kurikulum', 'lainnya/9afb5955fb6e861ca249cf9d.jpg'),
(18, 'M. Fauzan Arifin, S.IKom.,Gr.', 'Kurikulum', '⁠Staf Kurikulum', 'lainnya/006a71a5827005804abadc0d.jpg'),
(19, 'Dian Hardianti, S.Kom.,Gr.', 'BK', 'Bimbingan & Konseling', 'lainnya/9141b4c36bf686e67622d72d.jpg'),
(20, 'Dra. Popon Puspitasari', 'BK', 'Bimbingan & Konseling', 'lainnya/9b4b551e5874d9058c0121e5.jpg'),
(21, 'Richo Santana, S.Kom.', 'BK', 'Bimbingan & Konseling', 'lainnya/2ba634163380f753210c032a.jpg'),
(22, 'Yeni Yuliawati, S.Pd.,Gr.', '⁠Staf Teller (Bendahara)', '⁠Staf Teller (Bendahara)', 'lainnya/5f68e4e5abc1b1df58317c78.jpg'),
(23, 'Rita Widyastuti', 'Staf Teller (Bendahara)', '⁠Staf Teller (Bendahara)', 'lainnya/c53911584fe88acc9e9fe9f2.jpg'),
(24, 'Eva Farida Rahayu, S.Pd.,Gr.', '⁠Staf Teller (Bendahara)', '⁠Staf Teller (Bendahara)', 'lainnya/ecbe04db20e9d06970a360d6.jpg'),
(25, 'Jayadi, S.Pd.,Gr.', 'Staf Tata Usaha', 'Staf Tata Usaha', 'lainnya/dc565ce11cf9d38fd1fa798f.jpg'),
(26, 'Yadi Setiadi, S.Sos.,Gr.', 'Staf Tata Usaha', 'Staf Tata Usaha', 'lainnya/f56fb5acc01aac243a6a4831.jpg'),
(27, 'Siti Nuraeni', 'Staf Tata Usaha', 'Staf Tata Usaha', 'lainnya/b2106e5e38083f0cf31c082f.jpg'),
(28, 'Reza Prafitriansyah, S.Kom.,Gr.', '⁠Staf Perpustakaan', '⁠Staf Perpustakaan', 'lainnya/c33bbec02a382c4ac7e2b6a1.jpg'),
(29, 'Dra. Diana Octaria', 'guru', 'bidang lainnya', 'lainnya/a479b0c47445ee5888408188.jpg'),
(30, 'Erwin Hasiholan Gultom, S.Kom.', 'guru', 'bidang lainnya', 'lainnya/2d66025b345961de60e45952.jpg'),
(31, 'Dara Purwanita, S.Pd.,Gr.', 'guru', 'bidang lainnya', 'lainnya/c7c8cbae3fed5a55bf7b36e1.png'),
(32, 'Widyatama Nuranisa, SM.', 'guru', 'bidang lainnya', 'lainnya/c5a44d4c0e89c373ef5752f1.png'),
(33, 'Nabila Ahmadia Pratama, S.Pd.', 'guru', 'bidang lainnya', 'lainnya/f1693a53c6c100083946cebb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partner_companies`
--

CREATE TABLE `partner_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `field` varchar(150) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_partner` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `partner_companies`
--

INSERT INTO `partner_companies` (`id`, `name`, `logo`, `banner_image`, `field`, `location`, `description`, `website`, `is_partner`, `created_at`, `updated_at`) VALUES
(3, 'PT Bonet Utama', 'bkk/perusahaan/9402a723ca7bf9dd7f471041.jpg', NULL, 'Layanan TIK, internet dan jaringan, pengembangan website/aplikasi, pelatihan IT', 'Cloud9, Plaza Indah Bogor Blok B2, Tanah Sareal, Kota Bogor, Jawa Barat 16164', 'BONET menyediakan layanan teknologi informasi dan komunikasi, termasuk infrastruktur jaringan, pengembangan web dan aplikasi, pelatihan, serta sertifikasi keahlian.', 'https://bonet.co.id', 1, '2026-10-17 21:21:15', '2026-10-17 21:21:15'),
(4, 'MSV Studio', 'bkk/perusahaan/0307535aa737a3f3e693f167.jpg', NULL, 'Animasi, produksi film, dan post-production', 'Grha Universitas Amikom Yogyakarta, Jl. Ring Road Utara, Sleman, DI Yogyakarta 55283', 'MSV Studio bergerak dalam produksi animasi, termasuk film animasi dan serial. Bidangnya relevan dengan produksi konten visual, animasi, dan industri kreatif.', 'http://www.msvstudio.co.id', 1, '2026-10-17 21:22:25', '2026-10-17 21:22:25'),
(5, 'PT Tribun Digital Online', 'bkk/perusahaan/eb6f0236a44eb15550adeb78.jpg', NULL, 'Media digital, jurnalistik, dan publikasi berita', 'Jl. Palmerah Selatan No. 3, Jakarta Pusat, DKI Jakarta 10270', 'Tribunnews.com merupakan media berita digital yang menyajikan berita nasional, regional, internasional, olahraga, ekonomi dan bisnis, serta hiburan.', 'https://www.tribunnews.com', 1, '2026-10-17 21:23:36', '2026-10-17 21:23:36'),
(6, 'PT GIT Solution', 'bkk/perusahaan/1f4ee6170f7d837f9c98fc1a.jpg', NULL, 'Pengembangan perangkat lunak, sistem informasi, game, multimedia, digital marketing, dan pelatihan IT', 'Grha Universitas Amikom Yogyakarta, Gedung I Lantai 2, Jl. Ring Road Utara, Condong Catur, Depok, Sleman, DI Yogyakarta 55283', 'PT GIT Solution menyediakan layanan teknologi informasi seperti pengembangan aplikasi web, desktop dan mobile, sistem informasi, pengembangan game, multimedia kreatif, serta pelatihan teknologi.', 'https://gitsolution.co.id', 1, '2026-10-17 21:24:37', '2026-10-17 21:24:37'),
(7, 'PT Citraweb Solusi Teknologi', 'bkk/perusahaan/b625a67cedd8031c73ebcc57.jpg', NULL, 'Infrastruktur jaringan, perangkat jaringan, solusi IT, dan pelatihan jaringan', 'Jalan Magelang Km 7, Sendangadi, Mlati, Kabupaten Sleman, DI Yogyakarta 55285', 'Citraweb Solusi Teknologi menyediakan produk dan layanan terkait jaringan komputer, termasuk solusi infrastruktur jaringan, implementasi, dukungan teknis, dan pelatihan.', 'https://citraweb.com', 1, '2026-10-17 21:25:35', '2026-10-17 21:25:35'),
(8, 'IPB University', 'bkk/perusahaan/0a6e74a029418d9506428af8.jpg', NULL, 'Pendidikan tinggi, penelitian, dan pengembangan ilmu pengetahuan', 'Jl. Raya Dramaga, Kampus IPB Dramaga, Bogor, Jawa Barat 16680', 'IPB University merupakan perguruan tinggi yang menyelenggarakan pendidikan dan penelitian di berbagai bidang ilmu. Uraian kerja sama khusus perlu disesuaikan dengan kerja sama yang benar-benar dilakukan.', 'https://ipb.ac.id', 1, '2026-10-17 21:26:43', '2026-10-17 21:26:43'),
(9, 'LPK Jiritsu Nusantara', 'bkk/perusahaan/3a2b2b4a597f0376ac4e3448.jpg', NULL, 'Pendidikan dan pelatihan, bahasa Jepang, persiapan kerja, dan pemagangan ke Jepang', 'Training Center: Jl. DR. Sumeru No. 41–59, Kel. Menteng, Kec. Bogor Barat, Kota Bogor, Jawa Barat 16111', 'LPK Jiritsu Nusantara menyediakan pendidikan dan pelatihan untuk pengembangan sumber daya manusia, termasuk pembelajaran bahasa Jepang, budaya kerja, dan persiapan program pemagangan.', 'https://jiritsunusantara.co.id', 1, '2026-10-17 21:27:31', '2026-10-17 21:27:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pkl_items`
--

CREATE TABLE `pkl_items` (
  `id` int(11) NOT NULL,
  `kind` varchar(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text DEFAULT NULL,
  `icon` varchar(60) DEFAULT 'fa-solid fa-circle-check',
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pkl_items`
--

INSERT INTO `pkl_items` (`id`, `kind`, `title`, `content`, `icon`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'tujuan', 'Menerapkan Kompetensi', 'Mempraktikkan ilmu dan keterampilan dari kelas ke pekerjaan nyata di industri.', 'fa-solid fa-screwdriver-wrench', 1, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(2, 'tujuan', 'Membangun Etos Kerja', 'Melatih tanggung jawab, disiplin, kerja sama tim, dan komunikasi profesional.', 'fa-solid fa-user-tie', 2, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(3, 'tujuan', 'Mengenal Dunia Industri', 'Memahami struktur organisasi, budaya kerja, dan standar mutu di perusahaan.', 'fa-solid fa-building', 3, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(4, 'kerjasama', 'Penempatan PKL Siswa', 'Industri mitra menerima siswa PKL pada bidang pekerjaan yang relevan dengan program keahlian, sehingga siswa belajar dari alur kerja yang sebenarnya.', 'fa-solid fa-user-gear', 1, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(5, 'kerjasama', 'Penyelarasan Kurikulum', 'Masukan dari industri dipakai untuk menyelaraskan materi dan praktik di sekolah dengan teknologi, standar, dan kebutuhan kompetensi terbaru.', 'fa-solid fa-diagram-project', 2, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(6, 'kerjasama', 'Guru Tamu & Kunjungan Industri', 'Praktisi industri dapat berbagi pengalaman di sekolah, dan siswa berkesempatan mengunjungi tempat kerja untuk mengenal budaya serta lingkungan industri.', 'fa-solid fa-chalkboard-user', 3, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(7, 'kerjasama', 'Penyaluran Lulusan', 'Melalui Bursa Kerja Khusus (BKK), hubungan yang terjalin selama PKL membuka peluang informasi lowongan dan rekrutmen bagi lulusan.', 'fa-solid fa-briefcase', 4, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(8, 'tahapan', 'Koordinasi & Penjajakan Industri', 'Sekolah bersama tim Hubungan Industri menjalin komunikasi dengan perusahaan dan instansi mitra, menyepakati bidang pekerjaan yang sesuai kompetensi keahlian, kuota peserta, serta bentuk pendampingan yang akan diberikan selama PKL berlangsung.', 'fa-solid fa-handshake-simple', 1, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(9, 'tahapan', 'Pembekalan Siswa', 'Sebelum berangkat, siswa mengikuti pembekalan yang mencakup etika dan budaya kerja, keselamatan dan kesehatan kerja (K3), disiplin waktu, komunikasi profesional, serta tata tertib sekolah yang tetap berlaku selama siswa berada di tempat PKL.', 'fa-solid fa-clipboard-list', 2, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(10, 'tahapan', 'Penempatan & Administrasi', 'Siswa ditempatkan di industri mitra sesuai jurusan dan minat. Sekolah mengurus surat pengantar, perjanjian kerja sama, dan kelengkapan administrasi, sementara orang tua/wali memberikan persetujuan agar siswa siap menjalani praktik.', 'fa-solid fa-file-signature', 3, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(11, 'tahapan', 'Pelaksanaan & Pendampingan', 'Siswa mengerjakan tugas nyata di tempat PKL dengan bimbingan pembimbing industri. Guru pembimbing dari sekolah memantau perkembangan melalui kunjungan, komunikasi berkala, dan jurnal harian yang diisi siswa selama kegiatan.', 'fa-solid fa-route', 4, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(12, 'tahapan', 'Monitoring & Evaluasi', 'Pembimbing sekolah dan pembimbing industri mengevaluasi ketercapaian tugas, sikap kerja, dan kompetensi teknis. Kendala yang muncul di lapangan dibahas bersama agar pelaksanaan PKL tetap berjalan aman, nyaman, dan bermanfaat.', 'fa-solid fa-chart-column', 5, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(13, 'tahapan', 'Penilaian, Laporan & Sertifikat', 'Di akhir PKL, siswa menyusun laporan kegiatan dan mempresentasikan hasilnya. Penilaian dari industri dan sekolah digabungkan, lalu siswa yang memenuhi ketentuan memperoleh sertifikat PKL sebagai bukti pengalaman dan kompetensi kerja.', 'fa-solid fa-award', 6, 1, '2026-09-28 13:59:38', '2026-09-28 13:59:38'),
(14, 'tentang', 'pkl', 'Praktik Kerja Lapangan (PKL) merupakan program pembelajaran yang memberikan kesempatan kepada siswa SMK INFOKOM untuk memperoleh pengalaman kerja secara langsung di dunia usaha dan dunia industri. Melalui kegiatan PKL, siswa dapat menerapkan pengetahuan dan keterampilan yang telah dipelajari di sekolah ke dalam lingkungan kerja yang nyata, sekaligus memahami budaya kerja, kedisiplinan, tanggung jawab, komunikasi, dan kerja sama dalam tim. Kegiatan ini juga membantu siswa meningkatkan kompetensi sesuai bidang keahlian, menambah pengalaman profesional, serta mempersiapkan diri untuk melanjutkan pendidikan maupun memasuki dunia kerja setelah menyelesaikan pendidikan di SMK INFOKOM.', 'fa-solid fa-circle-info', 1, 1, '2026-09-28 20:53:13', '2026-09-28 20:53:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_documents`
--

CREATE TABLE `ppdb_documents` (
  `id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `document_type` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_faqs`
--

CREATE TABLE `ppdb_faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ppdb_faqs`
--

INSERT INTO `ppdb_faqs` (`id`, `question`, `answer`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SMK INFOKOM Bogor adalah sekolah menengah kejuruan yang berfokus pada pengembangan pengetahuan, keterampilan, karakter, dan kesiapan siswa untuk menghadapi dunia kerja maupun melanjutkan pendidikan ke jenjang yang lebih tinggi.', '', 1, 1, '2026-10-17 07:55:20', '2026-10-17 07:55:20'),
(2, 'SMK INFOKOM Bogor menyediakan program keahlian sesuai bidang pendidikan yang diselenggarakan sekolah. Untuk mengetahui daftar jurusan, kompetensi yang dipelajari, dan informasi terbaru, silakan kunjungi halaman Program Keahlian pada website sekolah.', '', 2, 1, '2026-10-17 07:55:20', '2026-10-17 07:55:20'),
(3, 'Calon siswa dapat mengikuti proses Penerimaan Peserta Didik Baru (PPDB) sesuai jadwal dan persyaratan yang ditetapkan sekolah. Informasi mengenai pendaftaran, berkas yang diperlukan, tahapan seleksi, dan jadwal dapat dilihat pada halaman PPDB atau melalui', '', 3, 1, '2026-10-17 07:55:20', '2026-10-17 07:55:20'),
(4, 'Siswa dapat mengikuti kegiatan Praktik Kerja Lapangan (PKL) sesuai program keahlian dan ketentuan sekolah. Kegiatan ini bertujuan membantu siswa mengembangkan keterampilan, mengenal lingkungan kerja, serta mempersiapkan diri menghadapi dunia industri.', '', 4, 1, '2026-10-17 07:55:20', '2026-10-17 07:55:20'),
(5, 'Informasi terbaru mengenai kegiatan sekolah, pengumuman, PPDB, program keahlian, dan kegiatan siswa dapat diperoleh melalui website resmi serta saluran komunikasi resmi SMK INFOKOM Bogor.', '', 5, 1, '2026-10-17 07:55:20', '2026-10-17 07:55:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_registrations`
--

CREATE TABLE `ppdb_registrations` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(30) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `parent_name` varchar(150) DEFAULT NULL,
  `parent_phone` varchar(20) DEFAULT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `status` enum('Menunggu','Diverifikasi','Diterima','Ditolak') DEFAULT 'Menunggu',
  `admin_note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_settings`
--

CREATE TABLE `ppdb_settings` (
  `id` int(11) NOT NULL,
  `academic_year` varchar(20) NOT NULL DEFAULT '2026/2027',
  `is_open` tinyint(1) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `info_image` varchar(255) DEFAULT NULL,
  `form_pdf` varchar(255) DEFAULT NULL,
  `form_pdf_label` varchar(150) DEFAULT NULL,
  `flow` text DEFAULT NULL,
  `faq` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ppdb_settings`
--

INSERT INTO `ppdb_settings` (`id`, `academic_year`, `is_open`, `start_date`, `end_date`, `requirements`, `info_image`, `form_pdf`, `form_pdf_label`, `flow`, `faq`) VALUES
(1, '2026/2027', 1, '2026-07-14', '2026-07-25', '', 'ppdb/c68f62cc3525a341413a82ce.jpg', NULL, NULL, '', 'SMK INFOKOM Bogor adalah sekolah menengah kejuruan yang berfokus pada pengembangan pengetahuan, keterampilan, karakter, dan kesiapan siswa untuk menghadapi dunia kerja maupun melanjutkan pendidikan ke jenjang yang lebih tinggi.\r\n\r\nSMK INFOKOM Bogor menyediakan program keahlian sesuai bidang pendidikan yang diselenggarakan sekolah. Untuk mengetahui daftar jurusan, kompetensi yang dipelajari, dan informasi terbaru, silakan kunjungi halaman Program Keahlian pada website sekolah.\r\n\r\nCalon siswa dapat mengikuti proses Penerimaan Peserta Didik Baru (PPDB) sesuai jadwal dan persyaratan yang ditetapkan sekolah. Informasi mengenai pendaftaran, berkas yang diperlukan, tahapan seleksi, dan jadwal dapat dilihat pada halaman PPDB atau melalui kontak resmi sekolah.\r\n\r\nSiswa dapat mengikuti kegiatan Praktik Kerja Lapangan (PKL) sesuai program keahlian dan ketentuan sekolah. Kegiatan ini bertujuan membantu siswa mengembangkan keterampilan, mengenal lingkungan kerja, serta mempersiapkan diri menghadapi dunia industri.\r\n\r\nInformasi terbaru mengenai kegiatan sekolah, pengumuman, PPDB, program keahlian, dan kegiatan siswa dapat diperoleh melalui website resmi serta saluran komunikasi resmi SMK INFOKOM Bogor.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `principal_message`
--

CREATE TABLE `principal_message` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT '[NAMA KEPALA SEKOLAH]',
  `photo` varchar(255) DEFAULT NULL,
  `message` text DEFAULT '[ISI SAMBUTAN KEPALA SEKOLAH]',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `principal_message`
--

INSERT INTO `principal_message` (`id`, `name`, `photo`, `message`, `updated_at`) VALUES
(1, '[NAMA KEPALA SEKOLAH]', NULL, '[ISI SAMBUTAN KEPALA SEKOLAH]', '2026-09-19 20:07:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(170) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `excellence` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `programs`
--

INSERT INTO `programs` (`id`, `name`, `slug`, `image`, `description`, `excellence`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'rekayasa-perangkat-lunak', 'jurusan/4860aac382302185f20d881b.jpg', '1. Pemrograman Aplikasi Berbasis Desktop\r\n2. Analisa dan Perancangan sistem\r\n3. Arsitektur Aplikasi Desktop , Mobile, Web dan Enterprise', 'Meningkatkan Efisiensi dan Produktivitas: Mengoptimalkan waktu, tenaga, dan sumber daya tim pengembang melalui pendekatan yang terstruktur.\r\n Memastikan sistem mudah diperbarui, diperbaiki, atau ditingkatkan fiturnya seiring perkembangan teknologi.', 1, 1, '2026-09-19 20:07:39', '2026-09-22 09:03:16'),
(2, 'Teknik Komputer dan Jaringan', 'teknik-komputer-dan-jaringan', 'jurusan/7bc9d6d955eebe8d726553ea.jpg', '1. IT Support Jaringan\r\n2. Perakitan dan Perbaikan Komputer\r\n3. Administrator Jaringan Komputer LAN dan WAN\r\n4. aplikasi Teknik Komputer dan Jaringan interaktif\r\n6. Keamanan Jaringan Terpusat', 'Menguasai Hardware dan Software: Siswa bisa merakit komputer, memasang sistem operasi (operating system), serta memperbaiki kerusakan komponen fisik seperti RAM, CPU, dan harddisk.\r\nAhli Jaringan Komputer: Siswa mampu mengatur jaringan lokal (LAN) maupun luas (WAN), mengonfigurasi router, serta membangun server dan keamanan jaringan (network security).', 2, 1, '2026-09-19 20:07:39', '2026-09-22 09:04:26'),
(3, 'desain komunikasi visual', 'desain-komunikasi-visual', 'jurusan/f5e1841ea46872d99049c033.jpg', '1. Mengembangkan citra dan animasi digital\r\n2. Mengembangkan laman (web) interaktif\r\n3. Mengembangkan Merekam dan menyunting audio-video\r\n4. Mengembangkan aplikasi multimedia interaktif', 'Peluang Karier Luas: Lulusan DKV bisa bekerja sebagai desainer grafis, animator, ilustrator, videografer, hingga desainer UI/UX di berbagai sektor industri.\r\nMahasiswa dapat mulai mencari penghasilan dan memperkaya pengalaman dengan menerima proyek lepas (freelance) secara online.', 3, 1, '2026-09-19 20:07:39', '2026-09-22 09:05:32'),
(4, 'Produksi dan Siaran Program Televisi', 'produksi-dan-siaran-program-televisi', 'jurusan/8eea5435c7bd89a30cf7d92f.jpg', '1. Program Pertelevisian\r\n2. Penyutradaraan, Editor, Kameramen\r\n3. Penata Artistik dan Suara, Penulis Naskah dan Skenario\r\n4. Aplikasi Teknik Produksi dan Penyiaran Program Pertelevisian interaktif', 'Keterampilan Produksi Menyeluruh: Siswa mempelajari seluruh tahapan pembuatan program, mulai dari penulisan naskah, penyutradaraan, teknik kamera, tata cahaya, tata suara, hingga proses editing pasca-produksi.\r\nPeluang Wirausaha yang Luas: Di tengah tingginya kebutuhan dokumentasi dan tren video sinematik, lulusan dapat langsung membuka usaha mandiri di bidang videografi, fotografi, atau agensi konten tanpa harus bergantung pada perusahaan.', 4, 1, '2026-09-19 20:07:39', '2026-09-22 09:06:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_info_items`
--

CREATE TABLE `school_info_items` (
  `id` int(11) NOT NULL,
  `group_name` varchar(80) DEFAULT 'lainnya',
  `label` varchar(150) NOT NULL,
  `value` text DEFAULT NULL,
  `icon` varchar(60) DEFAULT 'fa-solid fa-circle-info',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_profile`
--

CREATE TABLE `school_profile` (
  `id` int(11) NOT NULL,
  `school_name` varchar(150) NOT NULL DEFAULT 'SMK INFOKOM BOGOR',
  `npsn` varchar(20) DEFAULT NULL,
  `accreditation` varchar(20) DEFAULT NULL,
  `school_status` varchar(50) DEFAULT NULL,
  `founded_year` varchar(4) DEFAULT NULL,
  `foundation` varchar(200) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `history` text DEFAULT NULL,
  `history_image` varchar(255) DEFAULT NULL,
  `vision` text DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `goals` text DEFAULT NULL,
  `excellence` text DEFAULT NULL,
  `principal_name` varchar(100) DEFAULT NULL,
  `principal_photo` varchar(255) DEFAULT NULL,
  `principal_message` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `operating_hours` varchar(150) DEFAULT NULL,
  `map_embed` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `kabar_video_url` text DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `school_profile`
--

INSERT INTO `school_profile` (`id`, `school_name`, `npsn`, `accreditation`, `school_status`, `founded_year`, `foundation`, `website`, `short_description`, `about_image`, `history`, `history_image`, `vision`, `mission`, `goals`, `excellence`, `principal_name`, `principal_photo`, `principal_message`, `logo`, `address`, `phone`, `email`, `operating_hours`, `map_embed`, `facebook`, `instagram`, `youtube`, `kabar_video_url`, `tiktok`, `updated_at`) VALUES
(1, 'SMK INFOKOM BOGOR', '20238531', NULL, NULL, NULL, NULL, NULL, 'Membangun generasi kompeten, berkarakter, kreatif, dan siap menghadapi dunia kerja serta perkembangan teknologi.', 'lainnya/956b43f1308f06e8a88ed0e4.jpg', 'Yayasan Telekomunikasi Nasional terletak di dua lokasi yang berbeda tepatnya di Jalan RE Abdullah Nomor 15 Gunung Batu, Bogor menempati lahan seluas 800 m2 dijadikan lokasi pertama satuan pendidikan: SMP INFOKOM Bogor. Sedangkan untuk lokasi kedua di Jalan Letjen Ibrahim Adjie Nomor 178 Sindang Barang Bogor menempati lahan seluas 2.600 m2 satuan pendidikan: SMK INFOKOM Bogor', 'lainnya/a10b4e700ad9bffa48246375.jpg', 'Terwujudnya SMK Infokom Bogor sebagai SMK yang peduli dan berbudaya lingkungan hidup dengan tamatan yang kompeten dan mampu bersaing di tingkat Nasional, maupun Internasional.', '1. Membangun mental dan sikap peserta didik yang beriman dan bertaqwa kepada Tuhan yang Maha Esa.\r\n2. Mengembangkan kurikulum dan menyelenggarakan pembelajaran berstandar Nasional.\r\n3. Melalui kemitraan, keterbukaan dan pelayanan prima, SMK Infokom Kota Bogor :\r\n * Meningkatkan kualitas dan kuantitas tamatan yang siap kerja.\r\n * Menyiapkan wirausahawan yang handal dan mampu bersaing.\r\n * Menyiapkan tenaga terampil yang memiliki etos kerja dan kepribadian.', NULL, 'SMK INFOKOM Bogor memiliki akreditasi “A” dan berfokus pada pendidikan kejuruan di bidang teknologi, digital, dan media. Sekolah ini menawarkan berbagai program keahlian yang disesuaikan dengan perkembangan kebutuhan industri.\r\n\r\nKeunggulan Utama\r\n\r\n Terakreditasi A\r\nSMK INFOKOM Bogor memiliki akreditasi A, yang menunjukkan bahwa mutu pendidikan dan penyelenggaraan sekolah telah memenuhi standar yang ditetapkan. Profil SMK INFOKOM Bogor\r\n\r\n Program Keahlian Relevan dengan Industri\r\nSMK INFOKOM Bogor memiliki empat kompetensi keahlian yang berfokus pada bidang teknologi dan industri kreatif, yaitu:\r\n\r\nTeknik Komputer dan Jaringan (TKJ) / Teknik Jaringan Komputer\r\nRekayasa Perangkat Lunak (RPL)\r\nDesain Komunikasi Visual (DKV) / Multimedia\r\nProduksi dan Siaran Program Televisi (PSPT) / Broadcasting\r\nProfil SMK INFOKOM Bogor\r\n\r\n Pembekalan Praktik Kerja\r\nSiswa mendapatkan pembelajaran berbasis praktik dan pengalaman kerja yang membantu mempersiapkan mereka menghadapi dunia kerja maupun industri, khususnya di bidang teknologi dan digital. Jurusan RPL SMK INFOKOM Bogor\r\n\r\n Pembangunan Karakter\r\nSelain mengembangkan kompetensi kejuruan, SMK INFOKOM Bogor juga menekankan pembentukan karakter, mental, serta sikap peserta didik yang beriman dan bertakwa kepada Tuhan Yang Maha Esa. SMK INFOKOM Bogor\r\n\r\nBerorientasi pada Teknologi dan Kreativitas\r\nDengan bidang keahlian yang mencakup jaringan komputer, perangkat lunak, desain, serta broadcasting, siswa mendapatkan kesempatan untuk mengembangkan kemampuan teknis sekaligus kreativitas sesuai minat dan kompetensinya.', 'Ir. Hj. Liliek Rahmaningsih, M.MPd', 'lainnya/8b73ee77d4af0cbd6d47fff2.png', 'Assalaamu’alaikum Warahmatullahi Wabarakatuh. Salam sejahtera untuk kita semua. Segala puji syukur kita panjatkan ke hadirat Allah SWT, karena atas limpahan Rahmat, dan Karunia-Nya sehingga Website resmi SMK INFOKOM Kota Bogor ini dapat terus kita kembangkan sebagai sarana Informasi yang akurat mengenai segala hal yang berkaitan dengan sekolah ini. Ucapan terima kasih juga kami haturkan kepada semua pihak yang telah memberikan dukungan dan masukan dalam kelancaran pengembangan Website ini. Selamat datang di Website resmi SMK INFOKOM Kota Bogor. Di era digital saat ini, website sekolah merupakan pintu gerbang informasi terdepan sebagai sarana untuk menyebarluaskan berbagai publikasi terkait kemajuan pendidikan dan pencapaian sekolah terkini. Sebagai media pembelajaran, terlebih di masa pandemi masih berlangsung, Website sekolah juga diarahkan dapat mendatangkan kemanfaatan sebagai sarana pembelajaran dengan memuat blog, e-learning, karya dan media pembelajaran yang dibuat oleh pendidik serta para siswa. Di sisi lain kami sungguh berharap Website ini juga dapat menjadi sarana silaturahmi dan komunikasi antara sekolah dengan para alumni di berbagai tempat, sebagai sebuah keluarga besar yang solid serta dapat berkontribusi dalam memajukan pendidikan di SMK INFOKOM tercinta. Kami menyadari website SMK INFOKOM ini masih memiliki banyak kekurangan, oleh karena itu, kami akan terus belajar dan meng-update diri, sehingga konten dan kualitas tampilan website sekolah ini akan semakin berkembang. Kritik, saran dan masukan dari berbagai stake holder sekolah tentu sangat kami harapkan. Kepada tim pengembang dan pengelola, kami berharap agar dapat terus menyempurnakannya dengan penuh keikhlasan serta tanggung jawab. Terima kasih atas kerjasamanya, mari terus berkarya menuju SMK INFOKOM yang lebih berkualitas dan berjaya dalam mencerdaskan kehidupan anak bangsa Indonesia. SMK, Bisa...! SMK INFOKOM, Luar Biasa…! Wassalamu\'alaikum Warahmatullahi Wabarakatuh', 'lainnya/fcd74eebeedb515d19d6ba91.png', 'Jl. Letjend Ibrahim Adjie No. 178, Sindang Barang, Kec. Bogor Barat, Kota Bogor, Jawa Barat 16617', '0251-8348108 0878-7307-1400 (Humas SMK INFOKOM)', 'smk.infokom@gmail.com', 'Senin - Jumat: 07.00 - 16.00 WIB', '', '', '', '', 'https://youtu.be/ngyjtyWRtj0?si=1nmUB1cv-MOuMuw8\r\nhttps://youtu.be/XBfTr3y1w5s?si=6t8mOcNZ4iqaZoeW', '', '2026-10-17 22:00:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_statistics`
--

CREATE TABLE `school_statistics` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `suffix` varchar(10) DEFAULT '+',
  `icon` varchar(50) DEFAULT 'fa-solid fa-chart-simple',
  `sort_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `school_statistics`
--

INSERT INTO `school_statistics` (`id`, `label`, `value`, `suffix`, `icon`, `sort_order`) VALUES
(1, 'Siswa Aktif', 900, '+', 'fa-solid fa-user-graduate', 1),
(2, 'Guru & Staff', 50, '+', 'fa-solid fa-chalkboard-user', 2),
(3, 'Program Keahlian', 4, '', 'fa-solid fa-layer-group', 3),
(4, 'Prestasi', 500, '+', 'fa-solid fa-trophy', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `url`, `icon`, `sort_order`) VALUES
(1, 'Facebook', '#', 'fa-brands fa-facebook-f', 1),
(2, 'Instagram', 'https://www.instagram.com/smk.infokom_official?stkn=MWhqaHR5MjkxOTdxYQ==', 'fa-brands fa-instagram', 2),
(3, 'YouTube', '#', 'fa-brands fa-youtube', 3),
(4, 'TikTok', '#', 'fa-brands fa-tiktok', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` enum('guru','staff') NOT NULL DEFAULT 'guru',
  `position` varchar(150) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id`, `name`, `category`, `position`, `subject`, `nip`, `photo`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Dian Hardianti, S.Kom.,Gr.', 'guru', '', '', '', 'staff/6ce153a282d8f17f6f2acd3e.png', 1, 1, '2026-09-22 09:22:20', '2026-09-28 09:30:08'),
(3, 'Ahmad Hotib, S.Pd.I', 'guru', '', '', '', 'staff/ac23b996d4b49e563f4e5411.jpg', 2, 1, '2026-09-22 09:23:04', '2026-09-29 21:15:40'),
(4, '⁠Erli Suherli, A.Md.Kom.', 'guru', '', '', '', 'staff/67940d2c86356719d2478272.jpg', 3, 1, '2026-09-22 09:24:21', '2026-09-29 21:15:50'),
(5, 'Eva Farida Rahayu, S.Pd.,Gr.', 'guru', '', '', '', 'staff/062e75c09aa9003772992abf.png', 4, 1, '2026-09-22 09:24:47', '2026-09-28 09:32:16'),
(6, 'Cahyadi Rozi, ST.', 'guru', '', '', '', 'staff/a17ec6cb354b9c42d0b39e23.jpeg', 5, 1, '2026-09-22 09:25:44', '2026-09-28 09:33:05'),
(7, 'Aditya Nugraha, ST.', 'guru', '', '', '', 'staff/811a4d5572fb179fce1a0975.jpg', 6, 1, '2026-09-27 11:23:08', '2026-09-29 21:16:05'),
(9, 'Mila Yaelasari, M.Pd.', 'guru', '', '', '', 'staff/62cd14b43e6b9b51408b1645.jpg', 8, 1, '2026-09-27 11:23:38', '2026-09-29 21:16:17'),
(10, 'Agus Tiyono, M.Pd.', 'guru', '', '', '', 'staff/c1d917de1843cd6018827176.jpg', 9, 1, '2026-09-27 11:24:08', '2026-09-29 21:16:30'),
(11, 'Dea Rijalul Fikri, S.Kom.,Gr.', 'guru', '', '', '', 'staff/915e59a37330cd216b388da5.jpg', 10, 1, '2026-09-27 11:24:25', '2026-09-29 21:16:44'),
(13, 'Heny Handayani, S.Pd.', 'guru', '', '', '', 'staff/d4798695c11cd8c48e8b06c3.jpg', 12, 1, '2026-09-27 11:25:01', '2026-09-29 21:19:12'),
(14, 'Vera Yuni Astuti, SP., M.IKom.,Gr.', 'guru', '', '', '', 'staff/f4868ae62b8015d1836c98a8.jpg', 13, 1, '2026-09-27 11:25:18', '2026-09-29 21:21:31'),
(15, 'Drs. Puji Marhaen Waluyo', 'guru', '', '', '', 'staff/236ae79f6e70ebb04f5c1d0b.jpg', 14, 1, '2026-09-27 11:25:34', '2026-09-29 21:21:46'),
(16, 'Putri Riandini, S.Hut., M.Pd.,Gr.', 'guru', '', '', '', 'staff/8940df81b501af7cf35c78a7.jpg', 15, 1, '2026-09-27 11:26:00', '2026-09-29 21:21:58'),
(17, 'Muhammad Ibnu Arif, S.IKom.', 'guru', '', '', '', 'staff/7003a636c12395568890d50a.jpg', 16, 1, '2026-09-27 11:26:15', '2026-09-29 21:22:09'),
(18, 'Ridwan Hala, S.Kom.,Gr.', 'guru', '', '', '', 'staff/1d804ffbee963f8b37de68bf.jpg', 17, 1, '2026-09-27 11:26:36', '2026-09-29 21:22:21'),
(19, 'Abdul Azis, M.Pd.', 'guru', '', '', '', 'staff/0944192ed91f53e97ab38a68.jpg', 18, 1, '2026-09-27 11:26:57', '2026-09-29 21:21:17'),
(20, 'Radiani Srirestuti Dewi, SS.,Gr.', 'guru', '', '', '', 'staff/90cbfb0219f0e4d8c49571a2.jpg', 19, 1, '2026-09-28 09:21:05', '2026-09-29 21:21:07'),
(21, 'Dara Purwanita, S.Pd.,Gr.', 'guru', '', '', '', 'staff/995391506a37cb2c3bc6ab7f.png', 20, 1, '2026-09-28 09:25:24', '2026-09-29 21:20:51'),
(22, 'Widyatama Nuranisa, SM.', 'guru', '', '', '', 'staff/a620cacee24d11a0a1bbdbf2.png', 21, 1, '2026-09-28 09:33:30', '2026-09-29 21:20:40'),
(23, 'Erwin Hasiholan Gultom, S.Kom.', 'guru', '', '', '', 'staff/8c31f5da92c121e448be6709.jpg', 22, 1, '2026-09-28 09:33:46', '2026-09-29 21:20:29'),
(24, 'Nabila Ahmadia Pratama, S.Pd.', 'guru', '', '', '', 'staff/59b87ee0d3955b7419602b1d.png', 23, 1, '2026-09-28 09:34:01', '2026-09-29 21:20:09'),
(25, 'Dra. Diana Octaria', 'guru', '', '', '', 'staff/77d5f797e6ad1955f8d10368.jpg', 24, 1, '2026-09-28 09:34:19', '2026-09-29 21:18:56'),
(26, 'Reza Prafitriansyah, S.Kom.,Gr.', 'staff', '', '', '', 'staff/3361c93ca58995070c01ff9c.jpg', 25, 1, '2026-09-28 09:34:57', '2026-09-29 21:18:04'),
(27, 'Jayadi, S.Pd.,Gr.', 'staff', '', '', '', 'staff/c07f2a042893f76e14c01693.jpg', 26, 1, '2026-09-28 09:35:24', '2026-09-29 21:17:36'),
(28, 'Yadi Setiadi, S.Sos.,Gr.', 'staff', '', '', '', 'staff/fe31b48357c0e85c23c90032.jpg', 27, 1, '2026-09-28 09:36:00', '2026-09-29 21:17:46'),
(29, 'Siti Nuraeni', 'staff', '', '', '', 'staff/32762107e27f394bffa8141a.jpg', 28, 1, '2026-09-28 09:36:25', '2026-09-29 21:17:13'),
(30, 'Dra. Popon Puspitasari', 'guru', '', '', '', 'staff/4981a7b114aa9a431ca69d25.jpg', 29, 1, '2026-09-28 09:46:16', '2026-09-29 21:18:40'),
(31, 'Richo Santana, S.Kom.', 'guru', '', '', '', 'staff/0221a37b223e17f79bae96ce.jpg', 30, 1, '2026-09-28 09:46:40', '2026-09-29 21:18:28'),
(32, 'Yeni Yuliawati, S.Pd.,Gr.', 'guru', '', '', '', 'staff/ce7e2ff541fa4a9528ad5d80.jpg', 31, 1, '2026-09-28 20:20:21', '2026-09-29 21:18:18'),
(33, 'Rita Widyastuti', 'staff', '', '', '', 'staff/523d571736235ef39020abd9.jpg', 32, 1, '2026-09-28 20:20:55', '2026-09-29 21:17:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_rules`
--

CREATE TABLE `student_rules` (
  `id` int(11) NOT NULL,
  `category` varchar(80) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student_rules`
--

INSERT INTO `student_rules` (`id`, `category`, `title`, `content`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Kewajiban Siswa', 'Datang tepat waktu dan mengikuti kegiatan belajar sesuai jadwal.', '', 0, 1, '2026-09-27 20:41:41', '2026-09-27 20:41:41'),
(2, 'Hak Siswa', 'Mendapatkan pembelajaran dan bimbingan dari guru.', '', 0, 1, '2026-09-27 20:45:17', '2026-09-27 20:45:17'),
(3, 'Hak Siswa', 'Menggunakan fasilitas sekolah sesuai ketentuan.', '', 0, 1, '2026-09-27 20:45:28', '2026-09-27 20:45:28'),
(4, 'Hak Siswa', 'Menyampaikan pendapat secara sopan dan bertanggung jawab.', '', 0, 1, '2026-09-27 20:45:41', '2026-09-27 20:45:41'),
(5, 'Kewajiban Siswa', 'Mengikuti kegiatan pembelajaran dengan tertib.', '', 0, 1, '2026-09-27 20:45:56', '2026-09-27 20:45:56'),
(6, 'Kewajiban Siswa', 'Menghormati guru, karyawan, dan sesama siswa.', '', 0, 1, '2026-09-27 20:46:39', '2026-09-27 20:46:39'),
(7, 'Kewajiban Siswa', 'Menjaga kebersihan dan fasilitas sekolah.', '', 0, 1, '2026-09-27 20:46:57', '2026-09-27 20:46:57'),
(8, 'Kewajiban Siswa', 'Menaati seluruh tata tertib sekolah.', '', 0, 1, '2026-09-27 20:47:07', '2026-09-27 20:47:07'),
(9, 'Ketentuan Seragam', 'Memakai seragam sesuai jadwal yang ditentukan.', '', 0, 1, '2026-09-28 20:40:27', '2026-09-28 20:40:27'),
(10, 'Ketentuan Seragam', 'Seragam harus bersih, rapi, dan sopan.', '', 0, 1, '2026-09-28 20:40:42', '2026-09-28 20:40:42'),
(11, 'Ketentuan Seragam', 'Memakai atribut sekolah secara lengkap.', '', 0, 1, '2026-09-28 20:40:56', '2026-09-28 20:40:56'),
(12, 'Ketentuan Kehadiran', 'Mengikuti seluruh kegiatan pembelajaran.', '', 0, 1, '2026-09-28 20:41:09', '2026-09-28 20:41:09'),
(13, 'Ketentuan Kehadiran', 'Hadir di sekolah tepat waktu.', '', 0, 1, '2026-09-28 20:41:21', '2026-09-28 20:41:21'),
(14, 'Ketentuan Kehadiran', 'Tidak meninggalkan sekolah tanpa izin.', '', 0, 1, '2026-09-28 20:41:39', '2026-09-28 20:41:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_info`
--
ALTER TABLE `academic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bkk_sections`
--
ALTER TABLE `bkk_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bkk_settings`
--
ALTER TABLE `bkk_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `extracurriculars`
--
ALTER TABLE `extracurriculars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `industry_visits`
--
ALTER TABLE `industry_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jepang_profile`
--
ALTER TABLE `jepang_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jepang_sections`
--
ALTER TABLE `jepang_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `job_vacancies`
--
ALTER TABLE `job_vacancies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `news_gallery`
--
ALTER TABLE `news_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indeks untuk tabel `organization_structure`
--
ALTER TABLE `organization_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partner_companies`
--
ALTER TABLE `partner_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pkl_items`
--
ALTER TABLE `pkl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ppdb_documents`
--
ALTER TABLE `ppdb_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_id` (`registration_id`);

--
-- Indeks untuk tabel `ppdb_faqs`
--
ALTER TABLE `ppdb_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ppdb_registrations`
--
ALTER TABLE `ppdb_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`),
  ADD KEY `program_id` (`program_id`);

--
-- Indeks untuk tabel `ppdb_settings`
--
ALTER TABLE `ppdb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `principal_message`
--
ALTER TABLE `principal_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `school_info_items`
--
ALTER TABLE `school_info_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_group` (`group_name`,`sort_order`);

--
-- Indeks untuk tabel `school_profile`
--
ALTER TABLE `school_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `school_statistics`
--
ALTER TABLE `school_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_rules`
--
ALTER TABLE `student_rules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_info`
--
ALTER TABLE `academic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bkk_sections`
--
ALTER TABLE `bkk_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bkk_settings`
--
ALTER TABLE `bkk_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `extracurriculars`
--
ALTER TABLE `extracurriculars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `industry_visits`
--
ALTER TABLE `industry_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jepang_profile`
--
ALTER TABLE `jepang_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jepang_sections`
--
ALTER TABLE `jepang_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `job_vacancies`
--
ALTER TABLE `job_vacancies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `news_gallery`
--
ALTER TABLE `news_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `organization_structure`
--
ALTER TABLE `organization_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `partner_companies`
--
ALTER TABLE `partner_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pkl_items`
--
ALTER TABLE `pkl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `ppdb_documents`
--
ALTER TABLE `ppdb_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ppdb_faqs`
--
ALTER TABLE `ppdb_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ppdb_registrations`
--
ALTER TABLE `ppdb_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ppdb_settings`
--
ALTER TABLE `ppdb_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `principal_message`
--
ALTER TABLE `principal_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `school_info_items`
--
ALTER TABLE `school_info_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `school_profile`
--
ALTER TABLE `school_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `school_statistics`
--
ALTER TABLE `school_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `student_rules`
--
ALTER TABLE `student_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `job_vacancies`
--
ALTER TABLE `job_vacancies`
  ADD CONSTRAINT `job_vacancies_company_fk` FOREIGN KEY (`company_id`) REFERENCES `partner_companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_vacancies_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `news_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `news_gallery`
--
ALTER TABLE `news_gallery`
  ADD CONSTRAINT `news_gallery_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ppdb_documents`
--
ALTER TABLE `ppdb_documents`
  ADD CONSTRAINT `ppdb_documents_ibfk_1` FOREIGN KEY (`registration_id`) REFERENCES `ppdb_registrations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ppdb_registrations`
--
ALTER TABLE `ppdb_registrations`
  ADD CONSTRAINT `ppdb_registrations_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
