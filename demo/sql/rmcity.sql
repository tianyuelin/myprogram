/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-12 08:20:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rmcity`
-- ----------------------------
DROP TABLE IF EXISTS `rmcity`;
CREATE TABLE `rmcity` (
  `ctid` int(11) NOT NULL DEFAULT '0',
  `ctname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ctimg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ctid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rmcity
-- ----------------------------
INSERT INTO `rmcity` VALUES ('1', '北京', 'http://img1.qunarzz.com/sight/p55/201211/04/fbcab3e5d6479ce893835fbb.jpg_710x360_a489e25d.jpg');
INSERT INTO `rmcity` VALUES ('2', '上海', 'http://img1.qunarzz.com/sight/p0/1704/d2/d2a029bded2f6b4aa3.img.jpg_710x360_fde9a43a.jpg');
INSERT INTO `rmcity` VALUES ('3', '重庆', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('4', '天津', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('5', '石家庄', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('6', '成都', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('7', '杭州', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('8', '丽江', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
INSERT INTO `rmcity` VALUES ('9', '广州', 'http://img1.qunarzz.com/wugc/p71/201208/08/873e035c538c368693835fbb.jpg_710x360_e8b9b529.jpg');
