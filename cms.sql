-- MySQL dump 10.13  Distrib 5.1.55, for Win32 (ia32)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.1.55-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qt_access`
--

DROP TABLE IF EXISTS `qt_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `node_id` int(11) NOT NULL COMMENT '节点id',
  PRIMARY KEY (`id`),
  KEY `fk_role_access` (`role_id`),
  KEY `fk_node_acess` (`node_id`),
  CONSTRAINT `fk_node_acess` FOREIGN KEY (`node_id`) REFERENCES `qt_node` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_acess` FOREIGN KEY (`role_id`) REFERENCES `qt_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='结点权限访问表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_access`
--

LOCK TABLES `qt_access` WRITE;
/*!40000 ALTER TABLE `qt_access` DISABLE KEYS */;
INSERT INTO `qt_access` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,62),(7,2,63),(8,2,64),(9,2,65),(10,2,66),(11,2,67),(12,2,68),(13,2,69),(14,2,70),(15,2,71),(16,2,72),(17,2,73),(18,2,74),(19,2,75),(20,2,76),(21,2,77),(22,2,78),(23,2,79),(24,2,80),(25,2,81),(26,2,82),(27,2,83),(28,2,84),(29,2,85),(30,2,86),(31,2,87),(32,2,88),(33,2,89);
/*!40000 ALTER TABLE `qt_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_admin`
--

DROP TABLE IF EXISTS `qt_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(11) NOT NULL COMMENT '所属角色id',
  `email` varchar(64) NOT NULL COMMENT '登录邮箱',
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `mail_hash` varchar(36) NOT NULL COMMENT '邮件hash值',
  `remark` text NOT NULL COMMENT '管理员备注信息',
  `is_super` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否超级管理员',
  `is_active` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `last_login_at` int(11) NOT NULL COMMENT '最后登录时间',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`email`),
  KEY `fk_admin_role` (`role_id`),
  CONSTRAINT `fk_admin_role` FOREIGN KEY (`role_id`) REFERENCES `qt_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_admin`
--

LOCK TABLES `qt_admin` WRITE;
/*!40000 ALTER TABLE `qt_admin` DISABLE KEYS */;
INSERT INTO `qt_admin` VALUES (1,1,'qintao','42ec33083e5d707fd8169e588ce21969','','超级管理员',1,1,1415343418,1415234982,1415340724),(2,2,'admin','42ec33083e5d707fd8169e588ce21969','','',0,1,1415335960,1415253435,1415253435);
/*!40000 ALTER TABLE `qt_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_field`
--

DROP TABLE IF EXISTS `qt_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `model_id` int(11) NOT NULL COMMENT '所属模型id',
  `name` varchar(128) NOT NULL COMMENT '字段名称',
  `comment` varchar(32) NOT NULL COMMENT '字段注释',
  `type` varchar(32) NOT NULL COMMENT '字段类型',
  `length` varchar(16) NOT NULL COMMENT '字段长度',
  `value` varchar(128) NOT NULL COMMENT '字段默认值',
  `is_require` tinyint(4) DEFAULT '0' COMMENT '是否必需',
  `is_unique` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否唯一',
  `is_index` tinyint(4) DEFAULT '0' COMMENT '是否添加索引',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统字段',
  `is_list_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '列表中显示',
  `auto_filter` varchar(32) NOT NULL COMMENT '自动过滤函数',
  `auto_fill` varchar(32) NOT NULL COMMENT '自动完成函数',
  `fill_time` varchar(16) NOT NULL DEFAULT 'both' COMMENT '填充时机',
  `relation_model` int(11) NOT NULL COMMENT '关联的模型',
  `relation_field` varchar(128) NOT NULL COMMENT '关联的字段',
  `relation_value` varchar(128) NOT NULL COMMENT '关联显示的值',
  `relation_where` varchar(128) NOT NULL COMMENT '关联的条件',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `fk_field_model` (`model_id`),
  CONSTRAINT `fk_field_model` FOREIGN KEY (`model_id`) REFERENCES `qt_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='数据模型字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_field`
--

LOCK TABLES `qt_field` WRITE;
/*!40000 ALTER TABLE `qt_field` DISABLE KEYS */;
INSERT INTO `qt_field` VALUES (1,1,'id','表主键','INT','','',0,1,1,1,1,'','','both',0,'','','',1415235153,1415235153),(2,1,'created_at','创建时间','INT','','',0,0,1,1,1,'','time','insert',0,'','','',1415235153,1415235153),(3,1,'updated_at','更新时间','INT','','',0,0,1,1,0,'','time','both',0,'','','',1415235153,1415235153),(4,1,'title','标题*','VARCHAR','200','',1,0,1,0,1,'','','both',0,'','','',1415235722,1415236700),(5,1,'content','内容*','MEDIUMTEXT','','',1,0,0,0,0,'','','both',0,'','','',1415236198,1415236715),(12,3,'id','表主键','INT','','',0,1,1,1,1,'','','both',0,'','','',1415238238,1415238238),(13,3,'created_at','创建时间','INT','','',0,0,1,1,0,'','time','insert',0,'','','',1415238238,1415238238),(14,3,'updated_at','更新时间','INT','','',0,0,1,1,0,'','time','both',0,'','','',1415238238,1415238238),(15,3,'name','类型名称','VARCHAR','50','',1,1,0,0,1,'','','both',0,'','','',1415238295,1415238295),(16,3,'type_level','类型级别','TINYINT','1','',1,0,0,0,1,'','','both',0,'','','',1415238363,1415238439),(17,4,'id','表主键','INT','','',0,1,1,1,1,'','','both',0,'','','',1415238673,1415238673),(18,4,'created_at','创建时间','INT','','',0,0,1,1,1,'','time','insert',0,'','','',1415238673,1415238673),(19,4,'updated_at','更新时间','INT','','',0,0,1,1,1,'','time','both',0,'','','',1415238673,1415238673),(20,4,'name','产品名称*','VARCHAR','100','',1,0,0,0,1,'','','both',0,'','','',1415238834,1415238981),(21,4,'level_one_id','一级类型*','INT','8','',1,0,0,0,1,'','','both',3,'id','name','type_level = 1',1415238956,1415349572),(22,4,'level_two_id','2级类型','INT','8','',0,0,0,0,1,'','','both',3,'id','name','',1415239062,1415349637),(23,4,'level_three_type','3级类型','INT','8','',0,0,0,0,1,'','','both',3,'id','name','',1415239304,1415239304),(24,4,'introduce','产品简介*','MEDIUMTEXT','','',1,0,0,0,0,'','','both',0,'','','',1415239860,1415346003),(25,4,'description','产品概述','MEDIUMTEXT','','',0,0,0,0,0,'','','both',0,'','','',1415240649,1415345778);
/*!40000 ALTER TABLE `qt_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_input`
--

DROP TABLE IF EXISTS `qt_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `field_id` int(11) NOT NULL COMMENT '字段id',
  `is_show` tinyint(4) NOT NULL DEFAULT '0' COMMENT '表单域是否显示',
  `label` varchar(32) NOT NULL COMMENT '表单域标签',
  `remark` varchar(128) NOT NULL COMMENT '表单域域',
  `type` varchar(32) NOT NULL COMMENT '表单域类型',
  `width` int(11) NOT NULL DEFAULT '20' COMMENT '表单域宽度',
  `height` int(11) NOT NULL DEFAULT '8' COMMENT '表单域高度',
  `opt_value` text NOT NULL COMMENT '表单域可选值',
  `value` varchar(128) NOT NULL COMMENT '表单域默认值',
  `editor` varchar(32) NOT NULL COMMENT '编辑器类型',
  `html` text NOT NULL COMMENT '表单域html替换',
  `show_order` int(11) DEFAULT NULL COMMENT '表单域显示顺序',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `fk_field_input` (`field_id`),
  CONSTRAINT `fk_input_field` FOREIGN KEY (`field_id`) REFERENCES `qt_field` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字段表单域信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_input`
--

LOCK TABLES `qt_input` WRITE;
/*!40000 ALTER TABLE `qt_input` DISABLE KEYS */;
INSERT INTO `qt_input` VALUES (1,4,1,'标题*','标题必填','text',150,0,'','','all','<input type=\'text\' class=\'input\' size=\'150\' name=\'single[title]\' value=\'\' />',1,1415235722,1415236700),(2,5,1,'内容*','','editor',150,50,'','','all','<textarea name=\'single[content]\' id=\'dHYGK4pe\' rows=\'50\' cols=\'150\' ></textarea><script type=\'text/javascript\'>$(function(){KindEditor.ready(function(K) {K.create(\'#dHYGK4pe\',{resizeType:1,afterBlur:function(){this.sync();}});});});</script>',2,1415236199,1415236715),(6,15,1,'类型名称','','text',50,0,'','','all','<input type=\'text\' class=\'input\' size=\'50\' name=\'type[name]\' value=\'\' />',1,1415238295,1415238295),(7,16,1,'类型级别','','select',0,0,'','','all','<select name=\'type[type_level]\' class=\'\'>\n<option value=\'1\'>1级类型</option>\n<option value=\'2\'>1级类型</option>\n<option value=\'3\'>3级类型</option>\n</select>',2,1415238363,1415238439),(8,20,1,'产品名称*','','text',150,0,'','','all','<input type=\'text\' class=\'input\' size=\'150\' name=\'product[name]\' value=\'\' />',1,1415238834,1415238981),(9,21,1,'一级类型*','','relation_select',0,0,'1:美仑·漫步:default\r\n','','all','<select name=\'product[level_one_id]\' class=\'\'>    <option value=\'1\'  selected=\'selected\' >美仑·漫步</option></select>',1,1415238956,1415349572),(10,22,1,'2级类型','','relation_select',0,0,'1:美仑·漫步:default\r\n','','all','<select name=\'product[level_two_id]\' class=\'\'>    <option value=\'1\'  selected=\'selected\' >美仑·漫步</option></select>',1,1415239062,1415349637),(11,23,1,'3级类型','','relation_select',0,0,'1:美仑·漫步:default\r\n','','all','<select name=\'product[level_three_type]\' class=\'\'>    <option value=\'1\'  selected=\'selected\' >美仑·漫步</option></select>',1,1415239304,1415239304),(12,24,1,'产品简介*','','editor',150,20,'','','simple','<textarea name=\'product[introduce]\' id=\'WJZYSr5O\' rows=\'20\' cols=\'150\' ></textarea><script type=\'text/javascript\'>$(function(){KindEditor.ready(function(K) {K.create(\'#WJZYSr5O\',{resizeType:1,items:[\'fontname\',\'fontsize\',\'|\',\'forecolor\',\'hilitecolor\',\'bold\',\'italic\',\'underline\',\'removeformat\',\'|\',\'justifyleft\',\'justifycenter\',\'justifyright\',\'insertorderedlist\',\'insertunorderedlist\',\'|\',\'emoticons\',\'image\',\'link\'],afterBlur:function(){this.sync();}});});});</script>',1,1415239860,1415346003),(13,25,1,'产品概述','','editor',150,20,'','','simple','<textarea name=\'product[description]\' id=\'qeN1WxcO\' rows=\'20\' cols=\'150\' ></textarea><script type=\'text/javascript\'>$(function(){KindEditor.ready(function(K) {K.create(\'#qeN1WxcO\',{resizeType:1,items:[\'fontname\',\'fontsize\',\'|\',\'forecolor\',\'hilitecolor\',\'bold\',\'italic\',\'underline\',\'removeformat\',\'|\',\'justifyleft\',\'justifycenter\',\'justifyright\',\'insertorderedlist\',\'insertunorderedlist\',\'|\',\'emoticons\',\'image\',\'link\'],afterBlur:function(){this.sync();}});});});</script>',1,1415240649,1415345779);
/*!40000 ALTER TABLE `qt_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_model`
--

DROP TABLE IF EXISTS `qt_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL COMMENT '模型名称',
  `tbl_name` varchar(32) NOT NULL COMMENT '数据表名称',
  `menu_name` varchar(32) NOT NULL COMMENT '菜单名称',
  `is_inner` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为内部表',
  `has_pk` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否包含主键',
  `tbl_engine` varchar(16) NOT NULL DEFAULT 'InnoDB' COMMENT '引擎类型',
  `description` text NOT NULL COMMENT '模型描述',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='数据模型信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_model`
--

LOCK TABLES `qt_model` WRITE;
/*!40000 ALTER TABLE `qt_model` DISABLE KEYS */;
INSERT INTO `qt_model` VALUES (1,'单页面管理','qt_single','单页面',0,1,'InnoDB','',1415235153,1415235164),(3,'产品类型','qt_type','产品类型',0,1,'InnoDB','产品类型',1415238238,1415238700),(4,'产品','qt_product','产品',0,1,'InnoDB','产品',1415238672,1415238672);
/*!40000 ALTER TABLE `qt_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_node`
--

DROP TABLE IF EXISTS `qt_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) NOT NULL COMMENT '父节点id',
  `name` varchar(32) NOT NULL COMMENT '节点名称',
  `title` varchar(32) NOT NULL COMMENT '节点标题',
  `level` tinyint(4) NOT NULL COMMENT '节点等级',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '节点状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_node`
--

LOCK TABLES `qt_node` WRITE;
/*!40000 ALTER TABLE `qt_node` DISABLE KEYS */;
INSERT INTO `qt_node` VALUES (1,0,'Admin','后台管理',1,1,1415234982,1415234982),(2,1,'Index','首页',2,1,1415234982,1415234982),(3,2,'index','查看系统信息',3,1,1415234982,1415234982),(4,2,'editPassword','修改密码页面',3,1,1415234982,1415234982),(5,2,'updatePassword','更新密码',3,1,1415234982,1415234982),(6,2,'siteEdit','编辑站点信息',3,1,1415234982,1415234982),(7,2,'siteUpdate','更新站点信息',3,1,1415234982,1415234982),(8,1,'Cache','缓存管理',2,1,1415234982,1415234982),(9,8,'index','缓存文件列表',3,1,1415234982,1415234982),(10,8,'delete','删除缓存文件',3,1,1415234982,1415234982),(11,1,'Admins','管理员权限',2,1,1415234982,1415234982),(12,11,'index','查看管理员列表',3,1,1415234982,1415234982),(13,11,'add','添加管理员',3,1,1415234982,1415234982),(14,11,'create','创建管理员',3,1,1415234982,1415234982),(15,11,'edit','编辑管理员信息',3,1,1415234982,1415234982),(16,11,'update','更新管理员信息',3,1,1415234982,1415234982),(17,1,'Roles','角色管理',2,1,1415234982,1415234982),(18,17,'index','查看角色列表',3,1,1415234982,1415234982),(19,17,'add','添加角色',3,1,1415234982,1415234982),(20,17,'create','创建角色',3,1,1415234982,1415234982),(21,17,'edit','编辑角色信息',3,1,1415234982,1415234982),(22,17,'update','更新角色信息',3,1,1415234982,1415234982),(23,17,'assignAccess','编辑角色权限',3,1,1415234982,1415234982),(24,17,'doAssignAccess','更新角色权限',3,1,0,0),(25,1,'Nodes','节点管理',2,1,1415234982,1415234982),(26,25,'index','查看节点信息',3,1,1415234982,1415234982),(27,25,'toggleStatus','修改节点状态',3,1,1415234982,1415234982),(28,1,'Models','模型管理',2,1,1415234982,1415234982),(29,28,'index','查看模型列表',3,1,1415234982,1415234982),(30,28,'show','查看模型信息',3,1,1415234982,1415234982),(31,28,'add','添加模型',3,1,1415234982,1415234982),(32,28,'create','创建模型',3,1,1415234982,1415234982),(33,28,'edit','编辑模型信息',3,1,1415234982,1415234982),(34,28,'update','更新模型信息',3,1,1415234982,1415234982),(35,28,'delete','删除模型',3,1,1415234982,1415234982),(36,28,'checkModelName','检查模型名称',3,1,1415234982,1415234982),(37,28,'checkTblName','检查数据表名称',3,1,1415234982,1415234982),(38,28,'checkMenuName','检查菜单名称',3,1,1415234982,1415234982),(39,1,'Fields','字段管理',2,1,1415234982,1415234982),(40,39,'index','查看字段信息列表',3,1,1415234982,1415234982),(41,39,'add','添加字段',3,1,1415234982,1415234982),(42,39,'create','创建字段',3,1,1415234982,1415234982),(43,39,'edit','编辑字段',3,1,1415234982,1415234982),(44,39,'update','更新字段',3,1,1415234982,1415234982),(45,39,'delete','删除字段',3,1,1415234982,1415234982),(46,39,'checkFieldName','检查字段名称',3,1,1415234982,1415234982),(47,39,'checkFieldLabel','检查字段标签',3,1,1415234982,1415234982),(48,1,'Data','数据管理',2,1,1,1415234982),(49,48,'backup','查看数据备份列表',3,1,1415234982,1415234982),(50,48,'doBackup','处理数据备份',3,1,1415234982,1415234982),(51,48,'restore','查看SQL文件列表',3,1,1415234982,1415234982),(52,48,'doRestore','恢复SQL文件',3,1,1415234982,1415234982),(53,48,'deleteSqlFiles','删除SQL文件',3,1,1415234982,1415234982),(54,48,'zipSqlFiles','打包SQL文件为ZIP',3,1,1415234982,1415234982),(55,48,'zipList','查看ZIP文件列表',3,1,1415234982,1415234982),(56,48,'unzipFiles','解压ZIP文件',3,1,1415234982,1415234982),(57,48,'deleteZipFiles','删除ZIP文件',3,1,1415234982,1415234982),(58,48,'downloadFile','下载SQL、ZIP文件',3,1,1415234982,1415234982),(59,48,'optimize','查看可优化数据表列表',3,1,1415234982,1415234982),(60,48,'doOptimize','优化数据表',3,1,1415234982,1415234982),(61,39,'toggleListShow','切换系统字段在数据列表中的显示',3,1,1415234982,1415234982),(62,1,'Single','单页面管理',2,1,1415235153,1415235153),(63,62,'index','单页面管理',3,1,1415235153,1415235153),(64,62,'add','添加单页面',3,1,1415235153,1415235153),(65,62,'create','创建单页面',3,1,1415235153,1415235153),(66,62,'edit','编辑单页面',3,1,1415235153,1415235153),(67,62,'update','更新单页面',3,1,1415235153,1415235153),(68,62,'delete','删除单页面',3,1,1415235153,1415235153),(69,1,'ProductType','产品类型管理',2,1,1415237371,1415237371),(70,69,'index','产品类型管理',3,1,1415237371,1415237371),(71,69,'add','添加产品类型',3,1,1415237371,1415237371),(72,69,'create','创建产品类型',3,1,1415237371,1415237371),(73,69,'edit','编辑产品类型',3,1,1415237371,1415237371),(74,69,'update','更新产品类型',3,1,1415237371,1415237371),(75,69,'delete','删除产品类型',3,1,1415237371,1415237371),(76,1,'Type','商品类型管理',2,1,1415238238,1415238238),(77,76,'index','商品类型管理',3,1,1415238238,1415238238),(78,76,'add','添加商品类型',3,1,1415238238,1415238238),(79,76,'create','创建商品类型',3,1,1415238238,1415238238),(80,76,'edit','编辑商品类型',3,1,1415238238,1415238238),(81,76,'update','更新商品类型',3,1,1415238238,1415238238),(82,76,'delete','删除商品类型',3,1,1415238238,1415238238),(83,1,'Product','产品管理',2,1,1415238673,1415238673),(84,83,'index','产品管理',3,1,1415238673,1415238673),(85,83,'add','添加产品',3,1,1415238673,1415238673),(86,83,'create','创建产品',3,1,1415238673,1415238673),(87,83,'edit','编辑产品',3,1,1415238673,1415238673),(88,83,'update','更新产品',3,1,1415238673,1415238673),(89,83,'delete','删除产品',3,1,1415238673,1415238673);
/*!40000 ALTER TABLE `qt_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_product`
--

DROP TABLE IF EXISTS `qt_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `level_one_id` int(8) DEFAULT NULL COMMENT '一级类型*',
  `level_two_id` int(8) DEFAULT NULL COMMENT '2级类型',
  `level_three_type` int(8) DEFAULT NULL COMMENT '3级类型',
  `introduce` mediumtext COMMENT '产品简介*',
  `description` mediumtext COMMENT '产品概述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_product`
--

LOCK TABLES `qt_product` WRITE;
/*!40000 ALTER TABLE `qt_product` DISABLE KEYS */;
INSERT INTO `qt_product` VALUES (1,1415345788,1415346016,'都发顺丰',1,1,1,'法师答复','');
/*!40000 ALTER TABLE `qt_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_role`
--

DROP TABLE IF EXISTS `qt_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) NOT NULL COMMENT '父角色id',
  `name` varchar(32) NOT NULL COMMENT '角色名称',
  `description` text NOT NULL COMMENT '角色描述',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_role`
--

LOCK TABLES `qt_role` WRITE;
/*!40000 ALTER TABLE `qt_role` DISABLE KEYS */;
INSERT INTO `qt_role` VALUES (1,0,'超级管理员','系统内置超级管理员组，不受权限分配账号限制',1,1415234982,1415234982),(2,1,'管理员','',1,1415253151,1415253160);
/*!40000 ALTER TABLE `qt_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_role_admin`
--

DROP TABLE IF EXISTS `qt_role_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_role_admin` (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `user_id` int(11) NOT NULL COMMENT '管理员id',
  KEY `fk_role_admin` (`role_id`),
  KEY `fk_admin_role` (`user_id`),
  CONSTRAINT `fk_ar` FOREIGN KEY (`user_id`) REFERENCES `qt_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ra` FOREIGN KEY (`role_id`) REFERENCES `qt_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_role_admin`
--

LOCK TABLES `qt_role_admin` WRITE;
/*!40000 ALTER TABLE `qt_role_admin` DISABLE KEYS */;
INSERT INTO `qt_role_admin` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `qt_role_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_single`
--

DROP TABLE IF EXISTS `qt_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_single` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` mediumtext COMMENT '内容',
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_single`
--

LOCK TABLES `qt_single` WRITE;
/*!40000 ALTER TABLE `qt_single` DISABLE KEYS */;
INSERT INTO `qt_single` VALUES (1,1415235210,1415236863,'联系我们','<p>\r\n	<p>\r\n		<span><span style=\"line-height:20px;\"><br />\r\n</span></span>\r\n		<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"1000\" style=\"color:#868686;font-family:宋体, Arial;font-size:12px;background-color:#FFFFFF;\">\r\n			<tbody>\r\n				<tr>\r\n					<td width=\"450\">\r\n						<img alt=\"工厂大图400-215.jpg\" width=\"400\" height=\"215\" src=\"http://www.baiqiang.com.cn/d/file/aboutus/2014-05-20/6ef1e738ec9f95c226524ac239a3dc5e.jpg\" />\r\n					</td>\r\n					<td valign=\"top\">\r\n						<p style=\"margin-left:5px;\">\r\n							<span style=\"font-size:large;\"><strong><span style=\"color:#000000;\">北京世纪百强家具有限责任公司</span></strong></span>\r\n						</p>\r\n						<p style=\"margin-left:5px;\">\r\n							&nbsp;\r\n						</p>\r\n						<p style=\"margin-left:5px;\">\r\n							<strong>地址：</strong>北京市顺义区牛栏山镇牛汇南一街5号\r\n						</p>\r\n						<p style=\"margin-left:5px;\">\r\n							<strong>电话：</strong>400-660-6800\r\n						</p>\r\n						<p style=\"margin-left:5px;\">\r\n							<strong>邮箱：</strong>info@beking.com.cn\r\n						</p>\r\n						<div style=\"margin:0px;padding:0px;border:none;\">\r\n							&nbsp;<a target=\"_blank\" href=\"http://j.map.baidu.com/Us0vs\"><img border=\"0\" alt=\"\" src=\"http://www.baiqiang.com.cn/newskin/images/vditu.png\" /></a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</p>\r\n	<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n		&nbsp;\r\n	</p>\r\n	<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"1000\" style=\"color:#868686;font-family:宋体, Arial;font-size:12px;background-color:#FFFFFF;\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"450\">\r\n					<img alt=\"IMG_8016.JPG\" width=\"400\" height=\"229\" src=\"http://www.baiqiang.com.cn/d/file/aboutus/2014-05-20/20a27c938913f2fdf267fad5df6550b9.jpg\" />\r\n				</td>\r\n				<td valign=\"top\">\r\n					<p style=\"margin-left:5px;\">\r\n						<span style=\"font-size:large;\"><strong><span style=\"color:#000000;\">北京百强新家商贸有限公司</span></strong></span>\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						&nbsp;\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>地址：</strong>北京市海淀区北三环西路甲18号中坤广场B座\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（联想桥东南角，城铁大钟寺站西200米）\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>电话：</strong>400-660-6800\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>邮箱：</strong>info@beking.com.cn\r\n					</p>\r\n					<div style=\"margin:0px;padding:0px;border:none;\">\r\n						<a target=\"_blank\" href=\"http://j.map.baidu.com/J-0L6\"><img border=\"0\" alt=\"\" src=\"http://www.baiqiang.com.cn/newskin/images/vditu.png\" /></a>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n		&nbsp;\r\n	</p>\r\n	<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"1000\" style=\"color:#868686;font-family:宋体, Arial;font-size:12px;background-color:#FFFFFF;\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"450\">\r\n					<img alt=\"4.jpg\" width=\"400\" height=\"215\" src=\"http://www.baiqiang.com.cn/d/file/aboutus/2014-06-20/9e0a1b68d44423c7d3628e55ac74c397.jpg\" />\r\n				</td>\r\n				<td valign=\"top\">\r\n					<p style=\"margin-left:5px;\">\r\n						<span style=\"font-size:large;\"><strong><span style=\"color:#000000;\">北京欧罗汇国际家居商贸有限公司</span></strong></span>\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						&nbsp;\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>地址：</strong>北京市海淀区北三环西路甲18号中坤广场B座\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （联想桥东南角，城铁大钟寺站西200米）\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>电话：</strong>400-660-6800\r\n					</p>\r\n					<p style=\"margin-left:5px;\">\r\n						<strong>邮箱：</strong>info@euhome.cn\r\n					</p>\r\n					<div style=\"margin:0px;padding:0px;border:none;\">\r\n						<a target=\"_blank\" href=\"http://j.map.baidu.com/J-0L6\"><img border=\"0\" alt=\"\" src=\"http://www.baiqiang.com.cn/newskin/images/vditu.png\" /></a>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>'),(2,1415236970,1415335992,'会员服务','<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-family:新宋体;\"><span style=\"font-size:large;\"><strong><span style=\"color:#FF0000;\">机会难得！百强会员招募豪送“三重礼”！</span></strong></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 千呼万唤始出来，百强会员福利从天降啦！</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不论您是老顾客还是新顾客，</span><span style=\"font-size:medium;\">不论您是买家具还是买饰品，</span><span style=\"font-size:medium;\">不论您是自己买还是推荐朋友买，</span><span style=\"font-size:medium;\">只要您关注百强微信订阅号，并成功加入会员，即可获得百强会员福利大放送！</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"color:#FF0000;\"><span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><strong>活动范围：百强家具北京市所有门店</strong></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"color:#FF0000;\"><span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><strong>活动时间：长期有效</strong></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span style=\"color:#FF0000;\"><span style=\"font-family:新宋体;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><strong>豪礼一：加入有礼</strong></span></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>关注百强微信订阅号，并在服务号中加入会员，即可获赠精美礼品一份！</span><span style=\"font-size:small;\">（数量有限，赠完为止）</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:新宋体;\"><span style=\"color:#FF0000;\"><span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><strong>豪礼二：购物有礼</strong></span></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>会员购买百强家具产品，即可尊享折上折特惠！</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"color:#FF0000;\"><span style=\"font-size:medium;\"><span style=\"font-family:新宋体;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><strong>豪礼三：推荐有礼</strong></span></span></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>会员推荐购买，成交即可享受返利！</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>【</span><strong>百强黑森林系列】</strong>实木家具沉稳、大气，彰显居室大家风范。<img src=\"/jiaju/easyAdmin/Public/uploads/image/20141107/20141107125305_25688.png\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\"><img alt=\"44444.jpg\" width=\"900\" height=\"306\" src=\"http://www.baiqiang.com.cn/d/file/vipservice/2014-05-16/4380f9508f70737dcb06dda61d0f90eb.jpg\" /></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>【</span><strong>百强新罗马系列】</strong>实木家具优雅、古典，尽显居室高贵气息。</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\"><img alt=\"11111111111.jpg\" width=\"900\" height=\"295\" src=\"http://www.baiqiang.com.cn/d/file/vipservice/2014-05-16/b6b65b99c72531d769f562ea9be93b0b.jpg\" /></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>【</span><strong>百强欧福莱系列】</strong>板式家具现代、简约，透露居家时尚品味。</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\"><img alt=\"aaa.jpg\" width=\"900\" height=\"322\" src=\"http://www.baiqiang.com.cn/d/file/vipservice/2014-05-16/f99a679e00c3e9523fa54970ca3d3e37.jpg\" /></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:medium;\"><span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>【</span><strong>百强哈利木屋系列】</strong>青少年实木家具实用、安全，打造爸妈放心的小王国。</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\"><img alt=\"000.jpg\" width=\"900\" height=\"346\" src=\"http://www.baiqiang.com.cn/d/file/vipservice/2014-05-22/6d150f5cf443bda1ddde45ef9f7a37fa.jpg\" /></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\">您还不是百强会员么？</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"font-size:medium;\">不要再等啦，快来加入百强大家庭，享受百年不遇的会员高级礼遇！</span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"color:#FF0000;\"><strong><span style=\"font-size:medium;\">百强会员招募活动已正式启动，全城联动就等您的参与！</span></strong></span> \r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:5px;color:#868686;font-family:宋体, Arial;background-color:#FFFFFF;text-align:center;\">\r\n	<img alt=\"未标题-1.jpg\" width=\"400\" height=\"400\" src=\"http://www.baiqiang.com.cn/d/file/vipservice/2014-06-09/0b14d6a3d999314eaf28bf53c86ef95e.jpg\" /> \r\n</p>');
/*!40000 ALTER TABLE `qt_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qt_type`
--

DROP TABLE IF EXISTS `qt_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qt_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `name` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `type_level` tinyint(1) DEFAULT NULL COMMENT '类型级别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qt_type`
--

LOCK TABLES `qt_type` WRITE;
/*!40000 ALTER TABLE `qt_type` DISABLE KEYS */;
INSERT INTO `qt_type` VALUES (1,1415238633,1415238633,'美仑·漫步',1);
/*!40000 ALTER TABLE `qt_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-07 16:42:36
