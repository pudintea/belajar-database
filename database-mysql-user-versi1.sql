--
-- BELAJAR MYSQL DASAR DAN SEDERHANA
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_nama` varchar(128) NOT NULL,
  `admin_email` varchar(128) NOT NULL,
  `admin_password` varchar(256) NOT NULL,
  `admin_active` tinyint(1) unsigned NOT NULL,
  `admin_tgl_input` datetime NOT NULL,
  `admin_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- pasword 1234
--
INSERT INTO `tb_admin` (`admin_nama`, `admin_email`, `admin_password`, `admin_active`, `admin_tgl_input`, `admin_tgl_edit`) VALUES
('Pudin S', 'admin@email.id', '$2y$10$YJx2/v2TlngG5HgmQwMf1Onmd2iARDaXf7ZVpStmvXaGD2y57q2lW', 1, '2021-05-21 23:51:23', '2021-05-21 16:51:23');

--
-- Mencoba menyusun data pegawai dan rule jabatanya walaupun masih merasa belum pas
--

CREATE TABLE IF NOT EXISTS `tb_pegawai` (
  `id_pegawai` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pegawai_nip` int(9) unsigned NOT NULL,
  `pegawai_nama` varchar(128) NOT NULL,
  `pegawai_password` varchar(256) NOT NULL,
  `pegawai_status` int(11) unsigned NOT NULL,
  `pegawai_active` tinyint(1) unsigned NOT NULL,
  `pegawai_foto` varchar(128) NOT NULL,
  `pegawai_subag` int(11) unsigned NOT NULL,
  `pegawai_bagian` int(11) unsigned NOT NULL,
  `pegawai_direktur` int(11) unsigned NOT NULL,
  `pegawai_pengurus` int(11) unsigned NOT NULL,
  `pegawai_tgl_input` datetime NOT NULL,
  `pegawai_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tb_pengurus` (
  `id_pengurus` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pengurus_nama` varchar(128) NOT NULL,
  `pengurus_idacc` int(11) unsigned NOT NULL,
  `pengurus_tgl_input` datetime NOT NULL,
  `pengurus_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengurus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tb_direktur` (
  `id_direktur` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `direktur_nama` varchar(128) NOT NULL,
  `direktur_idpengurus` int(11) unsigned NOT NULL,
  `direktur_idacc` int(11) unsigned NOT NULL,
  `direktur_tgl_input` datetime NOT NULL,
  `direktur_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_direktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tb_bagian` (
  `id_bagian` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bagian_nama` varchar(128) NOT NULL,
  `bagian_idpengurus` int(11) unsigned NOT NULL,
  `bagian_iddirektur` int(11) unsigned NOT NULL,
  `bagian_idacc` int(11) unsigned NOT NULL,
  `bagian_tgl_input` datetime NOT NULL,
  `bagian_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_bagian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tb_subag` (
  `id_subag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subag_nama` varchar(128) NOT NULL,
  `subag_idpengurus` int(11) unsigned NOT NULL,
  `subag_iddirektur` int(11) unsigned NOT NULL,
  `subag_idbagian` int(11) unsigned NOT NULL,
  `subag_idacc` int(11) unsigned NOT NULL,
  `subag_tgl_input` datetime NOT NULL,
  `subag_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_subag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

