/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 5.5.20 : Database - quanlybanhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`quanlybanhang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `quanlybanhang`;

/*Table structure for table `chi_tiet_phieu_nhap` */

DROP TABLE IF EXISTS `chi_tiet_phieu_nhap`;

CREATE TABLE `chi_tiet_phieu_nhap` (
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_NHAP` int(11) NOT NULL,
  `SO_LUONG_NHAP` decimal(8,0) DEFAULT NULL,
  `DON_GIA_NHAP` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`STT_CHI_TIET_PHIEU_NHAP`),
  KEY `FK_HH_CTP` (`MA_HANG_HOA`),
  CONSTRAINT `FK_HH_CTP` FOREIGN KEY (`MA_HANG_HOA`) REFERENCES `hang_hoa` (`MA_HANG_HOA`),
  CONSTRAINT `FK_P_CTP` FOREIGN KEY (`MA_PHIEU_NHAP`) REFERENCES `phieu_nhap` (`MA_PHIEU_NHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chi_tiet_phieu_xuat` */

DROP TABLE IF EXISTS `chi_tiet_phieu_xuat`;

CREATE TABLE `chi_tiet_phieu_xuat` (
  `MA_PHIEU_XUAT` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_XUAT` varchar(50) NOT NULL,
  `SO_LUONG_XUAT` decimal(8,0) DEFAULT NULL,
  `DON_GIA_XUAT` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`MA_PHIEU_XUAT`,`STT_CHI_TIET_PHIEU_XUAT`),
  CONSTRAINT `FK_PX_CTPX` FOREIGN KEY (`MA_PHIEU_XUAT`) REFERENCES `phieu_xuat` (`MA_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chi_tiet_ton_kho` */

DROP TABLE IF EXISTS `chi_tiet_ton_kho`;

CREATE TABLE `chi_tiet_ton_kho` (
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_NHAP` int(11) NOT NULL,
  `SO_LUONG_TON_KHO` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`STT_CHI_TIET_PHIEU_NHAP`),
  CONSTRAINT `FK_CT_PN_CT_TK` FOREIGN KEY (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`) REFERENCES `chi_tiet_phieu_nhap` (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chi_tiet_xnt_hien_tai` */

DROP TABLE IF EXISTS `chi_tiet_xnt_hien_tai`;

CREATE TABLE `chi_tiet_xnt_hien_tai` (
  `MA_KHO_HANG` varchar(50) NOT NULL,
  `XNTHT_NGAY` date NOT NULL,
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_NHAP` int(11) NOT NULL,
  `XNTHT_STT` int(11) NOT NULL,
  `XNTHT_SO_LUONG_TON` decimal(8,0) DEFAULT NULL,
  `XNTHT_SO_LUONG_NHAP` decimal(8,0) DEFAULT NULL,
  `XNTHT_SO_LUONG_XUAT` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`MA_KHO_HANG`,`XNTHT_NGAY`,`STT_CHI_TIET_PHIEU_NHAP`,`XNTHT_STT`),
  KEY `FK_CT_PN_CT_XNTHT` (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`STT_CHI_TIET_PHIEU_NHAP`),
  KEY `FK_XNTHT_CT_XNTHT` (`MA_KHO_HANG`,`XNTHT_NGAY`),
  CONSTRAINT `FK_CT_PN_CT_XNTHT` FOREIGN KEY (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`) REFERENCES `chi_tiet_phieu_nhap` (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`),
  CONSTRAINT `FK_XNTHT_CT_XNTHT` FOREIGN KEY (`MA_KHO_HANG`, `XNTHT_NGAY`) REFERENCES `xnt_hien_tai` (`MA_KHO_HANG`, `XNTHT_NGAY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chi_tiet_xuat_nhap_ton` */

DROP TABLE IF EXISTS `chi_tiet_xuat_nhap_ton`;

CREATE TABLE `chi_tiet_xuat_nhap_ton` (
  `STT_XUAT_NHAP_TON` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `XNT_THOI_GIAN_CHOT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `XNT_SO_LUONG_TON_DAU_KY` decimal(8,0) DEFAULT NULL,
  `XNT_SO_LUONG_TON_CUOI_KY` decimal(8,0) DEFAULT NULL,
  `XNT_SO_LUONG_NHAP` decimal(8,0) DEFAULT NULL,
  `XNT_SO_LUONG_XUAT` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`STT_XUAT_NHAP_TON`,`MA_HANG_HOA`),
  KEY `FK_HH_CTXNT` (`MA_HANG_HOA`),
  CONSTRAINT `FK_HH_CTXNT` FOREIGN KEY (`MA_HANG_HOA`) REFERENCES `hang_hoa` (`MA_HANG_HOA`),
  CONSTRAINT `FK_XNT_CTXNT` FOREIGN KEY (`STT_XUAT_NHAP_TON`) REFERENCES `xuat_nhap_ton` (`STT_XUAT_NHAP_TON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chuyen_kho_anh_xa_phieu` */

DROP TABLE IF EXISTS `chuyen_kho_anh_xa_phieu`;

CREATE TABLE `chuyen_kho_anh_xa_phieu` (
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_NHAP` int(11) NOT NULL,
  `MA_PHIEU_XUAT` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_XUAT` varchar(50) NOT NULL,
  `CHUYEN_KHO_GHI_CHU` text,
  PRIMARY KEY (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`MA_PHIEU_XUAT`,`STT_CHI_TIET_PHIEU_NHAP`,`STT_CHI_TIET_PHIEU_XUAT`),
  KEY `FK_CTPN_CKAXP` (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`STT_CHI_TIET_PHIEU_NHAP`),
  KEY `FK_CTPX_CKAXP` (`MA_PHIEU_XUAT`,`STT_CHI_TIET_PHIEU_XUAT`),
  CONSTRAINT `FK_CTPN_CKAXP` FOREIGN KEY (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`) REFERENCES `chi_tiet_phieu_nhap` (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`),
  CONSTRAINT `FK_CTPX_CKAXP` FOREIGN KEY (`MA_PHIEU_XUAT`, `STT_CHI_TIET_PHIEU_XUAT`) REFERENCES `chi_tiet_phieu_xuat` (`MA_PHIEU_XUAT`, `STT_CHI_TIET_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `hang_hoa` */

DROP TABLE IF EXISTS `hang_hoa`;

CREATE TABLE `hang_hoa` (
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `MA_TRANG_THAI_HANG_HOA` varchar(50) NOT NULL,
  `MA_LOAI_HANG_HOA` varchar(50) NOT NULL,
  `TEN_HANG_HOA` varchar(500) DEFAULT NULL,
  `DON_GIA_HANG_HOA` decimal(8,0) DEFAULT NULL,
  `DON_VI_TINH` varchar(200) DEFAULT NULL,
  `GHI_CHU_HANG_HOA` text,
  PRIMARY KEY (`MA_HANG_HOA`),
  KEY `FK_LHH_HH` (`MA_LOAI_HANG_HOA`),
  KEY `FK_TTHH_HH` (`MA_TRANG_THAI_HANG_HOA`),
  CONSTRAINT `FK_LHH_HH` FOREIGN KEY (`MA_LOAI_HANG_HOA`) REFERENCES `loai_hang_hoa` (`MA_LOAI_HANG_HOA`),
  CONSTRAINT `FK_TTHH_HH` FOREIGN KEY (`MA_TRANG_THAI_HANG_HOA`) REFERENCES `trang_thai_hang_hoa` (`MA_TRANG_THAI_HANG_HOA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `khach_hang` */

DROP TABLE IF EXISTS `khach_hang`;

CREATE TABLE `khach_hang` (
  `MA_KHACH_HANG` varchar(50) NOT NULL,
  `MA_LOAI_KHACH_HANG` varchar(50) NOT NULL,
  `TEN_KHACH_HANG` varchar(500) DEFAULT NULL,
  `SDT_KHACH_HANG` varchar(20) DEFAULT NULL,
  `DIA_CHI_KHACH_HANG` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MA_KHACH_HANG`),
  KEY `FK_LKH_KHG` (`MA_LOAI_KHACH_HANG`),
  CONSTRAINT `FK_LKH_KHG` FOREIGN KEY (`MA_LOAI_KHACH_HANG`) REFERENCES `loai_khach_hang` (`MA_LOAI_KHACH_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `kho_hang` */

DROP TABLE IF EXISTS `kho_hang`;

CREATE TABLE `kho_hang` (
  `MA_KHO_HANG` varchar(50) NOT NULL,
  `MA_LOAI_KHO_HANG` varchar(50) NOT NULL,
  `TEN_KHO_HANG` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_KHO_HANG`),
  KEY `FK_LKH_KH` (`MA_LOAI_KHO_HANG`),
  CONSTRAINT `FK_LKH_KH` FOREIGN KEY (`MA_LOAI_KHO_HANG`) REFERENCES `loai_kho_hang` (`MA_LOAI_KHO_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loai_hang_hoa` */

DROP TABLE IF EXISTS `loai_hang_hoa`;

CREATE TABLE `loai_hang_hoa` (
  `MA_LOAI_HANG_HOA` varchar(50) NOT NULL,
  `TEN_LOAI_HANG_HOA` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_LOAI_HANG_HOA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loai_khach_hang` */

DROP TABLE IF EXISTS `loai_khach_hang`;

CREATE TABLE `loai_khach_hang` (
  `MA_LOAI_KHACH_HANG` varchar(50) NOT NULL,
  `TEN_LOAI_KHACH_HANG` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_LOAI_KHACH_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loai_kho_hang` */

DROP TABLE IF EXISTS `loai_kho_hang`;

CREATE TABLE `loai_kho_hang` (
  `MA_LOAI_KHO_HANG` varchar(50) NOT NULL,
  `MO_TA_LOAI_KHO_HANG` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_LOAI_KHO_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loai_phieu_nhap` */

DROP TABLE IF EXISTS `loai_phieu_nhap`;

CREATE TABLE `loai_phieu_nhap` (
  `MA_LOAI_PHIEU_NHAP` varchar(50) NOT NULL,
  `MO_TA_LOAI_PHIEU_NHAP` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_LOAI_PHIEU_NHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loai_phieu_xuat` */

DROP TABLE IF EXISTS `loai_phieu_xuat`;

CREATE TABLE `loai_phieu_xuat` (
  `MA_LOAI_PHIEU_XUAT` varchar(50) NOT NULL,
  `MO_TA_LOAI_PHIEU_XUAT` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_LOAI_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nha_cung_cap` */

DROP TABLE IF EXISTS `nha_cung_cap`;

CREATE TABLE `nha_cung_cap` (
  `MA_NHA_CUNG_CAP` varchar(50) NOT NULL,
  `TEN_NHA_CUNG_CAP` varchar(500) DEFAULT NULL,
  `SDT_NHA_CUNG_CAP` varchar(20) DEFAULT NULL,
  `DIA_CHI_NHA_CUNG_CAP` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_NHA_CUNG_CAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nhan_vien` */

DROP TABLE IF EXISTS `nhan_vien`;

CREATE TABLE `nhan_vien` (
  `MA_NHAN_VIEN` varchar(50) NOT NULL,
  `MA_TAI_KHOAN` varchar(50) DEFAULT NULL,
  `TEN_NHAN_VIEN` varchar(500) DEFAULT NULL,
  `SDT_NHAN_VIEN` varchar(20) DEFAULT NULL,
  `DIA_CHI_NHAN_VIEN` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_NHAN_VIEN`),
  KEY `FK_NV_TK` (`MA_TAI_KHOAN`),
  CONSTRAINT `FK_NV_TK` FOREIGN KEY (`MA_TAI_KHOAN`) REFERENCES `tai_khoan` (`MA_TAI_KHOAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `phieu_nhap` */

DROP TABLE IF EXISTS `phieu_nhap`;

CREATE TABLE `phieu_nhap` (
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_TAI_KHOAN_NHAP` varchar(50) NOT NULL,
  `MA_LOAI_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_TRANG_THAI_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_KHO_HANG` varchar(50) NOT NULL,
  `MA_NHA_CUNG_CAP` varchar(50) NOT NULL,
  `TEN_PHIEU_NHAP` varchar(100) DEFAULT NULL,
  `VAT_PHIEU_NHAP` decimal(8,0) DEFAULT NULL,
  `THOI_GIAN_TAO_PHIEU_NHAP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GHI_CHU_PHIEU_NHAP` text,
  PRIMARY KEY (`MA_PHIEU_NHAP`),
  KEY `FK_KH_P` (`MA_KHO_HANG`),
  KEY `FK_LP_P` (`MA_LOAI_PHIEU_NHAP`),
  KEY `FK_NCC_PN` (`MA_NHA_CUNG_CAP`),
  KEY `FK_TKN_PN` (`MA_TAI_KHOAN_NHAP`),
  KEY `FK_TTP_P` (`MA_TRANG_THAI_PHIEU_NHAP`),
  CONSTRAINT `FK_KH_P` FOREIGN KEY (`MA_KHO_HANG`) REFERENCES `kho_hang` (`MA_KHO_HANG`),
  CONSTRAINT `FK_LP_P` FOREIGN KEY (`MA_LOAI_PHIEU_NHAP`) REFERENCES `loai_phieu_nhap` (`MA_LOAI_PHIEU_NHAP`),
  CONSTRAINT `FK_NCC_PN` FOREIGN KEY (`MA_NHA_CUNG_CAP`) REFERENCES `nha_cung_cap` (`MA_NHA_CUNG_CAP`),
  CONSTRAINT `FK_TKN_PN` FOREIGN KEY (`MA_TAI_KHOAN_NHAP`) REFERENCES `tai_khoan_nhap` (`MA_TAI_KHOAN_NHAP`),
  CONSTRAINT `FK_TTP_P` FOREIGN KEY (`MA_TRANG_THAI_PHIEU_NHAP`) REFERENCES `trang_thai_phieu` (`MA_TRANG_THAI_PHIEU_NHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `phieu_xuat` */

DROP TABLE IF EXISTS `phieu_xuat`;

CREATE TABLE `phieu_xuat` (
  `MA_PHIEU_XUAT` varchar(50) NOT NULL,
  `MA_LOAI_PHIEU_XUAT` varchar(50) NOT NULL,
  `MA_TAI_KHOAN_XUAT` varchar(50) NOT NULL,
  `MA_TRANG_THAI_PHIEU_XUAT` varchar(50) NOT NULL,
  `MA_KHACH_HANG` varchar(50) NOT NULL,
  `TEN_PHIEU_XUAT` varchar(500) DEFAULT NULL,
  `VAT_PHIEU_XUAT` decimal(8,0) DEFAULT NULL,
  `THOI_GIAN_TAO_PHIEU_XUAT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GHI_CHU_PHIEU_XUAT` text,
  PRIMARY KEY (`MA_PHIEU_XUAT`),
  KEY `FK_KH_PX` (`MA_KHACH_HANG`),
  KEY `FK_LPX_PX` (`MA_LOAI_PHIEU_XUAT`),
  KEY `FK_TKX_PX` (`MA_TAI_KHOAN_XUAT`),
  KEY `FK_TTPX_PX` (`MA_TRANG_THAI_PHIEU_XUAT`),
  CONSTRAINT `FK_KH_PX` FOREIGN KEY (`MA_KHACH_HANG`) REFERENCES `khach_hang` (`MA_KHACH_HANG`),
  CONSTRAINT `FK_LPX_PX` FOREIGN KEY (`MA_LOAI_PHIEU_XUAT`) REFERENCES `loai_phieu_xuat` (`MA_LOAI_PHIEU_XUAT`),
  CONSTRAINT `FK_TKX_PX` FOREIGN KEY (`MA_TAI_KHOAN_XUAT`) REFERENCES `tai_khoan_xuat` (`MA_TAI_KHOAN_XUAT`),
  CONSTRAINT `FK_TTPX_PX` FOREIGN KEY (`MA_TRANG_THAI_PHIEU_XUAT`) REFERENCES `trang_thai_phieu_xuat` (`MA_TRANG_THAI_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `phieu_xuat_anh_xa_phieu_nhap` */

DROP TABLE IF EXISTS `phieu_xuat_anh_xa_phieu_nhap`;

CREATE TABLE `phieu_xuat_anh_xa_phieu_nhap` (
  `MA_PHIEU_NHAP` varchar(50) NOT NULL,
  `MA_HANG_HOA` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_NHAP` int(11) NOT NULL,
  `MA_PHIEU_XUAT` varchar(50) NOT NULL,
  `STT_CHI_TIET_PHIEU_XUAT` varchar(50) NOT NULL,
  `STT_PHIEU_XUAT_ANH_XA_PHIEU_NHAP` int(11) NOT NULL,
  PRIMARY KEY (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`MA_PHIEU_XUAT`,`STT_CHI_TIET_PHIEU_NHAP`,`STT_CHI_TIET_PHIEU_XUAT`,`STT_PHIEU_XUAT_ANH_XA_PHIEU_NHAP`),
  KEY `FK_CTPN_PXAXPN` (`MA_PHIEU_NHAP`,`MA_HANG_HOA`,`STT_CHI_TIET_PHIEU_NHAP`),
  KEY `FK_CTPX_PXASPN` (`MA_PHIEU_XUAT`,`STT_CHI_TIET_PHIEU_XUAT`),
  CONSTRAINT `FK_CTPN_PXAXPN` FOREIGN KEY (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`) REFERENCES `chi_tiet_phieu_nhap` (`MA_PHIEU_NHAP`, `MA_HANG_HOA`, `STT_CHI_TIET_PHIEU_NHAP`),
  CONSTRAINT `FK_CTPX_PXASPN` FOREIGN KEY (`MA_PHIEU_XUAT`, `STT_CHI_TIET_PHIEU_XUAT`) REFERENCES `chi_tiet_phieu_xuat` (`MA_PHIEU_XUAT`, `STT_CHI_TIET_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tai_khoan` */

DROP TABLE IF EXISTS `tai_khoan`;

CREATE TABLE `tai_khoan` (
  `MA_TAI_KHOAN` varchar(50) NOT NULL,
  `MA_TAI_KHOAN_XUAT` varchar(50) DEFAULT NULL,
  `MA_NHAN_VIEN` varchar(50) NOT NULL,
  `MA_TAI_KHOAN_NHAP` varchar(50) DEFAULT NULL,
  `MAT_KHAU` varchar(500) DEFAULT NULL,
  `DA_BI_KHOA` int(11) DEFAULT NULL,
  PRIMARY KEY (`MA_TAI_KHOAN`),
  KEY `FK_NV_TK2` (`MA_NHAN_VIEN`),
  KEY `FK_TK_TKN` (`MA_TAI_KHOAN_NHAP`),
  KEY `FK_TK_TKX` (`MA_TAI_KHOAN_XUAT`),
  CONSTRAINT `FK_NV_TK2` FOREIGN KEY (`MA_NHAN_VIEN`) REFERENCES `nhan_vien` (`MA_NHAN_VIEN`),
  CONSTRAINT `FK_TK_TKN` FOREIGN KEY (`MA_TAI_KHOAN_NHAP`) REFERENCES `tai_khoan_nhap` (`MA_TAI_KHOAN_NHAP`),
  CONSTRAINT `FK_TK_TKX` FOREIGN KEY (`MA_TAI_KHOAN_XUAT`) REFERENCES `tai_khoan_xuat` (`MA_TAI_KHOAN_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tai_khoan_nhap` */

DROP TABLE IF EXISTS `tai_khoan_nhap`;

CREATE TABLE `tai_khoan_nhap` (
  `MA_TAI_KHOAN_NHAP` varchar(50) NOT NULL,
  `MA_TAI_KHOAN` varchar(50) NOT NULL,
  PRIMARY KEY (`MA_TAI_KHOAN_NHAP`),
  KEY `FK_TK_TKN2` (`MA_TAI_KHOAN`),
  CONSTRAINT `FK_TK_TKN2` FOREIGN KEY (`MA_TAI_KHOAN`) REFERENCES `tai_khoan` (`MA_TAI_KHOAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tai_khoan_xuat` */

DROP TABLE IF EXISTS `tai_khoan_xuat`;

CREATE TABLE `tai_khoan_xuat` (
  `MA_TAI_KHOAN_XUAT` varchar(50) NOT NULL,
  `MA_TAI_KHOAN` varchar(50) NOT NULL,
  `BI_KHOA_TAI_KHOAN_XUAT` int(11) DEFAULT NULL,
  PRIMARY KEY (`MA_TAI_KHOAN_XUAT`),
  KEY `FK_TK_TKX2` (`MA_TAI_KHOAN`),
  CONSTRAINT `FK_TK_TKX2` FOREIGN KEY (`MA_TAI_KHOAN`) REFERENCES `tai_khoan` (`MA_TAI_KHOAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `testlog` */

DROP TABLE IF EXISTS `testlog`;

CREATE TABLE `testlog` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `testtable` */

DROP TABLE IF EXISTS `testtable`;

CREATE TABLE `testtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtable_ux` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `trang_thai_hang_hoa` */

DROP TABLE IF EXISTS `trang_thai_hang_hoa`;

CREATE TABLE `trang_thai_hang_hoa` (
  `MA_TRANG_THAI_HANG_HOA` varchar(50) NOT NULL,
  `MO_TA_TRANG_THAI_HANG_HOA` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_TRANG_THAI_HANG_HOA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `trang_thai_phieu` */

DROP TABLE IF EXISTS `trang_thai_phieu`;

CREATE TABLE `trang_thai_phieu` (
  `MA_TRANG_THAI_PHIEU_NHAP` varchar(50) NOT NULL,
  `MO_TA_TRANG_THAI_PHIEU_NHAP` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_TRANG_THAI_PHIEU_NHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `trang_thai_phieu_xuat` */

DROP TABLE IF EXISTS `trang_thai_phieu_xuat`;

CREATE TABLE `trang_thai_phieu_xuat` (
  `MA_TRANG_THAI_PHIEU_XUAT` varchar(50) NOT NULL,
  `MO_TA_TRANG_THAI_PHIEU_XUAT` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MA_TRANG_THAI_PHIEU_XUAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `xnt_hien_tai` */

DROP TABLE IF EXISTS `xnt_hien_tai`;

CREATE TABLE `xnt_hien_tai` (
  `MA_KHO_HANG` varchar(50) NOT NULL,
  `XNTHT_NGAY` date NOT NULL,
  PRIMARY KEY (`MA_KHO_HANG`,`XNTHT_NGAY`),
  CONSTRAINT `FK_KH_XNTHT` FOREIGN KEY (`MA_KHO_HANG`) REFERENCES `kho_hang` (`MA_KHO_HANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `xuat_nhap_ton` */

DROP TABLE IF EXISTS `xuat_nhap_ton`;

CREATE TABLE `xuat_nhap_ton` (
  `STT_XUAT_NHAP_TON` varchar(50) NOT NULL,
  `XNT_THOI_GIAN_TAO` datetime DEFAULT NULL,
  PRIMARY KEY (`STT_XUAT_NHAP_TON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Trigger structure for table `chi_tiet_phieu_nhap` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `after_insert_chi_tiet_phieu_nhap` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `after_insert_chi_tiet_phieu_nhap` AFTER INSERT ON `chi_tiet_phieu_nhap` FOR EACH ROW BEGIN
	INSERT INTO chi_tiet_ton_kho(MA_PHIEU_NHAP, MA_HANG_HOA, STT_CHI_TIET_PHIEU_NHAP, SO_LUONG_TON_KHO)
		VALUES(new.MA_PHIEU_NHAP, new.MA_HANG_HOA, new.STT_CHI_TIET_PHIEU_NHAP, new.SO_LUONG_NHAP);
			
	INSERT INTO chi_tiet_xnt_hien_tai(MA_KHO_HANG, XNTHT_NGAY, MA_PHIEU_NHAP, MA_HANG_HOA, STT_CHI_TIET_PHIEU_NHAP, XNTHT_STT, XNTHT_SO_LUONG_TON, XNTHT_SO_LUONG_NHAP, XNTHT_SO_LUONG_XUAT)
		SELECT MA_KHO_HANG,
			DATE(THOI_GIAN_TAO_PHIEU_NHAP) AS XNTHT_NGAY,
			MA_PHIEU_NHAP,
			new.MA_HANG_HOA,
			new.STT_CHI_TIET_PHIEU_NHAP,
			(SELECT IFNULL(MAX(XNTHT_STT), 0) + 1 FROM chi_tiet_xnt_hien_tai WHERE MA_KHO_HANG = pn.MA_KHO_HANG AND XNTHT_NGAY = DATE(THOI_GIAN_TAO_PHIEU_NHAP)) AS XNTHT_STT,
			0 AS XNTHT_SO_LUONG_TON, 
			new.SO_LUONG_NHAP AS XNTHT_SO_LUONG_NHAP,
			0 AS XNTHT_SO_LUONG_XUAT 
		FROM phieu_nhap pn
		WHERE MA_PHIEU_NHAP = new.MA_PHIEU_NHAP;	
END */$$


DELIMITER ;

/* Trigger structure for table `chi_tiet_phieu_nhap` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `before_delete_chi_tiet_phieu_nhap` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `before_delete_chi_tiet_phieu_nhap` BEFORE DELETE ON `chi_tiet_phieu_nhap` FOR EACH ROW BEGIN
	DELETE FROM chi_tiet_ton_kho
	WHERE MA_PHIEU_NHAP = OLD.MA_PHIEU_NHAP
		AND `MA_HANG_HOA` = OLD.MA_HANG_HOA
		AND `STT_CHI_TIET_PHIEU_NHAP` = OLD.STT_CHI_TIET_PHIEU_NHAP;
		
	DELETE FROM chi_tiet_xnt_hien_tai
	WHERE `MA_PHIEU_NHAP` = OLD.MA_PHIEU_NHAP
		AND `STT_CHI_TIET_PHIEU_NHAP` = OLD.MA_PHIEU_NHAP
		AND `MA_HANG_HOA` = OLD.MA_PHIEU_NHAP;
END */$$


DELIMITER ;

/* Trigger structure for table `phieu_nhap` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `after_insert_phieu_nhap` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `after_insert_phieu_nhap` AFTER INSERT ON `phieu_nhap` FOR EACH ROW BEGIN		
	insert into xnt_hien_tai(MA_KHO_HANG, XNTHT_NGAY)
	select new.MA_KHO_HANG, date(new.THOI_GIAN_TAO_PHIEU_NHAP) as XNTHT_NGAY
	from dual
	where not exists (select * from xnt_hien_tai where MA_KHO_HANG = new.MA_KHO_HANG and XNTHT_NGAY = DATE(new.THOI_GIAN_TAO_PHIEU_NHAP));
	
END */$$


DELIMITER ;

/* Trigger structure for table `phieu_nhap` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `before_delete_phieu_nhap` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `before_delete_phieu_nhap` BEFORE DELETE ON `phieu_nhap` FOR EACH ROW BEGIN
	DELETE FROM `chi_tiet_phieu_nhap`
	WHERE MA_PHIEU_NHAP = OLD.MA_PHIEU_NHAP;
		
	DELETE FROM `xnt_hien_tai`
	WHERE MA_PHIEU_NHAP = OLD.MA_PHIEU_NHAP;
END */$$


DELIMITER ;

/* Procedure structure for procedure `sua_chi_tiet_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `sua_chi_tiet_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sua_chi_tiet_phieu_nhap`(
	p_ma_phieu_nhap VARCHAR(50),
	p_ma_hang_hoa varchar(50),
	p_stt_chi_tiet_phieu_nhap int(11),
	p_so_luong_nhap decimal(8,0),
	p_don_gia_nhap decimal(8,0)
)
BEGIN	
/*
XNT:
	+ Nhap tang: p_so_luong_nhap
	+ Ngay XNT: THOI_GIAN_TAO_PHIEU_NHAP
*/
	declare v_ket_qua int(1) default 0;
	
	delete from chi_tiet_phieu_nhap
	where MA_PHIEU_NHAP = p_ma_phieu_nhap
		and `MA_HANG_HOA` = p_ma_hang_hoa
		and `STT_CHI_TIET_PHIEU_NHAP` = p_stt_chi_tiet_phieu_nhap;
	
	SELECT ROW_COUNT() INTO v_ket_qua;
	
	if v_ket_qua = 1 then
		insert into chi_tiet_phieu_nhap(MA_PHIEU_NHAP, MA_HANG_HOA, STT_CHI_TIET_PHIEU_NHAP, SO_LUONG_NHAP, DON_GIA_NHAP)
		values(p_ma_phieu_nhap, p_ma_hang_hoa, p_stt_chi_tiet_phieu_nhap, p_so_luong_nhap, p_don_gia_nhap);
		
		SELECT ROW_COUNT() INTO v_ket_qua;
	end if;
	
	select v_ket_qua as KET_QUA;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sua_hang_hoa` */

/*!50003 DROP PROCEDURE IF EXISTS  `sua_hang_hoa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sua_hang_hoa`(
	p_ma_hang_hoa VARCHAR(50),
	p_ma_trang_thai_hang_hoa varchar(50),
	p_ma_loai_hang_hoa varchar(50),
	p_ten_hang_hoa varchar(500),
	p_don_gia_hang_hoa decimal(8,0),
	p_don_vi_tinh varchar(200),
	p_ghi_chu_hang_hoa text
)
BEGIN	
	update hang_hoa
	set MA_TRANG_THAI_HANG_HOA = p_ma_trang_thai_hang_hoa,
		MA_LOAI_HANG_HOA = p_ma_loai_hang_hoa,
		TEN_HANG_HOA = p_ten_hang_hoa,
		DON_GIA_HANG_HOA = p_don_gia_hang_hoa,
		DON_VI_TINH = p_don_vi_tinh,
		GHI_CHU_HANG_HOA = p_ghi_chu_hang_hoa
	where MA_HANG_HOA = p_ma_hang_hoa;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sua_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `sua_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sua_phieu_nhap`(
	p_ma_phieu_nhap varchar(50),
	p_ma_loai_phieu_nhap varchar(50),
	p_ma_kho_hang varchar(50),
	p_ma_nha_cung_cap varchar(50),
	p_ten_phieu_nhap varchar(50),
	p_vat_phieu_nhap decimal(8,0),
	p_ghi_chu_phieu_nhap text(2000)
)
BEGIN	
	update phieu_nhap
	set MA_LOAI_PHIEU_NHAP = p_ma_loai_phieu_nhap,
		MA_KHO_HANG = p_ma_kho_hang,
		MA_NHA_CUNG_CAP = p_ma_nha_cung_cap,
		TEN_PHIEU_NHAP = p_ten_phieu_nhap,
		VAT_PHIEU_NHAP = p_vat_phieu_nhap,
		GHI_CHU_PHIEU_NHAP = p_ghi_chu_phieu_nhap	
	where MA_PHIEU_NHAP = p_ma_phieu_nhap
		and not exists (select ct.*
				from chi_tiet_phieu_nhap ct
				where ct.MA_PHIEU_NHAP = p_ma_phieu_nhap)
	;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `them_chi_tiet_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `them_chi_tiet_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `them_chi_tiet_phieu_nhap`(
	p_ma_phieu_nhap VARCHAR(50),
	p_ma_hang_hoa varchar(50),
	p_so_luong_nhap decimal(8,0),
	p_don_gia_nhap decimal(8,0)
)
BEGIN	
/*
XNT:
	+ Nhap tang: p_so_luong_nhap
	+ Ngay XNT: THOI_GIAN_TAO_PHIEU_NHAP
*/
	declare v_stt_chi_tiet_phieu_nhap int(11);
	declare v_ket_qua int(1) default 0;
	
	select max(STT_CHI_TIET_PHIEU_NHAP) + 1 into v_stt_chi_tiet_phieu_nhap
	from chi_tiet_phieu_nhap
	where MA_PHIEU_NHAP = p_ma_phieu_nhap;
	
	insert into chi_tiet_phieu_nhap(MA_PHIEU_NHAP, MA_HANG_HOA, STT_CHI_TIET_PHIEU_NHAP, SO_LUONG_NHAP, DON_GIA_NHAP)
	select p_ma_phieu_nhap as MA_PHIEU_NHAP, 
		p_ma_hang_hoa as MA_HANG_HOA, 
		v_stt_chi_tiet_phieu_nhap as STT_CHI_TIET_PHIEU_NHAP, 
		p_so_luong_nhap as SO_LUONG_NHAP, 
		p_don_gia_nhap as DON_GIA_NHAP
	from dual
	where not exists(select * from chi_tiet_phieu_nhap where MA_PHIEU_NHAP = p_ma_phieu_nhap and MA_HANG_HOA = p_ma_hang_hoa limit 1);
	
	
	SELECT ROW_COUNT() as KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `them_hang_hoa` */

/*!50003 DROP PROCEDURE IF EXISTS  `them_hang_hoa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `them_hang_hoa`(
	p_ma_loai_hang_hoa varchar(50),
	p_ten_hang_hoa varchar(500),
	p_don_gia_hang_hoa decimal(8,0),
	p_don_vi_tinh varchar(200),
	p_ghi_chu_hang_hoa text
)
BEGIN
	declare v_ma_hang_hoa varchar(50);
	declare v_ma_trang_thai_hang_hoa varchar(50) DEFAULT 'HOAT_DONG';
	
	select concat('HH', ifnull(max(cast(mid(MA_HANG_HOA, 3) as unsigned)), 0) + 1) into  v_ma_hang_hoa
	from hang_hoa;
	
	insert into hang_hoa(MA_HANG_HOA, MA_TRANG_THAI_HANG_HOA, MA_LOAI_HANG_HOA, TEN_HANG_HOA, DON_GIA_HANG_HOA, DON_VI_TINH, GHI_CHU_HANG_HOA)
	values(v_ma_hang_hoa, v_ma_trang_thai_hang_hoa, p_ma_loai_hang_hoa, p_ten_hang_hoa, p_don_gia_hang_hoa, p_don_vi_tinh, p_ghi_chu_hang_hoa);
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `them_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `them_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `them_phieu_nhap`(
	p_ma_tai_khoan_nhap VARCHAR(50),
	p_ma_loai_phieu_nhap varchar(50),
	p_ma_trang_thai_phieu_nhap varchar(50),
	p_ma_kho_hang varchar(50),
	p_ma_nha_cung_cap varchar(50),
	p_ten_phieu_nhap varchar(50),
	p_vat_phieu_nhap decimal(8,0),
	p_ghi_chu_phieu_nhap text(2000)
)
BEGIN	
	declare v_ma_phieu_nhap varchar(50);
	declare v_ma_trang_thai_phieu_nhap varchar(50) default 'MOI';
	
	SELECT CONCAT('PN', DATE_FORMAT(NOW(), '%d_%m_%Y_%H_%i_%s')) INTO v_ma_phieu_nhap
	from phieu_nhap;
	
	insert into phieu_nhap(MA_PHIEU_NHAP, MA_TAI_KHOAN_NHAP, MA_LOAI_PHIEU_NHAP, MA_TRANG_THAI_PHIEU_NHAP, MA_KHO_HANG, MA_NHA_CUNG_CAP, TEN_PHIEU_NHAP, VAT_PHIEU_NHAP, THOI_GIAN_TAO_PHIEU_NHAP, GHI_CHU_PHIEU_NHAP)
	values(v_ma_phieu_nhap, p_ma_tai_khoan_nhap, p_ma_loai_phieu_nhap, p_ma_trang_thai_phieu_nhap, p_ma_kho_hang, p_ma_nha_cung_cap, p_ten_phieu_nhap, p_vat_phieu_nhap, p_ghi_chu_phieu_nhap);
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `xoa_chi_tiet_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `xoa_chi_tiet_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `xoa_chi_tiet_phieu_nhap`(
	p_ma_phieu_nhap VARCHAR(50),
	p_ma_hang_hoa varchar(50),
	p_stt_chi_tiet_phieu_nhap int(11)
)
BEGIN		
	delete from chi_tiet_phieu_nhap
	where MA_PHIEU_NHAP = p_ma_phieu_nhap
		and `MA_HANG_HOA` = p_ma_hang_hoa
		and `STT_CHI_TIET_PHIEU_NHAP` = p_stt_chi_tiet_phieu_nhap;
	
	SELECT ROW_COUNT() as KET_QUA;
END */$$
DELIMITER ;

/* Procedure structure for procedure `xoa_hang_hoa` */

/*!50003 DROP PROCEDURE IF EXISTS  `xoa_hang_hoa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `xoa_hang_hoa`(
	p_ma_hang_hoa VARCHAR(50)
)
BEGIN	
	delete from hang_hoa
	where MA_HANG_HOA = p_ma_hang_hoa;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `xoa_phieu_nhap` */

/*!50003 DROP PROCEDURE IF EXISTS  `xoa_phieu_nhap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `xoa_phieu_nhap`(
	p_ma_phieu_nhap varchar(50)
)
BEGIN	
	delete from phieu_nhap	
	where MA_PHIEU_NHAP = p_ma_phieu_nhap;
	
	SELECT ROW_COUNT() AS KET_QUA;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
