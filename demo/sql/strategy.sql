/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-15 20:58:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `strategy`
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strategy
-- ----------------------------
INSERT INTO `strategy` VALUES ('2', '15226535887@163.com', '成都，请赐我一场人间烟火', '独自一人,穷游,徒步,', 'img/strategy/cdyh.jpg', '2018-12-14 20:58:10');
INSERT INTO `strategy` VALUES ('3', '15226535887@163.com', '帝都5个最fashion艺术街区，来捕捉最文艺的生活气息！', 'null,', 'img//strategy//bwcx.jpg', '2018-12-15 20:43:15');
INSERT INTO `strategy` VALUES ('4', '15226535887@163.com', '帝都5个最fashion艺术街区，来捕捉最文艺的生活气息！', 'null,', 'img//strategy//bwcx.jpg', '2018-12-15 20:44:57');
INSERT INTO `strategy` VALUES ('5', '15226535887@163.com', '帝都5个最fashion艺术街区，来捕捉最文艺的生活气息！', 'null,', 'img//strategy//bwcx.jpg', '2018-12-15 20:46:58');
INSERT INTO `strategy` VALUES ('6', '15226535887@163.com', '北京赏秋好去处，只要2元钱，错过了就要等明年！', '摄影,独自一人,徒步,', 'img//strategy//luoye.jpg', '2018-12-15 20:53:08');
