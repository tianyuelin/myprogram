/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-17 14:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jourdiv`
-- ----------------------------
DROP TABLE IF EXISTS `jourdiv`;
CREATE TABLE `jourdiv` (
  `myid` int(11) NOT NULL AUTO_INCREMENT,
  `sceneId` int(11) DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  PRIMARY KEY (`myid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jourdiv
-- ----------------------------
INSERT INTO `jourdiv` VALUES ('1', '1', '1');
INSERT INTO `jourdiv` VALUES ('2', '2', '1');
INSERT INTO `jourdiv` VALUES ('3', '3', '1');
