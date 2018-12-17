/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-17 14:40:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `journey`
-- ----------------------------
DROP TABLE IF EXISTS `journey`;
CREATE TABLE `journey` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jtitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `jtime` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `useremail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of journey
-- ----------------------------
INSERT INTO `journey` VALUES ('1', '', '2018-12-17', '2018-12-12', '1581015545@qq.com');
