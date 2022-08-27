--
--
-- TABEL MASTER
-- Pudin Saepudin Ilham
--

CREATE VIEW view_walikelas
AS
SELECT tb1.id_walikelas, tb1.walikelas_id_guru, tb1.walikelas_id_kelas, tb1.walikelas_tasm,
tb2.id_kelas, tb2.kelas_nama,
tb3.id_user, tb3.user_nama
FROM tb_t_walikelas tb1
LEFT JOIN tb_m_kelas tb2 ON tb1.walikelas_id_kelas = tb2.id_kelas
LEFT JOIN view_data_guru tb3 ON tb1.walikelas_id_guru = tb3.id_user;
