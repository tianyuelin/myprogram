/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-17 08:29:59
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of journey
-- ----------------------------
INSERT INTO `journey` VALUES ('1', null, '2018-12-16', null, '1581015545@qq.com');
INSERT INTO `journey` VALUES ('2', 'beijing', '2018-12-16', '2018-11-11', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('3', 'beijing', '2018-12-16', '2018-11-11', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('4', '北京游', '2018-12-16', '2018-11-11', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('5', '意义', '2018-12-16', '2018-10-1', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('7', 'saioafaw', '2018-12-16', '2018-2-2', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('8', 'adfbawefr', '2018-12-16', '2012-12-12', '1581015545@qq.com');
INSERT INTO `journey` VALUES ('9', 'saidajd', '2018-12-16', '2018-7-7', null);
INSERT INTO `journey` VALUES ('10', 'saidajd', '2018-12-16', '2018-7-7', null);
