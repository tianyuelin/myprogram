/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-16 17:11:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `registtime` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('sansan', '111111@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 16:16:45');
INSERT INTO `users` VALUES ('sunny', '1234567@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 13:05:13');
INSERT INTO `users` VALUES ('sunsun', '1669256211@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-15 22:49:16');
INSERT INTO `users` VALUES ('huahua', '2222222@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 16:52:58');
INSERT INTO `users` VALUES ('shuger', '2345678@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 14:28:23');
INSERT INTO `users` VALUES ('jidanjuan', '3456789@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 15:14:13');
INSERT INTO `users` VALUES ('shupian', '4567890@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-16 15:26:29');
