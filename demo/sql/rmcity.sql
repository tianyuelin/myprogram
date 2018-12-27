/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-27 08:20:44
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
INSERT INTO `rmcity` VALUES ('2', '上海', 'https://img1.qunarzz.com/travel/d2/1803/dd/6b7cf911dc59bab5.jpg_480x360x95_11f37e49.jpg');
INSERT INTO `rmcity` VALUES ('3', '重庆', 'https://img1.qunarzz.com/travel/d6/1706/12/b4365968cddcb9b5.jpg_480x360x95_aa891202.jpg');
INSERT INTO `rmcity` VALUES ('4', '天津', 'https://img1.qunarzz.com/travel/d4/1703/46/474cbd0d95d674b5.jpg_480x360x95_7534164f.jpg');
INSERT INTO `rmcity` VALUES ('5', '漠河', 'https://img1.qunarzz.com/travel/d7/1606/63/15ee39ebd34440f7.jpg_480x360x95_606f4ac1.jpg');
INSERT INTO `rmcity` VALUES ('6', '成都', 'https://img1.qunarzz.com/travel/d6/1706/f7/866f3a1e54b014b5.jpg_480x360x95_bf435586.jpg');
INSERT INTO `rmcity` VALUES ('7', '杭州', 'https://img1.qunarzz.com/travel/d2/1503/f6/fc53c7649357f9.jpg_480x360x95_3ac4bd5c.jpg');
INSERT INTO `rmcity` VALUES ('8', '西安', 'https://img1.qunarzz.com/travel/d3/1705/42/edc62ede88fa09b5.jpg_480x360x95_b4edf337.jpg');
INSERT INTO `rmcity` VALUES ('9', '大理', 'https://img1.qunarzz.com/travel/d5/1607/27/98b7198c0dc1e370.jpg_480x360x95_aae3ef41.jpg');
