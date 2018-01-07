/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - coffeebusiness
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`coffeebusiness2` /*!40100 DEFAULT CHARACTER SET utf8 */;

use coffeebusiness2;

/*Table structure for table `ban` */

DROP TABLE IF EXISTS `ban`;

CREATE TABLE `ban` (
  `STT_KHU_VUC` int(11) NOT NULL,
  `STT_BAN` int(11) NOT NULL,
  PRIMARY KEY (`STT_KHU_VUC`,`STT_BAN`),
  CONSTRAINT `FK_KHUVUC_BAN` FOREIGN KEY (`STT_KHU_VUC`) REFERENCES `khu_vuc` (`STT_KHU_VUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ban` */

insert  into `ban`(`STT_KHU_VUC`,`STT_BAN`) values 
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(1,18),
(1,19),
(1,20),
(1,21),
(1,22),
(1,23),
(1,24),
(1,25),
(1,26),
(1,27),
(1,28),
(1,29),
(1,30),
(1,31),
(1,32),
(1,33),
(1,34),
(1,35),
(1,36),
(1,37),
(1,38),
(1,39),
(1,40),
(1,41),
(1,42),
(1,43),
(1,44),
(1,45),
(1,46),
(1,47),
(1,48),
(1,49),
(1,50),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10),
(2,11),
(2,12),
(2,13),
(2,14),
(2,15),
(2,16),
(2,17),
(2,18),
(2,19),
(2,20),
(2,21),
(2,22),
(2,23),
(2,24),
(2,25),
(2,26),
(2,27),
(2,28),
(2,29),
(2,30),
(2,31),
(2,32),
(2,33),
(2,34),
(2,35),
(2,36),
(2,37),
(2,38),
(2,39),
(2,40),
(2,41),
(2,42),
(2,43),
(2,44),
(2,45),
(2,46),
(2,47),
(2,48),
(2,49),
(2,50),
(3,1),
(3,2),
(3,3),
(3,4),
(3,5),
(3,6),
(3,7),
(3,8),
(3,9),
(3,10),
(3,11),
(3,12),
(3,13),
(3,14),
(3,15),
(3,16),
(3,17),
(3,18),
(3,19),
(3,20),
(3,21),
(3,22),
(3,23),
(3,24),
(3,25),
(3,26),
(3,27),
(3,28),
(3,29),
(3,30),
(3,31),
(3,32),
(3,33),
(3,34),
(3,35),
(3,36),
(3,37),
(3,38),
(3,39),
(3,40),
(3,41),
(3,42),
(3,43),
(3,44),
(3,45),
(3,46),
(3,47),
(3,48),
(3,49),
(3,50),
(4,1),
(4,2),
(4,3),
(4,4),
(4,5),
(4,6),
(4,7),
(4,8),
(4,9),
(4,10),
(4,11),
(4,12),
(4,13),
(4,14),
(4,15),
(4,16),
(4,17),
(4,18),
(4,19),
(4,20),
(4,21),
(4,22),
(4,23),
(4,24),
(4,25),
(4,26),
(4,27),
(4,28),
(4,29),
(4,30),
(4,31),
(4,32),
(4,33),
(4,34),
(4,35),
(4,36),
(4,37),
(4,38),
(4,39),
(4,40),
(4,41),
(4,42),
(4,43),
(4,44),
(4,45),
(4,46),
(4,47),
(4,48),
(4,49),
(4,50),
(5,1),
(5,2),
(5,3),
(5,4),
(5,5),
(5,6),
(5,7),
(5,8),
(5,9),
(5,10),
(5,11),
(5,12),
(5,13),
(5,14),
(5,15),
(5,16),
(5,17),
(5,18),
(5,19),
(5,20),
(5,21),
(5,22),
(5,23),
(5,24),
(5,25),
(5,26),
(5,27),
(5,28),
(5,29),
(5,30),
(5,31),
(5,32),
(5,33),
(5,34),
(5,35),
(5,36),
(5,37),
(5,38),
(5,39),
(5,40),
(5,41),
(5,42),
(5,43),
(5,44),
(5,45),
(5,46),
(5,47),
(5,48),
(5,49),
(5,50);

/*Table structure for table `chi_tiet_hoa_don_ban_hang` */

DROP TABLE IF EXISTS `chi_tiet_hoa_don_ban_hang`;

CREATE TABLE `chi_tiet_hoa_don_ban_hang` (
  `THOI_GIAN_THAO_TAC_MILI_GIAY` varchar(50) NOT NULL,
  `MA_HOA_DON_BAN_HANG` varchar(50) NOT NULL,
  `NGAY_GIO_THEM_SAN_PHAM_BAN` datetime NOT NULL,
  `MA_SAN_PHAM` varchar(50) NOT NULL,
  `TEN_SAN_PHAM_BAN` varchar(255) NOT NULL,
  `SO_LUONG_SAN_PHAM_BAN` float NOT NULL,
  `DON_GIA_SAN_PHAM_BAN` int(11) NOT NULL,
  `THANH_TIEN_HOA_DON` int(11) NOT NULL,
  PRIMARY KEY (`MA_HOA_DON_BAN_HANG`,`THOI_GIAN_THAO_TAC_MILI_GIAY`),
  KEY `FK_SP_CTHDBH` (`MA_SAN_PHAM`),
  CONSTRAINT `FK_HDBH_CTHDBH` FOREIGN KEY (`MA_HOA_DON_BAN_HANG`) REFERENCES `hoa_don_ban_hang` (`MA_HOA_DON_BAN_HANG`),
  CONSTRAINT `FK_SP_CTHDBH` FOREIGN KEY (`MA_SAN_PHAM`) REFERENCES `sanpham` (`MA_SAN_PHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chi_tiet_hoa_don_ban_hang` */

/*Table structure for table `hoa_don_ban_hang` */

DROP TABLE IF EXISTS `hoa_don_ban_hang`;

CREATE TABLE `hoa_don_ban_hang` (
  `MA_HOA_DON_BAN_HANG` varchar(50) NOT NULL,
  `STT_KHU_VUC` int(11) NOT NULL,
  `STT_BAN` int(11) NOT NULL,
  `NGAY_GIO_LAP_HOA_DON_BAN_HANG` datetime DEFAULT NULL,
  `TRANG_THAI` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MA_HOA_DON_BAN_HANG`),
  KEY `FK_BAN_HDBH` (`STT_KHU_VUC`,`STT_BAN`),
  CONSTRAINT `FK_BAN_HDBH` FOREIGN KEY (`STT_KHU_VUC`, `STT_BAN`) REFERENCES `ban` (`STT_KHU_VUC`, `STT_BAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hoa_don_ban_hang` */

/*Table structure for table `khu_vuc` */

DROP TABLE IF EXISTS `khu_vuc`;

CREATE TABLE `khu_vuc` (
  `STT_KHU_VUC` int(11) NOT NULL,
  `TEN_KHU_VUC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STT_KHU_VUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `khu_vuc` */

insert  into `khu_vuc`(`STT_KHU_VUC`,`TEN_KHU_VUC`) values 
(1,'Bàn'),
(2,'Bàn tròn'),
(3,'Tum'),
(4,'Nhà lớn'),
(5,'Ngoài sân');

/*Table structure for table `lich_su_hoa_don_ban_hang` */

DROP TABLE IF EXISTS `lich_su_hoa_don_ban_hang`;

CREATE TABLE `lich_su_hoa_don_ban_hang` (
  `MA_HOA_DON_BAN_HANG` varchar(50) NOT NULL,
  `STT_KHU_VUC` int(11) NOT NULL,
  `STT_BAN` int(11) NOT NULL,
  `NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG` datetime NOT NULL,
  `MO_TA_LICH_SU_HOA_DON_BAN_HANG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STT_KHU_VUC`,`MA_HOA_DON_BAN_HANG`,`STT_BAN`,`NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG`),
  KEY `FK_BAN_LSHDBH` (`STT_KHU_VUC`,`STT_BAN`),
  KEY `FK_HDBH_LSHDBH` (`MA_HOA_DON_BAN_HANG`),
  CONSTRAINT `FK_BAN_LSHDBH` FOREIGN KEY (`STT_KHU_VUC`, `STT_BAN`) REFERENCES `ban` (`STT_KHU_VUC`, `STT_BAN`),
  CONSTRAINT `FK_HDBH_LSHDBH` FOREIGN KEY (`MA_HOA_DON_BAN_HANG`) REFERENCES `hoa_don_ban_hang` (`MA_HOA_DON_BAN_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lich_su_hoa_don_ban_hang` */

/*Table structure for table `sanpham` */

DROP TABLE IF EXISTS `sanpham`;

CREATE TABLE `sanpham` (
  `MA_SAN_PHAM` varchar(50) NOT NULL,
  `TEN_SAN_PHAM` varchar(255) DEFAULT NULL,
  `GIA_SAN_PHAM` int(11) DEFAULT '0',
  `GHI_CHU_SAN_PHAM` varchar(255) DEFAULT '',
  `SO_LAN_SU_DUNG` int(11) DEFAULT '0',
  PRIMARY KEY (`MA_SAN_PHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sanpham` */

insert  into `sanpham`(`MA_SAN_PHAM`,`TEN_SAN_PHAM`,`GIA_SAN_PHAM`,`GHI_CHU_SAN_PHAM`,`SO_LAN_SU_DUNG`) values 
('SP1','3 Số',30000,'3so',70),
('SP10','Cà phê sữa đá',12000,'cpsd',8),
('SP101','Tau hu trang chien',5000,'thtrc',59),
('SP102','Thanh cua chien',15000,'thcua',17),
('SP103','Thập cẩm',20000,'thc',440),
('SP104','Thuốc hút',5000,'th',6682),
('SP105','Trà chanh',7000,'tc',978),
('SP106','Trà cúc',7000,'trc',571),
('SP107','Trà dâu',7000,'td',1795),
('SP108','Trà gừng',7000,'tg',28),
('SP109','Trà sữa',12000,'ts',130),
('SP11','Cà phê đá xay',18000,'cpdx',134),
('SP110','Tra vai',10000,'tv',199),
('SP111','Trà xanh đá xay',18000,'txdx',34),
('SP112','Trà đào',10000,'td',2505),
('SP113','Trà đường',7000,'td',5460),
('SP114','Trung cut chien xu',10000,'tccx',28),
('SP115','Việt quốc đá xay',18000,'vqdx',47),
('SP116','Xúc xích chiên',10000,'xxc',89),
('SP117','Xuc xich chien xu',15000,'xxcx',6),
('SP118','Yaourt',5000,'yo',382),
('SP119','Yaourt chanh dây',15000,'yocd',5),
('SP12','Cá phile chiên xù',15000,'ccx',2),
('SP120','Yaourt Kiwi',13000,'yokw',8),
('SP121','Yaourt nho đen',15000,'yond',16),
('SP122','Yaourt Phúc bồn tử',15000,'yopbt',6),
('SP123','Yaourt tẩy',12000,'yot',1109),
('SP124','Yaourt Việt quốc',15000,'yovq',48),
('SP125','Đá bào',8000,'db',151),
('SP126','Đá hạnh',7000,'dh',1),
('SP127','Đá me',8000,'dm',485),
('SP128','Đậu bắp',5000,'db',18),
('SP129','Đậu nành',7000,'dn',3561),
('SP13','Ca trung cut',10000,'ctrc',61),
('SP130','Đậu nành đặc biệt',12000,'đnđb',0),
('SP131','Đậu xanh',7000,'dx',4487),
('SP132','Đậu xanh đặc biệt',12000,'đxđb',0),
('SP14','Cá viên chiên',10000,'cvc',658),
('SP15','Cacao sữa nóng',15000,'ccsn',16),
('SP16','Cacao sữa đá',15000,'ccsd',75),
('SP17','Cafe',7000,'cf',24103),
('SP18','Cafe sữa',12000,'cfs',4037),
('SP19','Cam sex',25000,'cx',20),
('SP2','Atiso',7000,'ats',21),
('SP20','Cam sữa',12000,'cs',86),
('SP21','Cam vắt',10000,'cv',3203),
('SP22','Cam vắt mật ong',15000,'cvmo',12),
('SP23','Chanh dây',12000,'cd',784),
('SP24','Chanh day sua',18000,'cds',3),
('SP25','Chanh muối tươi',7000,'cmt',641),
('SP26','Chanh tươi',7000,'ct',2351),
('SP27','Chè khúc bạch',12000,'ckb',0),
('SP28','Dâu sữa',12000,'ds',108),
('SP29','Dừa tươi',15000,'dt',2657),
('SP3','Bạc hà',8000,'bh',11),
('SP30','Fin',7000,'ff',10782),
('SP31','Fin sữa',14000,'fs',661),
('SP32','Gà rán',15000,'gr',1645),
('SP33','Hero',19000,'hero',601),
('SP34','Jet',21000,'jet',496),
('SP35','Kem dâu',13000,'kd',326),
('SP36','Kem dừa',13000,'kd',88),
('SP37','Kem khoai môn',13000,'kkm',26),
('SP38','Kem nho',13000,'kn',2),
('SP39','Kem sầu riêng',13000,'ksr',74),
('SP4','Bạc hà sữa',12000,'bhs',181),
('SP40','Kem Socola',13000,'kscl',205),
('SP41','Khoai tây chiên',15000,'ktc',341),
('SP42','Khoai tây lắc',15000,'ktl',55),
('SP43','Kiwi đá xay',16000,'kwdx',17),
('SP44','Lipton chanh dây',10000,'ltcd',24),
('SP45','Lipton dằn bạc hà',8000,'ltdbh',94),
('SP46','Lipton nóng',7000,'ltn',656),
('SP47','Lipton sữa',12000,'tonsua',440),
('SP48','Lipton sữa riêng',14000,'ltsr',46),
('SP49','Lipton đá',7000,'ltd',30851),
('SP5','Bac siu nóng',10000,'bs',370),
('SP50','Má sữa',12000,'ms',1276),
('SP51','Mãng cầu dàm',18000,'mcd',4),
('SP52','Mèo',23000,'meo',76),
('SP53','Mi tho',20000,'mth',464),
('SP54','Nho đen đá xay',16000,'nddx',11),
('SP55','Nửa gói',10000,'nua',251),
('SP56','Nước ép bưởi',15000,'neb',0),
('SP57','Nước ép cà chua',15000,'necc',0),
('SP58','Nước ép cam',15000,'nec',217),
('SP59','Nước ép cam + cà rốt',18000,'neccr',10),
('SP6','Bac siu đá',12000,'bsđ',34),
('SP60','Nước ép carot',18000,'necr',14),
('SP61','Nước ép chanh dây',15000,'necd',191),
('SP62','Nước ép dâu',25000,'ned',4),
('SP63','Nước ép dưa hấu',15000,'nedh',1),
('SP64','Nước ép dưa leo',15000,'nedl',0),
('SP65','Nước ép khóm',15000,'nek',0),
('SP66','Nước ép lê',18000,'nel',0),
('SP67','Nước ngọt ',12000,'nn',4549),
('SP68','Nước suối',8000,'ns',110),
('SP69','Ốc nhồi chiên',10000,'onc',656),
('SP7','Bánh Flan',8000,'bf',425),
('SP70','Oreo cokie cream đá xay',18000,'occdx',17),
('SP71','Phúc Bồn tử đá xay',18000,'pbtdx',6),
('SP72','Rau má',7000,'rm',10131),
('SP73','Rau má dừa',15000,'rmd',143),
('SP74','Rau má sex',10000,'rmx',11),
('SP75','Rau má đậu',8000,'rmd',806),
('SP76','Red bull',15000,'rb',217),
('SP77','Sinh tố bơ',18000,'stb',546),
('SP78','Sinh tố cà chua',15000,'stcc',0),
('SP79','Sinh tố cam',15000,'stc',249),
('SP8','Bơ dằm',25000,'Bd',36),
('SP80','Sinh tố carot Đà Lạt',15000,'stcrdl',65),
('SP81','Sinh tố chanh dây',15000,'stcd',76),
('SP82','Sinh tố chanh tuyết',16000,'stct',69),
('SP83','Sinh tố dâu',18000,'std',220),
('SP84','Sinh tố mãng cầu',15000,'stmc',694),
('SP85','Sinh tố rau má',13000,'strm',8),
('SP86','Sinh tố rau má đậu',15000,'strmd',28),
('SP87','Sinh tố sầu riêng',18000,'stsr',153),
('SP88','Sinh tố đậu xanh',15000,'stđx',22),
('SP89','Sinh tố đu đủ',15000,'stdd',12),
('SP9','Bò viên chiên',10000,'bvc',476),
('SP90','Sinh tố đu đủ đậu xanh',15000,'stdddx',1),
('SP91','Socola đá xay',18000,'scldx',62),
('SP92','Sữa quế',12000,'sq',63),
('SP93','Sữa tươi',12000,'st',1436),
('SP94','Sữa đá',12000,'sđ',6),
('SP95','Sushi',15000,'ss',645),
('SP96','Tắc xí muội',8000,'txm',46),
('SP97','Tàu hủ ba sa',10000,'thbs',25),
('SP98','Tàu hủ chiên xù',15000,'thcx',671),
('SP99','Sting sữa',17000,'sts',124);

/* Procedure structure for procedure `chuyen_hang_hoa_sang_hoa_don_khac` */

/*!50003 DROP PROCEDURE IF EXISTS  `chuyen_hang_hoa_sang_hoa_don_khac` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `chuyen_hang_hoa_sang_hoa_don_khac`(
	IN p_MA_HOA_DON_BAN_HANG VARCHAR(50),
	IN p_THOI_GIAN_THAO_TAC_MILI_GIAY VARCHAR(50),
	IN p_SO_LUONG_CHUYEN FLOAT,
	IN p_STT_KHU_VUC_CHUYEN_DEN INT(11),
	IN p_STT_BAN_CHUYEN_DEN INT(11)
    )
BEGIN
	DECLARE v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN VARCHAR(50) DEFAULT '';
	DECLARE v_SO_LUONG_SAN_PHAM_BAN FLOAT DEFAULT 0;
	declare v_san_pham_da_chuyen_1_lan int(1) default 0;
	declare v_RESULT VARCHAR(500) DEFAULT 0;
	
	
	IF p_SO_LUONG_CHUYEN > 0 THEN  -- Số lượng chuyển > 0 thì xét sản phẩm đã chuyển đến hóa đơn này lần nào chưa
		-- Lấy mã hóa đơn bán hàng được chuyến đến
		SELECT MA_HOA_DON_BAN_HANG INTO v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN
		FROM hoa_don_ban_hang
		WHERE STT_KHU_VUC = p_STT_KHU_VUC_CHUYEN_DEN
			AND STT_BAN = p_STT_BAN_CHUYEN_DEN
			AND TRANG_THAI = 'MOI';	
		
		-- Lấy số lượng sản phẩm
		select SO_LUONG_SAN_PHAM_BAN into v_SO_LUONG_SAN_PHAM_BAN
		from chi_tiet_hoa_don_ban_hang
		where MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
			AND THOI_GIAN_THAO_TAC_MILI_GIAY = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
		
		start transaction;
		
		IF v_SO_LUONG_SAN_PHAM_BAN > 0 THEN -- Số lượng lớn hơn 0
			IF v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN = '' THEN -- Chưa có hóa đơn tại bàn chuyển đến, tạo hóa đơn mới
				set v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN = CONCAT('HD', DATE_FORMAT(NOW(),'%d_%m_%Y_%H_%i_%s'));
				INSERT INTO hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LAP_HOA_DON_BAN_HANG, TRANG_THAI)
				VALUES(v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN, p_STT_KHU_VUC_CHUYEN_DEN, p_STT_BAN_CHUYEN_DEN, NOW(), 'MOI');
			end if;  -- Chưa có hóa đơn tại bàn chuyển đến, tạo hóa đơn mới
			
			-- Thêm sản phẩm vào hóa đơn được chuyển đến
			INSERT INTO chi_tiet_hoa_don_ban_hang(THOI_GIAN_THAO_TAC_MILI_GIAY, MA_HOA_DON_BAN_HANG, NGAY_GIO_THEM_SAN_PHAM_BAN, MA_SAN_PHAM, TEN_SAN_PHAM_BAN, SO_LUONG_SAN_PHAM_BAN, DON_GIA_SAN_PHAM_BAN, THANH_TIEN_HOA_DON)
				SELECT CONCAT('', ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 10000)) AS THOI_GIAN_THAO_TAC_MILI_GIAY,
					v_MA_HOA_DON_BAN_HANG_CHUYEN_DEN AS MA_HOA_DON_BAN_HANG, 
					NGAY_GIO_THEM_SAN_PHAM_BAN,
					 MA_SAN_PHAM, 
					 TEN_SAN_PHAM_BAN,
					  p_SO_LUONG_CHUYEN AS SO_LUONG_SAN_PHAM_BAN,
					  DON_GIA_SAN_PHAM_BAN,
					  THANH_TIEN_HOA_DON / v_SO_LUONG_SAN_PHAM_BAN * p_SO_LUONG_CHUYEN
				FROM chi_tiet_hoa_don_ban_hang
				WHERE MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
					AND THOI_GIAN_THAO_TAC_MILI_GIAY = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
										
			SET v_RESULT = ROW_COUNT();
			
			-- Trừ số lượng còn lại trong hóa đơn bị chuyển
			IF  p_SO_LUONG_CHUYEN >= v_SO_LUONG_SAN_PHAM_BAN THEN -- Chuyển đi hết
				DELETE FROM chi_tiet_hoa_don_ban_hang
				WHERE MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
					AND THOI_GIAN_THAO_TAC_MILI_GIAY = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
				
				IF p_SO_LUONG_CHUYEN > v_SO_LUONG_SAN_PHAM_BAN then
					SET v_RESULT = concat('Chú ý: bạn đã chuyển đồ dùng với số lượng là ', p_SO_LUONG_CHUYEN, ' so với số lượng ', v_SO_LUONG_SAN_PHAM_BAN, ' có trong hóa đơn!');
				end IF;
			ELSE -- Chuyển đi 1 ít
				UPDATE chi_tiet_hoa_don_ban_hang
				SET SO_LUONG_SAN_PHAM_BAN = v_SO_LUONG_SAN_PHAM_BAN - p_SO_LUONG_CHUYEN,
					THANH_TIEN_HOA_DON = THANH_TIEN_HOA_DON - THANH_TIEN_HOA_DON / v_SO_LUONG_SAN_PHAM_BAN * p_SO_LUONG_CHUYEN
				WHERE MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
					AND THOI_GIAN_THAO_TAC_MILI_GIAY = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
			END IF; -- Chuyển đi hết				
			commit;
			
		else -- Số lượng <= 0
			set v_RESULT = 'Không thể chuyển: số lượng đồ dùng này còn lại trong hóa đơn <= 0!';
		end if;  -- Số lượng lớn hơn 0
	else
		SET v_RESULT = 'Không thể chuyển: số lượng chuyển phải > 0!';
	END IF; -- Số lượng chuyển > 0 thì chuyển
	
	SELECT v_RESULT AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `delete_chi_tiet_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `delete_chi_tiet_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_chi_tiet_hoa_don_ban_hang`(
	in p_MA_HOA_DON_BAN_HANG varchar(50),
	in p_THOI_GIAN_THAO_TAC_MILI_GIAY VARCHAR(50)
    )
BEGIN
	delete from chi_tiet_hoa_don_ban_hang
	where MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		and `THOI_GIAN_THAO_TAC_MILI_GIAY` = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `delete_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `delete_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_hoa_don_ban_hang`(
	IN p_MA_HOA_DON_BAN_HANG VARCHAR(50)
    )
BEGIN
	DECLARE V_STT_KHU_VUC, V_STT_BAN, V_ROW_COUNT INT(11) DEFAULT 0;
	start transaction;	
	
	update hoa_don_ban_hang
	SET `TRANG_THAI` = 'DA_BI_XOA'
	WHERE MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		and `TRANG_THAI` = 'MOI';
	
	SET V_ROW_COUNT = ROW_COUNT();	
	
	IF V_ROW_COUNT = 1 THEN
		SELECT `STT_KHU_VUC`, `STT_BAN` INTO V_STT_KHU_VUC, V_STT_BAN
		FROM `hoa_don_ban_hang`
		WHERE `MA_HOA_DON_BAN_HANG` = p_MA_HOA_DON_BAN_HANG;
	
		INSERT INTO lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		VALUES(p_MA_HOA_DON_BAN_HANG, V_STT_KHU_VUC, V_STT_BAN, NOW(), CONCAT('Đã bị xóa!'));
	END IF;
	
	commit;
	
	SELECT V_ROW_COUNT AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `delete_sanpham` */

/*!50003 DROP PROCEDURE IF EXISTS  `delete_sanpham` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_sanpham`(
	in p_MA_SAN_PHAM VARCHAR(50)
    )
BEGIN
	delete from `sanpham`
	WHERE `MA_SAN_PHAM` = p_MA_SAN_PHAM;	
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hoa_don_ban_hang`(
	IN p_STT_KHU_VUC int(11),
	in p_STT_BAN int(11)
    )
BEGIN
	INSERT INTO hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LAP_HOA_DON_BAN_HANG, TRANG_THAI)
		SELECT CONCAT('HD', DATE_FORMAT(NOW(),'%d_%m_%Y_%H_%i_%s')) as MA_HOA_DON_BAN_HANG,
			p_STT_KHU_VUC as STT_KHU_VUC,
			p_STT_BAN as STT_BAN,
			now() as NGAY_GIO_LAP_HOA_DON_BAN_HANG,
			'MOI' AS TRANG_THAI
		FROM dual
		WHERE NOT EXISTS (SELECT 1
					FROM hoa_don_ban_hang
					WHERE STT_KHU_VUC = p_STT_KHU_VUC
						AND STT_BAN = p_STT_BAN
						AND TRANG_THAI = 'MOI')
		LIMIT 0, 1;
			
	SELECT ROW_COUNT() AS KET_QUA;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_sanpham` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_sanpham` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_sanpham`(
	in p_TEN_SAN_PHAM varchar(255),
	in p_GIA_SAN_PHAM int(11),
	in p_GHI_CHU_SAN_PHAM varchar(255)
    )
BEGIn    
	insert into sanpham(MA_SAN_PHAM, TEN_SAN_PHAM, GIA_SAN_PHAM, GHI_CHU_SAN_PHAM)
	values(CONCAT('HD', DATE_FORMAT(NOW(),'%d_%m_%Y_%H_%i_%s')), p_TEN_SAN_PHAM, p_GIA_SAN_PHAM, p_GHI_CHU_SAN_PHAM);
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_hang_hoa` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_hang_hoa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_hang_hoa`()
BEGIN
	/*
	SELECT `STT_BAN`, `MA_HOA_DON_BAN_HANG`
	FROM `hoa_don_ban_hang`;
	*/
	
	select MA_SAN_PHAM, TEN_SAN_PHAM, GIA_SAN_PHAM, GHI_CHU_SAN_PHAM
	from sanpham
	order by SO_LAN_SU_DUNG desc; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `gop_ban` */

/*!50003 DROP PROCEDURE IF EXISTS  `gop_ban` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `gop_ban`(
	IN p_STT_KHU_VUC_BI_GOP INT(11),
	IN p_STT_BAN_BI_GOP INT(11),
	IN p_STT_KHU_VUC_DUOC_GOP INT(11),
	IN p_STT_BAN_DUOC_GOP INT(11)
)
BEGIN
	DECLARE V_MA_HOA_DON_BAN_HANG_BI_GOP, V_MA_HOA_DON_BAN_HANG_DUOC_GOP VARCHAR(50) DEFAULT '';
	DECLARE V_TEN_KHU_VUC_BAN_BI_GOP, V_TEN_KHU_VUC_BAN_DUOC_GOP VARCHAR(255) DEFAULT '';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		RESIGNAL;
	END;
	START TRANSACTION;
	
	-- Lấy mã hóa đơn bàn bị gộp
	SELECT MA_HOA_DON_BAN_HANG INTO V_MA_HOA_DON_BAN_HANG_BI_GOP
	FROM hoa_don_ban_hang
	WHERE STT_BAN = p_STT_BAN_BI_GOP
		AND STT_KHU_VUC = P_STT_KHU_VUC_BI_GOP
		AND TRANG_THAI = 'MOI';
	-- Lấy mã hóa đơn bàn được gộp
	SELECT MA_HOA_DON_BAN_HANG INTO V_MA_HOA_DON_BAN_HANG_DUOC_GOP
	FROM hoa_don_ban_hang
	WHERE STT_BAN = p_STT_BAN_DUOC_GOP
		AND STT_KHU_VUC = P_STT_KHU_VUC_DUOC_GOP
		AND TRANG_THAI = 'MOI';
	
	-- Cập nhật mã hóa đơn, khu vực, bàn bị gộp thành bàn được gộp	
	IF V_MA_HOA_DON_BAN_HANG_DUOC_GOP = '' THEN	-- Bàn được gộp không có hóa đơn thì chuyển bàn bị gộp sang
		UPDATE hoa_don_ban_hang
		SET STT_BAN = p_STT_BAN_DUOC_GOP,
			STT_KHU_VUC = P_STT_KHU_VUC_DUOC_GOP
		WHERE MA_HOA_DON_BAN_HANG = V_MA_HOA_DON_BAN_HANG_BI_GOP
			AND TRANG_THAI = 'MOI';
	else	-- Bàn được gộp có hóa đơn thì
		-- Cập nhật mã hóa đơn chi tiết hóa đơn bàn bị gộp thành mã hóa đơn bàn được gộp
		UPDATE chi_tiet_hoa_don_ban_hang
		SET MA_HOA_DON_BAN_HANG = V_MA_HOA_DON_BAN_HANG_DUOC_GOP
		WHERE MA_HOA_DON_BAN_HANG = V_MA_HOA_DON_BAN_HANG_BI_GOP;
		-- Cập nhật trạng thái hóa đơn bàn bị gộp thành đã bị gộp
		UPDATE `hoa_don_ban_hang`
		SET TRANG_THAI = 'DA_BI_GOP'
		WHERE MA_HOA_DON_BAN_HANG = V_MA_HOA_DON_BAN_HANG_BI_GOP
			AND TRANG_THAI = 'MOI';
	end if;
	
	-- Lấy tên 2 khu vực bàn được, bị gộp
	select TEN_KHU_VUC into V_TEN_KHU_VUC_BAN_BI_GOP
	from khu_vuc
	where STT_KHU_VUC = p_STT_KHU_VUC_BI_GOP;
	
	SELECT TEN_KHU_VUC INTO V_TEN_KHU_VUC_BAN_DUOC_GOP
	FROM khu_vuc
	WHERE STT_KHU_VUC = p_STT_KHU_VUC_DUOC_GOP ;
	-- Nếu bàn bị gộp có nước thì thêm vào lịch sử
	if V_MA_HOA_DON_BAN_HANG_BI_GOP != '' then
		insert into lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		values(V_MA_HOA_DON_BAN_HANG_BI_GOP, p_STT_KHU_VUC_BI_GOP , p_STT_BAN_BI_GOP , now(), concat('Gộp ', V_TEN_KHU_VUC_BAN_BI_GOP, ' ', p_STT_BAN_BI_GOP , ' vào ', V_TEN_KHU_VUC_BAN_DUOC_GOP, ' ', p_STT_BAN_DUOC_GOP ));
	end if;
		-- Nếu bàn được gộp có nước thì thêm vào lịch sử
	if V_MA_HOA_DON_BAN_HANG_DUOC_GOP != '' then
		insert into lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		values(V_MA_HOA_DON_BAN_HANG_DUOC_GOP, p_STT_KHU_VUC_DUOC_GOP  , p_STT_BAN_DUOC_GOP  , now(), concat('Gộp ', V_TEN_KHU_VUC_BAN_BI_GOP, ' ', p_STT_BAN_BI_GOP , ' vào ', V_TEN_KHU_VUC_BAN_DUOC_GOP, ' ', p_STT_BAN_DUOC_GOP ));
	end if;
	COMMIT; 
	
	SELECT '1' AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_chi_tiet_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_chi_tiet_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_chi_tiet_hoa_don_ban_hang`(
	in p_MA_HOA_DON_BAN_HANG varchar(50),
	in p_MA_SAN_PHAM varchar(50)
    )
BEGIN
	declare v_THOI_GIAN_THAO_TAC_MILI_GIAY VARCHAR(50);
	set v_THOI_GIAN_THAO_TAC_MILI_GIAY = CONCAT('', ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 10000));
	insert into chi_tiet_hoa_don_ban_hang(THOI_GIAN_THAO_TAC_MILI_GIAY, MA_HOA_DON_BAN_HANG, NGAY_GIO_THEM_SAN_PHAM_BAN, MA_SAN_PHAM, TEN_SAN_PHAM_BAN, SO_LUONG_SAN_PHAM_BAN, DON_GIA_SAN_PHAM_BAN, THANH_TIEN_HOA_DON)
		select v_THOI_GIAN_THAO_TAC_MILI_GIAY as THOI_GIAN_THAO_TAC_MILI_GIAY,
			p_MA_HOA_DON_BAN_HANG as MA_HOA_DON_BAN_HANG,
			NOW() as NGAY_GIO_THEM_SAN_PHAM_BAN,
			p_MA_SAN_PHAM as MA_SAN_PHAM,
			TEN_SAN_PHAM as TEN_SAN_PHAM_BAN,
			1 as SO_LUONG_SAN_PHAM_BAN,
			GIA_SAN_PHAM as DON_GIA_SAN_PHAM_BAN,
			GIA_SAN_PHAM as THANH_TIEN_HOA_DON
		from sanpham
		where NOT EXISTS(select 1 
				from chi_tiet_hoa_don_ban_hang 
				where MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG 
					and THOI_GIAN_THAO_TAC_MILI_GIAY = v_THOI_GIAN_THAO_TAC_MILI_GIAY)
			AND MA_SAN_PHAM = p_MA_SAN_PHAM
		limit 0, 1
	;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_ban_da_thanh_toan_gan_day_1_khu_vuc` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_ban_da_thanh_toan_gan_day_1_khu_vuc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_ban_da_thanh_toan_gan_day_1_khu_vuc`(
	IN p_STT_KHU_VUC INT(11)
    )
BEGIN
	SELECT HD.STT_BAN, 
		IFNULL(SUM(CTHD.THANH_TIEN_HOA_DON), 0) AS TONG_TIEN
	FROM hoa_don_ban_hang HD LEFT JOIN chi_tiet_hoa_don_ban_hang CTHD
		ON HD.MA_HOA_DON_BAN_HANG = CTHD.MA_HOA_DON_BAN_HANG		
	WHERE HD.STT_KHU_VUC =  p_STT_KHU_VUC
		AND HD.`TRANG_THAI` = 'DA_THANH_TOAN'
		and HD.`MA_HOA_DON_BAN_HANG` IN (SELECT `MA_HOA_DON_BAN_HANG`
							FROM `hoa_don_ban_hang`
							WHERE `STT_KHU_VUC` = p_STT_KHU_VUC
								and `TRANG_THAI` = 'DA_THANH_TOAN'
							group by `STT_BAN`
							ORDER BY `NGAY_GIO_LAP_HOA_DON_BAN_HANG` DESC)
		and HD.`STT_BAN` not in (select `STT_BAN`
						from `hoa_don_ban_hang`
						where `STT_KHU_VUC` = p_STT_KHU_VUC
							and `TRANG_THAI` = 'MOI')
	GROUP BY HD.MA_HOA_DON_BAN_HANG;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_hang_hoa_1_ban` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_hang_hoa_1_ban` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_hang_hoa_1_ban`(
	IN p_STT_KHU_VUC int(11),
	IN p_STT_BAN INT(11)
    )
BEGIN
	select cthd.THOI_GIAN_THAO_TAC_MILI_GIAY,
		cthd.MA_HOA_DON_BAN_HANG, 
		cthd.TEN_SAN_PHAM_BAN, 
		cthd.SO_LUONG_SAN_PHAM_BAN, 
		cthd.DON_GIA_SAN_PHAM_BAN,
		cthd.THANH_TIEN_HOA_DON,
		cthd.SO_LUONG_SAN_PHAM_BAN AS SO_LUONG_CHUYEN
	from chi_tiet_hoa_don_ban_hang cthd, 
		hoa_don_ban_hang hd
	where hd.STT_KHU_VUC = p_STT_KHU_VUC
		and hd.STT_BAN = p_STT_BAN
		and cthd.MA_HOA_DON_BAN_HANG = hd.MA_HOA_DON_BAN_HANG
		and hd.TRANG_THAI = 'MOI'
	order by cthd.THOI_GIAN_THAO_TAC_MILI_GIAY;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_hang_hoa_1_hoa_don` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_hang_hoa_1_hoa_don` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_hang_hoa_1_hoa_don`(
	IN p_MA_HOA_DON_BAN_HANG varchar(50)
    )
BEGIN
	select cthd.MA_HOA_DON_BAN_HANG, 
		cthd.THOI_GIAN_THAO_TAC_MILI_GIAY, 
		cthd.TEN_SAN_PHAM_BAN, 
		cthd.SO_LUONG_SAN_PHAM_BAN, 
		cthd.DON_GIA_SAN_PHAM_BAN,
		cthd.THANH_TIEN_HOA_DON
	from chi_tiet_hoa_don_ban_hang cthd, 
		hoa_don_ban_hang hd
	where cthd.MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		and cthd.MA_HOA_DON_BAN_HANG = hd.MA_HOA_DON_BAN_HANG
		and hd.TRANG_THAI = 'MOI'
	order by cthd.THOI_GIAN_THAO_TAC_MILI_GIAY;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_hang_hoa_1_hoa_don_lich_su` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_hang_hoa_1_hoa_don_lich_su` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_hang_hoa_1_hoa_don_lich_su`(
	IN p_MA_HOA_DON_BAN_HANG VARCHAR(50)
    )
BEGIN
	SELECT cthd.MA_HOA_DON_BAN_HANG, 
		cthd.THOI_GIAN_THAO_TAC_MILI_GIAY, 
		cthd.TEN_SAN_PHAM_BAN, 
		cthd.SO_LUONG_SAN_PHAM_BAN, 
		cthd.DON_GIA_SAN_PHAM_BAN,
		cthd.THANH_TIEN_HOA_DON
	FROM chi_tiet_hoa_don_ban_hang cthd, 
		hoa_don_ban_hang hd
	WHERE cthd.MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		AND cthd.MA_HOA_DON_BAN_HANG = hd.MA_HOA_DON_BAN_HANG
	ORDER BY cthd.THOI_GIAN_THAO_TAC_MILI_GIAY;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_danh_sach_hoa_don_1_khu_vuc` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_danh_sach_hoa_don_1_khu_vuc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_danh_sach_hoa_don_1_khu_vuc`(
	IN p_STT_KHU_VUC INT(11)
    )
BEGIN
	select HD.STT_BAN, 
		HD.MA_HOA_DON_BAN_HANG,
		ifnull(sum(CTHD.THANH_TIEN_HOA_DON), 0) as TONG_TIEN
	from hoa_don_ban_hang HD left join chi_tiet_hoa_don_ban_hang CTHD
		on HD.MA_HOA_DON_BAN_HANG = CTHD.MA_HOA_DON_BAN_HANG		
	where HD.STT_KHU_VUC =  p_STT_KHU_VUC
		and HD.TRANG_THAI = 'MOI'
	group by HD.MA_HOA_DON_BAN_HANG;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `thanh_toan_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `thanh_toan_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `thanh_toan_hoa_don_ban_hang`(
	IN p_MA_HOA_DON_BAN_HANG VARCHAR(50)
    )
BEGIN
	DECLARE V_ROW_COUNT INT(11) DEFAULT 0;
	DECLARE V_STT_KHU_VUC, V_STT_BAN INT(11);
	
	START TRANSACTION;
	
	update hoa_don_ban_hang
	set TRANG_THAI = 'DA_THANH_TOAN'
	WHERE MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		AND `TRANG_THAI` = 'MOI';	
		
	SET V_ROW_COUNT = ROW_COUNT();
	IF V_ROW_COUNT = 1 THEN
		SELECT `STT_KHU_VUC`, `STT_BAN` INTO V_STT_KHU_VUC, V_STT_BAN
		FROM `hoa_don_ban_hang`
		WHERE `MA_HOA_DON_BAN_HANG` = p_MA_HOA_DON_BAN_HANG;
	
		INSERT INTO lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		VALUES(p_MA_HOA_DON_BAN_HANG, V_STT_KHU_VUC  , V_STT_BAN  , NOW(), 'Đã thanh toán');
	END IF;
	
	commit;
	
	SELECT V_ROW_COUNT AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `thay_doi_ban` */

/*!50003 DROP PROCEDURE IF EXISTS  `thay_doi_ban` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `thay_doi_ban`(in p_STT_KHU_VUC_1 int(11),
	IN p_STT_BAN_1 INT(11),
	IN p_STT_KHU_VUC_2 INT(11),
	IN p_STT_BAN_2 INT(11))
BEGIN
	declare v_MA_HOA_DON_BAN_HANG_1, v_MA_HOA_DON_BAN_HANG_2 varchar(50) default '';
	declare v_TEN_KHU_VUC_1, v_TEN_KHU_VUC_2 varchar(255) default '';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	begin
		rollback;
		RESIGNAL;
	end;
	
	start transaction;
	-- Lấy mã hóa đơn bàn 1	
	select MA_HOA_DON_BAN_HANG into v_MA_HOA_DON_BAN_HANG_1
	from hoa_don_ban_hang
	WHERE STT_KHU_VUC = p_STT_KHU_VUC_1
		AND STT_BAN = p_STT_BAN_1
		and `TRANG_THAI` = 'MOI';
		
	-- Lấy mã hóa đơn bàn 2
	SELECT MA_HOA_DON_BAN_HANG INTO v_MA_HOA_DON_BAN_HANG_2
	FROM hoa_don_ban_hang
	WHERE STT_KHU_VUC = p_STT_KHU_VUC_2
		AND STT_BAN = p_STT_BAN_2
		AND `TRANG_THAI` = 'MOI';
		
	-- Đổi bàn 2 sang bàn 1
	update hoa_don_ban_hang
	set STT_KHU_VUC = p_STT_KHU_VUC_1,
		STT_BAN = p_STT_BAN_1
	where MA_HOA_DON_BAN_HANG = v_MA_HOA_DON_BAN_HANG_2;
	
	-- Đổi bàn 1 sang bàn 2	
	UPDATE hoa_don_ban_hang
	SET STT_KHU_VUC = p_STT_KHU_VUC_2,
		STT_BAN = p_STT_BAN_2
	where MA_HOA_DON_BAN_HANG = v_MA_HOA_DON_BAN_HANG_1;
	-- Lấy tên 2 khu vực bàn được thay đổi
	select TEN_KHU_VUC into v_TEN_KHU_VUC_1
	from khu_vuc
	where STT_KHU_VUC = p_STT_KHU_VUC_1;
	
	SELECT TEN_KHU_VUC INTO v_TEN_KHU_VUC_2
	FROM khu_vuc
	WHERE STT_KHU_VUC = p_STT_KHU_VUC_2;
		
	-- Nếu bàn 1 có nước thì thêm vào lịch sử
	if v_MA_HOA_DON_BAN_HANG_1 != '' then
		insert into lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		values(v_MA_HOA_DON_BAN_HANG_1, p_STT_KHU_VUC_1, p_STT_BAN_1, now(), concat('Đổi ', v_TEN_KHU_VUC_1, ' ', p_STT_BAN_1, ' và ', v_TEN_KHU_VUC_2, ' ', p_STT_BAN_2));
	end if;
	
	-- Nếu bàn 2 có nước uống thì thêm vào lịch sử
	IF v_MA_HOA_DON_BAN_HANG_2 != '' THEN	
		INSERT INTO lich_su_hoa_don_ban_hang(MA_HOA_DON_BAN_HANG, STT_KHU_VUC, STT_BAN, NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, MO_TA_LICH_SU_HOA_DON_BAN_HANG)
		VALUES(v_MA_HOA_DON_BAN_HANG_2, p_STT_KHU_VUC_2, p_STT_BAN_2, NOW(), CONCAT('Đổi ', v_TEN_KHU_VUC_2, ' ', p_STT_BAN_2, ' và ', v_TEN_KHU_VUC_1, ' ', p_STT_BAN_1));
	END IF;
	
	commit; 
	
	SELECT '1' AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `thong_ke_danh_sach_hoa_don_theo_ngay` */

/*!50003 DROP PROCEDURE IF EXISTS  `thong_ke_danh_sach_hoa_don_theo_ngay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `thong_ke_danh_sach_hoa_don_theo_ngay`(
	IN P_NGAY_BAT_DAU DATE,
	IN P_NGAY_KET_THUC DATE
)
BEGIN
	SELECT HD.MA_HOA_DON_BAN_HANG,
		KV.TEN_KHU_VUC,
		HD.STT_BAN,
		DATE_FORMAT(HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG, '%d/%m/%Y %T') as NGAY_GIO_LAP_HOA_DON_BAN_HANG,
		replace(HD.TRANG_THAI, '_', ' ') as TRANG_THAI,
		-- SUM(CASE WHEN HD.TRANG_THAI = 'DA_THANH_TOAN' THEN CTHD.SO_LUONG_SAN_PHAM_BAN * CTHD.DON_GIA_SAN_PHAM_BAN ELSE 0 END) AS TONG_TIEN
		SUM(CTHD.THANH_TIEN_HOA_DON) AS TONG_TIEN
	FROM hoa_don_ban_hang HD,
		khu_vuc KV,
		chi_tiet_hoa_don_ban_hang CTHD
	WHERE date(HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG) between P_NGAY_BAT_DAU and P_NGAY_KET_THUC
		AND HD.STT_KHU_VUC = KV.STT_KHU_VUC
		AND HD.MA_HOA_DON_BAN_HANG = CTHD.MA_HOA_DON_BAN_HANG
	GROUP BY HD.MA_HOA_DON_BAN_HANG
	order by HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `update_sanpham` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_sanpham` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `update_sanpham`(
	in p_MA_SAN_PHAM VARCHAR(50),
	IN p_TEN_SAN_PHAM VARCHAR(255),
	IN p_GIA_SAN_PHAM INT(11),
	IN p_GHI_CHU_SAN_PHAM VARCHAR(255)
    )
BEGIN
	UPDATE `sanpham`
	SET `TEN_SAN_PHAM` = p_TEN_SAN_PHAM,
		`GIA_SAN_PHAM` = p_GIA_SAN_PHAM,
		`GHI_CHU_SAN_PHAM` = p_GHI_CHU_SAN_PHAM
	WHERE `MA_SAN_PHAM` = p_MA_SAN_PHAM;	
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `thong_ke_danh_sach_san_pham_ban_theo_ngay` */

/*!50003 DROP PROCEDURE IF EXISTS  `thong_ke_danh_sach_san_pham_ban_theo_ngay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `thong_ke_danh_sach_san_pham_ban_theo_ngay`(
	IN P_NGAY_BAT_DAU DATE,
	IN P_NGAY_KET_THUC DATE
)
BEGIN
	SELECT HD.MA_HOA_DON_BAN_HANG,
		KV.TEN_KHU_VUC,
		HD.STT_BAN,
		CTHD.TEN_SAN_PHAM_BAN,
		CTHD.SO_LUONG_SAN_PHAM_BAN,
		CTHD.DON_GIA_SAN_PHAM_BAN,
		CTHD.THANH_TIEN_HOA_DON as THANH_TIEN,
		DATE_FORMAT(CTHD.NGAY_GIO_THEM_SAN_PHAM_BAN, '%d/%m/%Y %T') AS NGAY_GIO_THEM_SAN_PHAM_BAN,
		REPLACE(HD.TRANG_THAI, '_', ' ') AS TRANG_THAI	
	FROM hoa_don_ban_hang HD,
		khu_vuc KV,
		chi_tiet_hoa_don_ban_hang CTHD
	WHERE DATE(HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG) BETWEEN P_NGAY_BAT_DAU AND P_NGAY_KET_THUC
		AND HD.STT_KHU_VUC = KV.STT_KHU_VUC
		AND HD.MA_HOA_DON_BAN_HANG = CTHD.MA_HOA_DON_BAN_HANG
	order by HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `thong_ke_lich_su_theo_ngay` */

/*!50003 DROP PROCEDURE IF EXISTS  `thong_ke_lich_su_theo_ngay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `thong_ke_lich_su_theo_ngay`(
	IN P_NGAY_BAT_DAU DATE,
	IN P_NGAY_KET_THUC DATE
)
BEGIN
	SELECT HD.MA_HOA_DON_BAN_HANG,
		KV.TEN_KHU_VUC,
		HD.STT_BAN,		
		LS.MO_TA_LICH_SU_HOA_DON_BAN_HANG,
		DATE_FORMAT(LS.NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG, '%d/%m/%Y %T') AS NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG,
		SUM(CTHD.THANH_TIEN_HOA_DON) AS TONG_TIEN
	FROM hoa_don_ban_hang HD,
		khu_vuc KV,
		chi_tiet_hoa_don_ban_hang CTHD,
		lich_su_hoa_don_ban_hang LS
	WHERE DATE(HD.NGAY_GIO_LAP_HOA_DON_BAN_HANG) BETWEEN P_NGAY_BAT_DAU AND P_NGAY_KET_THUC
		AND HD.STT_KHU_VUC = KV.STT_KHU_VUC
		AND HD.MA_HOA_DON_BAN_HANG = CTHD.MA_HOA_DON_BAN_HANG
		AND HD.MA_HOA_DON_BAN_HANG = LS.MA_HOA_DON_BAN_HANG
	GROUP BY LS.MA_HOA_DON_BAN_HANG, LS.NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG
	order by LS.NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `update_chi_tiet_hoa_don_ban_hang` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_chi_tiet_hoa_don_ban_hang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `update_chi_tiet_hoa_don_ban_hang`(
	in p_MA_HOA_DON_BAN_HANG varchar(50),
	IN p_THOI_GIAN_THAO_TAC_MILI_GIAY VARCHAR(50),
	in p_TEN_SAN_PHAM_BAN varchar(255),
	in p_SO_LUONG_SAN_PHAM_BAN float,
	in p_DON_GIA_SAN_PHAM_BAN int(11),
	IN p_THANH_TIEN_HOA_DON INT(11)
    )
BEGIN
	update chi_tiet_hoa_don_ban_hang
	set TEN_SAN_PHAM_BAN = p_TEN_SAN_PHAM_BAN,		
		THANH_TIEN_HOA_DON = case when (SO_LUONG_SAN_PHAM_BAN * DON_GIA_SAN_PHAM_BAN = THANH_TIEN_HOA_DON and THANH_TIEN_HOA_DON = p_THANH_TIEN_HOA_DON) then p_SO_LUONG_SAN_PHAM_BAN * p_DON_GIA_SAN_PHAM_BAN else  p_THANH_TIEN_HOA_DON end,
		SO_LUONG_SAN_PHAM_BAN = p_SO_LUONG_SAN_PHAM_BAN,
		DON_GIA_SAN_PHAM_BAN = p_DON_GIA_SAN_PHAM_BAN
	where MA_HOA_DON_BAN_HANG = p_MA_HOA_DON_BAN_HANG
		and THOI_GIAN_THAO_TAC_MILI_GIAY = p_THOI_GIAN_THAO_TAC_MILI_GIAY;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
