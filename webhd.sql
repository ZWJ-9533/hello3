-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webhd
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `picture` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'【“数”说疫情】外国人眼中的中国战疫 ','人民网北京2月27日电 据国家卫健委官方网站消息，日前，国家卫健委印发《国家卫生健康委办公厅关于进一步落实科学防治精准施策分区分级要求做好疫情期间医疗服务管理工作的通知》（以下简称《通知》）。《通知》要求各地在分区分级精准防控的基础上，有序做好医疗服务管理工作，满足患者就医需求。','2020-02-28 00:00:00',1,1,30,100,'img/hero.jpg'),(2,' 国家卫健委：低风险地区全面提供正常医疗服务 ','人民网北京2月27日电 据国家卫健委官方网站消息，日前，国家卫健委印发《国家卫生健康委办公厅关于进一步落实科学防治精准施策分区分级要求做好疫情期间医疗服务管理工作的通知》（以下简称《通知》）。《通知》要求各地在分区分级精准防控的基础上，有序做好医疗服务管理工作，满足患者就医需求。','2020-02-28 00:00:00',1,1,30,100,'img/hero.jpg'),(3,'泪目！“陀螺”书记滕逸鹤：用生命捍卫百姓安全  ','人民网北京2月27日电 据国家卫健委官方网站消息，日前，国家卫健委印发《国家卫生健康委办公厅关于进一步落实科学防治精准施策分区分级要求做好疫情期间医疗服务管理工作的通知》（以下简称《通知》）。《通知》要求各地在分区分级精准防控的基础上，有序做好医疗服务管理工作，满足患者就医需求。','2020-02-28 00:00:00',1,1,30,100,'img/hero.jpg'),(4,'教育部：中小学高校错时错峰开学 疫情没有得到基本控制前不开学','《通知》要求，要综合考虑区域疫情风险等级、交通状况、应急准备、学校人群密度、学龄阶段特点等，做好中小学（含幼儿园、中等职业学校）错区域、错层次、错时开学方案。在制定具体返校方案时，可安排高三、初三等毕业班学生先返校。原则上高三年级实行省域同步、初三年级同一市域同步。','2020-03-01 18:01:59',2,4,60,120,'img/featured-pic-1.jpeg'),(5,'中经观点：越是面对风险挑战，越要抓好民生 ','自1月23日离汉通道封闭以来，湖北省和武汉市广大民众响应防疫号召，“宅”在家中。随着小区封闭式管理、公共区域管控、应急交通保障等防疫措施快速落地，部分群众的日常生活确实受到一定影响。这些诉求从日常生活中来看，大体可以概括为几方面，比如希望菜价能便宜点，希望老人、婴幼儿的生活物资更有保障；希望其他疾病的买药看病需求能得到满足；希望特殊群体、边缘群体的生活得到保障；希望社区加强排查和消杀工作，等等。这些都是正常的民生需求。','2020-02-13 18:03:58',3,4,20,90,'img/featured-pic-1.jpeg'),(6,'前瞻：湖人欲赛季4连杀鹈鹕 快船盼复仇残阵76人','在刚刚客场输给灰熊的比赛中，湖人全场打得有些漫不经心，全场仅仅拿下本赛季单场最低得分的88分，7连胜就此被终结，湖人本赛季客场对阵西部球队的18连胜纪录也被终结。另外，湖人的篮板球和三分球也是输球主要原因，篮板球51-60落后灰熊，三分球更是36投9中，命中率只有可怜的25%。值得一提的是，湖人本赛季背靠背第二场战绩为7胜0负，明日客场背靠背对阵鹈鹕，勒布朗-詹姆斯也表示，他们要打得更好。另外，安东尼-戴维斯在与灰熊比赛时一度回到更衣室处理肘部酸痛情况，不过并无大碍。戴维斯过去三次对阵旧主鹈鹕，场均贡献36分和12个篮板','2020-03-01 18:05:38',4,3,100,200,'img/featured-pic-1.jpeg'),(7,'吴奇隆与小16岁娇妻现身机场，网友：四爷的裤子都要撑破了','吴奇隆与刘诗诗因戏结缘，最后两个人步入了婚姻的殿堂，近日，两个人现身机场，两个人一路手拉手十分的甜蜜。然而从图中看，两个人的身材都有些发福，最明显的就是吴奇隆，身穿紧身衣的他把身材展现的淋漓尽致，然而这条牛仔裤穿上显得更加的尴尬。有些网友更是调侃：四爷的裤子都要撑破了。两个人机场一路热聊，十分的幸福','2020-02-19 18:07:59',3,2,50,150,'img/featured-pic-1.jpeg'),(8,'华为 P40 Pro 正面亮屏照曝光：多挖孔，四曲面屏幕 ','IT之家3月1日消息 此前华为已经宣布将在3月26日于法国巴黎发布全新的P40系列手机，华为P40的设计和配置是大家关心的，在配置上，华为P40将支持自研的Wi-Fi 6+技术，现在华为P40 Pro的外观设计再一次曝光，而且这一次正面亮屏照也安排上了。\r\n\r\nIT之家根据爆料的图片发现，华为P40 Pro的前置摄像头挖孔似乎有点长，据说有多个前置摄像头，甚至包括3D ToF传感器。华为P40 Pro的屏幕还采用了四曲面的设计','2020-03-01 18:09:41',2,5,150,130,'img/featured-pic-1.jpeg'),(9,'最后拼图到位！湖人阵容更新：首发5人无变化，一人地位受威胁？','维特斯在为热火效力的首个赛季就有非常出色的表现，他场均能得到15.4分和42.4%投篮命中率（三分命中率能打出职业生涯新高的39.5%）。\r\n\r\n尽管维特斯为热火效力的结果确实不尽人意，但制造他在2017-18赛季期间能有39.8%三分命中率还是非常出色的表现。在2020年交易截止日前，热火将维特斯送到灰熊，而灰熊方面在2月9日放弃维特斯。','2020-03-18 17:44:21',4,3,200,100,'img/hero.jpg'),(10,'渐成超巨！塔图姆连续5场30+，刷新队史纪录，欧文还真降不住他 ','又是一场30+，对于如今的塔图姆来说，单场30分的表演已经成为一种常态。上一场因生病缺阵，3月5日凯尔特人客场挑战骑士，塔图姆迅速迎来回归。中断一场比赛，没有中断塔图姆灼热的手感，他全场出战40分钟，24投11中，三分球10中5砍下了32分9板6次助攻2次抢断和1次盖帽。','2020-03-04 17:47:35',2,3,250,100,'img/hero.jpg'),(11,'新冠肺炎会像流感一样每年来？钟南山团队专家解读 ','理论上是有这个可能性的。”程璘令教授告诉健康时报记者，不过大家也不必过度惶恐，新型冠状病毒疫苗已经开始研发，预计今年年底之前很可能会投入市场，疫苗的出现能够有效防控大规模疫情的发生。\r\n\r\n程璘令说，相较于SARS病毒，新冠病毒的致死率其实更低，前者致死率高达9%-10%，后者致死率约为1.4%，因此，新冠病毒确实有长期存在的可能性。SARS病毒致病性强、致死率高，容易把宿主杀死，病毒自身也不容易长期存活。而新冠病毒致病性相对低，理论上讲，是有可能转成慢性疾病。','2020-03-04 17:49:14',3,4,100,60,'img/hero.jpg'),(12,'持上亿房产收租百万,老公继承200亿家业任CEO,嫁给爱情还有二胎的全智贤真赢家 ','据百度百科显示，崔俊赫的外祖母与母亲是韩国知名服装设计师，父亲则是钢铁业的CEO，同时也是知名金融资产管理公司的大股东，公司在2014年就拥有3.4万亿韩元（约合人民币200亿）的流动资金。','2020-03-06 17:50:38',2,2,150,100,'img/hero.jpg'),(13,' 吴尊自曝英年早婚，与妻子青梅竹马相爱24年，诠释偶像式爱情故事','吴尊夫妇曝光了一个猛料，原来吴尊在2004年的12月份就结婚了，距今为止他们已携手度过了15年。此次，吴尊林丽莹自曝结婚时间，并晒出结婚证，让不少人大为吃惊。毕竟那个时候的吴尊还未出道，他还是个花样少年就已经英年早婚，而且吴尊出道走红后依旧保持对妻子的忠诚，不被花花世界所影响，实力彰显好男人的一面惹人羡。','2020-03-19 17:53:10',4,2,100,300,'img/hero.jpg'),(14,'OPPO Enco Free无线耳机傲粉版图赏：超低延时+AI降噪','不久前，OPPO正式发布了旗下首款真无线蓝牙耳机OPPO Enco Free。在发布会上，OPPO官方宣布了三款配色：恬白、隐黑和傲粉。其中备受时尚女性青睐的傲粉色，在3月2日正式开售，售价699元。\r\n\r\nOPPO Enco Free耳机单只重量为4.6g，内含3种耳帽尺寸，2种佩戴方式,实现半入耳与浅入耳式的佩戴方式。同时，OPPO Enco Free 配备有专门的充电盒，官方称，配合充电盒其可以支持 25 个小时的音乐播放时长。对支持ColorOS7.0以上版本的OPPO手机，支持开盖即连。\r\n\r\n硬件方面， OPPO Enco Free搭载了行业领先的双ARM内核架构蓝牙芯片，采用最新的蓝牙双路传输方式，还加入了独创的左右耳信息纠错能力，可以减少蓝牙重传次数，进一步降低声音延时','2020-03-14 17:55:24',5,5,30,30,'img/featured-pic-1.jpeg'),(15,'三星 Galaxy Z Flip 体验：11999 元，史上最贵「化妆镜」？','尽管去年已经有多款折叠屏手机被推向市场，但由于数量少、价格高的缘故，其依旧是手机中的「少数派」，日常生活中很难见到。继去年接连发布了 Galaxy Fold 以及 W20 两款折叠屏手机之后，最近三星折叠屏手机家族又迎来了一个新成员——Galaxy Z Flip。\r\n\r\n从命名上也可以看到，Galaxy Z Flip 并没有被划归到 Fold 下，而是作为一个独立的产品序列。另外，区别于去年发布的两款折叠屏手机，它采用了和摩托罗拉 Razer 2019 一样的纵向翻折设计，因此产品形态以及应用场景也都相应有所变化。\r\n\r\n引入玻璃材质，可折叠挖孔屏\r\n\r\n首先来看大家普遍比较关注的屏幕部分。了解 Galaxy Fold 的朋友应该知道，为了能够实现屏幕可弯折，当时其采用了聚酰亚胺薄膜材质。到了 Galaxy Z Flip 这里一个比较大的变化在于，这次三星引入了 UTG（Ultra Thin Glass）超薄玻璃技术。','2020-03-04 17:56:31',5,5,200,30,'img/hero.jpg');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'新闻类',3),(2,'娱乐类',3),(3,'体育类',3),(4,'实事类',3),(5,'科学类',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`),
  CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (1,'楼主厉害，楼主好厉害','2020-03-01 17:48:25',1),(2,'前排吃瓜','2020-02-28 17:56:45',2),(3,'我要给你生猴子','2020-03-26 17:57:31',3),(4,'爱你爱你','2020-02-22 17:57:51',4),(5,'起飞','2020-01-25 17:58:14',2),(6,'a1高闪来一个','2020-03-18 20:08:15',1),(7,'冲冲冲','2020-03-03 20:08:19',4),(8,'我气你','2020-02-05 20:08:22',2),(9,'秋梨膏','2020-03-06 20:08:27',3),(10,'水贴大军','2020-03-07 20:08:32',3),(11,'sss','2020-01-15 20:08:35',2),(12,'rere','2020-03-18 20:08:43',4),(13,'w','2020-04-17 20:08:46',1),(14,'q','2020-03-10 20:08:51',2),(15,'sss','2020-03-03 20:08:56',1);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tname` (`tname`),
  KEY `aid` (`aid`),
  CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `article` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'开心',1),(2,'难受',2),(3,'性福',3),(4,'痛哭',4),(5,'悲伤',5);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(128) NOT NULL,
  `username` varchar(30) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `portrait` varchar(3000) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `isforbid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123456','lubenwei','15207596393','258686@qq.com','img/featured-pic-1.jpeg','2020-03-01 17:52:28',NULL),(2,'123456','hahah','156823525','2526253511@163.com','img/featured-pic-1.jpeg','2020-02-21 17:54:16',NULL),(3,'252553','babab','1360252528','3652365@qq.com','img/featured-pic-1.jpeg','2020-02-20 17:54:59',NULL),(4,'969252','yutian','13702881035','36363@163.com','img/featured-pic-1.jpeg','2020-02-29 17:55:46',NULL),(5,'fx953366','userasa','15207596315',NULL,NULL,NULL,0),(6,'fx9533','wuyifang','156932475',NULL,NULL,NULL,0),(7,'fx953366','luhan','15207596393',NULL,NULL,NULL,0),(8,'123456','邮箱使用者',NULL,NULL,NULL,NULL,0),(9,'123456','邮箱使用者',NULL,'sasas@qq.com',NULL,NULL,0),(10,'123456','邮箱使用者',NULL,'sasas@qq.com',NULL,NULL,0),(11,'123456','邮箱使用者',NULL,NULL,NULL,NULL,0),(12,'123456','邮箱使用者',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 23:15:09
