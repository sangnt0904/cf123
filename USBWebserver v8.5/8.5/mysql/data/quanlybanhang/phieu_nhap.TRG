TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `before_delete_phieu_nhap` BEFORE DELETE ON `phieu_nhap` \n    FOR EACH ROW \nBEGIN\n	DELETE FROM `chi_tiet_phieu_nhap`\n	WHERE MA_PHIEU_NHAP = OLD.MA_PHIEU_NHAP;\n		\n	DELETE FROM `xnt_hien_tai`\n	WHERE MA_PHIEU_NHAP = OLD.MA_PHIEU_NHAP;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER after_insert_phieu_nhap after insert ON phieu_nhap \n    FOR EACH ROW \nBEGIN		\n	insert into xnt_hien_tai(MA_KHO_HANG, XNTHT_NGAY)\n	select new.MA_KHO_HANG, date(new.THOI_GIAN_TAO_PHIEU_NHAP) as XNTHT_NGAY\n	from dual\n	where not exists (select * from xnt_hien_tai where MA_KHO_HANG = new.MA_KHO_HANG and XNTHT_NGAY = DATE(new.THOI_GIAN_TAO_PHIEU_NHAP));\n	\nEND'
sql_modes=0 0
definers='root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci'
