/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : db_library

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-24 15:22:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_bookcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookcase
-- ----------------------------
INSERT INTO `tb_bookcase` VALUES ('1', '书架1', '3');
INSERT INTO `tb_bookcase` VALUES ('2', '书架2', '3');
INSERT INTO `tb_bookcase` VALUES ('3', '书架3', '3');
INSERT INTO `tb_bookcase` VALUES ('4', '书架4', '3');
INSERT INTO `tb_bookcase` VALUES ('5', '书架5', '3');
INSERT INTO `tb_bookcase` VALUES ('6', '书架6', '3');

-- ----------------------------
-- Table structure for tb_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) DEFAULT NULL,
  `bookcase` int(10) DEFAULT NULL,
  `inTime` varchar(20) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('1', '12301', '语文书', '1', '大雄', '大雄', '1', '15.49', '156', '1', '2016-10-17', 'sola', '1');
INSERT INTO `tb_bookinfo` VALUES ('2', '12302', '福尔摩斯探案集', '2', '也比', '也比', '2', '32.11', '333', '2', '2016-10-17', 'sola', '1');
INSERT INTO `tb_bookinfo` VALUES ('3', '12303', '葵花宝典', '3', '胖虎', '胖虎', '3', '1000.00', '1', '3', '2010-03-17', 'sola', '0');
INSERT INTO `tb_bookinfo` VALUES ('5', '12305', '园丁指南', '8', '丁指', '丁指', '5', '333.00', '600', '5', '2008-05-01', 'sola', '1');
INSERT INTO `tb_bookinfo` VALUES ('8', '20160136', '神曲', '11', '但丁', '但丁', '2', '23.00', '200', '6', '2016-10-24', 'sola', '0');
INSERT INTO `tb_bookinfo` VALUES ('9', '12306', '数学书', '1', '丝丝', '丝丝', '1', '23.00', '200', '4', '2015-02-12', 'sola', '0');

-- ----------------------------
-- Table structure for tb_booktype
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES ('1', '教科书', '30');
INSERT INTO `tb_booktype` VALUES ('2', '小说', '20');
INSERT INTO `tb_booktype` VALUES ('3', '武功秘籍', '5');
INSERT INTO `tb_booktype` VALUES ('6', '旅游指南', '50');
INSERT INTO `tb_booktype` VALUES ('7', '食谱', '20');
INSERT INTO `tb_booktype` VALUES ('8', '工具书', '12');
INSERT INTO `tb_booktype` VALUES ('9', '漫画书', '12');
INSERT INTO `tb_booktype` VALUES ('11', '文学', '20');

-- ----------------------------
-- Table structure for tb_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `readerid` int(10) DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` varchar(20) DEFAULT NULL,
  `backTime` varchar(20) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES ('1', '1', '1', '2016-12-13', '2017-02-33', 'sola', '1');
INSERT INTO `tb_borrow` VALUES ('2', '1', '2', '2016-05-11', '2016-12-11', 'sola', '1');
INSERT INTO `tb_borrow` VALUES ('3', '1', '3', '2016-04-13', '2016-11-02', 'sola', '1');
INSERT INTO `tb_borrow` VALUES ('4', '1', '5', '2016-02-12', '2016-11-6', 'sola', '0');
INSERT INTO `tb_borrow` VALUES ('5', '1', '5', '2016-10-24', '2016-11-6', 'sola', '1');
INSERT INTO `tb_borrow` VALUES ('6', '1', '9', '2016-10-24', '2016-11-24', 'sola', '0');

-- ----------------------------
-- Table structure for tb_borrowcount
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrowcount`;
CREATE TABLE `tb_borrowcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) DEFAULT NULL,
  `borrowCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_borrowcount
-- ----------------------------
INSERT INTO `tb_borrowcount` VALUES ('1', '1', '22');
INSERT INTO `tb_borrowcount` VALUES ('2', '2', '101');
INSERT INTO `tb_borrowcount` VALUES ('3', '3', '15');
INSERT INTO `tb_borrowcount` VALUES ('4', '4', '16');
INSERT INTO `tb_borrowcount` VALUES ('5', '5', '18');
INSERT INTO `tb_borrowcount` VALUES ('6', '6', '18');
INSERT INTO `tb_borrowcount` VALUES ('7', '9', '1');

-- ----------------------------
-- Table structure for tb_giveback
-- ----------------------------
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE `tb_giveback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` varchar(20) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_giveback
-- ----------------------------
INSERT INTO `tb_giveback` VALUES ('1', '1', '1', '2016-10-24', 'sola');
INSERT INTO `tb_giveback` VALUES ('2', '1', '5', '2016-10-24', 'sola');

-- ----------------------------
-- Table structure for tb_library
-- ----------------------------
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE `tb_library` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_library
-- ----------------------------
INSERT INTO `tb_library` VALUES ('1', '图书馆', 'sola', '15969699202', '济宁', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');
INSERT INTO `tb_library` VALUES ('5', 'xxå¾ä¹¦é¦', 'sola', '15969699202', 'æµå®', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');
INSERT INTO `tb_library` VALUES ('6', '图书馆zz', 'sola', '15969699202', '济宁', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');
INSERT INTO `tb_library` VALUES ('7', '图书馆zz', 'sola', '15969699202', '济南', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');
INSERT INTO `tb_library` VALUES ('8', '图书馆zdd', 'sola', '15969699202', '济南', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');
INSERT INTO `tb_library` VALUES ('9', '图书馆zddaa', 'sola', '15969699202', '济南', '429602815', 'www.xxx.com', '2016-02-13', 'xxxxx');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'sola', 'sola');

-- ----------------------------
-- Table structure for tb_publishing
-- ----------------------------
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_publishing
-- ----------------------------
INSERT INTO `tb_publishing` VALUES ('1', '高等教育出版社');
INSERT INTO `tb_publishing` VALUES ('2', '红太阳出版社');
INSERT INTO `tb_publishing` VALUES ('3', '秘密组织出版社');
INSERT INTO `tb_publishing` VALUES ('4', '大社会出版社');
INSERT INTO `tb_publishing` VALUES ('5', '活着出版社');
INSERT INTO `tb_publishing` VALUES ('6', '有生之年版社');

-- ----------------------------
-- Table structure for tb_reader
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reader
-- ----------------------------
INSERT INTO `tb_reader` VALUES ('1', '悟空', '男', '20160130', '工作人员', '2013-02-13', '身份证', '420984199402130752', '15969699202', '429602815@qq.com', '2016-10-17', 'sola', 'xxx');
INSERT INTO `tb_reader` VALUES ('2', '八戒', '男', '20160131', '学生', '2015-11-02', '身份证', '320984199811020371', '13164669226', '325351@qq.com', '2010-09-22', 'sola', 'x');
INSERT INTO `tb_reader` VALUES ('3', '沙僧', '男', '20160132', '教师', '2008-08-11', '身份证', '350553188901110233', '18435699882', '123456@163.com', '2009-10-03', 'sola', '123');
INSERT INTO `tb_reader` VALUES ('4', '曹操', '男', '20160133', '教师', '2000-01-01', '身份证', '350983188001010337', '13366699333', '123456789@163.com', '2008-01-01', 'sola', '1');
INSERT INTO `tb_reader` VALUES ('8', '王耀', '男', '20160136', '学生', '2011-11-11', '身份证', '420984201111110752', '15911133322', '15911133322@qq.com', '2016-10-24', 'sola', '');

-- ----------------------------
-- Table structure for tb_readertype
-- ----------------------------
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE `tb_readertype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_readertype
-- ----------------------------
INSERT INTO `tb_readertype` VALUES ('2', '学生', '3');
INSERT INTO `tb_readertype` VALUES ('3', '教师', '4');
INSERT INTO `tb_readertype` VALUES ('4', '指导员', '2');
INSERT INTO `tb_readertype` VALUES ('5', '员工', '2');
INSERT INTO `tb_readertype` VALUES ('6', '工作人员', '5');

-- ----------------------------
-- View structure for bookview
-- ----------------------------
DROP VIEW IF EXISTS `bookview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bookview` AS select `b2`.`id` AS `id`,`b2`.`barcode` AS `barcode`,`b2`.`bookname` AS `bookname`,`b2`.`typename` AS `typename`,`b2`.`author` AS `author`,`b2`.`translator` AS `translator`,`b2`.`pubname` AS `pubname`,`b2`.`price` AS `price`,`b2`.`page` AS `page`,`db_library`.`tb_bookcase`.`name` AS `name`,`b2`.`inTime` AS `inTime`,`b2`.`del` AS `del`,`b2`.`days` AS `days` from (((select `b1`.`id` AS `id`,`b1`.`barcode` AS `barcode`,`b1`.`bookname` AS `bookname`,`b1`.`typename` AS `typename`,`b1`.`author` AS `author`,`b1`.`translator` AS `translator`,`db_library`.`tb_publishing`.`pubname` AS `pubname`,`b1`.`price` AS `price`,`b1`.`page` AS `page`,`b1`.`bookcase` AS `bookcase`,`b1`.`inTime` AS `inTime`,`b1`.`del` AS `del`,`b1`.`days` AS `days` from (((select `db_library`.`tb_bookinfo`.`id` AS `id`,`db_library`.`tb_bookinfo`.`barcode` AS `barcode`,`db_library`.`tb_bookinfo`.`bookname` AS `bookname`,`db_library`.`tb_booktype`.`typename` AS `typename`,`db_library`.`tb_bookinfo`.`author` AS `author`,`db_library`.`tb_bookinfo`.`translator` AS `translator`,`db_library`.`tb_bookinfo`.`ISBN` AS `ISBN`,`db_library`.`tb_bookinfo`.`price` AS `price`,`db_library`.`tb_bookinfo`.`page` AS `page`,`db_library`.`tb_bookinfo`.`bookcase` AS `bookcase`,`db_library`.`tb_bookinfo`.`inTime` AS `inTime`,`db_library`.`tb_bookinfo`.`del` AS `del`,`db_library`.`tb_booktype`.`days` AS `days` from (`db_library`.`tb_bookinfo` left join `db_library`.`tb_booktype` on((`db_library`.`tb_bookinfo`.`typeid` = `db_library`.`tb_booktype`.`id`))))) `b1` left join `db_library`.`tb_publishing` on((`b1`.`ISBN` = `db_library`.`tb_publishing`.`ISBN`))))) `b2` left join `db_library`.`tb_bookcase` on((`b2`.`bookcase` = `db_library`.`tb_bookcase`.`id`))) ;

-- ----------------------------
-- View structure for borrowview
-- ----------------------------
DROP VIEW IF EXISTS `borrowview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `borrowview` AS select `b3`.`borrowid` AS `borrowid`,`b3`.`bookid` AS `bookid`,`b3`.`bookname` AS `bookname`,`db_library`.`tb_publishing`.`pubname` AS `pubname`,`b3`.`price` AS `price`,`b3`.`bookcase` AS `bookcase`,`b3`.`readerid` AS `readerid`,`b3`.`readerbarcode` AS `readerbarcode`,`b3`.`readername` AS `readername`,`b3`.`borrowTime` AS `borrowTime`,`b3`.`backTime` AS `backTime`,`b3`.`ifback` AS `ifback` from (((select `b2`.`borrowid` AS `borrowid`,`b2`.`bookid` AS `bookid`,`b2`.`bookname` AS `bookname`,`b2`.`ISBN` AS `ISBN`,`b2`.`price` AS `price`,`db_library`.`tb_bookcase`.`name` AS `bookcase`,`b2`.`readerid` AS `readerid`,`b2`.`readerbarcode` AS `readerbarcode`,`b2`.`readername` AS `readername`,`b2`.`borrowTime` AS `borrowTime`,`b2`.`backTime` AS `backTime`,`b2`.`ifback` AS `ifback` from (((select `b1`.`borrowid` AS `borrowid`,`b1`.`bookid` AS `bookid`,`db_library`.`tb_bookinfo`.`bookname` AS `bookname`,`db_library`.`tb_bookinfo`.`ISBN` AS `ISBN`,`db_library`.`tb_bookinfo`.`price` AS `price`,`db_library`.`tb_bookinfo`.`bookcase` AS `bookcase`,`b1`.`readerid` AS `readerid`,`b1`.`readerbarcode` AS `readerbarcode`,`b1`.`name` AS `readername`,`b1`.`borrowTime` AS `borrowTime`,`b1`.`backTime` AS `backTime`,`b1`.`ifback` AS `ifback` from (((select `db_library`.`tb_borrow`.`id` AS `borrowid`,`db_library`.`tb_borrow`.`bookid` AS `bookid`,`db_library`.`tb_reader`.`id` AS `readerid`,`db_library`.`tb_reader`.`barcode` AS `readerbarcode`,`db_library`.`tb_reader`.`name` AS `name`,`db_library`.`tb_borrow`.`borrowTime` AS `borrowTime`,`db_library`.`tb_borrow`.`backTime` AS `backTime`,`db_library`.`tb_borrow`.`ifback` AS `ifback` from (`db_library`.`tb_borrow` left join `db_library`.`tb_reader` on((`db_library`.`tb_borrow`.`readerid` = `db_library`.`tb_reader`.`id`))))) `b1` left join `db_library`.`tb_bookinfo` on((`b1`.`bookid` = `db_library`.`tb_bookinfo`.`id`))))) `b2` left join `db_library`.`tb_bookcase` on((`b2`.`bookcase` = `db_library`.`tb_bookcase`.`id`))))) `b3` left join `db_library`.`tb_publishing` on((`b3`.`ISBN` = `db_library`.`tb_publishing`.`ISBN`))) ;

-- ----------------------------
-- View structure for readerview
-- ----------------------------
DROP VIEW IF EXISTS `readerview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `readerview` AS select `tb_reader`.`id` AS `id`,`tb_reader`.`name` AS `name`,`tb_reader`.`sex` AS `sex`,`tb_reader`.`barcode` AS `barcode`,`tb_reader`.`vocation` AS `vocation`,`tb_reader`.`birthday` AS `birthday`,`tb_reader`.`paperType` AS `paperType`,`tb_reader`.`paperNO` AS `paperNO`,`tb_reader`.`tel` AS `tel`,`tb_reader`.`email` AS `email`,`tb_readertype`.`number` AS `number` from (`tb_reader` join `tb_readertype`) where (`tb_reader`.`vocation` = `tb_readertype`.`name`) ;
