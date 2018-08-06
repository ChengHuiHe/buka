/*
Navicat MySQL Data Transfer

Source Server         : wuhu
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : buka

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2018-01-04 23:52:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookdetail
-- ----------------------------
DROP TABLE IF EXISTS `bookdetail`;
CREATE TABLE `bookdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookdetail
-- ----------------------------
INSERT INTO `bookdetail` VALUES ('1', '1', '32x (1).jpg', '[每周三/五/日更新]《六三四之剑》故事是讲述在被号称为森林之都的岩手县盛岗，父母都是剑道高手的六三四，背负着父母期望，希望成为一流的剑道家，而进行不屈不挠的努力的故事', '9.5');
INSERT INTO `bookdetail` VALUES ('2', '2', '32x (4).jpg', '[每周二/周五更新]二都物语漫画，战败后的日本，因战争而变得满目疮痍，一片狼藉。梅川源二郎在战后的时代中，努力朝着重建首都的梦想前进时，他的长子一期诞生了。为了一期，源二郎更奋力拓展梅川组的前途。但是一场大病，在一期幼小的身躯上留下痕迹，更造成一期心灵上无法抹灭的痛苦', '9.3');
INSERT INTO `bookdetail` VALUES ('3', '3', '32x (5).jpg', '[每周一更新]一位警官在泰国寻找美军遗留的神秘宝藏时发生的香艳荒诞又离奇神秘的故事。身体也好，心灵也好，饿了的话就无法在这人生中畅游了。', '8.9');
INSERT INTO `bookdetail` VALUES ('4', '4', '32x (6).jpg', '[每周二/六更新]人们能在梦中看到不为人知的自己——[生命空间]和[梦空间]从久远的太古时代就共存着！偶然被卷入神秘世界的海和惠子——两人没有边际的冒险之旅现在，即将开始！', '9.3');
INSERT INTO `bookdetail` VALUES ('5', '5', '32x (7).jpg', '[每周一更新]漫画讲述了一个乡村医生，在乡村遇见的人情世故。有成为了脱衣舞女郎的故友的女儿，有贫苦的大山里的孩子。以一个老男孩的视角去体会人生的五味陈杂，非常适合有阅历的人品味。', '9.8');
INSERT INTO `bookdetail` VALUES ('6', '6', '32x (8).jpg', '[每周三/周六更新]男爵就像是许多不良少年那样，有一帮狐朋狗友，有暗恋的心上人庸子，有不完整的家庭，生活得又糟糕又快乐。一日庸子因为摄影师哥哥的神秘失踪而决定去澳洲寻找线索，男爵陪同前往。在那里，一块名为“大地的脐带”的巨岩处，两人遭遇了诡异的土地崩陷，庸子消失在地缝之中，男爵慌乱之余，却见头顶出现了巨大的幽浮，并降下一个白发苍苍的老者——赫然就是庸子失踪了的哥哥!', '9');
INSERT INTO `bookdetail` VALUES ('7', '7', '32x (9).jpg', '[每周日更新]时间是1925年，地点是法国花都巴黎，日本陆军驻法国特派军官都筑慎太郎，与法国贵族千金苏菲，在一场舞会的邂逅后，陷入异乡之恋。。。', '9.6');
INSERT INTO `bookdetail` VALUES ('8', '8', '32x (10).jpg', '[每周六更新]讲述了日本战后一群孤儿自强不息奋斗成长的故事。晴空不仅代表日本从战后阴影中复苏，也代表了孤儿们驱散自己内心的阴霾，最终成长。', '8.3');
INSERT INTO `bookdetail` VALUES ('9', '9', '32x (11).jpg', '[每周一更新]飞快的速度，摩托车引擎的声音，这是他们内心中的狂热，终极的速度，创造出最快的车，那就是生与死的考验，为了体验最快的竟速，他们不惜冒着生命的危险去达到他们的最终速度。', '9.1');
INSERT INTO `bookdetail` VALUES ('10', '10', '32x (12).jpg', '[每周四更新]她是个拥有通灵能力的女学生，于是经常就会碰到些超自然的事件，重点却不在驱魔除妖，而是有点意外的味道。背景是以校园为主，青春洋溢', '9.6');
INSERT INTO `bookdetail` VALUES ('11', '11', '32x (13).jpg', '[每周六更新]相当年，这片海并不特别的美，然而，夏天如巅峰时间般汹涌的人潮，呗浪潮拍打在岸边的垃圾山，却也不另我生厌……因为那是伴我成长的大海，仅仅从远处眺望，就令人内心不由得生起一般似甜蜜，却又愁苦的悸动……', '9.8');
INSERT INTO `bookdetail` VALUES ('12', '12', '32x (14).jpg', '[每周一/周四更新]原子弹爆炸后，岛田洋七的父亲只身“回广岛看看”，却因受核辐射而死去。因无力抚养，母亲只好将年仅八岁的昭广寄养在佐贺乡下的外婆家。虽然极度艰苦，乐观的外婆却总有神奇的办法让日子过下去，让生活充满创意、发现和欢笑！', '9.9');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(255) DEFAULT NULL,
  `isDelete` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '游戏', '0');
INSERT INTO `category` VALUES ('2', '漫画', '0');
INSERT INTO `category` VALUES ('3', '一迅社', '0');
INSERT INTO `category` VALUES ('4', '百合姬', '0');
INSERT INTO `category` VALUES ('5', '玄幻', '0');
INSERT INTO `category` VALUES ('6', '恋爱', '0');
INSERT INTO `category` VALUES ('7', '肥皂', '0');
INSERT INTO `category` VALUES ('8', '治愈', '0');
INSERT INTO `category` VALUES ('9', '恐怖', '0');
INSERT INTO `category` VALUES ('10', '搞笑', '0');
INSERT INTO `category` VALUES ('11', '鬼怪', '0');

-- ----------------------------
-- Table structure for dena
-- ----------------------------
DROP TABLE IF EXISTS `dena`;
CREATE TABLE `dena` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `newCharpter` varchar(255) DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `isOnLine` int(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cid-ref-cateid` (`categoryId`),
  CONSTRAINT `cid-ref-cateid` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dena
-- ----------------------------
INSERT INTO `dena` VALUES ('1', '六三四之剑', '村上纪香', '2', '31', '2018-01-01 16:02:10', '32x.jpg', '1');
INSERT INTO `dena` VALUES ('2', 'ICHIGO-二都物语', '六田登', '2', '25', '2018-01-01 16:16:59', '32x (2).jpg', '1');
INSERT INTO `dena` VALUES ('3', '落水狗', '村上纪香', '2', '9', '2017-12-14 16:18:57', '32x (3).jpg', '1');
INSERT INTO `dena` VALUES ('4', '梦 Dream', '六田登', '2', '25', '2017-12-15 16:19:02', '32x (4).jpg', '1');
INSERT INTO `dena` VALUES ('5', '今日也休诊', '石川三朗/见川鲷山', '2', '13', '2017-12-30 16:19:06', '32x (5).jpg', '1');
INSERT INTO `dena` VALUES ('6', '男爵', '六田登', '2', '26', '2017-12-17 16:19:10', '32x (6).jpg', '1');
INSERT INTO `dena` VALUES ('7', '戏梦人生', '村上纪香', '2', '14', '2017-12-17 16:19:10', '32x (7).jpg', '1');
INSERT INTO `dena` VALUES ('8', '晴空', '石川三朗/半村良', '2', '13', '2018-01-01 16:34:36', '32x (8).jpg', '1');
INSERT INTO `dena` VALUES ('9', '生死摩托', '六田登', '2', '13', '2018-01-09 16:34:50', '32x (4).jpg', '1');
INSERT INTO `dena` VALUES ('10', '小巫女', '村上纪香', '2', '12', '2017-12-05 16:35:06', '32x (9).jpg', '1');
INSERT INTO `dena` VALUES ('11', '小渚', '村上纪香', '2', '8', '2017-12-27 16:35:22', '32x (10).jpg', '1');
INSERT INTO `dena` VALUES ('12', '佐贺的超级阿嬷', '石川三朗/岛田洋七', '2', '25', '2018-01-07 16:35:37', '32x (11).jpg', '1');

-- ----------------------------
-- Table structure for gamecenter
-- ----------------------------
DROP TABLE IF EXISTS `gamecenter`;
CREATE TABLE `gamecenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(255) DEFAULT NULL,
  `gamePic` varchar(255) DEFAULT NULL,
  `loadTime` datetime DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gamecenter
-- ----------------------------
INSERT INTO `gamecenter` VALUES ('1', '灵魂撕裂', 'lhsl_199x259.jpg', '2018-01-04 15:46:51', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('2', '天使传说', 'tmcs_199X259.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('3', '舞娘', 'wn.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('4', '造物法则', 'zwfz.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('5', '克鲁塞德', 'klsd.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('6', '模拟城市', 'mncs.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('7', '我的虚空星球', 'wdxkxq.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');
INSERT INTO `gamecenter` VALUES ('8', '诺亚幻想', 'nyhx.jpg', '2018-01-04 15:46:56', '2018-01-04 15:46:56');

-- ----------------------------
-- Table structure for mylove
-- ----------------------------
DROP TABLE IF EXISTS `mylove`;
CREATE TABLE `mylove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `bookName` varchar(255) DEFAULT NULL,
  `isStar` int(11) DEFAULT NULL,
  `isDelete` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id-ref-bookid` (`bookId`),
  CONSTRAINT `id-ref-bookid` FOREIGN KEY (`bookId`) REFERENCES `dena` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mylove
-- ----------------------------
INSERT INTO `mylove` VALUES ('1', '1', '六三四之剑', '1', '0');
INSERT INTO `mylove` VALUES ('2', '3', '落水狗', '1', '0');
INSERT INTO `mylove` VALUES ('3', '5', '今日也休诊', '1', '0');
INSERT INTO `mylove` VALUES ('4', '7', '戏梦人生', '0', '0');
INSERT INTO `mylove` VALUES ('5', '8', '晴空', '1', '0');
INSERT INTO `mylove` VALUES ('6', '9', '生死摩托', '1', '0');
INSERT INTO `mylove` VALUES ('7', '11', '小渚', '1', '0');
INSERT INTO `mylove` VALUES ('8', '12', '佐贺的超级阿嬷', '0', '0');
