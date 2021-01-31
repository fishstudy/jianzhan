/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.252
Source Server Version : 50564
Source Host           : 192.168.1.252:3306
Source Database       : apiautotest

Target Server Type    : MYSQL
Target Server Version : 50564
File Encoding         : 65001

Date: 2021-01-31 17:21:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api_area`
-- ----------------------------
DROP TABLE IF EXISTS `api_area`;
CREATE TABLE `api_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(225) DEFAULT NULL,
  `pid` int(6) NOT NULL DEFAULT '0',
  `weight` tinyint(4) unsigned DEFAULT '0' COMMENT '排序： 数字越大，排在越前面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='地址联动表';

-- ----------------------------
-- Records of api_area
-- ----------------------------
INSERT INTO `api_area` VALUES ('2', '商水改成鹿邑', '100', '101');
INSERT INTO `api_area` VALUES ('5', '项城', '100', '100');

-- ----------------------------
-- Table structure for `api_category`
-- ----------------------------
DROP TABLE IF EXISTS `api_category`;
CREATE TABLE `api_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) DEFAULT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) DEFAULT NULL COMMENT 'SEO的网页标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `template_index` varchar(100) DEFAULT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) DEFAULT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) DEFAULT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) DEFAULT NULL COMMENT '编辑页模板',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '允许发布的内容类型',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `content` text,
  `model_id` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of api_category
-- ----------------------------
INSERT INTO `api_category` VALUES ('1', null, '新闻动态', '0', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('2', '', '学校介绍', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `api_category` VALUES ('3', '', '特色专业', '0', '0', '3', '', '', '', '', 'model/document_photo_list', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `api_category` VALUES ('4', '', '教学管理', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `api_category` VALUES ('5', '', '校园文化', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `api_category` VALUES ('6', null, '实训就业', '0', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('7', null, '就业明星', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '5');
INSERT INTO `api_category` VALUES ('8', null, '招生问答', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('9', null, '教学成果', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('10', null, '填报指南', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('11', null, '校园风采', '0', '0', '0', null, null, null, null, 'document_photo_list', null, null, '0', '0', '0', '1', null, '24');
INSERT INTO `api_category` VALUES ('12', null, '学院新闻', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('13', null, '学生风采', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('14', null, '招生政策', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('15', null, '重要通知', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `api_category` VALUES ('16', null, '行业快讯', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');

-- ----------------------------
-- Table structure for `api_channel`
-- ----------------------------
DROP TABLE IF EXISTS `api_channel`;
CREATE TABLE `api_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '频道ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级频道ID',
  `title` char(30) NOT NULL COMMENT '频道标题',
  `url` char(100) NOT NULL COMMENT '频道连接',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `target` varchar(225) DEFAULT '0' COMMENT '新窗口打开',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_channel
-- ----------------------------
INSERT INTO `api_channel` VALUES ('1', '0', '首页', 'index/index', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('2', '0', '学校介绍', 'article/detail?id=2', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('3', '0', '特色专业', 'article/lists?id=3', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('4', '3', '软件开发PHP', 'article/detail?id=8', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('5', '3', '软件测试', 'article/detail?id=9', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('6', '3', '大数据', 'article/detail?id=10', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('7', '3', '电子商务', 'article/detail?id=11', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('8', '3', '企业网络信息安全管理', 'article/detail?id=12', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('9', '0', '教学管理', 'article/lists?id=4', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('10', '0', '校园文化', 'article/lists?id=5', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('11', '0', '招生问答', 'article/lists?id=8', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('12', '0', '实训就业', 'article/lists?id=6', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('13', '0', '在线报名', 'index/online', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('14', '0', '联系我们', 'http://wpa.qq.com/msgrd?v=3&uin=1011723206&site=qq&menu=yes', '0', '0', '0', '1', '_blank');
INSERT INTO `api_channel` VALUES ('15', '2', '学院概况', 'article/detail?id=2', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('16', '2', '共建专业特色', 'article/detail?id=4', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('17', '2', '办学特色', 'article/detail?id=5', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('18', '2', '现任领导', 'article/detail?id=6', '0', '0', '0', '1', '_self');
INSERT INTO `api_channel` VALUES ('19', '2', '新闻动态', 'article/lists?id=1', '0', '0', '0', '1', '_self');

-- ----------------------------
-- Table structure for `api_config`
-- ----------------------------
DROP TABLE IF EXISTS `api_config`;
CREATE TABLE `api_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` varchar(225) NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` varchar(225) DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_config
-- ----------------------------
INSERT INTO `api_config` VALUES ('1', 'WEB_SITE_TITLE', 'string', '网站标题', '0', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', '项城市慧敏计算机职业技能培训学校', '0');
INSERT INTO `api_config` VALUES ('2', 'DESCRIPTION', 'textarea', '网站描述', '0', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', '项城市慧敏计算机职业技能培训学校是经河南省项城市民政局，人力资源和社会保障局批准的一所职业学校。', '1');
INSERT INTO `api_config` VALUES ('3', 'KEYWORD', 'textarea', '网站关键字', '0', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', '慧敏职业学校,科浪教育', '8');
INSERT INTO `api_config` VALUES ('4', 'WEB_SITE_CLOSE', 'select', '关闭站点', '0', '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1379235296', '1', '1', '1');
INSERT INTO `api_config` VALUES ('100', 'QQKEY', 'text', 'QqKEY', '2', '', 'qq登录key', '0', '0', '0', '', '0');
INSERT INTO `api_config` VALUES ('101', 'QQSECRET', 'text', 'QqSecret', '2', '', 'qq登录密钥', '0', '0', '0', '', '0');
INSERT INTO `api_config` VALUES ('116', 'ADDRESS', 'string', '学习地址', '2', '', '', '0', '0', '0', '项城市慧敏计算机职业技能学校位于项城市平安大道东段', '0');
INSERT INTO `api_config` VALUES ('92', 'LOGO', 'picture', '网站logo', '0', '', '网站logo', '0', '0', '0', '1', '0');
INSERT INTO `api_config` VALUES ('108', 'COLOR', 'color', '主题', '1', '#03a9f4 ', '推荐值#2982ce,#0099cc,#03a9f4 ', '0', '0', '0', '#2982ce', '0');
INSERT INTO `api_config` VALUES ('91', 'GROUP', 'string', '配置分组', '1', '', '', '0', '0', '0', '基本|高级|联系', '0');
INSERT INTO `api_config` VALUES ('102', 'DIALOG_STYLE', 'select', '提示框弹窗类型', '1', '0:旧式风格,\r\n1:Dialog', '处理成功后弹出类型', '0', '0', '0', '0', '0');
INSERT INTO `api_config` VALUES ('106', 'USER_ALLOW_REGISTER', 'select', '是否开启会员注册', '1', '0:关闭,1:开启', '0:关闭,1:开启', '0', '0', '0', '1', '0');
INSERT INTO `api_config` VALUES ('107', 'DOCUMENT_GROUP', 'string', '文档分组', '1', '', '', '0', '0', '0', '基本|高级', '0');
INSERT INTO `api_config` VALUES ('109', 'BTN', 'color', '按钮背景色', '1', '#5ebc62', '', '0', '0', '0', '#dd514c', '0');
INSERT INTO `api_config` VALUES ('110', 'XQQ', 'string', '如云老师', '2', '', '如云老师qq', '0', '0', '0', '13381922071', '0');
INSERT INTO `api_config` VALUES ('112', 'LQQ', 'string', '如琳老师', '2', '', '如琳老师qq', '0', '0', '0', '1011723206', '0');
INSERT INTO `api_config` VALUES ('111', 'YQQ', 'string', '如荫老师', '2', '', '如荫师qq', '0', '0', '0', '1010422715', '0');
INSERT INTO `api_config` VALUES ('113', 'HQQ', 'string', '如洁老师', '2', '', '如洁老师qq', '0', '0', '0', '1010422715', '0');
INSERT INTO `api_config` VALUES ('114', 'PHONE', 'string', '联系电话', '2', '', '', '0', '0', '0', '0394-8998828', '0');
INSERT INTO `api_config` VALUES ('115', 'ISP', 'string', '域名备案号', '0', '', '', '0', '0', '0', '鄂ICP备12002142', '0');
INSERT INTO `api_config` VALUES ('117', 'guojicode', 'string', '国际招生代码', '2', '', '', '0', '0', '0', '0394-8998839', '0');
INSERT INTO `api_config` VALUES ('118', 'procode', 'string', '省招生代码', '2', '', '', '0', '0', '0', '2197', '0');

-- ----------------------------
-- Table structure for `api_user`
-- ----------------------------
DROP TABLE IF EXISTS `api_user`;
CREATE TABLE `api_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `token` char(32) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别0男 1女',
  `nickname` varchar(64) NOT NULL DEFAULT '' COMMENT '个性签名',
  `age` tinyint(4) unsigned DEFAULT '0' COMMENT '年龄',
  `create_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1425 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_user
-- ----------------------------
INSERT INTO `api_user` VALUES ('1', 'kona001', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', 'sddsdsdssdsd', '1', '宋江', '1', '1611569081', '1611569081', '1');
INSERT INTO `api_user` VALUES ('9', 'kona003', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', '', '1', '宋江', '1', '1611971942', '1611971942', '1');
INSERT INTO `api_user` VALUES ('10', 'kona0055', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', '', '1', '宋江', '1', '1611971949', '1611971949', '1');
INSERT INTO `api_user` VALUES ('1223', 'tiantian', 'e10adc3949ba59abbe56e057f20f883e', '15963696699', '', '2', '哈哈哈哈哈', '1', '1612073126', '1612073126', '1');
INSERT INTO `api_user` VALUES ('1224', '66666', 'e10adc3949ba59abbe56e057f20f883e', '15912696698', 'a4185abb53b35ce0e5cba11f0a854df2', '2', '哈哈哈哈哈', '1', '1612081160', '1612081160', '1');
INSERT INTO `api_user` VALUES ('1225', 'kobekobekobeno1', '18a9f76e9e5f5d1237a02a27a3246a1c', '15299999999', '', '1', '黑曼巴科比', '39', '1612073526', '1612073526', '1');
INSERT INTO `api_user` VALUES ('1226', '龟苓膏', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '龟苓膏', '0', '1612073532', '1612073532', '1');
INSERT INTO `api_user` VALUES ('1227', 'ooo123456', 'e10adc3949ba59abbe56e057f20f883e', '15239379958', '', '2', '55555', '255', '1612073572', '1612073572', '1');
INSERT INTO `api_user` VALUES ('1228', '12345', '4100c4d44da9177247e44a5fc1546778', '18888888012', '', '1', '天骄气氛组', '120', '1612073600', '1612073600', '1');
INSERT INTO `api_user` VALUES ('1229', 'shi12', 'e10adc3949ba59abbe56e057f20f883e', '15963696600', '', '2', '这是昵称nc123', '56', '1612073625', '1612073625', '1');
INSERT INTO `api_user` VALUES ('1230', 'abcde', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2', 'aaaaa', '126', '1612073644', '1612073644', '1');
INSERT INTO `api_user` VALUES ('1231', 'liqiu', 'e10adc3949ba59abbe56e057f20f883e', '13466889904', '', '1', '#@$@#$#@$/', '0', '1612073713', '1612073713', '1');
INSERT INTO `api_user` VALUES ('1232', 'teacher1', 'e10adc3949ba59abbe56e057f20f883e', '', 'e9a3a7477f7ca4e35e9e36256561a8e3', '1', '宋江', '0', '1612075359', '1612075359', '1');
INSERT INTO `api_user` VALUES ('1233', 'user27', 'e10adc3949ba59abbe56e057f20f883e', '15963696649', '', '1', 'super杰瑞48', '0', '1612073831', '1612073831', '1');
INSERT INTO `api_user` VALUES ('1234', '123456', 'e10adc3949ba59abbe56e057f20f883e', '10000000000', '36625e05fe6b96416eea48c48baaf6c0', '1', '10000', '20', '1612080968', '1612080968', '1');
INSERT INTO `api_user` VALUES ('1235', 'wuxian', 'e10adc3949ba59abbe56e057f20f883e', '15963699699', '', '1', '1231211211', '121', '1612073891', '1612073891', '1');
INSERT INTO `api_user` VALUES ('1236', 'liqiuyan', 'e10adc3949ba59abbe56e057f20f883e', '13466889804', '', '2', 'liqiuyan', '18', '1612073932', '1612073932', '1');
INSERT INTO `api_user` VALUES ('1237', '10puls0l0a', '1ef18d9e7cb30b4504fbedd467d54c3d', '10560616513', '', '1', '伊拉克阿富汗', '0', '1612073937', '1612073937', '1');
INSERT INTO `api_user` VALUES ('1238', 'abcdefghij1234567890', 'e10adc3949ba59abbe56e057f20f883e', '10000000002', '', '1', '10002', '20', '1612073963', '1612073963', '1');
INSERT INTO `api_user` VALUES ('1239', 'wuxian', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '1231211211', '121', '1612074012', '1612074012', '1');
INSERT INTO `api_user` VALUES ('1240', 'teacgrher', 'e10adc3949ba59abbe56e057f20f883e', '12292222221', '', '1', '12345678912345678912', '23', '1612074060', '1612074060', '1');
INSERT INTO `api_user` VALUES ('1241', 'doinb', 'a8f5f167f44f4964e6c998dee827110c', '15847453444', '', '1', '天骄MySQL', '88', '1612074063', '1612074063', '1');
INSERT INTO `api_user` VALUES ('1242', 'wuxian', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '1231211211', '255', '1612074090', '1612074090', '1');
INSERT INTO `api_user` VALUES ('1243', '哈哈哈', '4142f8198cb2c882d7a5abc00375bd36', '', '', '2', '权威奇偶的', '18', '1612074093', '1612074093', '1');
INSERT INTO `api_user` VALUES ('1244', 'tewsxrher', 'e10adc3949ba59abbe56e057f20f883e', '12292215921', '', '1', '12345678912345678912', '23', '1612074100', '1612074100', '1');
INSERT INTO `api_user` VALUES ('1245', 'liang', '827ccb0eea8a706c4c34a16891f84e7b', '15912111211', '', '1', 'yangliu', '20', '1612074102', '1612074102', '1');
INSERT INTO `api_user` VALUES ('1246', '12345abcde', 'e10adc3949ba59abbe56e057f20f883e', '10000000004', '', '1', '10004', '20', '1612074106', '1612074106', '1');
INSERT INTO `api_user` VALUES ('1247', '98765', 'e10adc3949ba59abbe56e057f20f883e', '19898989696', '57fdbe4317d0686ba0b4de97f787ebc6', '1', '项城惠民学校', '15', '1612084846', '1612084846', '1');
INSERT INTO `api_user` VALUES ('1248', '88888', '827ccb0eea8a706c4c34a16891f84e7b', '15913137563', '', '1', 'yangliu', '20', '1612074144', '1612074144', '1');
INSERT INTO `api_user` VALUES ('1249', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '啊啊啊啊啊啊啊啊啊啊', '1', '1612074161', '1612074161', '1');
INSERT INTO `api_user` VALUES ('1250', '01223', 'e10adc3949ba59abbe56e057f20f883e', '15465620258', '', '2', '01323', '1', '1612074168', '1612074168', '1');
INSERT INTO `api_user` VALUES ('1251', '12345678912098745698', 'e10adc3949ba59abbe56e057f20f883e', '18514386275', '', '1', '爱无法无法', '24', '1612074192', '1612074192', '1');
INSERT INTO `api_user` VALUES ('1252', '012323', 'e10adc3949ba59abbe56e057f20f883e', '15465620299', '', '2', '01324', '1', '1612074198', '1612074198', '1');
INSERT INTO `api_user` VALUES ('1253', 'feker', 'a8f5f167f44f4964e6c998dee827110c', '15847453144', '', '1', '河南工学院招生简历', '88', '1612074260', '1612074260', '1');
INSERT INTO `api_user` VALUES ('1254', 'wuxian9', 'e10adc3949ba59abbe56e057f20f883e', '17788888819', '', '2', 'wsxcv', '20', '1612074268', '1612074268', '1');
INSERT INTO `api_user` VALUES ('1255', 'dadada', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 'abbbb', '0', '1612074286', '1612074286', '1');
INSERT INTO `api_user` VALUES ('1256', 'qazxs', 'e10adc3949ba59abbe56e057f20f883e', '15963696852', '', '1', 'qwe123', '1', '1612074289', '1612074289', '1');
INSERT INTO `api_user` VALUES ('1257', 'aaaab3', '0a0a71600a4eb60d1ecb002779b3ca3f', '12163695413', '', '2', '王牌飞行员', '255', '1612074303', '1612074303', '1');
INSERT INTO `api_user` VALUES ('1258', 'Melissa', '827ccb0eea8a706c4c34a16891f84e7b', '17802855999', '', '1', 'Melissa', '20', '1612074308', '1612074308', '1');
INSERT INTO `api_user` VALUES ('1259', 'shi123', 'e10adc3949ba59abbe56e057f20f883e', '15963696601', '', '2', '这是昵称nc234', '56', '1612074312', '1612074312', '1');
INSERT INTO `api_user` VALUES ('1260', 'user32b', 'e10adc3949ba59abbe56e057f20f883e', '15663696654', '', '1', 'super杰瑞53', '0', '1612074312', '1612074312', '1');
INSERT INTO `api_user` VALUES ('1261', 'shimasu12345shimasu1', 'e10adc3949ba59abbe56e057f20f883e', '15963696602', '', '2', '这是昵称nc456', '56', '1612074332', '1612074332', '1');
INSERT INTO `api_user` VALUES ('1262', '12345ssdlhlhdbdyjxss', 'e10adc3949ba59abbe56e057f20f883e', '18282112965', '', '2', '什么情况啊', '20', '1612074333', '1612074333', '1');
INSERT INTO `api_user` VALUES ('1263', 'qazdxs', 'e10adc3949ba59abbe56e057f20f883e', '15963636852', '', '1', 'qwe123', '120', '1612074339', '1612074339', '1');
INSERT INTO `api_user` VALUES ('1264', 'puls100', '1ef18d9e7cb30b4504fbedd467d54c3d', '10000616513', '', '1', '巴基斯坦666', '0', '1612074341', '1612074341', '1');
INSERT INTO `api_user` VALUES ('1265', 'liqiuyan123456789012', 'e10adc3949ba59abbe56e057f20f883e', '13266889804', '', '2', '88888888888888888888', '18', '1612074343', '1612074343', '1');
INSERT INTO `api_user` VALUES ('1266', '00908', '827ccb0eea8a706c4c34a16891f84e7b', '17802855977', '', '2', 'Melissa', '0', '1612074351', '1612074351', '1');
INSERT INTO `api_user` VALUES ('1267', 'teacher1', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '宋江', '0', '1612074360', '1612074360', '1');
INSERT INTO `api_user` VALUES ('1268', '6666666', 'e10adc3949ba59abbe56e057f20f883e', '15239379957', '', '2', '陈帆', '255', '1612074371', '1612074371', '1');
INSERT INTO `api_user` VALUES ('1269', 'abcdefjnijjjjjjjjjjj', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 's232ds', '23', '1612074394', '1612074394', '1');
INSERT INTO `api_user` VALUES ('1270', 'qsazxs', 'e10adc3949ba59abbe56e057f20f883e', '15963678852', '', '1', 'qwe123', '121', '1612074395', '1612074395', '1');
INSERT INTO `api_user` VALUES ('1271', '@abcde', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 's232ds', '23', '1612074409', '1612074409', '1');
INSERT INTO `api_user` VALUES ('1272', '01201234567897897890', 'e10adc3949ba59abbe56e057f20f883e', '15475620258', '', '2', '01325', '1', '1612074435', '1612074435', '1');
INSERT INTO `api_user` VALUES ('1273', 'qazxns', 'e10adc3949ba59abbe56e057f20f883e', '15963696862', '', '1', 'qwe123', '11', '1612074446', '1612074446', '1');
INSERT INTO `api_user` VALUES ('1274', 'wuxian10', 'e10adc3949ba59abbe56e057f20f883e', '17788888818', '', '2', 'edcvb', '20', '1612074456', '1612074456', '1');
INSERT INTO `api_user` VALUES ('1275', '123qwe', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 's232ds', '23', '1612074462', '1612074462', '1');
INSERT INTO `api_user` VALUES ('1276', 'cwxcl1', 'e10adc3949ba59abbe56e057f20f883e', '14654569871', '', '2', 'cw小沙弥', '56', '1612074462', '1612074462', '1');
INSERT INTO `api_user` VALUES ('1277', 'jiaoyu', 'e10adc3949ba59abbe56e057f20f883e', '15963696999', 'f11f6e2540f696404498847f1e941146', '1', '1231211211', '255', '1612082566', '1612082566', '1');
INSERT INTO `api_user` VALUES ('1278', 'qazxjs', 'e10adc3949ba59abbe56e057f20f883e', '15962316852', '', '1', 'qwe123', '0', '1612074500', '1612074500', '1');
INSERT INTO `api_user` VALUES ('1279', '00904', '827ccb0eea8a706c4c34a16891f84e7b', '17802587956', '', '2', '12334', '0', '1612074501', '1612074501', '1');
INSERT INTO `api_user` VALUES ('1280', '龟苓膏2', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2', '龟苓膏2', '255', '1612074506', '1612074506', '1');
INSERT INTO `api_user` VALUES ('1281', '！@#', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 's232ds', '23', '1612074514', '1612074514', '1');
INSERT INTO `api_user` VALUES ('1282', '1234567891asxasxasxa', '7d54ab1218bc7953fd56761c0d060989', '18551252352', '', '1', '@是a564', '0', '1612074518', '1612074518', '1');
INSERT INTO `api_user` VALUES ('1283', 'abcdedf', 'e10adc3949ba59abbe56e057f20f883e', '10000000006', '', '1', '10006', '20', '1612074518', '1612074518', '1');
INSERT INTO `api_user` VALUES ('1284', 'Lajames1', '18a9f76e9e5f5d1237a02a27a3246a1c', '15299999993', '', '1', '湖人总冠军', '39', '1612074528', '1612074528', '1');
INSERT INTO `api_user` VALUES ('1285', 'hhhhhhhhhhhhhhhhhhhh', 'e10adc3949ba59abbe56e057f20f883e', '18888888888', '', '2', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '18', '1612074531', '1612074531', '1');
INSERT INTO `api_user` VALUES ('1286', 'asdfg', 'e10adc3949ba59abbe56e057f20f883e', '15495620258', '', '2', '01327', '1', '1612074532', '1612074532', '1');
INSERT INTO `api_user` VALUES ('1287', 'kkkkk', 'a8f5f167f44f4964e6c998dee827110c', '15857453144', '', '1', '天骄影帝辉', '88', '1612074535', '1612074535', '1');
INSERT INTO `api_user` VALUES ('1288', '12312', '4142f8198cb2c882d7a5abc00375bd36', '17234620150', '', '2', '权威奇偶的', '18', '1612074536', '1612074536', '1');
INSERT INTO `api_user` VALUES ('1289', '1234567891asxasxasa', '7d54ab1218bc7953fd56761c0d060989', '18551152352', '', '1', '@是a564', '0', '1612074543', '1612074543', '1');
INSERT INTO `api_user` VALUES ('1290', 'aaaa43', '0a0a71600a4eb60d1ecb002779b3ca3f', '12163695414', '', '2', '荒天帝石昊', '255', '1612074543', '1612074543', '1');
INSERT INTO `api_user` VALUES ('1291', 'qaz1xs', 'e10adc3949ba59abbe56e057f20f883e', '15963696052', '', '1', 'qwe123', '0', '1612074543', '1612074543', '1');
INSERT INTO `api_user` VALUES ('1292', '123456789', 'e10adc3949ba59abbe56e057f20f883e', '18439000764', '', '1', '小豆丁小豆丁', '18', '1612074562', '1612074562', '1');
INSERT INTO `api_user` VALUES ('1293', 'puls101', '1ef18d9e7cb30b4504fbedd467d54c3d', '10000613513', '', '1', '账号只能为5~20位数字或字母', '20', '1612074578', '1612074578', '1');
INSERT INTO `api_user` VALUES ('1294', 'qaz3xs', 'e10adc3949ba59abbe56e057f20f883e', '15963696802', '', '1', 'qwe123', '0', '1612074594', '1612074594', '1');
INSERT INTO `api_user` VALUES ('1295', 'user04', '387b7cdd5f552774945c7020b964468f', '15963696669', 'c6f3d6f24fc27681e339fe20b78ea845', '2', 'super杰瑞18', '50', '1612082675', '1612082675', '1');
INSERT INTO `api_user` VALUES ('1296', 'dijia', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '迪迦', '23', '1612074616', '1612074616', '1');
INSERT INTO `api_user` VALUES ('1297', 'abcdedif', 'e10adc3949ba59abbe56e057f20f883e', '10700000006', '', '1', '17006', '5', '1612074623', '1612074623', '1');
INSERT INTO `api_user` VALUES ('1298', 'qaz65xs', 'e10adc3949ba59abbe56e057f20f883e', '15963690231', '', '1', 'qwe123', '0', '1612074631', '1612074631', '1');
INSERT INTO `api_user` VALUES ('1299', '1234567891asxasxasx', '7d54ab1218bc7953fd56761c0d060989', '18551232352', '', '1', '@是a564', '0', '1612074656', '1612074656', '1');
INSERT INTO `api_user` VALUES ('1300', 'jiaoyu1', 'e10adc3949ba59abbe56e057f20f883e', '15963696009', '3ec4d77776705da5e3df6eb39c0979aa', '1', '1231211211', '119', '1612082800', '1612082800', '1');
INSERT INTO `api_user` VALUES ('1301', '00911', '827ccb0eea8a706c4c34a16891f84e7b', '17802587900', '', '2', '12334', '0', '1612074673', '1612074673', '1');
INSERT INTO `api_user` VALUES ('1302', '172991', 'e10adc3949ba59abbe56e057f20f883e', '15963696606', '', '2', '这是昵称nc890', '56', '1612074677', '1612074677', '1');
INSERT INTO `api_user` VALUES ('1303', '98000', 'e10adc3949ba59abbe56e057f20f883e', '19898989695', '', '1', '天下会雄霸', '255', '1612074684', '1612074684', '1');
INSERT INTO `api_user` VALUES ('1304', '13794678901379467890', '17aff357ec34ffaef3e9c7df9957e37c', '13846465979', '', '2', '吃葡萄不吐葡萄皮', '50', '1612074692', '1612074692', '1');
INSERT INTO `api_user` VALUES ('1305', 'dijia', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '迪迦', '0', '1612074696', '1612074696', '1');
INSERT INTO `api_user` VALUES ('1306', '01a23', 'e10adc3949ba59abbe56e057f20f883e', '15525620258', '', '2', '01330', '1', '1612074705', '1612074705', '1');
INSERT INTO `api_user` VALUES ('1307', 'abcdedif09', 'e10adc3949ba59abbe56e057f20f883e', '10800000006', '', '1', '18006', '6', '1612074711', '1612074711', '1');
INSERT INTO `api_user` VALUES ('1308', 'aaaa44', '0a0a71600a4eb60d1ecb002779b3ca3f', '12163695415', '', '2', '时间的长河', '255', '1612074715', '1612074715', '1');
INSERT INTO `api_user` VALUES ('1309', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', '18666666666', '', '2', '喜洋洋与灰太狼', '18', '1612074719', '1612074719', '1');
INSERT INTO `api_user` VALUES ('1310', 'daaabc', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', 'reading', '123', '1612074734', '1612074734', '1');
INSERT INTO `api_user` VALUES ('1311', 'asdasdasd', '7d54ab1218bc7953fd56761c0d060989', '18551362352', '', '1', '@是a564', '0', '1612074744', '1612074744', '1');
INSERT INTO `api_user` VALUES ('1312', '这是bug吗', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2', '这是bug吗', '255', '1612074749', '1612074749', '1');
INSERT INTO `api_user` VALUES ('1313', '这是bug吗', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2', '这是bug吗', '255', '1612074754', '1612074754', '1');
INSERT INTO `api_user` VALUES ('1314', 'puls102', '1ef18d9e7cb30b4504fbedd467d54c3d', '10001613513', '', '1', 'asxbfgfddgd-', '20', '1612074761', '1612074761', '1');
INSERT INTO `api_user` VALUES ('1315', 'r3hghhj4g5jd654', 'e10adc3949ba59abbe56e057f20f883e', '12473645990', '', '1', '344778', '22', '1612074762', '1612074762', '1');
INSERT INTO `api_user` VALUES ('1316', '12345679990', 'e10adc3949ba59abbe56e057f20f883e', '18667666666', '', '2', '喜洋洋与灰太狼', '121', '1612074763', '1612074763', '1');
INSERT INTO `api_user` VALUES ('1317', 'wuxian14', 'e10adc3949ba59abbe56e057f20f883e', '17788888821', '', '1', 'uhbnm', '20', '1612074769', '1612074769', '1');
INSERT INTO `api_user` VALUES ('1318', '01225', '0433e3038e208089eb74b7d9c8f5725f', '15565620258', '', '2', '01336', '1', '1612074770', '1612074770', '1');
INSERT INTO `api_user` VALUES ('1319', '01226', '5575e904bb7b0a613acf5eb6f5cfa2e7', '15575620258', '', '2', '01337', '1', '1612074784', '1612074784', '1');
INSERT INTO `api_user` VALUES ('1320', '12345679980', 'e10adc3949ba59abbe56e057f20f883e', '18667776666', 'faef631eef734403638a8e36acde7016', '2', '喜洋洋与灰太狼', '0', '1612081950', '1612081950', '1');
INSERT INTO `api_user` VALUES ('1321', '00921', '827ccb0eea8a706c4c34a16891f84e7b', '17802587222', '', '2', '12334', '1', '1612074792', '1612074792', '1');
INSERT INTO `api_user` VALUES ('1322', '01227', 'b67fb216af448d8a2e919bdde62f5eef', '15585620258', '', '2', '01338', '1', '1612074800', '1612074800', '1');
INSERT INTO `api_user` VALUES ('1323', '12312233', '7d54ab1218bc7953fd56761c0d060989', '18551369852', '', '1', '@是a564', '0', '1612074805', '1612074805', '1');
INSERT INTO `api_user` VALUES ('1324', 'user26', 'e10adc3949ba59abbe56e057f20f883e', '15963696648', '40b4742315606418011718bfd8862aa4', '1', 'super杰瑞01', '50', '1612082401', '1612082401', '1');
INSERT INTO `api_user` VALUES ('1325', 'dijia', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '迪迦', '0', '1612074809', '1612074809', '1');
INSERT INTO `api_user` VALUES ('1326', 'user26a', 'e10adc3949ba59abbe56e057f20f883e', '15963696548', '30378b3fd96d6ccbd1c1d65c511ecfd0', '1', 'super杰瑞01', '50', '1612080901', '1612080901', '1');
INSERT INTO `api_user` VALUES ('1327', 'qak3zxs', 'e10adc3949ba59abbe56e057f20f883e', '15961096852', '', '1', 'qwe123', '100', '1612074831', '1612074831', '1');
INSERT INTO `api_user` VALUES ('1328', '123sdas', '7d54ab1218bc7953fd56761c0d060989', '18556569852', '', '1', '@是a564', '0', '1612074837', '1612074837', '1');
INSERT INTO `api_user` VALUES ('1329', '01229', '79e651dd08483b1483fb6e992c928e21', '15605620258', '', '2', '01340', '1', '1612074847', '1612074847', '1');
INSERT INTO `api_user` VALUES ('1330', 'we678', 'e10adc3949ba59abbe56e057f20f883e', '14725836963', '', '1', '昵称氢气球', '56', '1612074856', '1612074856', '1');
INSERT INTO `api_user` VALUES ('1331', 'r3hghj4g5jd654', 'e10adc3949ba59abbe56e057f20f883e', '12473635990', 'a0b487d87583b92f668aa5eea3306837', '1', '344778', '22', '1612080897', '1612080897', '1');
INSERT INTO `api_user` VALUES ('1332', '09921', '827ccb0eea8a706c4c34a16891f84e7b', '17802587333', '', '2', '12334', '119', '1612074860', '1612074860', '1');
INSERT INTO `api_user` VALUES ('1333', '123456789', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '1236456789', '18', '1612074870', '1612074870', '1');
INSERT INTO `api_user` VALUES ('1334', 'wuxian15', 'e10adc3949ba59abbe56e057f20f883e', '17788888822', 'e003bea81500e7dd8a183365980c60b4', '2', 'ijnmb', '20', '1612082375', '1612082375', '1');
INSERT INTO `api_user` VALUES ('1335', 'hjufsa', 'e10adc3949ba59abbe56e057f20f883e', '15963696607', 'a1c4b8e06b4ab980449dba8ecec9312a', '2', '这是昵称nc901', '56', '1612080637', '1612080637', '1');
INSERT INTO `api_user` VALUES ('1336', '154sdas', 'aa240989c27f0049f908820282a66109', '18535569835', '', '1', '@是a564', '0', '1612074897', '1612074897', '1');
INSERT INTO `api_user` VALUES ('1337', '09933', '827ccb0eea8a706c4c34a16891f84e7b', '17802587353', '', '2', '12334', '120', '1612074922', '1612074922', '1');
INSERT INTO `api_user` VALUES ('1338', 'teacher', 'e10adc3949ba59abbe56e057f20f883e', '12222222221', 'ac18e2478403b1e9014bfe67b0f2c3f2', '1', '11111111111111111111', '0', '1612081276', '1612081276', '1');
INSERT INTO `api_user` VALUES ('1339', 'teacher4', 'e10adc3949ba59abbe56e057f20f883e', '12222222251', 'd85f49160dbe34591ae106397f3f6d7f', '1', '11111111111111111111', '0', '1612080075', '1612080075', '1');
INSERT INTO `api_user` VALUES ('1340', '2teacher', 'e10adc3949ba59abbe56e057f20f883e', '14222222222', '', '1', '11111111111111111111', '0', '1612079637', '1612079637', '1');
INSERT INTO `api_user` VALUES ('1342', 'yangliu', '827ccb0eea8a706c4c34a16891f84e7b', '15866666666', '04adc7233902dfd5d9bf3f066986325a', '2', 'yangliu', '20', '1612081708', '1612081708', '1');
INSERT INTO `api_user` VALUES ('1343', 'kkkkkk', 'a8f5f167f44f4964e6c998dee827110c', '15857459144', '', '1', '饿呢阿萨德阿萨德', '88', '1612080433', '1612080433', '1');
INSERT INTO `api_user` VALUES ('1344', '012354', '827ccb0eea8a706c4c34a16891f84e7b', '15107562258', 'e20a9774f0e0bce48b1f60dd98fef1b6', '2', '123477', '12', '1612080675', '1612080675', '1');
INSERT INTO `api_user` VALUES ('1345', 's4477sad', 'e10adc3949ba59abbe56e057f20f883e', '10159775672', '062db7a02b4097e82fdea11250eba8fd', '1', '无限df4&*&', '22', '1612081123', '1612081123', '1');
INSERT INTO `api_user` VALUES ('1346', '19970706', '614e17c5683afcc59c2e68e6f4737328', '15888821997', '64455ac73546d899a3a7abcfaa01a4b8', '1', 'wuxianwifi', '56', '1612080600', '1612080600', '1');
INSERT INTO `api_user` VALUES ('1347', 'yasuo', '9b2fe19be9cfd48f6a7a23331850b30d', '18535365835', '76a31a28f731d227ee2ca9ad35ff95e3', '1', '@是a564', '0', '1612084574', '1612084574', '1');
INSERT INTO `api_user` VALUES ('1348', 'asdasdawdwadwadawda', 'e10adc3949ba59abbe56e057f20f883e', '15514386275', '', '1', '这玩应谁看谁不迷糊', '24', '1612080503', '1612080503', '1');
INSERT INTO `api_user` VALUES ('1349', 'kobekobeno1', '18a9f76e9e5f5d1237a02a27a3246a1c', '15299993999', '4662f92ef974be9d98b3bde83d59ea55', '1', '黑曼巴科比', '39', '1612081970', '1612081970', '1');
INSERT INTO `api_user` VALUES ('1350', '123kkk', 'a1b7f6c7d739aa48d5dfaacf54df3994', '18132547845', '', '1', '一二额婚纱', '12', '1612080530', '1612080530', '1');
INSERT INTO `api_user` VALUES ('1351', '12313', '4142f8198cb2c882d7a5abc00375bd36', '17234621150', '', '2', '权威奇偶的', '18', '1612080545', '1612080545', '1');
INSERT INTO `api_user` VALUES ('1352', 'aabbcc', '0a0a71600a4eb60d1ecb002779b3ca3f', '17630515689', 'dd56e946a2694e20a951aa332cb01e99', '1', '112233', '255', '1612081473', '1612081473', '1');
INSERT INTO `api_user` VALUES ('1353', 'puls103', '1ef18d9e7cb30b4504fbedd467d54c3d', '10001713513', '', '1', 'asx63', '20', '1612080604', '1612080604', '1');
INSERT INTO `api_user` VALUES ('1354', 'eOlefoee', 'e11170b8cbd2d74102651cb967fa28e5', '17003636629', '', '1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '21', '1612080648', '1612080648', '1');
INSERT INTO `api_user` VALUES ('1355', '.,123456789521525545', '17145dce77306e233e5fae21ac6ba2d4', '', '', '2', '权威奇偶的', '18', '1612080670', '1612080670', '1');
INSERT INTO `api_user` VALUES ('1356', 'wuxian', 'e80b5017098950fc58aad83c8c14978e', '', '', '2', '我家两亩地', '30', '1612080684', '1612080684', '1');
INSERT INTO `api_user` VALUES ('1357', 'chizaoshiwode', 'fc68d388a3a15dc26a11200d14476fed', '10000000904', 'b8458df7352004c83de98e8cad428fa1', '1', '10064', '20', '1612081134', '1612081134', '1');
INSERT INTO `api_user` VALUES ('1358', 'zb318', 'e10adc3949ba59abbe56e057f20f883e', '18200112233', '3b20364758d3e7be3f625752c4386582', '1', '简简单单123', '23', '1612080843', '1612080843', '1');
INSERT INTO `api_user` VALUES ('1359', 'qazfxs', 'e10adc3949ba59abbe56e057f20f883e', '15963606858', 'bd13751d5253329b36ebb49cdfd7f6cb', '1', 'qwe123', '100', '1612082408', '1612082408', '1');
INSERT INTO `api_user` VALUES ('1360', '12345678912345674512', 'e10adc3949ba59abbe56e057f20f883e', '12222786221', '69a8d3b83d8dca702393550e195aff03', '1', 's232ds', '23', '1612082525', '1612082525', '1');
INSERT INTO `api_user` VALUES ('1361', 'eOlefoe', 'feebbd993b432171d053e8fad436edad', '17003636529', '', '1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '21', '1612080756', '1612080756', '1');
INSERT INTO `api_user` VALUES ('1362', '11223344556677889900', 'e10adc3949ba59abbe56e057f20f883e', '15963696659', '22e6a32275377741ecbf2f471497f733', '2', '是的qaq', '99', '1612081079', '1612081079', '1');
INSERT INTO `api_user` VALUES ('1363', '.,123456789521525545', '17145dce77306e233e5fae21ac6ba2d4', '', '', '2', '权威奇偶的', '18', '1612080794', '1612080794', '1');
INSERT INTO `api_user` VALUES ('1364', 'dengdefang001', 'a8f5f167f44f4964e6c998dee827110c', '15837453144', '22e98f85c3bd89a88065074ce9f83f88', '1', '饿呢阿萨德德', '88', '1612080839', '1612080839', '1');
INSERT INTO `api_user` VALUES ('1366', 'doudou', '827ccb0eea8a706c4c34a16891f84e7b', '15609210921', '3f1d40f6e944a8622a919f4a0c7bd9b8', '1', 'yangliu', '20', '1612081167', '1612081167', '1');
INSERT INTO `api_user` VALUES ('1367', 'r3hj4g5jd654', 'e10adc3949ba59abbe56e057f20f883e', '12443635990', 'bba0dfa5f389bcef3f9380945a3a9a03', '1', '34jmm78', '22', '1612081047', '1612081047', '1');
INSERT INTO `api_user` VALUES ('1368', 's44335sad', 'e10adc3949ba59abbe56e057f20f883e', '10159075672', '', '1', '无限df4&5*&', '22', '1612080972', '1612080972', '1');
INSERT INTO `api_user` VALUES ('1369', 'zmy', '3d2172418ce305c7d16d4b05597c6a59', '', '', '2', '权威奇偶的', '18', '1612080982', '1612080982', '1');
INSERT INTO `api_user` VALUES ('1370', 'abc123', 'e10adc3949ba59abbe56e057f20f883e', '', '627aeb9c91795c81015e72712b42fd0b', '1', '123456', '18', '1612082135', '1612082135', '1');
INSERT INTO `api_user` VALUES ('1371', '11', 'b0baee9d279d34fa1dfd71aadb908c3f', '', '', '2', '权威奇偶的', '18', '1612081177', '1612081177', '1');
INSERT INTO `api_user` VALUES ('1372', '1234hh', '4100c4d44da9177247e44a5fc1546778', '18888888010', '130e4439fdd9584496cfddc5227ed586', '1', 'fghgffghf', '120', '1612082180', '1612082180', '1');
INSERT INTO `api_user` VALUES ('1373', 'sks753357', 'c0b29b04fb37459cb0b6c6b763b4ec45', '13271742550', '59114e6f10bca8a67a951eec4b84e44f', '1', 'dijia', '20', '1612082085', '1612082085', '1');
INSERT INTO `api_user` VALUES ('1374', '11223365455667788900', 'e10adc3949ba59abbe56e057f20f883e', '15963896659', '3ec9f2adb5dcedd59458d7dd4264a11a', '2', '是的qaq', '99', '1612081457', '1612081457', '1');
INSERT INTO `api_user` VALUES ('1375', '.,123456789521525545', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2', '权威奇偶的', '18', '1612081310', '1612081310', '1');
INSERT INTO `api_user` VALUES ('1376', 'zmy123', 'e10adc3949ba59abbe56e057f20f883e', '17234620151', '2bc0bfc98c609d221ca4da091a7cf3e2', '2', '权威奇偶的', '18', '1612081382', '1612081382', '1');
INSERT INTO `api_user` VALUES ('1377', '1231q', 'e10adc3949ba59abbe56e057f20f883e', '15239379925', '', '1', 's232ds', '23', '1612081413', '1612081413', '1');
INSERT INTO `api_user` VALUES ('1378', 'wuxian18', 'e10adc3949ba59abbe56e057f20f883e', '17788888826', 'b1c2056ca0f1fb3dbe993d340935beef', '2', '12345678901234567890', '20', '1612081758', '1612081758', '1');
INSERT INTO `api_user` VALUES ('1379', 'dsadaw12', 'd3b47facac9ae3f2ddf56f8ba51342b2', '18535256545', 'f76be1f4271c009457a01911fc6d252f', '1', 'aeads23', '23', '1612081659', '1612081659', '1');
INSERT INTO `api_user` VALUES ('1380', 'xiongba666', 'bbc052cfcb657e2cc110e038345c9b1c', '15678946523', '563deb9635ef2f7b8505f198411235b7', '1', 's232ds', '23', '1612081520', '1612081520', '1');
INSERT INTO `api_user` VALUES ('1381', 'puls106', '1ef18d9e7cb30b4504fbedd467d54c3d', '10086111111', '1157d97b9b01f08105e9abdfadf8e8be', '1', '伊拉克阿富汗', '20', '1612084860', '1612084860', '1');
INSERT INTO `api_user` VALUES ('1382', '4teacher', 'e10adc3949ba59abbe56e057f20f883e', '15222222223', '', '1', 'sdksd@#@##@', '0', '1612081449', '1612081449', '1');
INSERT INTO `api_user` VALUES ('1383', 'teagikygyher', 'e10adc3949ba59abbe56e057f20f883e', '12262262221', 'cfcc8090aeb3675f34c5845ed3d6dd5a', '1', 's232ds', '28', '1612081499', '1612081499', '1');
INSERT INTO `api_user` VALUES ('1384', 'hbxlll', '88736223befd1625cfbff2486dc0831c', '17837205209', '9978353869229198cfb2fcd03bf2e501', '1', '挖的娃娃的', '23', '1612081585', '1612081585', '1');
INSERT INTO `api_user` VALUES ('1385', '012353', '827ccb0eea8a706c4c34a16891f84e7b', '15106562258', 'e81c41b1c2fbcb2018f19e045a9686e6', '2', '123476', '120', '1612081594', '1612081594', '1');
INSERT INTO `api_user` VALUES ('1386', '11159', 'e10adc3949ba59abbe56e057f20f883e', '15239376771', '6ee612ec1dcd397b29915944141c27c1', '1', 'oooooo', '23', '1612081655', '1612081655', '1');
INSERT INTO `api_user` VALUES ('1387', 'aabbccc', '0a0a71600a4eb60d1ecb002779b3ca3f', '17630515688', '9a7762eeba9202ab63ee7d658217d957', '1', '112233', '255', '1612081558', '1612081558', '1');
INSERT INTO `api_user` VALUES ('1388', 'r3hj45jd654', 'bf8d28f034e2e708b59b63a418471c99', '12443695990', '', '1', '34jmm78', '22', '1612081521', '1612081521', '1');
INSERT INTO `api_user` VALUES ('1389', '20010711', 'bf8d28f034e2e708b59b63a418471c99', '12443645990', 'd8780428efabb073e99e34a65af48f5e', '1', '34jmm78', '22', '1612084856', '1612084856', '1');
INSERT INTO `api_user` VALUES ('1390', 'dengdefang002', 'a8f5f167f44f4964e6c998dee827110c', '15837433144', '694824604b14a161184942dee8d2ef4c', '1', '饿呢阿萨德德', '88', '1612081668', '1612081668', '1');
INSERT INTO `api_user` VALUES ('1391', 'abc123', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '123456', '18', '1612081785', '1612081785', '1');
INSERT INTO `api_user` VALUES ('1392', 'dasdas1', 'a3dcb4d229de6fde0db5686dee47145d', '15936459878', 'cfa0ea7fbeefafc25af338c6bd4df51e', '1', 's232ds', '23', '1612082000', '1612082000', '1');
INSERT INTO `api_user` VALUES ('1393', '112233', 'd0970714757783e6cf17b26fb8e2298f', '12345645622', 'bbec760b1aa006cc8bca7f81c2470bac', '2', '是的qaq', '99', '1612081947', '1612081947', '1');
INSERT INTO `api_user` VALUES ('1394', 'dengdefang003', 'a8f5f167f44f4964e6c998dee827110c', '15837433744', '', '1', '饿呢阿萨德德', '88', '1612082004', '1612082004', '1');
INSERT INTO `api_user` VALUES ('1395', 'teachefvvgr', 'e10adc3949ba59abbe56e057f20f883e', '12632222221', '96524af447ff21eb1ec2055e7a7f9118', '1', 's232ds', '28', '1612082037', '1612082037', '1');
INSERT INTO `api_user` VALUES ('1396', 'lv0329', 'e10adc3949ba59abbe56e057f20f883e', '18898765432', '5515a28fba8528341f3627f11d407629', '1', '无限222', '22', '1612082061', '1612082061', '1');
INSERT INTO `api_user` VALUES ('1397', 'bujingyun', 'e10adc3949ba59abbe56e057f20f883e', '18622222221', '9adb8a82feed6d5ab41bdf6445a9d394', '1', 's232ds', '23', '1612082357', '1612082357', '1');
INSERT INTO `api_user` VALUES ('1398', '456910', '827ccb0eea8a706c4c34a16891f84e7b', '15966666666', '', '1', '12345', '0', '1612082122', '1612082122', '1');
INSERT INTO `api_user` VALUES ('1399', '777665', 'a16595cdb8c4154edbf28e7df5e52362', '15896748558', '68761df35ac8a7b802178cc533b45f11', '1', 'sssss', '23', '1612082354', '1612082354', '1');
INSERT INTO `api_user` VALUES ('1400', 'tea222cher', 'e10adc3949ba59abbe56e057f20f883e', '12222222921', '', '1', 's232ds', '23', '1612082165', '1612082165', '1');
INSERT INTO `api_user` VALUES ('1401', 'teacwerther', 'e10adc3949ba59abbe56e057f20f883e', '12229638221', '', '1', 's232ds', '28', '1612082184', '1612082184', '1');
INSERT INTO `api_user` VALUES ('1402', 'teacvvcher', 'e10adc3949ba59abbe56e057f20f883e', '12278922221', '', '1', 's232ds', '28', '1612082194', '1612082194', '1');
INSERT INTO `api_user` VALUES ('1403', '231das1', 'a3dcb4d229de6fde0db5686dee47145d', '15933219878', '10b19e86c98a3ce7143b9dd3dfc8b7e9', '1', '叙利亚打工仔', '23', '1612082217', '1612082217', '1');
INSERT INTO `api_user` VALUES ('1404', 'teacher000', 'e10adc3949ba59abbe56e057f20f883e', '12212221121', '', '1', 's232ds', '23', '1612082228', '1612082228', '1');
INSERT INTO `api_user` VALUES ('1405', 'syxzmy', 'e10adc3949ba59abbe56e057f20f883e', '15234620150', '818e74276a71a54fee57a73e3a5e990d', '2', '智梦怡真漂亮', '18', '1612082308', '1612082308', '1');
INSERT INTO `api_user` VALUES ('1406', '456920', '827ccb0eea8a706c4c34a16891f84e7b', '15966666600', '', '1', '12345', '0', '1612082319', '1612082319', '1');
INSERT INTO `api_user` VALUES ('1407', 'yingdihui', 'e10adc3949ba59abbe56e057f20f883e', '12222225921', '0d646c12051a7e82b51143dc8ff87ec9', '1', 's232ds', '23', '1612082433', '1612082433', '1');
INSERT INTO `api_user` VALUES ('1408', 'dsSDA231', 'a3dcb4d229de6fde0db5686dee47145d', '15933223978', 'a667f8e795663742252918496e59f7f0', '1', 'asdasdasd', '23', '1612082393', '1612082393', '1');
INSERT INTO `api_user` VALUES ('1409', '456955', '827ccb0eea8a706c4c34a16891f84e7b', '15966666677', '', '1', '12345', '0', '1612082426', '1612082426', '1');
INSERT INTO `api_user` VALUES ('1410', 'jiaoyu', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '123121121212121213123', '1', '1612082434', '1612082434', '1');
INSERT INTO `api_user` VALUES ('1411', '123ql', '4100c4d44da9177247e44a5fc1546778', '18888888612', '9656cbd92711063545e3fb42c1f1041f', '1', '01230', '120', '1612082498', '1612082498', '1');
INSERT INTO `api_user` VALUES ('1412', 'teachzvber', 'e10adc3949ba59abbe56e057f20f883e', '15093494956', 'a1271b1e6cb8bc24d64659681f2eec3b', '1', 's232ds', '28', '1612082744', '1612082744', '1');
INSERT INTO `api_user` VALUES ('1413', 'teweacher', 'e10adc3949ba59abbe56e057f20f883e', '12221622221', '', '1', 's232ds', '28', '1612082601', '1612082601', '1');
INSERT INTO `api_user` VALUES ('1414', '666666', 'f379eaf3c831b04de153469d1bec345e', '', '56e824bfe29a5b5557f4a35b63b2a08b', '2', '权威奇偶的', '18', '1612082625', '1612082625', '1');
INSERT INTO `api_user` VALUES ('1415', 'hlhlkfeee', 'e11170b8cbd2d74102651cb967fa28e5', '18703686699', '775e939d730a74cc5c9979eec64c5c1e', '1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '189', '1612082721', '1612082721', '1');
INSERT INTO `api_user` VALUES ('1416', '584508047', 'e10adc3949ba59abbe56e057f20f883e', '15963696656', '1d28d594e23aa30e50d629dbc3731be5', '2', '薇恩qaq', '99', '1612082681', '1612082681', '1');
INSERT INTO `api_user` VALUES ('1417', 'tefvyhvghvachehjkiur', 'e10adc3949ba59abbe56e057f20f883e', '15222222221', '', '1', 's232ds', '28', '1612082696', '1612082696', '1');
INSERT INTO `api_user` VALUES ('1418', '453333', '827ccb0eea8a706c4c34a16891f84e7b', '15922666333', '', '1', '12345', '20', '1612082728', '1612082728', '1');
INSERT INTO `api_user` VALUES ('1419', 'jiaoyu1', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '123121121212121213123', '1', '1612082736', '1612082736', '1');
INSERT INTO `api_user` VALUES ('1420', '65210', 'e10adc3949ba59abbe56e057f20f883e', '17788888800', '9988834b10b5e78d0612b17e55977900', '2', '123456', '20', '1612082838', '1612082838', '1');
INSERT INTO `api_user` VALUES ('1421', 'xiaobailong', 'e10adc3949ba59abbe56e057f20f883e', '17622222221', '0543539cf08bc416bc830ebc994560c8', '1', 's232ds', '23', '1612083480', '1612083480', '1');
INSERT INTO `api_user` VALUES ('1424', 'teacherapi', 'e10adc3949ba59abbe56e057f20f883e', '13381922071', '3054d45bfffdfe74de1f94f00b5ef5cd', '1', '老师自动化测试，请勿删除', '18', '1612084649', '1612084649', '1');

-- ----------------------------
-- Table structure for `api_user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `api_user_copy`;
CREATE TABLE `api_user_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `token` char(32) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别0男 1女',
  `nickname` varchar(64) NOT NULL DEFAULT '' COMMENT '个性签名',
  `age` tinyint(4) unsigned DEFAULT '0' COMMENT '年龄',
  `create_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_user_copy
-- ----------------------------
INSERT INTO `api_user_copy` VALUES ('1', 'kona001', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', 'sddsdsdssdsd', '1', '宋江', '1', '1611569081', '1611569081', '1');
INSERT INTO `api_user_copy` VALUES ('9', 'kona003', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', '', '1', '宋江', '1', '1611971942', '1611971942', '1');
INSERT INTO `api_user_copy` VALUES ('10', 'kona0055', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', '', '1', '宋江', '1', '1611971949', '1611971949', '1');
INSERT INTO `api_user_copy` VALUES ('1223', 'tiantian', 'e10adc3949ba59abbe56e057f20f883e', '15963696699', '', '2', '哈哈哈哈哈', '1', '1612073126', '1612073126', '1');
INSERT INTO `api_user_copy` VALUES ('1224', '66666', 'e10adc3949ba59abbe56e057f20f883e', '15912696698', '', '2', '哈哈哈哈哈', '1', '1612073188', '1612073188', '1');
INSERT INTO `api_user_copy` VALUES ('1225', 'kobekobekobeno1', '18a9f76e9e5f5d1237a02a27a3246a1c', '15299999999', '', '1', '黑曼巴科比', '39', '1612073526', '1612073526', '1');
INSERT INTO `api_user_copy` VALUES ('1226', '龟苓膏', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '龟苓膏', '0', '1612073532', '1612073532', '1');
INSERT INTO `api_user_copy` VALUES ('1227', 'ooo123456', 'e10adc3949ba59abbe56e057f20f883e', '15239379958', '', '2', '55555', '255', '1612073572', '1612073572', '1');

-- ----------------------------
-- Table structure for `pytest_man`
-- ----------------------------
DROP TABLE IF EXISTS `pytest_man`;
CREATE TABLE `pytest_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pytest_man
-- ----------------------------
INSERT INTO `pytest_man` VALUES ('40', 'user40', '40');
INSERT INTO `pytest_man` VALUES ('41', 'user41', '41');
INSERT INTO `pytest_man` VALUES ('42', 'user42', '42');
