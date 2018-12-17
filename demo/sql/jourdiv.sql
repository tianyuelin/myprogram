/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-17 08:44:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jourdiv`
-- ----------------------------
DROP TABLE IF EXISTS `jourdiv`;
CREATE TABLE `jourdiv` (
  `myid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  PRIMARY KEY (`myid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jourdiv
-- ----------------------------
INSERT INTO `jourdiv` VALUES ('1', '故宫', '7');
INSERT INTO `jourdiv` VALUES ('2', '颐和园', '7');
INSERT INTO `jourdiv` VALUES ('3', '天安门广场', '8');
INSERT INTO `jourdiv` VALUES ('4', '南锣鼓巷', '8');
INSERT INTO `jourdiv` VALUES ('5', '798艺术区', '8');
INSERT INTO `jourdiv` VALUES ('6', '798艺术区', '9');
INSERT INTO `jourdiv` VALUES ('7', '南锣鼓巷', '9');
INSERT INTO `jourdiv` VALUES ('8', '798艺术区', '10');
INSERT INTO `jourdiv` VALUES ('9', '南锣鼓巷', '10');
