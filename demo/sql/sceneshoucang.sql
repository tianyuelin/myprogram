/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-25 15:11:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sceneshoucang`
-- ----------------------------
DROP TABLE IF EXISTS `sceneshoucang`;
CREATE TABLE `sceneshoucang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sceneshoucang
-- ----------------------------
INSERT INTO `sceneshoucang` VALUES ('1', null, '1');
INSERT INTO `sceneshoucang` VALUES ('7', '1581015545@qq.com', '7');
INSERT INTO `sceneshoucang` VALUES ('9', '1581015545@qq.com', '4');
INSERT INTO `sceneshoucang` VALUES ('10', '1581015545@qq.com', '11');
INSERT INTO `sceneshoucang` VALUES ('11', '754419464@qq.com', '1');
INSERT INTO `sceneshoucang` VALUES ('12', '754419464@qq.com', '10');
INSERT INTO `sceneshoucang` VALUES ('13', '15226535887@163.com', '1');
INSERT INTO `sceneshoucang` VALUES ('14', '15226535887@163.com', '4');
INSERT INTO `sceneshoucang` VALUES ('15', '1581015545@qq.com', '2');
INSERT INTO `sceneshoucang` VALUES ('17', '1581015545@qq.com', '1');
