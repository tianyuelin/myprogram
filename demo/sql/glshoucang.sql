/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-25 18:41:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `glshoucang`
-- ----------------------------
DROP TABLE IF EXISTS `glshoucang`;
CREATE TABLE `glshoucang` (
  `glid` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`glid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of glshoucang
-- ----------------------------
INSERT INTO `glshoucang` VALUES ('7', '1581015545@qq.com', '37');
