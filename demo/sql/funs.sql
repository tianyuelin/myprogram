/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-12 17:34:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `funs`
-- ----------------------------
DROP TABLE IF EXISTS `funs`;
CREATE TABLE `funs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(255) DEFAULT NULL COMMENT '用户',
  `follower_user` varchar(255) DEFAULT NULL COMMENT '用户粉丝的id',
  `status` int(11) DEFAULT NULL COMMENT '对他的状态：关注/不关注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of funs
-- ----------------------------
