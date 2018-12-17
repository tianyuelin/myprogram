/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : xingtu

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-17 08:45:34
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
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strategy
-- ----------------------------
INSERT INTO `strategy` VALUES ('2', '15226535887@163.com', '成都，请赐我一场人间烟火', '独自一人,穷游,徒步,', 'img/strategy/cdyh.jpg', '2018-12-14 20:58:10', '500');
INSERT INTO `strategy` VALUES ('3', '15226535887@163.com', '捕捉最文艺的生活气息！', '人文', 'img//strategy//bwcx.jpg', '2018-12-15 20:43:15', '400');
INSERT INTO `strategy` VALUES ('6', '15226535887@163.com', '北京赏秋好去处，错过了就要等明年！', '摄影,独自一人,徒步,', 'img//strategy//luoye.jpg', '2018-12-15 20:53:08', '300');
INSERT INTO `strategy` VALUES ('7', '123456789@qq.com', '石家庄一日游', '情侣出行,毕业游,', 'img//strategy//b.jpg', '2018-12-15 21:03:53', '620');
INSERT INTO `strategy` VALUES ('8', '123456@163.com', '石家庄真的是一个美丽的城市', '人文,情侣,', 'img//strategy//6.jpg', '2018-12-16 16:30:57', '180');
INSERT INTO `strategy` VALUES ('9', '1669256211@qq.com', '【中秋】北京最佳赏月游玩地点，带好相机出发', '三五好友,', 'img//strategy//bj1.jpg', '2018-12-15 23:14:55', '358');
INSERT INTO `strategy` VALUES ('10', '1669256211@qq.com', '玩转中秋|北京节味最浓的九个的地方，除了吃月饼你还知道什么习俗？', '骑行,', 'img//strategy//bj2.jpg', '2018-12-15 23:22:42', '482');
INSERT INTO `strategy` VALUES ('11', '1669256211@qq.com', '北京7个最壮观的冬泳胜地，今年冬天要风度不要温度！（去看看他们是怎么冻哭的）', '亲子,骑行,家庭出游,', 'img//strategy//bj3.jpg', '2018-12-15 23:27:44', '223');
INSERT INTO `strategy` VALUES ('12', '1669256211@qq.com', '秋高气爽|北京西郊三山五园，一趟地铁将最美秋色全部收入囊中！', '寒假,骑行,穷游,', 'img//strategy//bj4.jpg', '2018-12-15 23:34:40', '123');
INSERT INTO `strategy` VALUES ('16', '1234567@qq.com', '成都的悠闲慢生活', '家庭出游,摄影,徒步,', 'img//strategy//cd1.jpg', '2018-12-16 13:45:01', '212');
INSERT INTO `strategy` VALUES ('18', '2345678@qq.com', '从你的全重庆路过（附完整攻略）', 'null,', 'img//strategy//cq1.jpg', '2018-12-16 14:44:10', '452');
INSERT INTO `strategy` VALUES ('19', '2345678@qq.com', '从你的全重庆路过（附完整攻略）', 'null,', 'img//strategy//cq3.jpg', '2018-12-16 14:56:08', '134');
INSERT INTO `strategy` VALUES ('20', '2345678@qq.com', '去重庆，看这一篇就够啦！手绘重庆玩全攻略', 'null,', 'img//strategy//cq2.jpg', '2018-12-16 15:03:23', '12');
INSERT INTO `strategy` VALUES ('21', '2345678@qq.com', '国庆&重庆～～', 'null,', 'img//strategy//cq1.jpg', '2018-12-16 15:08:32', '12');
INSERT INTO `strategy` VALUES ('22', '3456789@qq.com', '上海姑娘最喜欢的几个秘境，同闺蜜前去，这个周末男士勿扰！', '三五好友,学生,', 'img//strategy//sh4.jpg', '2018-12-16 15:24:54', '135');
INSERT INTO `strategy` VALUES ('23', '4567890@qq.com', '上海9大艳遇高发地，让夜晚妙不可言，让心脏颤动！', '摄影,独自一人,穷游,', 'img//strategy//sh3.jpg', '2018-12-16 15:43:41', '135');
INSERT INTO `strategy` VALUES ('24', '4567890@qq.com', '跟随时光去往天津', '摄影,独自一人,穷游,', 'img//strategy//tj4.jpg', '2018-12-16 15:52:43', '12');
INSERT INTO `strategy` VALUES ('25', '4567890@qq.com', '两天自驾游沕沕水景区', '摄影,独自一人,穷游,', 'img//strategy//sjz4.jpg', '2018-12-16 15:55:38', '823');
INSERT INTO `strategy` VALUES ('26', '3456789@qq.com', '石家庄最值得打卡景点！大哥教你在国际庄做网红', 'null,', 'img//strategy//sh1.jpg', '2018-12-16 16:04:13', '462');
INSERT INTO `strategy` VALUES ('27', '3456789@qq.com', '半小时逃离帝都，300块在天津过周末！！', 'null,', 'img//strategy//tj1.jpg', '2018-12-16 16:10:54', '125');
INSERT INTO `strategy` VALUES ('28', '3456789@qq.com', '魔都看展 | 3个上海看展拍照好去处，拍出绝美文艺范儿！', 'null,', 'img//strategy//sh1.jpg', '2018-12-16 16:15:33', '124');
INSERT INTO `strategy` VALUES ('29', '111111@qq.com', '太行山脚下闪耀的革命老区', 'null,', 'img//strategy//sjz2.jpg', '2018-12-16 16:21:04', '452');
INSERT INTO `strategy` VALUES ('30', '111111@qq.com', '天津】两天一夜游天津，泡温泉/逛景点/品美食，周末出游全攻略！', 'null,', 'img//strategy//tj2.jpg', '2018-12-16 16:26:21', '425');
INSERT INTO `strategy` VALUES ('31', '2222222@qq.com', '新鲜自由的石家庄植物园', 'null,', 'img//strategy//sjz3.jpg', '2018-12-16 16:58:16', '782');
INSERT INTO `strategy` VALUES ('32', '2222222@qq.com', '国庆节天津自驾游记', 'null,', 'img//strategy//tj3.jpg', '2018-12-16 17:03:44', '456');
INSERT INTO `strategy` VALUES ('33', '2222222@qq.com', '有种旅行叫逛博物馆 |上海值得一去的博物馆 TOP', 'null,', 'img//strategy//sh2.jpg', '2018-12-16 17:07:22', '132');
INSERT INTO `strategy` VALUES ('34', '15226535889@163.com', '不开心', '独自一人,徒步,', null, '2018-12-15 22:08:18', '253');
INSERT INTO `strategy` VALUES ('35', '789@163.com', 'afzcx', '暑假,海边,', 'img//strategy//b.jpg', '2018-12-16 23:24:11', '0');
