/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-15 20:58:55
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
INSERT INTO `users` VALUES ('zs', '123456@163.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2018-12-13 09:48:47');
INSERT INTO `users` VALUES ('baocaiqian', '15226535887@163.com', 'e10adc3949ba59abbe56e057f20f883e', 'img/tou6.jpg', null, null, null, null, '2018-12-11 14:25:32');
