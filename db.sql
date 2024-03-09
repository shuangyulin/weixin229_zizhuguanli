-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmz9934
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmz9934`
--

/*!40000 DROP DATABASE IF EXISTS `ssmz9934`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmz9934` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmz9934`;

--
-- Table structure for table `banzhuren`
--

DROP TABLE IF EXISTS `banzhuren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banzhuren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `banzhurendianhua` varchar(200) DEFAULT NULL COMMENT '班主任电话',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `gongzuozheng` varchar(200) NOT NULL COMMENT '工作证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banzhurengonghao` (`banzhurengonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694622258 DEFAULT CHARSET=utf8 COMMENT='班主任';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banzhuren`
--

LOCK TABLES `banzhuren` WRITE;
/*!40000 ALTER TABLE `banzhuren` DISABLE KEYS */;
INSERT INTO `banzhuren` VALUES (11,'2022-03-31 02:41:16','班主任工号1','123456','班主任姓名1','upload/banzhuren_zhaopian1.jpg','男','班级1','13823888881','440300199101010001','工作证1','是',''),(12,'2022-03-31 02:41:16','班主任工号2','123456','班主任姓名2','upload/banzhuren_zhaopian2.jpg','男','班级2','13823888882','440300199202020002','工作证2','是',''),(13,'2022-03-31 02:41:16','班主任工号3','123456','班主任姓名3','upload/banzhuren_zhaopian3.jpg','男','班级3','13823888883','440300199303030003','工作证3','是',''),(14,'2022-03-31 02:41:16','班主任工号4','123456','班主任姓名4','upload/banzhuren_zhaopian4.jpg','男','班级4','13823888884','440300199404040004','工作证4','是',''),(15,'2022-03-31 02:41:16','班主任工号5','123456','班主任姓名5','upload/banzhuren_zhaopian5.jpg','男','班级5','13823888885','440300199505050005','工作证5','是',''),(16,'2022-03-31 02:41:16','班主任工号6','123456','班主任姓名6','upload/banzhuren_zhaopian6.jpg','男','班级6','13823888886','440300199606060006','工作证6','是',''),(1648694622257,'2022-03-31 02:43:42','111','111','A班主',NULL,'男','202','13877777777','441455555555555','#123','是','通过');
/*!40000 ALTER TABLE `banzhuren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmingdangongshi`
--

DROP TABLE IF EXISTS `discussmingdangongshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmingdangongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694837766 DEFAULT CHARSET=utf8 COMMENT='名单公示评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmingdangongshi`
--

LOCK TABLES `discussmingdangongshi` WRITE;
/*!40000 ALTER TABLE `discussmingdangongshi` DISABLE KEYS */;
INSERT INTO `discussmingdangongshi` VALUES (111,'2022-03-31 02:41:16',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-03-31 02:41:16',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-03-31 02:41:16',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-03-31 02:41:16',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-03-31 02:41:16',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-03-31 02:41:16',6,6,'用户名6','评论内容6','回复内容6'),(1648694837765,'2022-03-31 02:47:17',1648694804346,1648694653971,'222','阿斯达所大所','');
/*!40000 ALTER TABLE `discussmingdangongshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaofenlei`
--

DROP TABLE IF EXISTS `gonggaofenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaofenlei` varchar(200) DEFAULT NULL COMMENT '公告分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694935141 DEFAULT CHARSET=utf8 COMMENT='公告分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaofenlei`
--

LOCK TABLES `gonggaofenlei` WRITE;
/*!40000 ALTER TABLE `gonggaofenlei` DISABLE KEYS */;
INSERT INTO `gonggaofenlei` VALUES (41,'2022-03-31 02:41:16','公告分类1'),(42,'2022-03-31 02:41:16','公告分类2'),(43,'2022-03-31 02:41:16','公告分类3'),(44,'2022-03-31 02:41:16','公告分类4'),(45,'2022-03-31 02:41:16','公告分类5'),(46,'2022-03-31 02:41:16','公告分类6'),(1648694935140,'2022-03-31 02:48:54','A分类');
/*!40000 ALTER TABLE `gonggaofenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaofenlei` varchar(200) DEFAULT NULL COMMENT '公告分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (51,'2022-03-31 02:41:16','标题1','<h1>内容1</h1>','2022-03-31 10:41:16','发布人1','upload/gonggaoxinxi_tupian1.jpg','A分类'),(52,'2022-03-31 02:41:16','标题2','内容2','2022-03-31 10:41:16','发布人2','upload/gonggaoxinxi_tupian2.jpg','公告分类2'),(53,'2022-03-31 02:41:16','标题3','内容3','2022-03-31 10:41:16','发布人3','upload/gonggaoxinxi_tupian3.jpg','公告分类3'),(54,'2022-03-31 02:41:16','标题4','内容4','2022-03-31 10:41:16','发布人4','upload/gonggaoxinxi_tupian4.jpg','公告分类4'),(55,'2022-03-31 02:41:16','标题5','内容5','2022-03-31 10:41:16','发布人5','upload/gonggaoxinxi_tupian5.jpg','公告分类5'),(56,'2022-03-31 02:41:16','标题6','内容6','2022-03-31 10:41:16','发布人6','upload/gonggaoxinxi_tupian6.jpg','公告分类6');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huizhigonggao`
--

DROP TABLE IF EXISTS `huizhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huizhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongshibiaoti` varchar(200) DEFAULT NULL COMMENT '公示标题',
  `gongshitupian` varchar(200) DEFAULT NULL COMMENT '公示图片',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `yidushijian` datetime DEFAULT NULL COMMENT '已读时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694847343 DEFAULT CHARSET=utf8 COMMENT='回执公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huizhigonggao`
--

LOCK TABLES `huizhigonggao` WRITE;
/*!40000 ALTER TABLE `huizhigonggao` DISABLE KEYS */;
INSERT INTO `huizhigonggao` VALUES (91,'2022-03-31 02:41:16','公示标题1','upload/huizhigonggao_gongshitupian1.jpg','学生姓名1','家长账号1','家长姓名1','2022-03-31 10:41:16',1,1),(92,'2022-03-31 02:41:16','公示标题2','upload/huizhigonggao_gongshitupian2.jpg','学生姓名2','家长账号2','家长姓名2','2022-03-31 10:41:16',2,2),(93,'2022-03-31 02:41:16','公示标题3','upload/huizhigonggao_gongshitupian3.jpg','学生姓名3','家长账号3','家长姓名3','2022-03-31 10:41:16',3,3),(94,'2022-03-31 02:41:16','公示标题4','upload/huizhigonggao_gongshitupian4.jpg','学生姓名4','家长账号4','家长姓名4','2022-03-31 10:41:16',4,4),(95,'2022-03-31 02:41:16','公示标题5','upload/huizhigonggao_gongshitupian5.jpg','学生姓名5','家长账号5','家长姓名5','2022-03-31 10:41:16',5,5),(96,'2022-03-31 02:41:16','公示标题6','upload/huizhigonggao_gongshitupian6.jpg','学生姓名6','家长账号6','家长姓名6','2022-03-31 10:41:16',6,6),(1648694847342,'2022-03-31 02:47:26','公示公示公示','upload/1648694802793.jpg','A学生','222','A家长','2022-03-31 10:48:53',1648694653971,1648694804346);
/*!40000 ALTER TABLE `huizhigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhang`
--

DROP TABLE IF EXISTS `jiazhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhangzhanghao` varchar(200) NOT NULL COMMENT '家长账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiazhangshouji` varchar(200) NOT NULL COMMENT '家长手机',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `banzhurengonghao` varchar(200) NOT NULL COMMENT '班主任工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiazhangzhanghao` (`jiazhangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694653972 DEFAULT CHARSET=utf8 COMMENT='家长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhang`
--

LOCK TABLES `jiazhang` WRITE;
/*!40000 ALTER TABLE `jiazhang` DISABLE KEYS */;
INSERT INTO `jiazhang` VALUES (21,'2022-03-31 02:41:16','家长账号1','123456','家长姓名1',1,'男','upload/jiazhang_zhaopian1.jpg','13823888881','440300199101010001','班主任工号1','是',''),(22,'2022-03-31 02:41:16','家长账号2','123456','家长姓名2',2,'男','upload/jiazhang_zhaopian2.jpg','13823888882','440300199202020002','班主任工号2','是',''),(23,'2022-03-31 02:41:16','家长账号3','123456','家长姓名3',3,'男','upload/jiazhang_zhaopian3.jpg','13823888883','440300199303030003','班主任工号3','是',''),(24,'2022-03-31 02:41:16','家长账号4','123456','家长姓名4',4,'男','upload/jiazhang_zhaopian4.jpg','13823888884','440300199404040004','班主任工号4','是',''),(25,'2022-03-31 02:41:16','家长账号5','123456','家长姓名5',5,'男','upload/jiazhang_zhaopian5.jpg','13823888885','440300199505050005','班主任工号5','是',''),(26,'2022-03-31 02:41:16','家长账号6','123456','家长姓名6',6,'男','upload/jiazhang_zhaopian6.jpg','13823888886','440300199606060006','班主任工号6','是',''),(1648694653971,'2022-03-31 02:44:13','222','222','A家长',33,'男','upload/1648694714748.jpg','13877777777','441455555555551','111','是','通过通过');
/*!40000 ALTER TABLE `jiazhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mingdangongshi`
--

DROP TABLE IF EXISTS `mingdangongshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mingdangongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingshijian` varchar(200) DEFAULT NULL COMMENT '申请时间',
  `xuexiaobanji` varchar(200) DEFAULT NULL COMMENT '学校班级',
  `pinkundengji` varchar(200) DEFAULT NULL COMMENT '贫困等级',
  `shenpishijian` date DEFAULT NULL COMMENT '审批时间',
  `zizhujine` varchar(200) NOT NULL COMMENT '资助金额',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zizhunianxian` varchar(200) NOT NULL COMMENT '资助年限',
  `gongshibiaoti` varchar(200) NOT NULL COMMENT '公示标题',
  `gongshitupian` varchar(200) NOT NULL COMMENT '公示图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694804347 DEFAULT CHARSET=utf8 COMMENT='名单公示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mingdangongshi`
--

LOCK TABLES `mingdangongshi` WRITE;
/*!40000 ALTER TABLE `mingdangongshi` DISABLE KEYS */;
INSERT INTO `mingdangongshi` VALUES (81,'2022-03-31 02:41:16','申请时间1','学校班级1','贫困等级1','2022-03-31','资助金额1','学生姓名1','资助年限1','公示标题1','upload/mingdangongshi_gongshitupian1.jpg'),(82,'2022-03-31 02:41:16','申请时间2','学校班级2','贫困等级2','2022-03-31','资助金额2','学生姓名2','资助年限2','公示标题2','upload/mingdangongshi_gongshitupian2.jpg'),(83,'2022-03-31 02:41:16','申请时间3','学校班级3','贫困等级3','2022-03-31','资助金额3','学生姓名3','资助年限3','公示标题3','upload/mingdangongshi_gongshitupian3.jpg'),(84,'2022-03-31 02:41:16','申请时间4','学校班级4','贫困等级4','2022-03-31','资助金额4','学生姓名4','资助年限4','公示标题4','upload/mingdangongshi_gongshitupian4.jpg'),(85,'2022-03-31 02:41:16','申请时间5','学校班级5','贫困等级5','2022-03-31','资助金额5','学生姓名5','资助年限5','公示标题5','upload/mingdangongshi_gongshitupian5.jpg'),(86,'2022-03-31 02:41:16','申请时间6','学校班级6','贫困等级6','2022-03-31','资助金额6','学生姓名6','资助年限6','公示标题6','upload/mingdangongshi_gongshitupian6.jpg'),(1648694804346,'2022-03-31 02:46:43','2022-03-31','202','困难','2022-03-31','2000','A学生','2','公示公示公示','upload/1648694802793.jpg');
/*!40000 ALTER TABLE `mingdangongshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingfuyi`
--

DROP TABLE IF EXISTS `shenqingfuyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingfuyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongshibiaoti` varchar(200) DEFAULT NULL COMMENT '公示标题',
  `gongshitupian` varchar(200) DEFAULT NULL COMMENT '公示图片',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `jiazhangshouji` varchar(200) DEFAULT NULL COMMENT '家长手机',
  `fuyineirong` longtext COMMENT '复议内容',
  `fuyishijian` datetime DEFAULT NULL COMMENT '复议时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694853045 DEFAULT CHARSET=utf8 COMMENT='申请复议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingfuyi`
--

LOCK TABLES `shenqingfuyi` WRITE;
/*!40000 ALTER TABLE `shenqingfuyi` DISABLE KEYS */;
INSERT INTO `shenqingfuyi` VALUES (101,'2022-03-31 02:41:16','公示标题1','upload/shenqingfuyi_gongshitupian1.jpg','家长账号1','家长姓名1','家长手机1','复议内容1','2022-03-31 10:41:16','是',''),(102,'2022-03-31 02:41:16','公示标题2','upload/shenqingfuyi_gongshitupian2.jpg','家长账号2','家长姓名2','家长手机2','复议内容2','2022-03-31 10:41:16','是',''),(103,'2022-03-31 02:41:16','公示标题3','upload/shenqingfuyi_gongshitupian3.jpg','家长账号3','家长姓名3','家长手机3','复议内容3','2022-03-31 10:41:16','是',''),(104,'2022-03-31 02:41:16','公示标题4','upload/shenqingfuyi_gongshitupian4.jpg','家长账号4','家长姓名4','家长手机4','复议内容4','2022-03-31 10:41:16','是',''),(105,'2022-03-31 02:41:16','公示标题5','upload/shenqingfuyi_gongshitupian5.jpg','家长账号5','家长姓名5','家长手机5','复议内容5','2022-03-31 10:41:16','是',''),(106,'2022-03-31 02:41:16','公示标题6','upload/shenqingfuyi_gongshitupian6.jpg','家长账号6','家长姓名6','家长手机6','复议内容6','2022-03-31 10:41:16','是',''),(1648694853044,'2022-03-31 02:47:32','公示公示公示','upload/1648694802793.jpg','222','A家长','13877777777','as懂奥大所懂啊所','2022-03-31 10:48:57','','');
/*!40000 ALTER TABLE `shenqingfuyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','c9363lqk3u8jm7skibz9sidui70mu80l','2022-03-31 02:44:34','2022-03-31 03:48:23'),(2,1648694653971,'222','jiazhang','家长','elpfi33i0n4ya97iapolp8kfvm9mg799','2022-03-31 02:44:57','2022-03-31 03:47:13'),(3,1648694622257,'111','banzhuren','班主任','lgp6l6hchrlyj0f4dc096rzus79lt3o5','2022-03-31 02:45:46','2022-03-31 03:47:53');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-31 02:41:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxinxi`
--

DROP TABLE IF EXISTS `xueshengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `fumuxinxi` varchar(200) DEFAULT NULL COMMENT '父母信息',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `xuexiaobanji` varchar(200) DEFAULT NULL COMMENT '学校班级',
  `zizhu` varchar(200) DEFAULT NULL COMMENT '资助',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648695125204 DEFAULT CHARSET=utf8 COMMENT='学生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxinxi`
--

LOCK TABLES `xueshengxinxi` WRITE;
/*!40000 ALTER TABLE `xueshengxinxi` DISABLE KEYS */;
INSERT INTO `xueshengxinxi` VALUES (1648695124640,'2022-03-31 02:52:04','学生姓名2','出生日期2','父母信息2','家长账号2','学校班级2','资助2','身份证2','家庭住址2','联系方式2'),(1648695124710,'2022-03-31 02:52:04','学生姓名1','出生日期1','父母信息1','家长账号1','学校班级1','资助1','身份证1','家庭住址1','联系方式1'),(1648695124916,'2022-03-31 02:52:04','学生姓名3','出生日期3','父母信息3','家长账号3','学校班级3','资助3','身份证3','家庭住址3','联系方式3'),(1648695124983,'2022-03-31 02:52:04','学生姓名5','出生日期5','父母信息5','家长账号5','学校班级5','资助5','身份证5','家庭住址5','联系方式5'),(1648695125203,'2022-03-31 02:52:04','学生姓名4','出生日期4','父母信息4','家长账号4','学校班级4','资助4','身份证4','家庭住址4','联系方式4');
/*!40000 ALTER TABLE `xueshengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zizhupingyi`
--

DROP TABLE IF EXISTS `zizhupingyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zizhupingyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingyibiaoti` varchar(200) NOT NULL COMMENT '评议标题',
  `pingyifengmian` varchar(200) NOT NULL COMMENT '评议封面',
  `shenqingshijian` varchar(200) DEFAULT NULL COMMENT '申请时间',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `pinkundengji` varchar(200) DEFAULT NULL COMMENT '贫困等级',
  `xuexiaobanji` varchar(200) DEFAULT NULL COMMENT '学校班级',
  `pingyineirong` longtext COMMENT '评议内容',
  `pingyishijian` datetime DEFAULT NULL COMMENT '评议时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694765379 DEFAULT CHARSET=utf8 COMMENT='资助评议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zizhupingyi`
--

LOCK TABLES `zizhupingyi` WRITE;
/*!40000 ALTER TABLE `zizhupingyi` DISABLE KEYS */;
INSERT INTO `zizhupingyi` VALUES (71,'2022-03-31 02:41:16','评议标题1','upload/zizhupingyi_pingyifengmian1.jpg','申请时间1','班主任工号1','班主任姓名1','家长账号1','家长姓名1','学生姓名1','贫困等级1','学校班级1','评议内容1','2022-03-31 10:41:16','是',''),(72,'2022-03-31 02:41:16','评议标题2','upload/zizhupingyi_pingyifengmian2.jpg','申请时间2','班主任工号2','班主任姓名2','家长账号2','家长姓名2','学生姓名2','贫困等级2','学校班级2','评议内容2','2022-03-31 10:41:16','是',''),(73,'2022-03-31 02:41:16','评议标题3','upload/zizhupingyi_pingyifengmian3.jpg','申请时间3','班主任工号3','班主任姓名3','家长账号3','家长姓名3','学生姓名3','贫困等级3','学校班级3','评议内容3','2022-03-31 10:41:16','是',''),(74,'2022-03-31 02:41:16','评议标题4','upload/zizhupingyi_pingyifengmian4.jpg','申请时间4','班主任工号4','班主任姓名4','家长账号4','家长姓名4','学生姓名4','贫困等级4','学校班级4','评议内容4','2022-03-31 10:41:16','是',''),(75,'2022-03-31 02:41:16','评议标题5','upload/zizhupingyi_pingyifengmian5.jpg','申请时间5','班主任工号5','班主任姓名5','家长账号5','家长姓名5','学生姓名5','贫困等级5','学校班级5','评议内容5','2022-03-31 10:41:16','是',''),(76,'2022-03-31 02:41:16','评议标题6','upload/zizhupingyi_pingyifengmian6.jpg','申请时间6','班主任工号6','班主任姓名6','家长账号6','家长姓名6','学生姓名6','贫困等级6','学校班级6','评议内容6','2022-03-31 10:41:16','是',''),(1648694765378,'2022-03-31 02:46:04','测试测试测试测试测试','upload/1648694761979.jpg','2022-03-31','111','A班主','222','A家长','A学生','困难','202','测试测试测试测试','2022-03-31 10:47:25','是','审核通过');
/*!40000 ALTER TABLE `zizhupingyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zizhushenqing`
--

DROP TABLE IF EXISTS `zizhushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zizhushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbiaoti` varchar(200) NOT NULL COMMENT '申请标题',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `shenqingtupian` varchar(200) NOT NULL COMMENT '申请图片',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `jiazhangshouji` varchar(200) DEFAULT NULL COMMENT '家长手机',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `xuexiaobanji` varchar(200) NOT NULL COMMENT '学校班级',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `pinkundengji` varchar(200) NOT NULL COMMENT '贫困等级',
  `shenqingliyou` longtext NOT NULL COMMENT '申请理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648694735694 DEFAULT CHARSET=utf8 COMMENT='资助申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zizhushenqing`
--

LOCK TABLES `zizhushenqing` WRITE;
/*!40000 ALTER TABLE `zizhushenqing` DISABLE KEYS */;
INSERT INTO `zizhushenqing` VALUES (61,'2022-03-31 02:41:16','申请标题1','2022-03-31','upload/zizhushenqing_shenqingtupian1.jpg','家长账号1','家长姓名1','家长手机1','班主任工号1','学校班级1','学生姓名1','困难','申请理由1','是',''),(62,'2022-03-31 02:41:16','申请标题2','2022-03-31','upload/zizhushenqing_shenqingtupian2.jpg','家长账号2','家长姓名2','家长手机2','班主任工号2','学校班级2','学生姓名2','困难','申请理由2','是',''),(63,'2022-03-31 02:41:16','申请标题3','2022-03-31','upload/zizhushenqing_shenqingtupian3.jpg','家长账号3','家长姓名3','家长手机3','班主任工号3','学校班级3','学生姓名3','困难','申请理由3','是',''),(64,'2022-03-31 02:41:16','申请标题4','2022-03-31','upload/zizhushenqing_shenqingtupian4.jpg','家长账号4','家长姓名4','家长手机4','班主任工号4','学校班级4','学生姓名4','困难','申请理由4','是',''),(65,'2022-03-31 02:41:16','申请标题5','2022-03-31','upload/zizhushenqing_shenqingtupian5.jpg','家长账号5','家长姓名5','家长手机5','班主任工号5','学校班级5','学生姓名5','困难','申请理由5','是',''),(66,'2022-03-31 02:41:16','申请标题6','2022-03-31','upload/zizhushenqing_shenqingtupian6.jpg','家长账号6','家长姓名6','家长手机6','班主任工号6','学校班级6','学生姓名6','困难','申请理由6','是',''),(1648694735693,'2022-03-31 02:45:35','测试测试测试测试','2022-03-31','upload/1648694725301.jpg','222','A家长','13877777777','111','202','A学生','困难','测试测试测试测试','是','1111');
/*!40000 ALTER TABLE `zizhushenqing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 15:11:32
