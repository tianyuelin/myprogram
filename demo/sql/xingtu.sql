/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-04 14:45:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `journey`
-- ----------------------------
DROP TABLE IF EXISTS `journey`;
CREATE TABLE `journey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(100) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `jtime` date DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of journey
-- ----------------------------

-- ----------------------------
-- Table structure for `navlist`
-- ----------------------------
DROP TABLE IF EXISTS `navlist`;
CREATE TABLE `navlist` (
  `Name` varchar(20) DEFAULT NULL,
  `navId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`navId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of navlist
-- ----------------------------

-- ----------------------------
-- Table structure for `scene`
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene` (
  `sceneId` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `ticketPrice` float DEFAULT NULL,
  `score` float(11,0) DEFAULT NULL,
  `describee` varchar(1024) DEFAULT NULL,
  `route` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sceneId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scene
-- ----------------------------

-- ----------------------------
-- Table structure for `scenecomment`
-- ----------------------------
DROP TABLE IF EXISTS `scenecomment`;
CREATE TABLE `scenecomment` (
  `scommId` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) DEFAULT NULL,
  `sceneId` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`scommId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scenecomment
-- ----------------------------

-- ----------------------------
-- Table structure for `strategy`
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `smallTitle1` varchar(50) DEFAULT NULL,
  `content1` longtext,
  `smallTitle2` varchar(50) DEFAULT NULL,
  `content2` longtext,
  `smallTitle3` varchar(50) DEFAULT NULL,
  `content3` longtext,
  `tag` varchar(20) DEFAULT NULL,
  `avgScore` float DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strategy
-- ----------------------------

-- ----------------------------
-- Table structure for `strategycomment`
-- ----------------------------
DROP TABLE IF EXISTS `strategycomment`;
CREATE TABLE `strategycomment` (
  `scId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` int(11) DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `sctime` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strategycomment
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
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
