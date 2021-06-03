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
INSERT INTO `pdn_m_user` (`admin_nama`, `admin_email`, `admin_password`, `admin_active`, `admin_tgl_input`, `admin_tgl_edit`) VALUES
('Pudin S', 'admin@email.id', '$2y$10$YJx2/v2TlngG5HgmQwMf1Onmd2iARDaXf7ZVpStmvXaGD2y57q2lW', 1, '2021-05-21 23:51:23', '2021-05-21 16:51:23');

