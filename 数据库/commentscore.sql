/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2019-05-14 14:42:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commentscore`
-- ----------------------------
DROP TABLE IF EXISTS `commentscore`;
CREATE TABLE `commentscore` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pingfen` float(10,0) DEFAULT NULL,
  `useremail` varchar(100) DEFAULT NULL,
  `sceneid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentscore
-- ----------------------------
INSERT INTO `commentscore` VALUES ('1', 'ew', '11', '4', 'hjhk', '1');
INSERT INTO `commentscore` VALUES ('26', 'zhangsan', '故宫', '4', 'xingtu@163.com', '1');
