/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-27 08:31:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `strategy`
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `looktimes` int(11) DEFAULT NULL,
  `shoucangtimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strategy
-- ----------------------------
INSERT INTO `strategy` VALUES ('38', '15226535887@163.com', '抱犊寨一日游', '独自一人,徒步,', 'img\\15226535887@163.com\\strategyIMG_20170729_170341.jpg', '2018-12-24 11:18:17', '24', '1');
INSERT INTO `strategy` VALUES ('39', 'sisi@163.com', '正定南门真好玩儿', '摄影,独自一人,穷游,徒步,', 'img\\sisi@163.com\\strategy南门0.jpg', '2018-12-24 16:48:51', '15', '0');
INSERT INTO `strategy` VALUES ('40', 'sisi@163.com', '周末在北京', '摄影,骑行,徒步,', 'img\\sisi@163.com\\strategybei.jpeg', '2018-12-24 16:54:53', '90', '0');
INSERT INTO `strategy` VALUES ('41', 'acx@qq.com', '浪漫的趣那公园', '情侣出行,徒步,', 'img\\acx@qq.com\\strategy4.png', '2018-12-24 17:36:27', '10', '0');
INSERT INTO `strategy` VALUES ('42', 'acx@qq.com', '来一场吃货之旅吧！', '徒步,学生,亲子,', 'img\\acx@qq.com\\strategy11.jpg', '2018-12-24 17:38:38', '2', '0');
INSERT INTO `strategy` VALUES ('43', 'acx@qq.com', '成都，请赐我一场人间烟火', '穷游,暑假,蜜月,', 'img\\acx@qq.com\\strategycdyh.jpg', '2018-12-24 17:42:03', '3', '0');
INSERT INTO `strategy` VALUES ('44', 'acx@qq.com', '岔河的夕阳西下', '情侣出行,毕业游,', 'img\\acx@qq.com\\strategy6.jpg', '2018-12-24 17:45:23', '8', '0');
INSERT INTO `strategy` VALUES ('45', 'acx@qq.com', '来一场文艺范的旅行', '三五好友,学生,', 'img\\acx@qq.com\\strategybwcx.jpg', '2018-12-24 17:48:19', '45', '0');
INSERT INTO `strategy` VALUES ('46', 'acx@qq.com', '浪漫摩天轮', '夏季,情侣,', 'img\\acx@qq.com\\strategymo.jpg', '2018-12-24 18:07:48', '11', '0');
INSERT INTO `strategy` VALUES ('47', '15226535887@163.com', '石家庄一日游', '摄影,独自一人,穷游,', 'img\\15226535887@163.com\\strategyFullSizeRender(1).jpg', '2018-12-25 15:39:34', '0', '0');
