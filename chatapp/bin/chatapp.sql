/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : chatapp

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2021-04-22 17:07:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chatlog
-- ----------------------------
DROP TABLE IF EXISTS `chatlog`;
CREATE TABLE `chatlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `isread` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatlog
-- ----------------------------
INSERT INTO `chatlog` VALUES ('7', '邱天', '夏天', '在吗', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('9', '邱天', '春天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('10', '邱天', '春天', '哈喽', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('11', '邱天', '春天', '哈喽', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('12', '春天', '邱天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('13', '春天', '邱天', 'what are you doing', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('14', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('15', '春天', '邱天', 'asdasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('16', '春天', '邱天', 'asdasdsda', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('17', '春天', '夏天', 'asdasdsda', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('18', '春天', '夏天', 'haha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('19', '春天', '一天', 'aaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('20', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('21', '春天', '邱天', 'zz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('22', '春天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('23', '夏天', '春天', 'lm', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('24', '夏天', '邱天', 'zaide', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('25', '夏天', '春天', 'haha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('26', '夏天', '一天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('27', '夏天', '春天', '测试', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('28', '夏天', '春天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('29', '夏天', '春天', 'aaaaaaaaaaaaaaaaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('30', '夏天', '春天', '啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('31', '邱天', '一天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('34', '邱天', '春天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('33', '邱天', '一天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('35', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('36', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('37', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('38', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('39', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('40', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('41', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('42', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('43', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('44', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('45', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('46', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('47', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('48', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('49', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('50', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('51', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('52', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('53', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('54', '春天', '邱天', 'aaaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('55', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('56', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('57', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('58', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('59', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('60', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('61', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('62', '春天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('63', '春天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('64', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('65', '春天', '邱天', 'zhe', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('66', '春天', '邱天', 'ge', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('67', '春天', '邱天', 'ni', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('68', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('69', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('70', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('71', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('72', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('73', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('74', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('75', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('76', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('77', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('78', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('79', '春天', '邱天', '阿松大啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('80', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('81', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('82', '春天', '邱天', '啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('83', '春天', '邱天', '啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('84', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('85', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('86', '春天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('87', '春天', '邱天', '666', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('88', '春天', '邱天', '，，，', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('89', '春天', '邱天', '，', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('90', '春天', '邱天', '，，，', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('91', '春天', '邱天', '。', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('92', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('93', '春天', '邱天', '可以吗', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('94', '春天', '邱天', '真的吗', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('95', '春天', '邱天', '是', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('96', '春天', '一天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('97', '邱天', '春天', 'hh', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('98', '邱天', '春天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('99', '邱天', '春天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('100', '邱天', '春天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('101', '邱天', '春天', ',', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('102', '春天', '邱天', '', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('103', '邱天', '春天', 'am', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('104', '邱天', '春天', 'm', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('105', '春天', '邱天', 'm', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('106', '春天', '邱天', 'kkk', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('107', '邱天', '春天', 'kkk', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('108', '春天', '邱天', 'haha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('109', '邱天', '春天', 'haha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('110', '邱天', '春天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('111', '春天', '邱天', ',,', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('112', '春天', '邱天', 'n', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('113', '邱天', '春天', 'n', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('114', '春天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('115', '邱天', '春天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('116', '邱天', '夏天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('117', '春天', '夏天', 'aha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('118', '春天', '夏天', 'aha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('119', '夏天', '春天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('120', '春天', '夏天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('121', '邱天', '一天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('122', '邱天', '一天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('123', '邱天', '三天', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('124', '邱天', '三天', '三天', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('125', '邱天', '三天', '你好', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('126', '邱天', '三天', '三天', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('127', '邱天', '三天', 'haha', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('128', '夏天', '邱天', 'zaima', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('129', '夏天', '邱天', 'cccccc', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('130', '夏天', '邱天', '哈哈', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('131', '邱天', '冬天', '哈哈哈哈', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('132', '邱天', '冬天', '九九九九八八八八八八', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('133', '春天', '邱天', 'hii', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('134', '邱天', '春天', 'xx', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('135', '邱天', '春天', 'ces', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('136', '春天', '邱天', 'zz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('137', '春天', '邱天', 'zzz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('138', '邱天', '春天', 'aaaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('139', '春天', '邱天', 'zzzz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('140', '夏天', '邱天', '嗷嗷', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('141', '夏天', '邱天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('142', '邱天', '夏天', 'hh', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('143', '夏天', '邱天', 'gg', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('144', '夏天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('145', '邱天', '夏天', 'aaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('146', '邱天', '夏天', 'adf', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('147', '邱天', '夏天', 'adasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('148', '邱天', '夏天', 'sadasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('149', '夏天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('150', '邱天', '夏天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('151', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('152', '邱天', '夏天', 'sadsa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('153', '邱天', '夏天', '为何', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('154', '夏天', '邱天', 'azhe', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('155', '邱天', '夏天', '啊啊啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('156', '邱天', '夏天', '嗷嗷', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('157', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('158', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('159', '邱天', '夏天', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('160', '邱天', '春天', '啊实打实', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('161', '邱天', '春天', '萨达萨达', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('162', '邱天', '冬天', '阿斯顿萨达', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('163', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('164', '夏天', '邱天', 'ahe', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('165', '夏天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('166', '邱天', '夏天', 'zzzzz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('167', '夏天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('168', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('169', '邱天', '夏天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('170', '夏天', '邱天', 'az', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('171', '夏天', '邱天', 'as', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('172', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('173', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('174', '夏天', '邱天', '啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('175', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('176', '邱天', '夏天', 'asfsaf', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('177', '邱天', '夏天', 'asfaf', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('178', '邱天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('179', '邱天', '夏天', 'zv', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('180', '夏天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('181', '邱天', '夏天', 'safsfa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('182', '邱天', '夏天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('183', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('184', '邱天', '夏天', 'g', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('185', '夏天', '邱天', 'asdas', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('186', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('187', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('188', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('189', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('190', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('191', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('192', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('193', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('194', '夏天', '邱天', 'gg', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('195', '邱天', '夏天', 'gg', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('196', '夏天', '春天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('197', '夏天', '邱天', 'aaaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('198', '夏天', '邱天', 'ccss', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('199', '邱天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('200', '邱天', '夏天', 'asds', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('201', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('202', '夏天', '邱天', 'asdasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('203', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('204', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('205', '夏天', '邱天', 'vb', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('206', '邱天', '夏天', 'aaasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('207', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('208', '夏天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('209', '夏天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('210', '夏天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('211', '夏天', '邱天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('212', '夏天', '邱天', 'az', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('213', '夏天', '邱天', 'za', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('214', '夏天', '邱天', '1', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('215', '夏天', '邱天', '1', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('216', '夏天', '邱天', '.', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('217', '邱天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('218', '夏天', '邱天', 'az', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('219', '邱天', '夏天', 'asdsad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('220', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('221', '夏天', '邱天', 'g', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('222', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('223', '夏天', '邱天', 'sads', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('224', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('225', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('226', '夏天', '邱天', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('227', '夏天', '邱天', 'fc', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('228', '夏天', '邱天', 'ff', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('229', '邱天', '夏天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('230', '邱天', '夏天', 'zy', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('231', '邱天', '夏天', 'j', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('232', '邱天', '夏天', 'zy', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('233', '夏天', '邱天', 'zy', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('234', '邱天', '夏天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('235', '邱天', '夏天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('236', '邱天', '夏天', 'z', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('237', '邱天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('238', '夏天', '邱天', 'ee', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('239', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('240', '邱天', '夏天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('241', '邱天', '夏天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('242', '夏天', '邱天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('243', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('244', '邱天', '夏天', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('245', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('246', '邱天', '夏天', 'ass', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('247', '邱天', '夏天', 'as', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('248', '邱天', '夏天', 'azhe', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('249', '夏天', '邱天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('250', '邱天', '夏天', 'as', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('251', '夏天', '邱天', 'sa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('252', '夏天', '邱天', 'as', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('253', '邱天', '群聊', 'za', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('254', '夏天', '群聊', 'a', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('255', '邱天', '群聊', 'qqq', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('256', '夏天', '群聊', 'wqe', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('257', '邱天', '群聊', 'wqe', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('258', '夏天', '群聊', 'aa', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('259', '夏天', '群聊', 'hg', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('260', '邱天', '群聊', ',,,', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('261', '夏天', '群聊', 'a', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('262', '夏天', '群聊', 'sad', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('263', '夏天', '群聊', 'aa', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('264', '夏天', '群聊', 'aa', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('265', '夏天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('266', '夏天', '群聊', 'ss', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('267', '邱天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('268', '夏天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('269', '邱天', '群聊', 'az', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('270', '邱天', '群聊', 'za', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('271', '邱天', '群聊', 'az', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('272', '邱天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('273', '邱天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('274', '夏天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('275', '邱天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('276', '夏天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('277', '夏天', '群聊', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('278', '夏天', '群聊', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('279', '夏天', '群聊', 'zhe', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('280', '夏天', '群聊', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('281', '邱天', '群聊', 'sad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('282', '邱天', '三天', 'asdsad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('283', '邱天', '三天', 'asdasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('284', '邱天', '群聊', 'asdsad', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('285', '邱天', '群聊', 'asdasdasd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('286', '三天', '邱天', 'zz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('287', '邱天', '三天', 'a', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('288', '三天', '群聊', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('289', '夏天', '群聊', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('290', '三天', '群聊', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('291', '夏天', '群聊', '阿松大', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('292', '邱天', '群聊', 'gg', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('293', '三天', '群聊', 'e', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('294', '三天', '邱天', 'kk', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('295', '邱天', '三天', 'll', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('296', '三天', '邱天', ';;', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('297', '三天', '夏天', 'll', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('298', '夏天', '群聊', 'a啊', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('299', '邱天', '群聊', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('300', '邱天', '群聊', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('301', '邱天', '春天', '12', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('302', '邱天', '春天', 'asd', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('303', '春天', '邱天', 'hh', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('304', '春天', '夏天', 'aa', '2147483647', 'false');
INSERT INTO `chatlog` VALUES ('305', '冬天', '春天', 'zz', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('306', '春天', '冬天', 'jj', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('307', '春天', '邱天', 'aa', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('308', '邱天', '春天', 'gg', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('309', '一天', '群聊', 'hi', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('310', '春天', '群聊', ';;', '2147483647', 'true');
INSERT INTO `chatlog` VALUES ('311', '邱天', '群聊', 'ee', '2147483647', 'true');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avator` varchar(255) DEFAULT NULL,
  `socketid` varchar(255) DEFAULT NULL,
  `isonline` varchar(255) DEFAULT NULL,
  `isgroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '邱天', '123', 'https://img1.baidu.com/it/u=1093570909,3602207353&fm=26&fmt=auto&gp=0.jpg', 'kp7_hqgH0mIj04azAAAF', 'true', null);
INSERT INTO `user` VALUES ('2', '夏天', '123', 'https://img0.baidu.com/it/u=3155998395,3600507640&fm=26&fmt=auto&gp=0.jpg', null, null, null);
INSERT INTO `user` VALUES ('3', '春天', '123', 'https://img1.baidu.com/it/u=2397591911,2044651242&fm=26&fmt=auto&gp=0.jpg', null, null, null);
INSERT INTO `user` VALUES ('4', '冬天', '123', 'https://img2.baidu.com/it/u=2590128318,632998727&fm=26&fmt=auto&gp=0.jpg', '', '', null);
INSERT INTO `user` VALUES ('5', '一天', '123', 'https://img1.baidu.com/it/u=2796144188,439704386&fm=26&fmt=auto&gp=0.jpg', null, null, null);
INSERT INTO `user` VALUES ('6', '两天', '123', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2662097736,3011062945&fm=26&gp=0.jpg', null, null, null);
INSERT INTO `user` VALUES ('7', '三天', '123', 'https://img0.baidu.com/it/u=3324287611,3832720410&fm=26&fmt=auto&gp=0.jpg', null, null, null);
INSERT INTO `user` VALUES ('8', '群聊', null, null, 'home', 'true', 'true');
