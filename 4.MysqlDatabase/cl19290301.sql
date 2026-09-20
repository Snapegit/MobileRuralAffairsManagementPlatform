-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl19290301
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
-- Current Database: `cl19290301`
--

/*!40000 DROP DATABASE IF EXISTS `cl19290301`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl19290301` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl19290301`;

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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfuwuzhan`
--

DROP TABLE IF EXISTS `discussfuwuzhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfuwuzhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务站评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfuwuzhan`
--

LOCK TABLES `discussfuwuzhan` WRITE;
/*!40000 ALTER TABLE `discussfuwuzhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfuwuzhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinwenxinxi`
--

DROP TABLE IF EXISTS `discussxinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinwenxinxi`
--

LOCK TABLES `discussxinwenxinxi` WRITE;
/*!40000 ALTER TABLE `discussxinwenxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='社区论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2024-04-23 09:12:26','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(72,'2024-04-23 09:12:26','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(73,'2024-04-23 09:12:26','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(74,'2024-04-23 09:12:26','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(75,'2024-04-23 09:12:26','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(76,'2024-04-23 09:12:26','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuzhan`
--

DROP TABLE IF EXISTS `fuwuzhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuzhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '服务站名称',
  `tupian` longtext COMMENT '图片',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `fuwuzhandizhi` varchar(200) DEFAULT NULL COMMENT '服务站地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `keyuerenshu` int(11) DEFAULT NULL COMMENT '可约人数',
  `fuwuzhanxiangqing` longtext COMMENT '服务站详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='服务站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuzhan`
--

LOCK TABLES `fuwuzhan` WRITE;
/*!40000 ALTER TABLE `fuwuzhan` DISABLE KEYS */;
INSERT INTO `fuwuzhan` VALUES (101,'2024-04-23 09:12:26','服务站名称1','file/fuwuzhanTupian1.jpg,file/fuwuzhanTupian2.jpg,file/fuwuzhanTupian3.jpg','服务时间1','服务站地址1','19819881111',1,'服务站详情1',1),(102,'2024-04-23 09:12:26','服务站名称2','file/fuwuzhanTupian2.jpg,file/fuwuzhanTupian3.jpg,file/fuwuzhanTupian4.jpg','服务时间2','服务站地址2','19819881112',2,'服务站详情2',2),(103,'2024-04-23 09:12:26','服务站名称3','file/fuwuzhanTupian3.jpg,file/fuwuzhanTupian4.jpg,file/fuwuzhanTupian5.jpg','服务时间3','服务站地址3','19819881113',3,'服务站详情3',3),(104,'2024-04-23 09:12:26','服务站名称4','file/fuwuzhanTupian4.jpg,file/fuwuzhanTupian5.jpg,file/fuwuzhanTupian6.jpg','服务时间4','服务站地址4','19819881114',4,'服务站详情4',4),(105,'2024-04-23 09:12:26','服务站名称5','file/fuwuzhanTupian5.jpg,file/fuwuzhanTupian6.jpg,file/fuwuzhanTupian7.jpg','服务时间5','服务站地址5','19819881115',5,'服务站详情5',5),(106,'2024-04-23 09:12:26','服务站名称6','file/fuwuzhanTupian6.jpg,file/fuwuzhanTupian7.jpg,file/fuwuzhanTupian8.jpg','服务时间6','服务站地址6','19819881116',6,'服务站详情6',6);
/*!40000 ALTER TABLE `fuwuzhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuzhanyuyue`
--

DROP TABLE IF EXISTS `fuwuzhanyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuzhanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '服务站名称',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `keyuerenshu` int(11) DEFAULT NULL COMMENT '预约人数',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='服务站预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuzhanyuyue`
--

LOCK TABLES `fuwuzhanyuyue` WRITE;
/*!40000 ALTER TABLE `fuwuzhanyuyue` DISABLE KEYS */;
INSERT INTO `fuwuzhanyuyue` VALUES (111,'2024-04-23 09:12:26','服务站名称1','服务时间1','19819881111',1,'2024-04-23 17:12:26','用户账号1','用户姓名1'),(112,'2024-04-23 09:12:26','服务站名称2','服务时间2','19819881112',2,'2024-04-23 17:12:26','用户账号2','用户姓名2'),(113,'2024-04-23 09:12:26','服务站名称3','服务时间3','19819881113',3,'2024-04-23 17:12:26','用户账号3','用户姓名3'),(114,'2024-04-23 09:12:26','服务站名称4','服务时间4','19819881114',4,'2024-04-23 17:12:26','用户账号4','用户姓名4'),(115,'2024-04-23 09:12:26','服务站名称5','服务时间5','19819881115',5,'2024-04-23 17:12:26','用户账号5','用户姓名5'),(116,'2024-04-23 09:12:26','服务站名称6','服务时间6','19819881116',6,'2024-04-23 17:12:26','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `fuwuzhanyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanfankui`
--

DROP TABLE IF EXISTS `liuyanfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fankuibiaoti` varchar(200) NOT NULL COMMENT '反馈标题',
  `fankuineirong` longtext NOT NULL COMMENT '反馈内容',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanfankui`
--

LOCK TABLES `liuyanfankui` WRITE;
/*!40000 ALTER TABLE `liuyanfankui` DISABLE KEYS */;
INSERT INTO `liuyanfankui` VALUES (91,'2024-04-23 09:12:26','用户账号1','用户姓名1','反馈标题1','反馈内容1','2024-04-23 17:12:26','是',''),(92,'2024-04-23 09:12:26','用户账号2','用户姓名2','反馈标题2','反馈内容2','2024-04-23 17:12:26','是',''),(93,'2024-04-23 09:12:26','用户账号3','用户姓名3','反馈标题3','反馈内容3','2024-04-23 17:12:26','是',''),(94,'2024-04-23 09:12:26','用户账号4','用户姓名4','反馈标题4','反馈内容4','2024-04-23 17:12:26','是',''),(95,'2024-04-23 09:12:26','用户账号5','用户姓名5','反馈标题5','反馈内容5','2024-04-23 17:12:26','是',''),(96,'2024-04-23 09:12:26','用户账号6','用户姓名6','反馈标题6','反馈内容6','2024-04-23 17:12:26','是','');
/*!40000 ALTER TABLE `liuyanfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-23 09:12:26','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common10\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common28\",\"menu\":\"留言反馈管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"人群类型统计\",\"导入\",\"首页总数\",\"首页统计\",\"特殊人群占比\",\"年龄占比\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"社区论坛\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"新闻信息\",\"menuJump\":\"列表\",\"tableName\":\"xinwenxinxi\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻分类\",\"menuJump\":\"列表\",\"tableName\":\"xinwenfenlei\"}],\"fontClass\":\"icon-common43\",\"menu\":\"新闻信息管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"服务站\",\"menuJump\":\"列表\",\"tableName\":\"fuwuzhan\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"服务站预约\",\"menuJump\":\"列表\",\"tableName\":\"fuwuzhanyuyue\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"取消预约\",\"menuJump\":\"列表\",\"tableName\":\"quxiaoyuyue\"}],\"fontClass\":\"icon-common48\",\"menu\":\"服务站管理\",\"unicode\":\"&#xef65;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"通知信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common27\",\"menu\":\"通知信息管理\",\"unicode\":\"&#xee2c;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"预约\"],\"menu\":\"服务站\",\"menuJump\":\"列表\",\"tableName\":\"fuwuzhan\"}],\"menu\":\"服务站管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common4\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common28\",\"menu\":\"留言反馈管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"删除\",\"取消\"],\"menu\":\"服务站预约\",\"menuJump\":\"列表\",\"tableName\":\"fuwuzhanyuyue\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"取消预约\",\"menuJump\":\"列表\",\"tableName\":\"quxiaoyuyue\"}],\"fontClass\":\"icon-common48\",\"menu\":\"服务站管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"预约\"],\"menu\":\"服务站\",\"menuJump\":\"列表\",\"tableName\":\"fuwuzhan\"}],\"menu\":\"服务站管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='通知信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2024-04-23 09:12:26','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(82,'2024-04-23 09:12:26','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(83,'2024-04-23 09:12:26','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(84,'2024-04-23 09:12:26','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(85,'2024-04-23 09:12:26','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(86,'2024-04-23 09:12:26','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoyuyue`
--

DROP TABLE IF EXISTS `quxiaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '服务站名称',
  `quxiaoyuanyin` varchar(200) DEFAULT NULL COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='取消预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoyuyue`
--

LOCK TABLES `quxiaoyuyue` WRITE;
/*!40000 ALTER TABLE `quxiaoyuyue` DISABLE KEYS */;
INSERT INTO `quxiaoyuyue` VALUES (121,'2024-04-23 09:12:26','服务站名称1','取消原因1','2024-04-23 17:12:26','用户账号1','用户姓名1',1,1),(122,'2024-04-23 09:12:26','服务站名称2','取消原因2','2024-04-23 17:12:26','用户账号2','用户姓名2',2,2),(123,'2024-04-23 09:12:26','服务站名称3','取消原因3','2024-04-23 17:12:26','用户账号3','用户姓名3',3,3),(124,'2024-04-23 09:12:26','服务站名称4','取消原因4','2024-04-23 17:12:26','用户账号4','用户姓名4',4,4),(125,'2024-04-23 09:12:26','服务站名称5','取消原因5','2024-04-23 17:12:26','用户账号5','用户姓名5',5,5),(126,'2024-04-23 09:12:26','服务站名称6','取消原因6','2024-04-23 17:12:26','用户账号6','用户姓名6',6,6);
/*!40000 ALTER TABLE `quxiaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','dslmq5pim4h65jup6o1ey8ay194upw84','2024-04-23 09:15:05','2024-04-23 10:15:05');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-23 09:12:26','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenfenlei`
--

DROP TABLE IF EXISTS `xinwenfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinwenfenlei` (`xinwenfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='新闻分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenfenlei`
--

LOCK TABLES `xinwenfenlei` WRITE;
/*!40000 ALTER TABLE `xinwenfenlei` DISABLE KEYS */;
INSERT INTO `xinwenfenlei` VALUES (41,'2024-04-23 09:12:26','新闻分类1'),(42,'2024-04-23 09:12:26','新闻分类2'),(43,'2024-04-23 09:12:26','新闻分类3'),(44,'2024-04-23 09:12:26','新闻分类4'),(45,'2024-04-23 09:12:26','新闻分类5'),(46,'2024-04-23 09:12:26','新闻分类6');
/*!40000 ALTER TABLE `xinwenfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenxinxi`
--

DROP TABLE IF EXISTS `xinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `fengmian` longtext COMMENT '封面',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  `xinwenjianjie` varchar(200) DEFAULT NULL COMMENT '新闻简介',
  `shipin` longtext COMMENT '视频',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenxinxi`
--

LOCK TABLES `xinwenxinxi` WRITE;
/*!40000 ALTER TABLE `xinwenxinxi` DISABLE KEYS */;
INSERT INTO `xinwenxinxi` VALUES (51,'2024-04-23 09:12:26','新闻标题1','file/xinwenxinxiFengmian1.jpg,file/xinwenxinxiFengmian2.jpg,file/xinwenxinxiFengmian3.jpg','新闻分类1','新闻简介1','','新闻内容1','2024-04-23',1,'2024-04-23 17:12:26',1),(52,'2024-04-23 09:12:26','新闻标题2','file/xinwenxinxiFengmian2.jpg,file/xinwenxinxiFengmian3.jpg,file/xinwenxinxiFengmian4.jpg','新闻分类2','新闻简介2','','新闻内容2','2024-04-23',2,'2024-04-23 17:12:26',2),(53,'2024-04-23 09:12:26','新闻标题3','file/xinwenxinxiFengmian3.jpg,file/xinwenxinxiFengmian4.jpg,file/xinwenxinxiFengmian5.jpg','新闻分类3','新闻简介3','','新闻内容3','2024-04-23',3,'2024-04-23 17:12:26',3),(54,'2024-04-23 09:12:26','新闻标题4','file/xinwenxinxiFengmian4.jpg,file/xinwenxinxiFengmian5.jpg,file/xinwenxinxiFengmian6.jpg','新闻分类4','新闻简介4','','新闻内容4','2024-04-23',4,'2024-04-23 17:12:26',4),(55,'2024-04-23 09:12:26','新闻标题5','file/xinwenxinxiFengmian5.jpg,file/xinwenxinxiFengmian6.jpg,file/xinwenxinxiFengmian7.jpg','新闻分类5','新闻简介5','','新闻内容5','2024-04-23',5,'2024-04-23 17:12:26',5),(56,'2024-04-23 09:12:26','新闻标题6','file/xinwenxinxiFengmian6.jpg,file/xinwenxinxiFengmian7.jpg,file/xinwenxinxiFengmian8.jpg','新闻分类6','新闻简介6','','新闻内容6','2024-04-23',6,'2024-04-23 17:12:26',6);
/*!40000 ALTER TABLE `xinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `huhao` varchar(200) DEFAULT NULL COMMENT '户号',
  `shifouhuzhu` varchar(200) DEFAULT NULL COMMENT '是否户主',
  `changzhurenkou` varchar(200) DEFAULT NULL COMMENT '常驻人口',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `zaiduxuexiao` varchar(200) DEFAULT NULL COMMENT '在读学校',
  `teshurenqun` varchar(200) DEFAULT NULL COMMENT '特殊人群',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-04-23 09:12:26','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','441622200101010001','住址1','户号1','是','是','最高学历1','在读学校1','贫困户',1),(32,'2024-04-23 09:12:26','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','441622200202020002','住址2','户号2','是','是','最高学历2','在读学校2','贫困户',2),(33,'2024-04-23 09:12:26','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','441622200303030003','住址3','户号3','是','是','最高学历3','在读学校3','贫困户',3),(34,'2024-04-23 09:12:26','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','441622200404040004','住址4','户号4','是','是','最高学历4','在读学校4','贫困户',4),(35,'2024-04-23 09:12:26','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','441622200505050005','住址5','户号5','是','是','最高学历5','在读学校5','贫困户',5),(36,'2024-04-23 09:12:26','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','441622200606060006','住址6','户号6','是','是','最高学历6','在读学校6','贫困户',6);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24 21:00:02
