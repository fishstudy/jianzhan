/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.252
Source Server Version : 50564
Source Host           : 192.168.1.252:3306
Source Database       : apiautotest

Target Server Type    : MYSQL
Target Server Version : 50564
File Encoding         : 65001

Date: 2021-01-25 21:51:36
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
) ENGINE=MyISAM AUTO_INCREMENT=820007 DEFAULT CHARSET=utf8 COMMENT='地址联动表';

-- ----------------------------
-- Records of api_area
-- ----------------------------
INSERT INTO `api_area` VALUES ('820003', '商水', '100', '10');
INSERT INTO `api_area` VALUES ('820002', '项城2', '100', '10');
INSERT INTO `api_area` VALUES ('820004', '扶沟', '100', '10');
INSERT INTO `api_area` VALUES ('820005', '上蔡', '100', '10');
INSERT INTO `api_area` VALUES ('820006', '濮阳', '100', '10');

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
  `phone` char(11) NOT NULL DEFAULT '',
  `token` char(32) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别0男 1女',
  `nickname` varchar(64) NOT NULL DEFAULT '' COMMENT '个性签名',
  `create_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_user
-- ----------------------------
INSERT INTO `api_user` VALUES ('1', 'kona001', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', 'sddsdsdssdsd', '1', '宋江', '1611569081', '1611569081', '1');
INSERT INTO `api_user` VALUES ('2', 'kona002', 'e10adc3949ba59abbe56e057f20f883e', '13856783322', '5659bf6fe6c72f2f4c2c2ea0eaf6ad02', '1', '宋江', '1611569449', '1611569449', '1');

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
