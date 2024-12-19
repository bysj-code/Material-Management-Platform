/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquwuyexinguanwuzi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquwuyexinguanwuzi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquwuyexinguanwuzi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (16,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-04-28 15:54:56'),(17,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-04-28 15:54:56'),(18,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-04-28 15:54:56'),(19,'wuzi_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-04-28 15:54:56'),(20,'wuzi_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-04-28 15:54:56'),(21,'wuzi_yuyue_yesno_types','申请状态',1,'已申请',NULL,NULL,'2023-04-28 15:54:56'),(22,'wuzi_yuyue_yesno_types','申请状态',2,'已同意',NULL,NULL,'2023-04-28 15:54:56'),(23,'wuzi_yuyue_yesno_types','申请状态',3,'已拒绝',NULL,NULL,'2023-04-28 15:54:56'),(24,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-28 15:54:56'),(25,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-28 15:54:56'),(26,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-28 15:54:56'),(27,'sex_types','性别',1,'男',NULL,NULL,'2023-04-28 15:54:56'),(28,'sex_types','性别',2,'女',NULL,NULL,'2023-04-28 15:54:56'),(29,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-28 15:54:56'),(30,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-28 15:54:56'),(31,'wuzi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-28 15:54:56'),(32,'wuzi_juanzeng_yesno_types','审核结果',1,'待审核',NULL,NULL,'2023-04-28 15:54:56'),(33,'wuzi_juanzeng_yesno_types','审核结果',2,'已同意',NULL,NULL,'2023-04-28 15:54:56'),(34,'wuzi_juanzeng_yesno_types','审核结果',3,'已拒绝',NULL,NULL,'2023-04-28 15:54:56');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_phone` varchar(200) DEFAULT NULL COMMENT '图片',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_phone`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'17703786901','发布内容1',280,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,'帖子标题2',1,NULL,'17703786902','发布内容2',426,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,'帖子标题3',3,NULL,'17703786903','发布内容3',418,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,'帖子标题4',3,NULL,'17703786904','发布内容4',304,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,'帖子标题5',2,NULL,'17703786905','发布内容5',36,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,'帖子标题6',1,NULL,'17703786906','发布内容6',219,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,'帖子标题7',2,NULL,'17703786907','发布内容7',154,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,'帖子标题8',1,NULL,'17703786908','发布内容8',130,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,'帖子标题9',1,NULL,'17703786909','发布内容9',344,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,'帖子标题10',1,NULL,'17703786910','发布内容10',285,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,'帖子标题11',2,NULL,'17703786911','发布内容11',338,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,'帖子标题12',1,NULL,'17703786912','发布内容12',170,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,'帖子标题13',2,NULL,'17703786913','发布内容13',352,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,'帖子标题14',3,NULL,'17703786914','发布内容14',43,1,'2023-04-28 15:55:08','2023-04-28 15:55:08','2023-04-28 15:55:08'),(15,NULL,NULL,1,NULL,'1011111111111111\n',14,2,'2023-04-28 16:33:25',NULL,'2023-04-28 16:33:25'),(16,NULL,1,NULL,NULL,'2222222222222222222222',14,2,'2023-04-28 16:39:14',NULL,'2023-04-28 16:39:14');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-28 15:55:08','公告详情1','2023-04-28 15:55:08'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-28 15:55:08','公告详情2','2023-04-28 15:55:08'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-28 15:55:08','公告详情3','2023-04-28 15:55:08'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-28 15:55:08','公告详情4','2023-04-28 15:55:08'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-28 15:55:08','公告详情5','2023-04-28 15:55:08'),(6,'公告标题6',2,'upload/news6.jpg','2023-04-28 15:55:08','公告详情6','2023-04-28 15:55:08'),(7,'公告标题7',3,'upload/news7.jpg','2023-04-28 15:55:08','公告详情7','2023-04-28 15:55:08'),(8,'公告标题8',2,'upload/news8.jpg','2023-04-28 15:55:08','公告详情8','2023-04-28 15:55:08'),(9,'公告标题9',1,'upload/news9.jpg','2023-04-28 15:55:08','公告详情9','2023-04-28 15:55:08'),(10,'公告标题10',3,'upload/news10.jpg','2023-04-28 15:55:08','公告详情10','2023-04-28 15:55:08'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-28 15:55:08','公告详情11','2023-04-28 15:55:08'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-28 15:55:08','公告详情12','2023-04-28 15:55:08'),(13,'公告标题13',1,'upload/news13.jpg','2023-04-28 15:55:08','公告详情13','2023-04-28 15:55:08'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-28 15:55:08','公告详情14','2023-04-28 15:55:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'admin','users','管理员','w0gvbopuu5bvfw7pueuidm4454ghd1ml','2023-04-28 16:01:50','2023-04-28 17:41:48'),(4,1,'a1','yonghu','用户','0d8fo0vx8bt331s38qw3f0hxxlbt2tvp','2023-04-28 16:15:57','2023-04-28 17:42:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-28 15:54:57');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_content` text COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_uuid_number`,`wuzi_name`,`wuzi_photo`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'1682668508521','物资名称1','upload/wuzi1.jpg',2,101,'物资介绍1',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,'1682668508558','物资名称2','upload/wuzi2.jpg',3,102,'物资介绍2',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,'1682668508489','物资名称3','upload/wuzi3.jpg',3,103,'物资介绍3',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,'1682668508487','物资名称4','upload/wuzi4.jpg',1,104,'物资介绍4',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,'1682668508512','物资名称5','upload/wuzi5.jpg',1,105,'物资介绍5',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,'1682668508546','物资名称6','upload/wuzi6.jpg',1,106,'物资介绍6',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,'1682668508499','物资名称7','upload/wuzi7.jpg',2,107,'物资介绍7',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,'1682668508507','物资名称8','upload/wuzi8.jpg',2,108,'物资介绍8',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,'1682668508500','物资名称9','upload/wuzi9.jpg',2,109,'物资介绍9',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,'1682668508535','物资名称10','upload/wuzi10.jpg',3,1010,'<p>物资介绍10</p>',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,'1682668508519','物资名称11','upload/wuzi11.jpg',2,1011,'物资介绍11',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,'1682668508568','物资名称12','upload/wuzi12.jpg',3,1012,'物资介绍12',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,'1682668508518','物资名称13','upload/wuzi13.jpg',2,665,'物资介绍13',1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,'1682668508489','物资名称14','upload/wuzi14.jpg',2,0,'物资介绍14',1,'2023-04-28 15:55:08','2023-04-28 15:55:08');

/*Table structure for table `wuzi_churu_inout` */

DROP TABLE IF EXISTS `wuzi_churu_inout`;

CREATE TABLE `wuzi_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `wuzi_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `wuzi_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `wuzi_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `wuzi_churu_inout` */

insert  into `wuzi_churu_inout`(`id`,`wuzi_churu_inout_uuid_number`,`wuzi_churu_inout_name`,`wuzi_churu_inout_types`,`wuzi_churu_inout_content`,`insert_time`,`create_time`) values (1,'1682668508492','出入库名称1',1,'备注1','2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,'1682668508506','出入库名称2',1,'备注2','2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,'1682668508582','出入库名称3',1,'备注3','2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,'1682668508508','出入库名称4',2,'备注4','2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,'1682668508581','出入库名称5',1,'备注5','2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,'1682668508584','出入库名称6',1,'备注6','2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,'1682668508492','出入库名称7',1,'备注7','2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,'1682668508542','出入库名称8',1,'备注8','2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,'1682668508562','出入库名称9',1,'备注9','2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,'1682668508570','出入库名称10',2,'备注10','2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,'1682668508510','出入库名称11',2,'备注11','2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,'1682668508535','出入库名称12',2,'备注12','2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,'1682668508495','出入库名称13',2,'备注13','2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,'1682668508578','出入库名称14',2,'备注14','2023-04-28 15:55:08','2023-04-28 15:55:08'),(15,'1682670880890','出库 物质 14 13 各10个',1,'','2023-04-28 16:34:41','2023-04-28 16:34:41'),(16,'1682670924409','123',2,'','2023-04-28 16:35:24','2023-04-28 16:35:24');

/*Table structure for table `wuzi_churu_inout_list` */

DROP TABLE IF EXISTS `wuzi_churu_inout_list`;

CREATE TABLE `wuzi_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `wuzi_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `wuzi_churu_inout_list` */

insert  into `wuzi_churu_inout_list`(`id`,`wuzi_churu_inout_id`,`wuzi_id`,`wuzi_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,210,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,2,2,369,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,3,3,19,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,4,4,364,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,5,5,355,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,6,6,91,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,7,7,298,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,8,8,48,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,9,9,326,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,10,10,162,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,11,11,359,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,12,12,385,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,13,13,52,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,14,14,254,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(15,15,13,10,'2023-04-28 16:34:41','2023-04-28 16:34:41'),(16,15,14,10,'2023-04-28 16:34:41','2023-04-28 16:34:41'),(17,16,13,10,'2023-04-28 16:35:24','2023-04-28 16:35:24'),(18,16,14,10,'2023-04-28 16:35:24','2023-04-28 16:35:24');

/*Table structure for table `wuzi_collection` */

DROP TABLE IF EXISTS `wuzi_collection`;

CREATE TABLE `wuzi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='物资收藏';

/*Data for the table `wuzi_collection` */

insert  into `wuzi_collection`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,2,1,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,3,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,5,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,6,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,7,3,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,8,3,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,11,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,12,3,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,13,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,14,2,1,'2023-04-28 15:55:08','2023-04-28 15:55:08');

/*Table structure for table `wuzi_juanzeng` */

DROP TABLE IF EXISTS `wuzi_juanzeng`;

CREATE TABLE `wuzi_juanzeng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_juanzeng_number` int(11) DEFAULT NULL COMMENT '捐赠数量',
  `wuzi_juanzeng_content` text COMMENT '备注',
  `wuzi_juanzeng_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `wuzi_juanzeng_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资捐赠';

/*Data for the table `wuzi_juanzeng` */

insert  into `wuzi_juanzeng`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_juanzeng_number`,`wuzi_juanzeng_content`,`wuzi_juanzeng_yesno_types`,`wuzi_juanzeng_yesno_text`,`insert_time`,`create_time`) values (1,1,1,360,'备注1',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,2,1,367,'备注2',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,3,2,17,'备注3',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,4,2,158,'备注4',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,5,2,441,'备注5',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,6,1,407,'备注6',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,7,2,363,'备注7',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,8,3,141,'备注8',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,9,1,206,'备注9',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,10,3,257,'备注10',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,11,1,409,'备注11',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,12,2,208,'备注12',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,13,3,64,'备注13',2,'1','2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,14,3,414,'备注14',2,'123123','2023-04-28 15:55:08','2023-04-28 15:55:08'),(15,14,1,123,'123',2,'123','2023-04-28 16:23:20','2023-04-28 16:23:20');

/*Table structure for table `wuzi_liuyan` */

DROP TABLE IF EXISTS `wuzi_liuyan`;

CREATE TABLE `wuzi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资留言';

/*Data for the table `wuzi_liuyan` */

insert  into `wuzi_liuyan`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_liuyan_text`,`insert_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,2,3,'留言内容2','2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,3,1,'留言内容3','2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,4,1,'留言内容4','2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,5,3,'留言内容5','2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,6,1,'留言内容6','2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,7,3,'留言内容7','2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,8,2,'留言内容8','2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,9,3,'留言内容9','2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,10,1,'留言内容10','2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,11,2,'留言内容11','2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,12,1,'留言内容12','2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,13,3,'留言内容13','2023-04-28 15:55:08','2023-04-28 15:55:08');

/*Table structure for table `wuzi_yuyue` */

DROP TABLE IF EXISTS `wuzi_yuyue`;

CREATE TABLE `wuzi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_yuyue_number` int(11) DEFAULT NULL COMMENT '申请数量',
  `wuzi_yuyue_content` text COMMENT '备注',
  `wuzi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `wuzi_yuyue_yesno_text` text COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzi_yuyue` */

insert  into `wuzi_yuyue`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_yuyue_number`,`wuzi_yuyue_content`,`wuzi_yuyue_yesno_types`,`wuzi_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,2,365,'备注1',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(2,2,3,433,'备注2',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(3,3,3,388,'备注3',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(4,4,3,261,'备注4',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(5,5,1,209,'备注5',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(6,6,3,147,'备注6',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(7,7,3,84,'备注7',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(8,8,2,141,'备注8',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(9,9,2,284,'备注9',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(10,10,1,382,'备注10',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(11,11,2,400,'备注11',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(12,12,3,386,'备注12',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(13,13,3,412,'备注13',2,'123','2023-04-28 15:55:08','2023-04-28 15:55:08'),(14,14,1,310,'备注14',1,NULL,'2023-04-28 15:55:08','2023-04-28 15:55:08'),(15,14,1,123,'23',2,'123123','2023-04-28 16:23:27','2023-04-28 16:23:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-04-28 15:55:08'),(2,'a2','123456','用户姓名2',2,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-04-28 15:55:08'),(3,'a3','123456','用户姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-04-28 15:55:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
