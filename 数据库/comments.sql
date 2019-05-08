/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2019-05-08 08:43:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'lisi', '大家好', '2018-11-11');
INSERT INTO `comments` VALUES ('2', 'san', '大家好', '2018-05-01');
INSERT INTO `comments` VALUES ('38', 'zhangsan', 'hi', '2019-05-07');
INSERT INTO `comments` VALUES ('37', 'zhangsan', 'hello', '2019-05-07');
