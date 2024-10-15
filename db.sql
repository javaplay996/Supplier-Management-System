/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongyingshang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongyingshang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongyingshang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-06 16:50:52'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-06 16:50:52'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-06 16:50:52'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-06 16:50:52'),(5,'gongyingshang_types','供应商类型',1,'供应商类型1',NULL,NULL,'2023-04-06 16:50:53'),(6,'gongyingshang_types','供应商类型',2,'供应商类型2',NULL,NULL,'2023-04-06 16:50:53'),(7,'gongyingshang_xinyongdengji_types','供应商信用等级类型',1,'一级',NULL,NULL,'2023-04-06 16:50:53'),(8,'gongyingshang_xinyongdengji_types','供应商信用等级类型',2,'二级',NULL,NULL,'2023-04-06 16:50:53'),(9,'gongyingshang_xinyongdengji_types','供应商信用等级类型',3,'三级',NULL,NULL,'2023-04-06 16:50:53'),(10,'shangpin_types','商品类型',1,'水果',NULL,NULL,'2023-04-06 16:50:53'),(11,'shangpin_types','商品类型',2,'生活用品',NULL,NULL,'2023-04-06 16:50:53'),(12,'shangpin_erji_types','二级类型',1,'香蕉',1,NULL,'2023-04-06 16:50:53'),(13,'shangpin_erji_types','二级类型',2,'苹果',1,NULL,'2023-04-06 16:50:53'),(14,'shangpin_erji_types','二级类型',3,'卫生纸',2,NULL,'2023-04-06 16:50:53'),(15,'shangpin_erji_types','二级类型',4,'笔记本',2,NULL,'2023-04-06 16:50:53'),(16,'shangpin_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-04-06 16:50:53'),(17,'shangpin_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-04-06 16:50:53'),(18,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-06 16:50:53'),(19,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-06 16:50:53'),(20,'jinhuodan_types','进货类型',1,'进货类型1',NULL,NULL,'2023-04-06 16:50:53'),(21,'jinhuodan_types','进货类型',2,'进货类型2',NULL,NULL,'2023-04-06 16:50:53'),(22,'tuihuodan_types','退货类型',1,'退货类型1',NULL,NULL,'2023-04-06 16:50:53'),(23,'tuihuodan_types','退货类型',2,'退货类型2',NULL,NULL,'2023-04-06 16:50:53'),(24,'tuihuodan_types','退货类型',3,'退货类型3',NULL,'','2023-04-06 17:15:48'),(25,'shangpin_erji_types','二级类型',5,'碗',2,'','2023-04-06 17:16:13');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',2,'2023-04-06 16:51:02','公告详情1','2023-04-06 16:51:02'),(2,'公告名称2',2,'2023-04-06 16:51:02','公告详情2','2023-04-06 16:51:02'),(3,'公告名称3',1,'2023-04-06 16:51:02','公告详情3','2023-04-06 16:51:02'),(4,'公告名称4',2,'2023-04-06 16:51:02','公告详情4','2023-04-06 16:51:02'),(5,'公告名称5',1,'2023-04-06 16:51:02','公告详情5','2023-04-06 16:51:02'),(6,'公告名称6',2,'2023-04-06 16:51:02','公告详情6','2023-04-06 16:51:02'),(7,'公告名称7',1,'2023-04-06 16:51:02','公告详情7','2023-04-06 16:51:02'),(8,'公告名称8',2,'2023-04-06 16:51:02','公告详情8','2023-04-06 16:51:02'),(9,'公告名称9',1,'2023-04-06 16:51:02','公告详情9','2023-04-06 16:51:02'),(10,'公告名称10',1,'2023-04-06 16:51:02','公告详情10','2023-04-06 16:51:02'),(11,'公告名称11',2,'2023-04-06 16:51:02','公告详情11','2023-04-06 16:51:02'),(12,'公告名称12',1,'2023-04-06 16:51:02','公告详情12','2023-04-06 16:51:02'),(13,'公告名称13',1,'2023-04-06 16:51:02','公告详情13','2023-04-06 16:51:02'),(14,'公告名称14',2,'2023-04-06 16:51:02','公告详情14','2023-04-06 16:51:02');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_uuid_number` varchar(200) DEFAULT NULL COMMENT '供应商唯一编号',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称  Search111 ',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名 Search111 ',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `lianxiren_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型',
  `gongyingshang_xinyongdengji_types` int(11) DEFAULT NULL COMMENT '信用等级 Search111 ',
  `gongyingshang_content` longtext COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='供应商信息';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_uuid_number`,`gongyingshang_name`,`lianxiren_name`,`lianxiren_phone`,`lianxiren_address`,`gongyingshang_types`,`gongyingshang_xinyongdengji_types`,`gongyingshang_content`,`create_time`) values (1,'1680771062428','供应商名称1','联系人姓名1','17703786901','地址1',2,3,'供应商详情1','2023-04-06 16:51:02'),(2,'1680771062433','供应商名称2','联系人姓名2','17703786902','地址2',1,1,'供应商详情2','2023-04-06 16:51:02'),(3,'1680771062435','供应商名称3','联系人姓名3','17703786903','地址3',2,2,'供应商详情3','2023-04-06 16:51:02'),(4,'1680771062435','供应商名称4','联系人姓名4','17703786904','地址4',2,1,'供应商详情4','2023-04-06 16:51:02'),(5,'1680771062453','供应商名称5','联系人姓名5','17703786905','地址5',1,2,'供应商详情5','2023-04-06 16:51:02'),(6,'1680771062429','供应商名称6','联系人姓名6','17703786906','地址6',2,3,'供应商详情6','2023-04-06 16:51:02'),(7,'1680771062422','供应商名称7','联系人姓名7','17703786907','地址7',2,2,'供应商详情7','2023-04-06 16:51:02'),(8,'1680771062444','供应商名称8','联系人姓名8','17703786908','地址8',1,2,'供应商详情8','2023-04-06 16:51:02'),(9,'1680771062421','供应商名称9','联系人姓名9','17703786909','地址9',2,2,'供应商详情9','2023-04-06 16:51:02'),(10,'1680771062412','供应商名称10','联系人姓名10','17703786910','地址10',2,3,'供应商详情10','2023-04-06 16:51:02'),(11,'1680771062480','供应商名称11','联系人姓名11','17703786911','地址11',2,2,'供应商详情11','2023-04-06 16:51:02'),(12,'1680771062384','供应商名称12','联系人姓名12','17703786912','地址12',1,3,'供应商详情12','2023-04-06 16:51:02'),(13,'1680771062406','供应商名称13','联系人姓名13','17703786913','地址13',1,1,'供应商详情13','2023-04-06 16:51:02'),(14,'1680771062435','供应商名称14','联系人姓名14','17703786914','地址14',2,2,'<p>供应商详情14个搭嘎第三个</p>','2023-04-06 16:51:02');

/*Table structure for table `jinhuodan` */

DROP TABLE IF EXISTS `jinhuodan`;

CREATE TABLE `jinhuodan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `jinhuodan_uuid_number` varchar(200) DEFAULT NULL COMMENT '进货单编号',
  `jinhuodan_name` varchar(200) DEFAULT NULL COMMENT '进货单名称  Search111 ',
  `jinhuodan_file` varchar(200) DEFAULT NULL COMMENT '进货单',
  `jinhuodan_types` int(11) DEFAULT NULL COMMENT '进货类型 Search111',
  `caozuo_time` timestamp NULL DEFAULT NULL COMMENT '进货时间',
  `jinhuodan_content` longtext COMMENT '进货单内容',
  `jinhuodan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品进货';

/*Data for the table `jinhuodan` */

insert  into `jinhuodan`(`id`,`yuangong_id`,`gongyingshang_id`,`jinhuodan_uuid_number`,`jinhuodan_name`,`jinhuodan_file`,`jinhuodan_types`,`caozuo_time`,`jinhuodan_content`,`jinhuodan_beizhu_content`,`insert_time`,`create_time`) values (1,1,1,'1680771062420','进货单名称1','upload/file.rar',2,'2023-04-06 16:51:02','进货单内容1','备注1','2023-04-06 16:51:02','2023-04-06 16:51:02'),(2,1,2,'1680771062479','进货单名称2','upload/file.rar',2,'2023-04-06 16:51:02','进货单内容2','备注2','2023-04-06 16:51:02','2023-04-06 16:51:02'),(3,3,3,'1680771062396','进货单名称3','upload/file.rar',2,'2023-04-06 16:51:02','进货单内容3','备注3','2023-04-06 16:51:02','2023-04-06 16:51:02'),(4,3,4,'1680771062394','进货单名称4','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容4','备注4','2023-04-06 16:51:02','2023-04-06 16:51:02'),(5,2,5,'1680771062452','进货单名称5','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容5','备注5','2023-04-06 16:51:02','2023-04-06 16:51:02'),(6,3,6,'1680771062401','进货单名称6','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容6','备注6','2023-04-06 16:51:02','2023-04-06 16:51:02'),(7,1,7,'1680771062436','进货单名称7','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容7','备注7','2023-04-06 16:51:02','2023-04-06 16:51:02'),(8,1,8,'1680771062422','进货单名称8','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容8','备注8','2023-04-06 16:51:02','2023-04-06 16:51:02'),(9,2,9,'1680771062409','进货单名称9','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容9','备注9','2023-04-06 16:51:02','2023-04-06 16:51:02'),(10,2,10,'1680771062462','进货单名称10','upload/file.rar',2,'2023-04-06 16:51:02','进货单内容10','备注10','2023-04-06 16:51:02','2023-04-06 16:51:02'),(11,1,11,'1680771062440','进货单名称11','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容11','备注11','2023-04-06 16:51:02','2023-04-06 16:51:02'),(12,2,12,'1680771062426','进货单名称12','upload/file.rar',2,'2023-04-06 16:51:02','进货单内容12','备注12','2023-04-06 16:51:02','2023-04-06 16:51:02'),(13,1,13,'1680771062479','进货单名称13','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容13','备注13','2023-04-06 16:51:02','2023-04-06 16:51:02'),(14,2,14,'1680771062398','进货单名称14','upload/file.rar',1,'2023-04-06 16:51:02','进货单内容14','备注14','2023-04-06 16:51:02','2023-04-06 16:51:02'),(15,1,12,'1680772747880','进货1111','/upload/1680772758430.doc',1,'2023-04-06 17:19:20','<p>地方搭嘎大概</p>','<p>回复说实话</p>','2023-04-06 17:19:25','2023-04-06 17:19:25');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_yuzhi` int(11) DEFAULT NULL COMMENT '阈值',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`gongyingshang_id`,`shangpin_uuid_number`,`shangpin_name`,`shangpin_photo`,`shangpin_danwei`,`shangpin_types`,`shangpin_erji_types`,`shangpin_kucun_number`,`shangpin_yuzhi`,`shangpin_new_money`,`shangpin_cangku`,`shangpin_content`,`insert_time`,`create_time`) values (1,1,'1680771062422','商品名称1','upload/shangpin1.jpg','个',1,1,101,10,'377.99','所属仓库1','商品介绍1','2023-04-06 16:51:02','2023-04-06 16:51:02'),(2,2,'1680771062433','商品名称2','upload/shangpin2.jpg','个',1,1,102,10,'57.56','所属仓库2','商品介绍2','2023-04-06 16:51:02','2023-04-06 16:51:02'),(3,3,'1680771062483','商品名称3','upload/shangpin3.jpg','个',1,1,103,10,'468.58','所属仓库3','商品介绍3','2023-04-06 16:51:02','2023-04-06 16:51:02'),(4,4,'1680771062432','商品名称4','upload/shangpin4.jpg','个',1,1,104,10,'101.53','所属仓库4','商品介绍4','2023-04-06 16:51:02','2023-04-06 16:51:02'),(5,5,'1680771062436','商品名称5','upload/shangpin5.jpg','个',1,2,105,10,'390.26','所属仓库5','商品介绍5','2023-04-06 16:51:02','2023-04-06 16:51:02'),(6,6,'1680771062390','商品名称6','upload/shangpin6.jpg','个',1,2,106,10,'42.45','所属仓库6','商品介绍6','2023-04-06 16:51:02','2023-04-06 16:51:02'),(7,7,'1680771062405','商品名称7','upload/shangpin7.jpg','个',1,2,107,10,'161.67','所属仓库7','商品介绍7','2023-04-06 16:51:02','2023-04-06 16:51:02'),(8,8,'1680771062432','商品名称8','upload/shangpin8.jpg','个',1,2,108,10,'243.22','所属仓库8','商品介绍8','2023-04-06 16:51:02','2023-04-06 16:51:02'),(9,9,'1680771062479','商品名称9','upload/shangpin9.jpg','个',2,3,109,10,'134.91','所属仓库9','商品介绍9','2023-04-06 16:51:02','2023-04-06 16:51:02'),(10,10,'1680771062457','商品名称10','upload/shangpin10.jpg','个',2,3,1010,10,'411.16','所属仓库10','商品介绍10','2023-04-06 16:51:02','2023-04-06 16:51:02'),(11,11,'1680771062450','商品名称11','upload/shangpin11.jpg','个',2,3,1017,10,'26.85','所属仓库11','商品介绍11','2023-04-06 16:51:02','2023-04-06 16:51:02'),(12,12,'1680771062460','商品名称12','upload/shangpin12.jpg','个',2,4,12,10,'247.93','所属仓库12','商品介绍12','2023-04-06 16:51:02','2023-04-06 16:51:02'),(13,13,'1680771062435','商品名称13','upload/shangpin13.jpg','个',2,4,1010,10,'313.09','所属仓库13','商品介绍13','2023-04-06 16:51:02','2023-04-06 16:51:02'),(14,14,'1680771062459','商品名称14','upload/shangpin14.jpg','个',2,4,1012,10,'89.67','所属仓库14','商品介绍14','2023-04-06 16:51:02','2023-04-06 16:51:02');

/*Table structure for table `shangpin_churu_inout` */

DROP TABLE IF EXISTS `shangpin_churu_inout`;

CREATE TABLE `shangpin_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `shangpin_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `shangpin_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `shangpin_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `shangpin_churu_inout_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `shangpin_churu_inout` */

insert  into `shangpin_churu_inout`(`id`,`yuangong_id`,`shangpin_churu_inout_uuid_number`,`shangpin_churu_inout_name`,`shangpin_churu_inout_types`,`shangpin_churu_inout_content`,`insert_time`,`create_time`) values (1,1,'1680771062432','出入库名称1',2,'备注1','2023-04-06 16:51:02','2023-04-06 16:51:02'),(2,1,'1680771062460','出入库名称2',2,'备注2','2023-04-06 16:51:02','2023-04-06 16:51:02'),(3,3,'1680771062469','出入库名称3',2,'备注3','2023-04-06 16:51:02','2023-04-06 16:51:02'),(4,3,'1680771062480','出入库名称4',2,'备注4','2023-04-06 16:51:02','2023-04-06 16:51:02'),(5,1,'1680771062477','出入库名称5',2,'备注5','2023-04-06 16:51:02','2023-04-06 16:51:02'),(6,2,'1680771062470','出入库名称6',1,'备注6','2023-04-06 16:51:02','2023-04-06 16:51:02'),(7,1,'1680771062449','出入库名称7',1,'备注7','2023-04-06 16:51:02','2023-04-06 16:51:02'),(8,2,'1680771062440','出入库名称8',1,'备注8','2023-04-06 16:51:02','2023-04-06 16:51:02'),(9,2,'1680771062418','出入库名称9',2,'备注9','2023-04-06 16:51:02','2023-04-06 16:51:02'),(10,2,'1680771062457','出入库名称10',2,'备注10','2023-04-06 16:51:02','2023-04-06 16:51:02'),(11,1,'1680771062482','出入库名称11',1,'备注11','2023-04-06 16:51:02','2023-04-06 16:51:02'),(12,1,'1680771062400','出入库名称12',2,'备注12','2023-04-06 16:51:02','2023-04-06 16:51:02'),(13,1,'1680771062410','出入库名称13',1,'备注13','2023-04-06 16:51:02','2023-04-06 16:51:02'),(14,1,'1680771062396','出入库名称14',2,'备注14','2023-04-06 16:51:02','2023-04-06 16:51:02'),(15,NULL,'1680772627665','出库1111',1,'','2023-04-06 17:17:08','2023-04-06 17:17:08'),(16,NULL,'1680772654416','入库111222',2,'','2023-04-06 17:17:34','2023-04-06 17:17:34'),(17,1,'1680772712868','出库3333',1,'','2023-04-06 17:18:33','2023-04-06 17:18:33'),(18,1,'1680772740211','入库2222333',2,'','2023-04-06 17:19:00','2023-04-06 17:19:00');

/*Table structure for table `shangpin_churu_inout_list` */

DROP TABLE IF EXISTS `shangpin_churu_inout_list`;

CREATE TABLE `shangpin_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `shangpin_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `shangpin_churu_inout_list` */

insert  into `shangpin_churu_inout_list`(`id`,`shangpin_churu_inout_id`,`shangpin_id`,`shangpin_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,150,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(2,2,2,269,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(3,3,3,21,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(4,4,4,241,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(5,5,5,319,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(6,6,6,390,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(7,7,7,235,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(8,8,8,492,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(9,9,9,98,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(10,10,10,488,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(11,11,11,481,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(12,12,12,122,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(13,13,13,483,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(14,14,14,252,'2023-04-06 16:51:02','2023-04-06 16:51:02'),(15,15,11,2,'2023-04-06 17:17:08','2023-04-06 17:17:08'),(16,15,13,3,'2023-04-06 17:17:08','2023-04-06 17:17:08'),(17,16,11,4,'2023-04-06 17:17:34','2023-04-06 17:17:34'),(18,16,12,3,'2023-04-06 17:17:34','2023-04-06 17:17:34'),(19,17,12,4,'2023-04-06 17:18:33','2023-04-06 17:18:33'),(20,17,14,2,'2023-04-06 17:18:33','2023-04-06 17:18:33'),(21,18,11,4,'2023-04-06 17:19:00','2023-04-06 17:19:00'),(22,18,12,3,'2023-04-06 17:19:00','2023-04-06 17:19:00');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','fdedjbstagvkhzmn1p1c6qcvgqrh1c2j','2023-04-06 16:52:42','2023-04-06 18:22:31'),(2,1,'a1','yuangong','员工','diijcc8tq6qalfhfgw0tu4dh0o8pvfu1','2023-04-06 17:18:03','2023-04-06 18:18:03');

/*Table structure for table `tuihuodan` */

DROP TABLE IF EXISTS `tuihuodan`;

CREATE TABLE `tuihuodan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `tuihuodan_uuid_number` varchar(200) DEFAULT NULL COMMENT '退货单编号',
  `tuihuodan_name` varchar(200) DEFAULT NULL COMMENT '退货单名称  Search111 ',
  `tuihuodan_file` varchar(200) DEFAULT NULL COMMENT '退货单',
  `tuihuodan_types` int(11) DEFAULT NULL COMMENT '退货类型 Search111',
  `caozuo_time` timestamp NULL DEFAULT NULL COMMENT '退货时间',
  `tuihuodan_content` longtext COMMENT '退货单内容',
  `tuihuodan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品退货';

/*Data for the table `tuihuodan` */

insert  into `tuihuodan`(`id`,`yuangong_id`,`gongyingshang_id`,`tuihuodan_uuid_number`,`tuihuodan_name`,`tuihuodan_file`,`tuihuodan_types`,`caozuo_time`,`tuihuodan_content`,`tuihuodan_beizhu_content`,`insert_time`,`create_time`) values (1,1,1,'1680771062442','退货单名称1','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容1','备注1','2023-04-06 16:51:02','2023-04-06 16:51:02'),(2,1,2,'1680771062422','退货单名称2','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容2','备注2','2023-04-06 16:51:02','2023-04-06 16:51:02'),(3,2,3,'1680771062486','退货单名称3','upload/file.rar',1,'2023-04-06 16:51:02','退货单内容3','备注3','2023-04-06 16:51:02','2023-04-06 16:51:02'),(4,2,4,'1680771062432','退货单名称4','upload/file.rar',1,'2023-04-06 16:51:02','退货单内容4','备注4','2023-04-06 16:51:02','2023-04-06 16:51:02'),(5,1,5,'1680771062476','退货单名称5','upload/file.rar',1,'2023-04-06 16:51:02','退货单内容5','备注5','2023-04-06 16:51:02','2023-04-06 16:51:02'),(6,2,6,'1680771062414','退货单名称6','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容6','备注6','2023-04-06 16:51:02','2023-04-06 16:51:02'),(7,1,7,'1680771062403','退货单名称7','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容7','备注7','2023-04-06 16:51:02','2023-04-06 16:51:02'),(8,2,8,'1680771062428','退货单名称8','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容8','备注8','2023-04-06 16:51:02','2023-04-06 16:51:02'),(9,2,9,'1680771062460','退货单名称9','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容9','备注9','2023-04-06 16:51:02','2023-04-06 16:51:02'),(10,1,10,'1680771062464','退货单名称10','upload/file.rar',1,'2023-04-06 16:51:02','退货单内容10','备注10','2023-04-06 16:51:02','2023-04-06 16:51:02'),(11,2,11,'1680771062453','退货单名称11','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容11','备注11','2023-04-06 16:51:02','2023-04-06 16:51:02'),(12,1,12,'1680771062423','退货单名称12','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容12','备注12','2023-04-06 16:51:02','2023-04-06 16:51:02'),(13,3,13,'1680771062406','退货单名称13','upload/file.rar',1,'2023-04-06 16:51:02','退货单内容13','备注13','2023-04-06 16:51:02','2023-04-06 16:51:02'),(14,2,14,'1680771062428','退货单名称14','upload/file.rar',2,'2023-04-06 16:51:02','退货单内容14','备注14','2023-04-06 16:51:02','2023-04-06 16:51:02'),(15,1,11,'1680772771079','退货1111','/upload/1680772780686.doc',2,'2023-04-06 17:19:43','<p>个哈哈哈或或或或</p>','<p>个个搭嘎多个</p>','2023-04-06 17:19:48','2023-04-06 17:19:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-06 16:50:52');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'1@qq.com',1,'2023-04-06 16:51:02'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',1,'2@qq.com',2,'2023-04-06 16:51:02'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,'3@qq.com',1,'2023-04-06 16:51:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
