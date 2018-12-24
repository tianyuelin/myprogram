/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-23 18:50:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phototime` datetime DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `src` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `uptime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('68', '孟乐鑫', '2018-05-03 00:00:00', '宽窄巷子', '15226535887@163.com', 'img\\15226535887@163.com2018/12/201.jpg', '2018-12-20 17:45:56');
INSERT INTO `photo` VALUES ('69', '孟乐鑫', '2018-05-03 00:00:00', '方家胡同46号', '15226535887@163.com', 'img\\15226535887@163.com2018/12/20b.jpg', '2018-12-20 17:46:01');
INSERT INTO `photo` VALUES ('70', '13', '2018-05-03 00:00:00', '纳税两口子', '15226535887@163.com', 'img\\15226535887@163.com2018/12/20b1 - 副本.jpg', '2018-12-20 17:46:01');
INSERT INTO `photo` VALUES ('71', '孟乐鑫', '2018-05-03 00:00:00', '春猫', '15226535887@163.com', 'img\\15226535887@163.com2018/12/20chunmao.jpg', '2018-12-20 17:46:03');
INSERT INTO `photo` VALUES ('72', '李晓丹', '2018-11-20 00:00:00', '桥', '15226535887@163.com', 'img\\15226535887@163.com2018/12/20distination-1.jpeg', '2018-12-20 17:46:03');
INSERT INTO `photo` VALUES ('73', null, null, null, '15226535887@163.com', 'img\\15226535887@163.com2018/12/20distination-2.jpeg', '2018-12-20 17:46:04');
INSERT INTO `photo` VALUES ('74', '孟乐鑫', '2018-05-03 00:00:00', '方家胡同46号', '15226535887@163.com', 'img\\15226535887@163.com2018/12/20fuyuan.jpg', '2018-12-20 17:46:04');
INSERT INTO `photo` VALUES ('75', '李晓丹', '2018-06-16 00:00:00', '龙口', '15226535887@163.com', 'img\\15226535887@163.com2018/12/22tjzy.jpg', '2018-12-22 20:32:59');
INSERT INTO `photo` VALUES ('76', '爸爸', '2018-11-20 00:00:00', '宽窄巷子', '15226535887@163.com', 'img\\15226535887@163.com2018/12/22richu.jpg', '2018-12-22 20:33:04');
