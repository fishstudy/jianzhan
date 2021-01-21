/*
Navicat MySQL Data Transfer

Source Server         : autotest
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : jianzhan

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-16 22:24:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hm_ad`
-- ----------------------------
DROP TABLE IF EXISTS `hm_ad`;
CREATE TABLE `hm_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(225) DEFAULT '' COMMENT '标志',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(225) NOT NULL DEFAULT '' COMMENT '链接',
  `meta_title` varchar(225) NOT NULL DEFAULT '',
  `place` varchar(225) NOT NULL DEFAULT '' COMMENT '位置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告图片',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of hm_ad
-- ----------------------------
INSERT INTO `hm_ad` VALUES ('1', '', '广告·1', 'article/detail?id=115', '', '1', '0', '0', '1', '181', '0');
INSERT INTO `hm_ad` VALUES ('2', '', '首页公告2', 'http://yershop.com', '', '2', '0', '0', '1', '189', '0');

-- ----------------------------
-- Table structure for `hm_area`
-- ----------------------------
DROP TABLE IF EXISTS `hm_area`;
CREATE TABLE `hm_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(225) DEFAULT NULL,
  `pid` int(6) NOT NULL DEFAULT '0',
  `weight` tinyint(4) unsigned DEFAULT '0' COMMENT '排序： 数字越大，排在越前面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=820001 DEFAULT CHARSET=utf8 COMMENT='地址联动表';

-- ----------------------------
-- Records of hm_area
-- ----------------------------
INSERT INTO `hm_area` VALUES ('110101', '东城区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110102', '西城区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110103', '崇文区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110104', '宣武区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110105', '朝阳区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110106', '丰台区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110107', '石景山区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110108', '海淀区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110109', '门头沟区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110111', '房山区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110112', '通州区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110113', '顺义区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110114', '昌平区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110115', '大兴区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110116', '怀柔区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110117', '平谷区', '110000', '0');
INSERT INTO `hm_area` VALUES ('110228', '密云县', '110000', '0');
INSERT INTO `hm_area` VALUES ('110229', '延庆县', '110000', '0');
INSERT INTO `hm_area` VALUES ('120101', '和平区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120102', '河东区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120103', '河西区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120104', '南开区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120105', '河北区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120106', '红桥区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120107', '塘沽区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120108', '汉沽区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120109', '大港区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120110', '东丽区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120111', '西青区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120112', '津南区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120113', '北辰区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120114', '武清区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120115', '宝坻区', '120100', '0');
INSERT INTO `hm_area` VALUES ('120221', '宁河县', '120200', '0');
INSERT INTO `hm_area` VALUES ('120223', '静海县', '120200', '0');
INSERT INTO `hm_area` VALUES ('120225', '蓟　县', '120200', '0');
INSERT INTO `hm_area` VALUES ('130101', '市辖区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130102', '长安区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130103', '桥东区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130104', '桥西区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130105', '新华区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130107', '井陉矿区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130108', '裕华区', '130100', '0');
INSERT INTO `hm_area` VALUES ('130121', '井陉县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130123', '正定县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130124', '栾城县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130125', '行唐县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130126', '灵寿县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130127', '高邑县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130128', '深泽县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130129', '赞皇县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130130', '无极县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130131', '平山县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130132', '元氏县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130133', '赵　县', '130100', '0');
INSERT INTO `hm_area` VALUES ('130181', '辛集市', '130100', '0');
INSERT INTO `hm_area` VALUES ('130182', '藁城市', '130100', '0');
INSERT INTO `hm_area` VALUES ('130183', '晋州市', '130100', '0');
INSERT INTO `hm_area` VALUES ('130184', '新乐市', '130100', '0');
INSERT INTO `hm_area` VALUES ('130185', '鹿泉市', '130100', '0');
INSERT INTO `hm_area` VALUES ('130201', '市辖区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130202', '路南区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130203', '路北区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130204', '古冶区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130205', '开平区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130207', '丰南区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130208', '丰润区', '130200', '0');
INSERT INTO `hm_area` VALUES ('130223', '滦　县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130224', '滦南县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130225', '乐亭县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130227', '迁西县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130229', '玉田县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130230', '唐海县', '130200', '0');
INSERT INTO `hm_area` VALUES ('130281', '遵化市', '130200', '0');
INSERT INTO `hm_area` VALUES ('130283', '迁安市', '130200', '0');
INSERT INTO `hm_area` VALUES ('130301', '市辖区', '130300', '0');
INSERT INTO `hm_area` VALUES ('130302', '海港区', '130300', '0');
INSERT INTO `hm_area` VALUES ('130303', '山海关区', '130300', '0');
INSERT INTO `hm_area` VALUES ('130304', '北戴河区', '130300', '0');
INSERT INTO `hm_area` VALUES ('130321', '青龙满族自治县', '130300', '0');
INSERT INTO `hm_area` VALUES ('130322', '昌黎县', '130300', '0');
INSERT INTO `hm_area` VALUES ('130323', '抚宁县', '130300', '0');
INSERT INTO `hm_area` VALUES ('130324', '卢龙县', '130300', '0');
INSERT INTO `hm_area` VALUES ('130401', '市辖区', '130400', '0');
INSERT INTO `hm_area` VALUES ('130402', '邯山区', '130400', '0');
INSERT INTO `hm_area` VALUES ('130403', '丛台区', '130400', '0');
INSERT INTO `hm_area` VALUES ('130404', '复兴区', '130400', '0');
INSERT INTO `hm_area` VALUES ('130406', '峰峰矿区', '130400', '0');
INSERT INTO `hm_area` VALUES ('130421', '邯郸县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130423', '临漳县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130424', '成安县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130425', '大名县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130426', '涉　县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130427', '磁　县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130428', '肥乡县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130429', '永年县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130430', '邱　县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130431', '鸡泽县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130432', '广平县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130433', '馆陶县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130434', '魏　县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130435', '曲周县', '130400', '0');
INSERT INTO `hm_area` VALUES ('130481', '武安市', '130400', '0');
INSERT INTO `hm_area` VALUES ('130501', '市辖区', '130500', '0');
INSERT INTO `hm_area` VALUES ('130502', '桥东区', '130500', '0');
INSERT INTO `hm_area` VALUES ('130503', '桥西区', '130500', '0');
INSERT INTO `hm_area` VALUES ('130521', '邢台县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130522', '临城县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130523', '内丘县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130524', '柏乡县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130525', '隆尧县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130526', '任　县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130527', '南和县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130528', '宁晋县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130529', '巨鹿县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130530', '新河县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130531', '广宗县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130532', '平乡县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130533', '威　县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130534', '清河县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130535', '临西县', '130500', '0');
INSERT INTO `hm_area` VALUES ('130581', '南宫市', '130500', '0');
INSERT INTO `hm_area` VALUES ('130582', '沙河市', '130500', '0');
INSERT INTO `hm_area` VALUES ('130601', '市辖区', '130600', '0');
INSERT INTO `hm_area` VALUES ('130602', '新市区', '130600', '0');
INSERT INTO `hm_area` VALUES ('130603', '北市区', '130600', '0');
INSERT INTO `hm_area` VALUES ('130604', '南市区', '130600', '0');
INSERT INTO `hm_area` VALUES ('130621', '满城县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130622', '清苑县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130623', '涞水县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130624', '阜平县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130625', '徐水县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130626', '定兴县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130627', '唐　县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130628', '高阳县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130629', '容城县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130630', '涞源县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130631', '望都县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130632', '安新县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130633', '易　县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130634', '曲阳县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130635', '蠡　县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130636', '顺平县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130637', '博野县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130638', '雄　县', '130600', '0');
INSERT INTO `hm_area` VALUES ('130681', '涿州市', '130600', '0');
INSERT INTO `hm_area` VALUES ('130682', '定州市', '130600', '0');
INSERT INTO `hm_area` VALUES ('130683', '安国市', '130600', '0');
INSERT INTO `hm_area` VALUES ('130684', '高碑店市', '130600', '0');
INSERT INTO `hm_area` VALUES ('130701', '市辖区', '130700', '0');
INSERT INTO `hm_area` VALUES ('130702', '桥东区', '130700', '0');
INSERT INTO `hm_area` VALUES ('130703', '桥西区', '130700', '0');
INSERT INTO `hm_area` VALUES ('130705', '宣化区', '130700', '0');
INSERT INTO `hm_area` VALUES ('130706', '下花园区', '130700', '0');
INSERT INTO `hm_area` VALUES ('130721', '宣化县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130722', '张北县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130723', '康保县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130724', '沽源县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130725', '尚义县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130726', '蔚　县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130727', '阳原县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130728', '怀安县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130729', '万全县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130730', '怀来县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130731', '涿鹿县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130732', '赤城县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130733', '崇礼县', '130700', '0');
INSERT INTO `hm_area` VALUES ('130801', '市辖区', '130800', '0');
INSERT INTO `hm_area` VALUES ('130802', '双桥区', '130800', '0');
INSERT INTO `hm_area` VALUES ('130803', '双滦区', '130800', '0');
INSERT INTO `hm_area` VALUES ('130804', '鹰手营子矿区', '130800', '0');
INSERT INTO `hm_area` VALUES ('130821', '承德县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130822', '兴隆县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130823', '平泉县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130824', '滦平县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130825', '隆化县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130826', '丰宁满族自治县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130827', '宽城满族自治县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130828', '围场满族蒙古族自治县', '130800', '0');
INSERT INTO `hm_area` VALUES ('130901', '市辖区', '130900', '0');
INSERT INTO `hm_area` VALUES ('130902', '新华区', '130900', '0');
INSERT INTO `hm_area` VALUES ('130903', '运河区', '130900', '0');
INSERT INTO `hm_area` VALUES ('130921', '沧　县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130922', '青　县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130923', '东光县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130924', '海兴县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130925', '盐山县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130926', '肃宁县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130927', '南皮县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130928', '吴桥县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130929', '献　县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130930', '孟村回族自治县', '130900', '0');
INSERT INTO `hm_area` VALUES ('130981', '泊头市', '130900', '0');
INSERT INTO `hm_area` VALUES ('130982', '任丘市', '130900', '0');
INSERT INTO `hm_area` VALUES ('130983', '黄骅市', '130900', '0');
INSERT INTO `hm_area` VALUES ('130984', '河间市', '130900', '0');
INSERT INTO `hm_area` VALUES ('131001', '市辖区', '131000', '0');
INSERT INTO `hm_area` VALUES ('131002', '安次区', '131000', '0');
INSERT INTO `hm_area` VALUES ('131003', '广阳区', '131000', '0');
INSERT INTO `hm_area` VALUES ('131022', '固安县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131023', '永清县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131024', '香河县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131025', '大城县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131026', '文安县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131028', '大厂回族自治县', '131000', '0');
INSERT INTO `hm_area` VALUES ('131081', '霸州市', '131000', '0');
INSERT INTO `hm_area` VALUES ('131082', '三河市', '131000', '0');
INSERT INTO `hm_area` VALUES ('131101', '市辖区', '131100', '0');
INSERT INTO `hm_area` VALUES ('131102', '桃城区', '131100', '0');
INSERT INTO `hm_area` VALUES ('131121', '枣强县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131122', '武邑县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131123', '武强县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131124', '饶阳县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131125', '安平县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131126', '故城县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131127', '景　县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131128', '阜城县', '131100', '0');
INSERT INTO `hm_area` VALUES ('131181', '冀州市', '131100', '0');
INSERT INTO `hm_area` VALUES ('131182', '深州市', '131100', '0');
INSERT INTO `hm_area` VALUES ('140101', '市辖区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140105', '小店区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140106', '迎泽区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140107', '杏花岭区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140108', '尖草坪区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140109', '万柏林区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140110', '晋源区', '140100', '0');
INSERT INTO `hm_area` VALUES ('140121', '清徐县', '140100', '0');
INSERT INTO `hm_area` VALUES ('140122', '阳曲县', '140100', '0');
INSERT INTO `hm_area` VALUES ('140123', '娄烦县', '140100', '0');
INSERT INTO `hm_area` VALUES ('140181', '古交市', '140100', '0');
INSERT INTO `hm_area` VALUES ('140201', '市辖区', '140200', '0');
INSERT INTO `hm_area` VALUES ('140202', '城　区', '140200', '0');
INSERT INTO `hm_area` VALUES ('140203', '矿　区', '140200', '0');
INSERT INTO `hm_area` VALUES ('140211', '南郊区', '140200', '0');
INSERT INTO `hm_area` VALUES ('140212', '新荣区', '140200', '0');
INSERT INTO `hm_area` VALUES ('140221', '阳高县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140222', '天镇县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140223', '广灵县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140224', '灵丘县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140225', '浑源县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140226', '左云县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140227', '大同县', '140200', '0');
INSERT INTO `hm_area` VALUES ('140301', '市辖区', '140300', '0');
INSERT INTO `hm_area` VALUES ('140302', '城　区', '140300', '0');
INSERT INTO `hm_area` VALUES ('140303', '矿　区', '140300', '0');
INSERT INTO `hm_area` VALUES ('140311', '郊　区', '140300', '0');
INSERT INTO `hm_area` VALUES ('140321', '平定县', '140300', '0');
INSERT INTO `hm_area` VALUES ('140322', '盂　县', '140300', '0');
INSERT INTO `hm_area` VALUES ('140401', '市辖区', '140400', '0');
INSERT INTO `hm_area` VALUES ('140402', '城　区', '140400', '0');
INSERT INTO `hm_area` VALUES ('140411', '郊　区', '140400', '0');
INSERT INTO `hm_area` VALUES ('140421', '长治县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140423', '襄垣县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140424', '屯留县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140425', '平顺县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140426', '黎城县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140427', '壶关县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140428', '长子县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140429', '武乡县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140430', '沁　县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140431', '沁源县', '140400', '0');
INSERT INTO `hm_area` VALUES ('140481', '潞城市', '140400', '0');
INSERT INTO `hm_area` VALUES ('140501', '市辖区', '140500', '0');
INSERT INTO `hm_area` VALUES ('140502', '城　区', '140500', '0');
INSERT INTO `hm_area` VALUES ('140521', '沁水县', '140500', '0');
INSERT INTO `hm_area` VALUES ('140522', '阳城县', '140500', '0');
INSERT INTO `hm_area` VALUES ('140524', '陵川县', '140500', '0');
INSERT INTO `hm_area` VALUES ('140525', '泽州县', '140500', '0');
INSERT INTO `hm_area` VALUES ('140581', '高平市', '140500', '0');
INSERT INTO `hm_area` VALUES ('140601', '市辖区', '140600', '0');
INSERT INTO `hm_area` VALUES ('140602', '朔城区', '140600', '0');
INSERT INTO `hm_area` VALUES ('140603', '平鲁区', '140600', '0');
INSERT INTO `hm_area` VALUES ('140621', '山阴县', '140600', '0');
INSERT INTO `hm_area` VALUES ('140622', '应　县', '140600', '0');
INSERT INTO `hm_area` VALUES ('140623', '右玉县', '140600', '0');
INSERT INTO `hm_area` VALUES ('140624', '怀仁县', '140600', '0');
INSERT INTO `hm_area` VALUES ('140701', '市辖区', '140700', '0');
INSERT INTO `hm_area` VALUES ('140702', '榆次区', '140700', '0');
INSERT INTO `hm_area` VALUES ('140721', '榆社县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140722', '左权县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140723', '和顺县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140724', '昔阳县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140725', '寿阳县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140726', '太谷县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140727', '祁　县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140728', '平遥县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140729', '灵石县', '140700', '0');
INSERT INTO `hm_area` VALUES ('140781', '介休市', '140700', '0');
INSERT INTO `hm_area` VALUES ('140801', '市辖区', '140800', '0');
INSERT INTO `hm_area` VALUES ('140802', '盐湖区', '140800', '0');
INSERT INTO `hm_area` VALUES ('140821', '临猗县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140822', '万荣县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140823', '闻喜县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140824', '稷山县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140825', '新绛县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140826', '绛　县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140827', '垣曲县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140828', '夏　县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140829', '平陆县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140830', '芮城县', '140800', '0');
INSERT INTO `hm_area` VALUES ('140881', '永济市', '140800', '0');
INSERT INTO `hm_area` VALUES ('140882', '河津市', '140800', '0');
INSERT INTO `hm_area` VALUES ('140901', '市辖区', '140900', '0');
INSERT INTO `hm_area` VALUES ('140902', '忻府区', '140900', '0');
INSERT INTO `hm_area` VALUES ('140921', '定襄县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140922', '五台县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140923', '代　县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140924', '繁峙县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140925', '宁武县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140926', '静乐县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140927', '神池县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140928', '五寨县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140929', '岢岚县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140930', '河曲县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140931', '保德县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140932', '偏关县', '140900', '0');
INSERT INTO `hm_area` VALUES ('140981', '原平市', '140900', '0');
INSERT INTO `hm_area` VALUES ('141001', '市辖区', '141000', '0');
INSERT INTO `hm_area` VALUES ('141002', '尧都区', '141000', '0');
INSERT INTO `hm_area` VALUES ('141021', '曲沃县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141022', '翼城县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141023', '襄汾县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141024', '洪洞县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141025', '古　县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141026', '安泽县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141027', '浮山县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141028', '吉　县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141029', '乡宁县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141030', '大宁县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141031', '隰　县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141032', '永和县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141033', '蒲　县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141034', '汾西县', '141000', '0');
INSERT INTO `hm_area` VALUES ('141081', '侯马市', '141000', '0');
INSERT INTO `hm_area` VALUES ('141082', '霍州市', '141000', '0');
INSERT INTO `hm_area` VALUES ('141101', '市辖区', '141100', '0');
INSERT INTO `hm_area` VALUES ('141102', '离石区', '141100', '0');
INSERT INTO `hm_area` VALUES ('141121', '文水县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141122', '交城县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141123', '兴　县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141124', '临　县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141125', '柳林县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141126', '石楼县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141127', '岚　县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141128', '方山县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141129', '中阳县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141130', '交口县', '141100', '0');
INSERT INTO `hm_area` VALUES ('141181', '孝义市', '141100', '0');
INSERT INTO `hm_area` VALUES ('141182', '汾阳市', '141100', '0');
INSERT INTO `hm_area` VALUES ('150101', '市辖区', '150100', '0');
INSERT INTO `hm_area` VALUES ('150102', '新城区', '150100', '0');
INSERT INTO `hm_area` VALUES ('150103', '回民区', '150100', '0');
INSERT INTO `hm_area` VALUES ('150104', '玉泉区', '150100', '0');
INSERT INTO `hm_area` VALUES ('150105', '赛罕区', '150100', '0');
INSERT INTO `hm_area` VALUES ('150121', '土默特左旗', '150100', '0');
INSERT INTO `hm_area` VALUES ('150122', '托克托县', '150100', '0');
INSERT INTO `hm_area` VALUES ('150123', '和林格尔县', '150100', '0');
INSERT INTO `hm_area` VALUES ('150124', '清水河县', '150100', '0');
INSERT INTO `hm_area` VALUES ('150125', '武川县', '150100', '0');
INSERT INTO `hm_area` VALUES ('150201', '市辖区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150202', '东河区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150203', '昆都仑区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150204', '青山区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150205', '石拐区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150206', '白云矿区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150207', '九原区', '150200', '0');
INSERT INTO `hm_area` VALUES ('150221', '土默特右旗', '150200', '0');
INSERT INTO `hm_area` VALUES ('150222', '固阳县', '150200', '0');
INSERT INTO `hm_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200', '0');
INSERT INTO `hm_area` VALUES ('150301', '市辖区', '150300', '0');
INSERT INTO `hm_area` VALUES ('150302', '海勃湾区', '150300', '0');
INSERT INTO `hm_area` VALUES ('150303', '海南区', '150300', '0');
INSERT INTO `hm_area` VALUES ('150304', '乌达区', '150300', '0');
INSERT INTO `hm_area` VALUES ('150401', '市辖区', '150400', '0');
INSERT INTO `hm_area` VALUES ('150402', '红山区', '150400', '0');
INSERT INTO `hm_area` VALUES ('150403', '元宝山区', '150400', '0');
INSERT INTO `hm_area` VALUES ('150404', '松山区', '150400', '0');
INSERT INTO `hm_area` VALUES ('150421', '阿鲁科尔沁旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150422', '巴林左旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150423', '巴林右旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150424', '林西县', '150400', '0');
INSERT INTO `hm_area` VALUES ('150425', '克什克腾旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150426', '翁牛特旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150428', '喀喇沁旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150429', '宁城县', '150400', '0');
INSERT INTO `hm_area` VALUES ('150430', '敖汉旗', '150400', '0');
INSERT INTO `hm_area` VALUES ('150501', '市辖区', '150500', '0');
INSERT INTO `hm_area` VALUES ('150502', '科尔沁区', '150500', '0');
INSERT INTO `hm_area` VALUES ('150521', '科尔沁左翼中旗', '150500', '0');
INSERT INTO `hm_area` VALUES ('150522', '科尔沁左翼后旗', '150500', '0');
INSERT INTO `hm_area` VALUES ('150523', '开鲁县', '150500', '0');
INSERT INTO `hm_area` VALUES ('150524', '库伦旗', '150500', '0');
INSERT INTO `hm_area` VALUES ('150525', '奈曼旗', '150500', '0');
INSERT INTO `hm_area` VALUES ('150526', '扎鲁特旗', '150500', '0');
INSERT INTO `hm_area` VALUES ('150581', '霍林郭勒市', '150500', '0');
INSERT INTO `hm_area` VALUES ('150602', '东胜区', '150600', '0');
INSERT INTO `hm_area` VALUES ('150621', '达拉特旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150622', '准格尔旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150623', '鄂托克前旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150624', '鄂托克旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150625', '杭锦旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150626', '乌审旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150627', '伊金霍洛旗', '150600', '0');
INSERT INTO `hm_area` VALUES ('150701', '市辖区', '150700', '0');
INSERT INTO `hm_area` VALUES ('150702', '海拉尔区', '150700', '0');
INSERT INTO `hm_area` VALUES ('150721', '阿荣旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150723', '鄂伦春自治旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150724', '鄂温克族自治旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150725', '陈巴尔虎旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150726', '新巴尔虎左旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150727', '新巴尔虎右旗', '150700', '0');
INSERT INTO `hm_area` VALUES ('150781', '满洲里市', '150700', '0');
INSERT INTO `hm_area` VALUES ('150782', '牙克石市', '150700', '0');
INSERT INTO `hm_area` VALUES ('150783', '扎兰屯市', '150700', '0');
INSERT INTO `hm_area` VALUES ('150784', '额尔古纳市', '150700', '0');
INSERT INTO `hm_area` VALUES ('150785', '根河市', '150700', '0');
INSERT INTO `hm_area` VALUES ('150801', '市辖区', '150800', '0');
INSERT INTO `hm_area` VALUES ('150802', '临河区', '150800', '0');
INSERT INTO `hm_area` VALUES ('150821', '五原县', '150800', '0');
INSERT INTO `hm_area` VALUES ('150822', '磴口县', '150800', '0');
INSERT INTO `hm_area` VALUES ('150823', '乌拉特前旗', '150800', '0');
INSERT INTO `hm_area` VALUES ('150824', '乌拉特中旗', '150800', '0');
INSERT INTO `hm_area` VALUES ('150825', '乌拉特后旗', '150800', '0');
INSERT INTO `hm_area` VALUES ('150826', '杭锦后旗', '150800', '0');
INSERT INTO `hm_area` VALUES ('150901', '市辖区', '150900', '0');
INSERT INTO `hm_area` VALUES ('150902', '集宁区', '150900', '0');
INSERT INTO `hm_area` VALUES ('150921', '卓资县', '150900', '0');
INSERT INTO `hm_area` VALUES ('150922', '化德县', '150900', '0');
INSERT INTO `hm_area` VALUES ('150923', '商都县', '150900', '0');
INSERT INTO `hm_area` VALUES ('150924', '兴和县', '150900', '0');
INSERT INTO `hm_area` VALUES ('150925', '凉城县', '150900', '0');
INSERT INTO `hm_area` VALUES ('150926', '察哈尔右翼前旗', '150900', '0');
INSERT INTO `hm_area` VALUES ('150927', '察哈尔右翼中旗', '150900', '0');
INSERT INTO `hm_area` VALUES ('150928', '察哈尔右翼后旗', '150900', '0');
INSERT INTO `hm_area` VALUES ('150929', '四子王旗', '150900', '0');
INSERT INTO `hm_area` VALUES ('150981', '丰镇市', '150900', '0');
INSERT INTO `hm_area` VALUES ('152201', '乌兰浩特市', '152200', '0');
INSERT INTO `hm_area` VALUES ('152202', '阿尔山市', '152200', '0');
INSERT INTO `hm_area` VALUES ('152221', '科尔沁右翼前旗', '152200', '0');
INSERT INTO `hm_area` VALUES ('152222', '科尔沁右翼中旗', '152200', '0');
INSERT INTO `hm_area` VALUES ('152223', '扎赉特旗', '152200', '0');
INSERT INTO `hm_area` VALUES ('152224', '突泉县', '152200', '0');
INSERT INTO `hm_area` VALUES ('152501', '二连浩特市', '152500', '0');
INSERT INTO `hm_area` VALUES ('152502', '锡林浩特市', '152500', '0');
INSERT INTO `hm_area` VALUES ('152522', '阿巴嘎旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152523', '苏尼特左旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152524', '苏尼特右旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152525', '东乌珠穆沁旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152526', '西乌珠穆沁旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152527', '太仆寺旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152528', '镶黄旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152529', '正镶白旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152530', '正蓝旗', '152500', '0');
INSERT INTO `hm_area` VALUES ('152531', '多伦县', '152500', '0');
INSERT INTO `hm_area` VALUES ('152921', '阿拉善左旗', '152900', '0');
INSERT INTO `hm_area` VALUES ('152922', '阿拉善右旗', '152900', '0');
INSERT INTO `hm_area` VALUES ('152923', '额济纳旗', '152900', '0');
INSERT INTO `hm_area` VALUES ('210101', '市辖区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210102', '和平区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210103', '沈河区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210104', '大东区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210105', '皇姑区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210106', '铁西区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210111', '苏家屯区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210112', '东陵区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210113', '新城子区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210114', '于洪区', '210100', '0');
INSERT INTO `hm_area` VALUES ('210122', '辽中县', '210100', '0');
INSERT INTO `hm_area` VALUES ('210123', '康平县', '210100', '0');
INSERT INTO `hm_area` VALUES ('210124', '法库县', '210100', '0');
INSERT INTO `hm_area` VALUES ('210181', '新民市', '210100', '0');
INSERT INTO `hm_area` VALUES ('210201', '市辖区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210202', '中山区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210203', '西岗区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210204', '沙河口区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210211', '甘井子区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210212', '旅顺口区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210213', '金州区', '210200', '0');
INSERT INTO `hm_area` VALUES ('210224', '长海县', '210200', '0');
INSERT INTO `hm_area` VALUES ('210281', '瓦房店市', '210200', '0');
INSERT INTO `hm_area` VALUES ('210282', '普兰店市', '210200', '0');
INSERT INTO `hm_area` VALUES ('210283', '庄河市', '210200', '0');
INSERT INTO `hm_area` VALUES ('210301', '市辖区', '210300', '0');
INSERT INTO `hm_area` VALUES ('210302', '铁东区', '210300', '0');
INSERT INTO `hm_area` VALUES ('210303', '铁西区', '210300', '0');
INSERT INTO `hm_area` VALUES ('210304', '立山区', '210300', '0');
INSERT INTO `hm_area` VALUES ('210311', '千山区', '210300', '0');
INSERT INTO `hm_area` VALUES ('210321', '台安县', '210300', '0');
INSERT INTO `hm_area` VALUES ('210323', '岫岩满族自治县', '210300', '0');
INSERT INTO `hm_area` VALUES ('210381', '海城市', '210300', '0');
INSERT INTO `hm_area` VALUES ('210401', '市辖区', '210400', '0');
INSERT INTO `hm_area` VALUES ('210402', '新抚区', '210400', '0');
INSERT INTO `hm_area` VALUES ('210403', '东洲区', '210400', '0');
INSERT INTO `hm_area` VALUES ('210404', '望花区', '210400', '0');
INSERT INTO `hm_area` VALUES ('210411', '顺城区', '210400', '0');
INSERT INTO `hm_area` VALUES ('210421', '抚顺县', '210400', '0');
INSERT INTO `hm_area` VALUES ('210422', '新宾满族自治县', '210400', '0');
INSERT INTO `hm_area` VALUES ('210423', '清原满族自治县', '210400', '0');
INSERT INTO `hm_area` VALUES ('210501', '市辖区', '210500', '0');
INSERT INTO `hm_area` VALUES ('210502', '平山区', '210500', '0');
INSERT INTO `hm_area` VALUES ('210503', '溪湖区', '210500', '0');
INSERT INTO `hm_area` VALUES ('210504', '明山区', '210500', '0');
INSERT INTO `hm_area` VALUES ('210505', '南芬区', '210500', '0');
INSERT INTO `hm_area` VALUES ('210521', '本溪满族自治县', '210500', '0');
INSERT INTO `hm_area` VALUES ('210522', '桓仁满族自治县', '210500', '0');
INSERT INTO `hm_area` VALUES ('210601', '市辖区', '210600', '0');
INSERT INTO `hm_area` VALUES ('210602', '元宝区', '210600', '0');
INSERT INTO `hm_area` VALUES ('210603', '振兴区', '210600', '0');
INSERT INTO `hm_area` VALUES ('210604', '振安区', '210600', '0');
INSERT INTO `hm_area` VALUES ('210624', '宽甸满族自治县', '210600', '0');
INSERT INTO `hm_area` VALUES ('210681', '东港市', '210600', '0');
INSERT INTO `hm_area` VALUES ('210682', '凤城市', '210600', '0');
INSERT INTO `hm_area` VALUES ('210701', '市辖区', '210700', '0');
INSERT INTO `hm_area` VALUES ('210702', '古塔区', '210700', '0');
INSERT INTO `hm_area` VALUES ('210703', '凌河区', '210700', '0');
INSERT INTO `hm_area` VALUES ('210711', '太和区', '210700', '0');
INSERT INTO `hm_area` VALUES ('210726', '黑山县', '210700', '0');
INSERT INTO `hm_area` VALUES ('210727', '义　县', '210700', '0');
INSERT INTO `hm_area` VALUES ('210781', '凌海市', '210700', '0');
INSERT INTO `hm_area` VALUES ('210782', '北宁市', '210700', '0');
INSERT INTO `hm_area` VALUES ('210801', '市辖区', '210800', '0');
INSERT INTO `hm_area` VALUES ('210802', '站前区', '210800', '0');
INSERT INTO `hm_area` VALUES ('210803', '西市区', '210800', '0');
INSERT INTO `hm_area` VALUES ('210804', '鲅鱼圈区', '210800', '0');
INSERT INTO `hm_area` VALUES ('210811', '老边区', '210800', '0');
INSERT INTO `hm_area` VALUES ('210881', '盖州市', '210800', '0');
INSERT INTO `hm_area` VALUES ('210882', '大石桥市', '210800', '0');
INSERT INTO `hm_area` VALUES ('210901', '市辖区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210902', '海州区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210903', '新邱区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210904', '太平区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210905', '清河门区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210911', '细河区', '210900', '0');
INSERT INTO `hm_area` VALUES ('210921', '阜新蒙古族自治县', '210900', '0');
INSERT INTO `hm_area` VALUES ('210922', '彰武县', '210900', '0');
INSERT INTO `hm_area` VALUES ('211001', '市辖区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211002', '白塔区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211003', '文圣区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211004', '宏伟区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211005', '弓长岭区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211011', '太子河区', '211000', '0');
INSERT INTO `hm_area` VALUES ('211021', '辽阳县', '211000', '0');
INSERT INTO `hm_area` VALUES ('211081', '灯塔市', '211000', '0');
INSERT INTO `hm_area` VALUES ('211101', '市辖区', '211100', '0');
INSERT INTO `hm_area` VALUES ('211102', '双台子区', '211100', '0');
INSERT INTO `hm_area` VALUES ('211103', '兴隆台区', '211100', '0');
INSERT INTO `hm_area` VALUES ('211121', '大洼县', '211100', '0');
INSERT INTO `hm_area` VALUES ('211122', '盘山县', '211100', '0');
INSERT INTO `hm_area` VALUES ('211201', '市辖区', '211200', '0');
INSERT INTO `hm_area` VALUES ('211202', '银州区', '211200', '0');
INSERT INTO `hm_area` VALUES ('211204', '清河区', '211200', '0');
INSERT INTO `hm_area` VALUES ('211221', '铁岭县', '211200', '0');
INSERT INTO `hm_area` VALUES ('211223', '西丰县', '211200', '0');
INSERT INTO `hm_area` VALUES ('211224', '昌图县', '211200', '0');
INSERT INTO `hm_area` VALUES ('211281', '调兵山市', '211200', '0');
INSERT INTO `hm_area` VALUES ('211282', '开原市', '211200', '0');
INSERT INTO `hm_area` VALUES ('211301', '市辖区', '211300', '0');
INSERT INTO `hm_area` VALUES ('211302', '双塔区', '211300', '0');
INSERT INTO `hm_area` VALUES ('211303', '龙城区', '211300', '0');
INSERT INTO `hm_area` VALUES ('211321', '朝阳县', '211300', '0');
INSERT INTO `hm_area` VALUES ('211322', '建平县', '211300', '0');
INSERT INTO `hm_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300', '0');
INSERT INTO `hm_area` VALUES ('211381', '北票市', '211300', '0');
INSERT INTO `hm_area` VALUES ('211382', '凌源市', '211300', '0');
INSERT INTO `hm_area` VALUES ('211401', '市辖区', '211400', '0');
INSERT INTO `hm_area` VALUES ('211402', '连山区', '211400', '0');
INSERT INTO `hm_area` VALUES ('211403', '龙港区', '211400', '0');
INSERT INTO `hm_area` VALUES ('211404', '南票区', '211400', '0');
INSERT INTO `hm_area` VALUES ('211421', '绥中县', '211400', '0');
INSERT INTO `hm_area` VALUES ('211422', '建昌县', '211400', '0');
INSERT INTO `hm_area` VALUES ('211481', '兴城市', '211400', '0');
INSERT INTO `hm_area` VALUES ('220101', '市辖区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220102', '南关区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220103', '宽城区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220104', '朝阳区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220105', '二道区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220106', '绿园区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220112', '双阳区', '220100', '0');
INSERT INTO `hm_area` VALUES ('220122', '农安县', '220100', '0');
INSERT INTO `hm_area` VALUES ('220181', '九台市', '220100', '0');
INSERT INTO `hm_area` VALUES ('220182', '榆树市', '220100', '0');
INSERT INTO `hm_area` VALUES ('220183', '德惠市', '220100', '0');
INSERT INTO `hm_area` VALUES ('220201', '市辖区', '220200', '0');
INSERT INTO `hm_area` VALUES ('220202', '昌邑区', '220200', '0');
INSERT INTO `hm_area` VALUES ('220203', '龙潭区', '220200', '0');
INSERT INTO `hm_area` VALUES ('220204', '船营区', '220200', '0');
INSERT INTO `hm_area` VALUES ('220211', '丰满区', '220200', '0');
INSERT INTO `hm_area` VALUES ('220221', '永吉县', '220200', '0');
INSERT INTO `hm_area` VALUES ('220281', '蛟河市', '220200', '0');
INSERT INTO `hm_area` VALUES ('220282', '桦甸市', '220200', '0');
INSERT INTO `hm_area` VALUES ('220283', '舒兰市', '220200', '0');
INSERT INTO `hm_area` VALUES ('220284', '磐石市', '220200', '0');
INSERT INTO `hm_area` VALUES ('220301', '市辖区', '220300', '0');
INSERT INTO `hm_area` VALUES ('220302', '铁西区', '220300', '0');
INSERT INTO `hm_area` VALUES ('220303', '铁东区', '220300', '0');
INSERT INTO `hm_area` VALUES ('220322', '梨树县', '220300', '0');
INSERT INTO `hm_area` VALUES ('220323', '伊通满族自治县', '220300', '0');
INSERT INTO `hm_area` VALUES ('220381', '公主岭市', '220300', '0');
INSERT INTO `hm_area` VALUES ('220382', '双辽市', '220300', '0');
INSERT INTO `hm_area` VALUES ('220401', '市辖区', '220400', '0');
INSERT INTO `hm_area` VALUES ('220402', '龙山区', '220400', '0');
INSERT INTO `hm_area` VALUES ('220403', '西安区', '220400', '0');
INSERT INTO `hm_area` VALUES ('220421', '东丰县', '220400', '0');
INSERT INTO `hm_area` VALUES ('220422', '东辽县', '220400', '0');
INSERT INTO `hm_area` VALUES ('220501', '市辖区', '220500', '0');
INSERT INTO `hm_area` VALUES ('220502', '东昌区', '220500', '0');
INSERT INTO `hm_area` VALUES ('220503', '二道江区', '220500', '0');
INSERT INTO `hm_area` VALUES ('220521', '通化县', '220500', '0');
INSERT INTO `hm_area` VALUES ('220523', '辉南县', '220500', '0');
INSERT INTO `hm_area` VALUES ('220524', '柳河县', '220500', '0');
INSERT INTO `hm_area` VALUES ('220581', '梅河口市', '220500', '0');
INSERT INTO `hm_area` VALUES ('220582', '集安市', '220500', '0');
INSERT INTO `hm_area` VALUES ('220601', '市辖区', '220600', '0');
INSERT INTO `hm_area` VALUES ('220602', '八道江区', '220600', '0');
INSERT INTO `hm_area` VALUES ('220621', '抚松县', '220600', '0');
INSERT INTO `hm_area` VALUES ('220622', '靖宇县', '220600', '0');
INSERT INTO `hm_area` VALUES ('220623', '长白朝鲜族自治县', '220600', '0');
INSERT INTO `hm_area` VALUES ('220625', '江源县', '220600', '0');
INSERT INTO `hm_area` VALUES ('220681', '临江市', '220600', '0');
INSERT INTO `hm_area` VALUES ('220701', '市辖区', '220700', '0');
INSERT INTO `hm_area` VALUES ('220702', '宁江区', '220700', '0');
INSERT INTO `hm_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700', '0');
INSERT INTO `hm_area` VALUES ('220722', '长岭县', '220700', '0');
INSERT INTO `hm_area` VALUES ('220723', '乾安县', '220700', '0');
INSERT INTO `hm_area` VALUES ('220724', '扶余县', '220700', '0');
INSERT INTO `hm_area` VALUES ('220801', '市辖区', '220800', '0');
INSERT INTO `hm_area` VALUES ('220802', '洮北区', '220800', '0');
INSERT INTO `hm_area` VALUES ('220821', '镇赉县', '220800', '0');
INSERT INTO `hm_area` VALUES ('220822', '通榆县', '220800', '0');
INSERT INTO `hm_area` VALUES ('220881', '洮南市', '220800', '0');
INSERT INTO `hm_area` VALUES ('220882', '大安市', '220800', '0');
INSERT INTO `hm_area` VALUES ('222401', '延吉市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222402', '图们市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222403', '敦化市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222404', '珲春市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222405', '龙井市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222406', '和龙市', '222400', '0');
INSERT INTO `hm_area` VALUES ('222424', '汪清县', '222400', '0');
INSERT INTO `hm_area` VALUES ('222426', '安图县', '222400', '0');
INSERT INTO `hm_area` VALUES ('230101', '市辖区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230102', '道里区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230103', '南岗区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230104', '道外区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230106', '香坊区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230107', '动力区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230108', '平房区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230109', '松北区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230111', '呼兰区', '230100', '0');
INSERT INTO `hm_area` VALUES ('230123', '依兰县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230124', '方正县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230125', '宾　县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230126', '巴彦县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230127', '木兰县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230128', '通河县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230129', '延寿县', '230100', '0');
INSERT INTO `hm_area` VALUES ('230181', '阿城市', '230100', '0');
INSERT INTO `hm_area` VALUES ('230182', '双城市', '230100', '0');
INSERT INTO `hm_area` VALUES ('230183', '尚志市', '230100', '0');
INSERT INTO `hm_area` VALUES ('230184', '五常市', '230100', '0');
INSERT INTO `hm_area` VALUES ('230201', '市辖区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230202', '龙沙区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230203', '建华区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230204', '铁锋区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230205', '昂昂溪区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230206', '富拉尔基区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230207', '碾子山区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230208', '梅里斯达斡尔族区', '230200', '0');
INSERT INTO `hm_area` VALUES ('230221', '龙江县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230223', '依安县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230224', '泰来县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230225', '甘南县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230227', '富裕县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230229', '克山县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230230', '克东县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230231', '拜泉县', '230200', '0');
INSERT INTO `hm_area` VALUES ('230281', '讷河市', '230200', '0');
INSERT INTO `hm_area` VALUES ('230301', '市辖区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230302', '鸡冠区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230303', '恒山区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230304', '滴道区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230305', '梨树区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230306', '城子河区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230307', '麻山区', '230300', '0');
INSERT INTO `hm_area` VALUES ('230321', '鸡东县', '230300', '0');
INSERT INTO `hm_area` VALUES ('230381', '虎林市', '230300', '0');
INSERT INTO `hm_area` VALUES ('230382', '密山市', '230300', '0');
INSERT INTO `hm_area` VALUES ('230401', '市辖区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230402', '向阳区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230403', '工农区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230404', '南山区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230405', '兴安区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230406', '东山区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230407', '兴山区', '230400', '0');
INSERT INTO `hm_area` VALUES ('230421', '萝北县', '230400', '0');
INSERT INTO `hm_area` VALUES ('230422', '绥滨县', '230400', '0');
INSERT INTO `hm_area` VALUES ('230501', '市辖区', '230500', '0');
INSERT INTO `hm_area` VALUES ('230502', '尖山区', '230500', '0');
INSERT INTO `hm_area` VALUES ('230503', '岭东区', '230500', '0');
INSERT INTO `hm_area` VALUES ('230505', '四方台区', '230500', '0');
INSERT INTO `hm_area` VALUES ('230506', '宝山区', '230500', '0');
INSERT INTO `hm_area` VALUES ('230521', '集贤县', '230500', '0');
INSERT INTO `hm_area` VALUES ('230522', '友谊县', '230500', '0');
INSERT INTO `hm_area` VALUES ('230523', '宝清县', '230500', '0');
INSERT INTO `hm_area` VALUES ('230524', '饶河县', '230500', '0');
INSERT INTO `hm_area` VALUES ('230601', '市辖区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230602', '萨尔图区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230603', '龙凤区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230604', '让胡路区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230605', '红岗区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230606', '大同区', '230600', '0');
INSERT INTO `hm_area` VALUES ('230621', '肇州县', '230600', '0');
INSERT INTO `hm_area` VALUES ('230622', '肇源县', '230600', '0');
INSERT INTO `hm_area` VALUES ('230623', '林甸县', '230600', '0');
INSERT INTO `hm_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600', '0');
INSERT INTO `hm_area` VALUES ('230701', '市辖区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230702', '伊春区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230703', '南岔区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230704', '友好区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230705', '西林区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230706', '翠峦区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230707', '新青区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230708', '美溪区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230709', '金山屯区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230710', '五营区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230711', '乌马河区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230712', '汤旺河区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230713', '带岭区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230714', '乌伊岭区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230715', '红星区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230716', '上甘岭区', '230700', '0');
INSERT INTO `hm_area` VALUES ('230722', '嘉荫县', '230700', '0');
INSERT INTO `hm_area` VALUES ('230781', '铁力市', '230700', '0');
INSERT INTO `hm_area` VALUES ('230801', '市辖区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230802', '永红区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230803', '向阳区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230804', '前进区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230805', '东风区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230811', '郊　区', '230800', '0');
INSERT INTO `hm_area` VALUES ('230822', '桦南县', '230800', '0');
INSERT INTO `hm_area` VALUES ('230826', '桦川县', '230800', '0');
INSERT INTO `hm_area` VALUES ('230828', '汤原县', '230800', '0');
INSERT INTO `hm_area` VALUES ('230833', '抚远县', '230800', '0');
INSERT INTO `hm_area` VALUES ('230881', '同江市', '230800', '0');
INSERT INTO `hm_area` VALUES ('230882', '富锦市', '230800', '0');
INSERT INTO `hm_area` VALUES ('230901', '市辖区', '230900', '0');
INSERT INTO `hm_area` VALUES ('230902', '新兴区', '230900', '0');
INSERT INTO `hm_area` VALUES ('230903', '桃山区', '230900', '0');
INSERT INTO `hm_area` VALUES ('230904', '茄子河区', '230900', '0');
INSERT INTO `hm_area` VALUES ('230921', '勃利县', '230900', '0');
INSERT INTO `hm_area` VALUES ('231001', '市辖区', '231000', '0');
INSERT INTO `hm_area` VALUES ('231002', '东安区', '231000', '0');
INSERT INTO `hm_area` VALUES ('231003', '阳明区', '231000', '0');
INSERT INTO `hm_area` VALUES ('231004', '爱民区', '231000', '0');
INSERT INTO `hm_area` VALUES ('231005', '西安区', '231000', '0');
INSERT INTO `hm_area` VALUES ('231024', '东宁县', '231000', '0');
INSERT INTO `hm_area` VALUES ('231025', '林口县', '231000', '0');
INSERT INTO `hm_area` VALUES ('231081', '绥芬河市', '231000', '0');
INSERT INTO `hm_area` VALUES ('231083', '海林市', '231000', '0');
INSERT INTO `hm_area` VALUES ('231084', '宁安市', '231000', '0');
INSERT INTO `hm_area` VALUES ('231085', '穆棱市', '231000', '0');
INSERT INTO `hm_area` VALUES ('231101', '市辖区', '231100', '0');
INSERT INTO `hm_area` VALUES ('231102', '爱辉区', '231100', '0');
INSERT INTO `hm_area` VALUES ('231121', '嫩江县', '231100', '0');
INSERT INTO `hm_area` VALUES ('231123', '逊克县', '231100', '0');
INSERT INTO `hm_area` VALUES ('231124', '孙吴县', '231100', '0');
INSERT INTO `hm_area` VALUES ('231181', '北安市', '231100', '0');
INSERT INTO `hm_area` VALUES ('231182', '五大连池市', '231100', '0');
INSERT INTO `hm_area` VALUES ('231201', '市辖区', '231200', '0');
INSERT INTO `hm_area` VALUES ('231202', '北林区', '231200', '0');
INSERT INTO `hm_area` VALUES ('231221', '望奎县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231222', '兰西县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231223', '青冈县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231224', '庆安县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231225', '明水县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231226', '绥棱县', '231200', '0');
INSERT INTO `hm_area` VALUES ('231281', '安达市', '231200', '0');
INSERT INTO `hm_area` VALUES ('231282', '肇东市', '231200', '0');
INSERT INTO `hm_area` VALUES ('231283', '海伦市', '231200', '0');
INSERT INTO `hm_area` VALUES ('232721', '呼玛县', '232700', '0');
INSERT INTO `hm_area` VALUES ('232722', '塔河县', '232700', '0');
INSERT INTO `hm_area` VALUES ('232723', '漠河县', '232700', '0');
INSERT INTO `hm_area` VALUES ('310101', '黄浦区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310103', '卢湾区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310104', '徐汇区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310105', '长宁区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310106', '静安区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310107', '普陀区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310108', '闸北区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310109', '虹口区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310110', '杨浦区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310112', '闵行区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310113', '宝山区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310114', '嘉定区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310115', '浦东新区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310116', '金山区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310117', '松江区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310118', '青浦区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310119', '南汇区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310120', '奉贤区', '310100', '0');
INSERT INTO `hm_area` VALUES ('310230', '崇明县', '310200', '0');
INSERT INTO `hm_area` VALUES ('320101', '市辖区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320102', '玄武区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320103', '白下区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320104', '秦淮区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320105', '建邺区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320106', '鼓楼区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320107', '下关区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320111', '浦口区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320113', '栖霞区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320114', '雨花台区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320115', '江宁区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320116', '六合区', '320100', '0');
INSERT INTO `hm_area` VALUES ('320124', '溧水县', '320100', '0');
INSERT INTO `hm_area` VALUES ('320125', '高淳县', '320100', '0');
INSERT INTO `hm_area` VALUES ('320201', '市辖区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320202', '崇安区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320203', '南长区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320204', '北塘区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320205', '锡山区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320206', '惠山区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320211', '滨湖区', '320200', '0');
INSERT INTO `hm_area` VALUES ('320281', '江阴市', '320200', '0');
INSERT INTO `hm_area` VALUES ('320282', '宜兴市', '320200', '0');
INSERT INTO `hm_area` VALUES ('320301', '市辖区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320302', '鼓楼区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320303', '云龙区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320304', '九里区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320305', '贾汪区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320311', '泉山区', '320300', '0');
INSERT INTO `hm_area` VALUES ('320321', '丰　县', '320300', '0');
INSERT INTO `hm_area` VALUES ('320322', '沛　县', '320300', '0');
INSERT INTO `hm_area` VALUES ('320323', '铜山县', '320300', '0');
INSERT INTO `hm_area` VALUES ('320324', '睢宁县', '320300', '0');
INSERT INTO `hm_area` VALUES ('320381', '新沂市', '320300', '0');
INSERT INTO `hm_area` VALUES ('320382', '邳州市', '320300', '0');
INSERT INTO `hm_area` VALUES ('320401', '市辖区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320402', '天宁区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320404', '钟楼区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320405', '戚墅堰区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320411', '新北区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320412', '武进区', '320400', '0');
INSERT INTO `hm_area` VALUES ('320481', '溧阳市', '320400', '0');
INSERT INTO `hm_area` VALUES ('320482', '金坛市', '320400', '0');
INSERT INTO `hm_area` VALUES ('320501', '市辖区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320502', '沧浪区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320503', '平江区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320504', '金阊区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320505', '虎丘区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320506', '吴中区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320507', '相城区', '320500', '0');
INSERT INTO `hm_area` VALUES ('320581', '常熟市', '320500', '0');
INSERT INTO `hm_area` VALUES ('320582', '张家港市', '320500', '0');
INSERT INTO `hm_area` VALUES ('320583', '昆山市', '320500', '0');
INSERT INTO `hm_area` VALUES ('320584', '吴江市', '320500', '0');
INSERT INTO `hm_area` VALUES ('320585', '太仓市', '320500', '0');
INSERT INTO `hm_area` VALUES ('320601', '市辖区', '320600', '0');
INSERT INTO `hm_area` VALUES ('320602', '崇川区', '320600', '0');
INSERT INTO `hm_area` VALUES ('320611', '港闸区', '320600', '0');
INSERT INTO `hm_area` VALUES ('320621', '海安县', '320600', '0');
INSERT INTO `hm_area` VALUES ('320623', '如东县', '320600', '0');
INSERT INTO `hm_area` VALUES ('320681', '启东市', '320600', '0');
INSERT INTO `hm_area` VALUES ('320682', '如皋市', '320600', '0');
INSERT INTO `hm_area` VALUES ('320683', '通州市', '320600', '0');
INSERT INTO `hm_area` VALUES ('320684', '海门市', '320600', '0');
INSERT INTO `hm_area` VALUES ('320701', '市辖区', '320700', '0');
INSERT INTO `hm_area` VALUES ('320703', '连云区', '320700', '0');
INSERT INTO `hm_area` VALUES ('320705', '新浦区', '320700', '0');
INSERT INTO `hm_area` VALUES ('320706', '海州区', '320700', '0');
INSERT INTO `hm_area` VALUES ('320721', '赣榆县', '320700', '0');
INSERT INTO `hm_area` VALUES ('320722', '东海县', '320700', '0');
INSERT INTO `hm_area` VALUES ('320723', '灌云县', '320700', '0');
INSERT INTO `hm_area` VALUES ('320724', '灌南县', '320700', '0');
INSERT INTO `hm_area` VALUES ('320801', '市辖区', '320800', '0');
INSERT INTO `hm_area` VALUES ('320802', '清河区', '320800', '0');
INSERT INTO `hm_area` VALUES ('320803', '楚州区', '320800', '0');
INSERT INTO `hm_area` VALUES ('320804', '淮阴区', '320800', '0');
INSERT INTO `hm_area` VALUES ('320811', '清浦区', '320800', '0');
INSERT INTO `hm_area` VALUES ('320826', '涟水县', '320800', '0');
INSERT INTO `hm_area` VALUES ('320829', '洪泽县', '320800', '0');
INSERT INTO `hm_area` VALUES ('320830', '盱眙县', '320800', '0');
INSERT INTO `hm_area` VALUES ('320831', '金湖县', '320800', '0');
INSERT INTO `hm_area` VALUES ('320901', '市辖区', '320900', '0');
INSERT INTO `hm_area` VALUES ('320902', '亭湖区', '320900', '0');
INSERT INTO `hm_area` VALUES ('320903', '盐都区', '320900', '0');
INSERT INTO `hm_area` VALUES ('320921', '响水县', '320900', '0');
INSERT INTO `hm_area` VALUES ('320922', '滨海县', '320900', '0');
INSERT INTO `hm_area` VALUES ('320923', '阜宁县', '320900', '0');
INSERT INTO `hm_area` VALUES ('320924', '射阳县', '320900', '0');
INSERT INTO `hm_area` VALUES ('320925', '建湖县', '320900', '0');
INSERT INTO `hm_area` VALUES ('320981', '东台市', '320900', '0');
INSERT INTO `hm_area` VALUES ('320982', '大丰市', '320900', '0');
INSERT INTO `hm_area` VALUES ('321001', '市辖区', '321000', '0');
INSERT INTO `hm_area` VALUES ('321002', '广陵区', '321000', '0');
INSERT INTO `hm_area` VALUES ('321003', '邗江区', '321000', '0');
INSERT INTO `hm_area` VALUES ('321011', '郊　区', '321000', '0');
INSERT INTO `hm_area` VALUES ('321023', '宝应县', '321000', '0');
INSERT INTO `hm_area` VALUES ('321081', '仪征市', '321000', '0');
INSERT INTO `hm_area` VALUES ('321084', '高邮市', '321000', '0');
INSERT INTO `hm_area` VALUES ('321088', '江都市', '321000', '0');
INSERT INTO `hm_area` VALUES ('321101', '市辖区', '321100', '0');
INSERT INTO `hm_area` VALUES ('321102', '京口区', '321100', '0');
INSERT INTO `hm_area` VALUES ('321111', '润州区', '321100', '0');
INSERT INTO `hm_area` VALUES ('321112', '丹徒区', '321100', '0');
INSERT INTO `hm_area` VALUES ('321181', '丹阳市', '321100', '0');
INSERT INTO `hm_area` VALUES ('321182', '扬中市', '321100', '0');
INSERT INTO `hm_area` VALUES ('321183', '句容市', '321100', '0');
INSERT INTO `hm_area` VALUES ('321201', '市辖区', '321200', '0');
INSERT INTO `hm_area` VALUES ('321202', '海陵区', '321200', '0');
INSERT INTO `hm_area` VALUES ('321203', '高港区', '321200', '0');
INSERT INTO `hm_area` VALUES ('321281', '兴化市', '321200', '0');
INSERT INTO `hm_area` VALUES ('321282', '靖江市', '321200', '0');
INSERT INTO `hm_area` VALUES ('321283', '泰兴市', '321200', '0');
INSERT INTO `hm_area` VALUES ('321284', '姜堰市', '321200', '0');
INSERT INTO `hm_area` VALUES ('321301', '市辖区', '321300', '0');
INSERT INTO `hm_area` VALUES ('321302', '宿城区', '321300', '0');
INSERT INTO `hm_area` VALUES ('321311', '宿豫区', '321300', '0');
INSERT INTO `hm_area` VALUES ('321322', '沭阳县', '321300', '0');
INSERT INTO `hm_area` VALUES ('321323', '泗阳县', '321300', '0');
INSERT INTO `hm_area` VALUES ('321324', '泗洪县', '321300', '0');
INSERT INTO `hm_area` VALUES ('330101', '市辖区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330102', '上城区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330103', '下城区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330104', '江干区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330105', '拱墅区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330106', '西湖区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330108', '滨江区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330109', '萧山区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330110', '余杭区', '330100', '0');
INSERT INTO `hm_area` VALUES ('330122', '桐庐县', '330100', '0');
INSERT INTO `hm_area` VALUES ('330127', '淳安县', '330100', '0');
INSERT INTO `hm_area` VALUES ('330182', '建德市', '330100', '0');
INSERT INTO `hm_area` VALUES ('330183', '富阳市', '330100', '0');
INSERT INTO `hm_area` VALUES ('330185', '临安市', '330100', '0');
INSERT INTO `hm_area` VALUES ('330201', '市辖区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330203', '海曙区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330204', '江东区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330205', '江北区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330206', '北仑区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330211', '镇海区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330212', '鄞州区', '330200', '0');
INSERT INTO `hm_area` VALUES ('330225', '象山县', '330200', '0');
INSERT INTO `hm_area` VALUES ('330226', '宁海县', '330200', '0');
INSERT INTO `hm_area` VALUES ('330281', '余姚市', '330200', '0');
INSERT INTO `hm_area` VALUES ('330282', '慈溪市', '330200', '0');
INSERT INTO `hm_area` VALUES ('330283', '奉化市', '330200', '0');
INSERT INTO `hm_area` VALUES ('330301', '市辖区', '330300', '0');
INSERT INTO `hm_area` VALUES ('330302', '鹿城区', '330300', '0');
INSERT INTO `hm_area` VALUES ('330303', '龙湾区', '330300', '0');
INSERT INTO `hm_area` VALUES ('330304', '瓯海区', '330300', '0');
INSERT INTO `hm_area` VALUES ('330322', '洞头县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330324', '永嘉县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330326', '平阳县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330327', '苍南县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330328', '文成县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330329', '泰顺县', '330300', '0');
INSERT INTO `hm_area` VALUES ('330381', '瑞安市', '330300', '0');
INSERT INTO `hm_area` VALUES ('330382', '乐清市', '330300', '0');
INSERT INTO `hm_area` VALUES ('330401', '市辖区', '330400', '0');
INSERT INTO `hm_area` VALUES ('330402', '秀城区', '330400', '0');
INSERT INTO `hm_area` VALUES ('330411', '秀洲区', '330400', '0');
INSERT INTO `hm_area` VALUES ('330421', '嘉善县', '330400', '0');
INSERT INTO `hm_area` VALUES ('330424', '海盐县', '330400', '0');
INSERT INTO `hm_area` VALUES ('330481', '海宁市', '330400', '0');
INSERT INTO `hm_area` VALUES ('330482', '平湖市', '330400', '0');
INSERT INTO `hm_area` VALUES ('330483', '桐乡市', '330400', '0');
INSERT INTO `hm_area` VALUES ('330501', '市辖区', '330500', '0');
INSERT INTO `hm_area` VALUES ('330502', '吴兴区', '330500', '0');
INSERT INTO `hm_area` VALUES ('330503', '南浔区', '330500', '0');
INSERT INTO `hm_area` VALUES ('330521', '德清县', '330500', '0');
INSERT INTO `hm_area` VALUES ('330522', '长兴县', '330500', '0');
INSERT INTO `hm_area` VALUES ('330523', '安吉县', '330500', '0');
INSERT INTO `hm_area` VALUES ('330601', '市辖区', '330600', '0');
INSERT INTO `hm_area` VALUES ('330602', '越城区', '330600', '0');
INSERT INTO `hm_area` VALUES ('330621', '绍兴县', '330600', '0');
INSERT INTO `hm_area` VALUES ('330624', '新昌县', '330600', '0');
INSERT INTO `hm_area` VALUES ('330681', '诸暨市', '330600', '0');
INSERT INTO `hm_area` VALUES ('330682', '上虞市', '330600', '0');
INSERT INTO `hm_area` VALUES ('330683', '嵊州市', '330600', '0');
INSERT INTO `hm_area` VALUES ('330701', '市辖区', '330700', '0');
INSERT INTO `hm_area` VALUES ('330702', '婺城区', '330700', '0');
INSERT INTO `hm_area` VALUES ('330703', '金东区', '330700', '0');
INSERT INTO `hm_area` VALUES ('330723', '武义县', '330700', '0');
INSERT INTO `hm_area` VALUES ('330726', '浦江县', '330700', '0');
INSERT INTO `hm_area` VALUES ('330727', '磐安县', '330700', '0');
INSERT INTO `hm_area` VALUES ('330781', '兰溪市', '330700', '0');
INSERT INTO `hm_area` VALUES ('330782', '义乌市', '330700', '0');
INSERT INTO `hm_area` VALUES ('330783', '东阳市', '330700', '0');
INSERT INTO `hm_area` VALUES ('330784', '永康市', '330700', '0');
INSERT INTO `hm_area` VALUES ('330801', '市辖区', '330800', '0');
INSERT INTO `hm_area` VALUES ('330802', '柯城区', '330800', '0');
INSERT INTO `hm_area` VALUES ('330803', '衢江区', '330800', '0');
INSERT INTO `hm_area` VALUES ('330822', '常山县', '330800', '0');
INSERT INTO `hm_area` VALUES ('330824', '开化县', '330800', '0');
INSERT INTO `hm_area` VALUES ('330825', '龙游县', '330800', '0');
INSERT INTO `hm_area` VALUES ('330881', '江山市', '330800', '0');
INSERT INTO `hm_area` VALUES ('330901', '市辖区', '330900', '0');
INSERT INTO `hm_area` VALUES ('330902', '定海区', '330900', '0');
INSERT INTO `hm_area` VALUES ('330903', '普陀区', '330900', '0');
INSERT INTO `hm_area` VALUES ('330921', '岱山县', '330900', '0');
INSERT INTO `hm_area` VALUES ('330922', '嵊泗县', '330900', '0');
INSERT INTO `hm_area` VALUES ('331001', '市辖区', '331000', '0');
INSERT INTO `hm_area` VALUES ('331002', '椒江区', '331000', '0');
INSERT INTO `hm_area` VALUES ('331003', '黄岩区', '331000', '0');
INSERT INTO `hm_area` VALUES ('331004', '路桥区', '331000', '0');
INSERT INTO `hm_area` VALUES ('331021', '玉环县', '331000', '0');
INSERT INTO `hm_area` VALUES ('331022', '三门县', '331000', '0');
INSERT INTO `hm_area` VALUES ('331023', '天台县', '331000', '0');
INSERT INTO `hm_area` VALUES ('331024', '仙居县', '331000', '0');
INSERT INTO `hm_area` VALUES ('331081', '温岭市', '331000', '0');
INSERT INTO `hm_area` VALUES ('331082', '临海市', '331000', '0');
INSERT INTO `hm_area` VALUES ('331101', '市辖区', '331100', '0');
INSERT INTO `hm_area` VALUES ('331102', '莲都区', '331100', '0');
INSERT INTO `hm_area` VALUES ('331121', '青田县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331122', '缙云县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331123', '遂昌县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331124', '松阳县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331125', '云和县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331126', '庆元县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331127', '景宁畲族自治县', '331100', '0');
INSERT INTO `hm_area` VALUES ('331181', '龙泉市', '331100', '0');
INSERT INTO `hm_area` VALUES ('340101', '市辖区', '340100', '0');
INSERT INTO `hm_area` VALUES ('340102', '瑶海区', '340100', '0');
INSERT INTO `hm_area` VALUES ('340103', '庐阳区', '340100', '0');
INSERT INTO `hm_area` VALUES ('340104', '蜀山区', '340100', '0');
INSERT INTO `hm_area` VALUES ('340111', '包河区', '340100', '0');
INSERT INTO `hm_area` VALUES ('340121', '长丰县', '340100', '0');
INSERT INTO `hm_area` VALUES ('340122', '肥东县', '340100', '0');
INSERT INTO `hm_area` VALUES ('340123', '肥西县', '340100', '0');
INSERT INTO `hm_area` VALUES ('340201', '市辖区', '340200', '0');
INSERT INTO `hm_area` VALUES ('340202', '镜湖区', '340200', '0');
INSERT INTO `hm_area` VALUES ('340203', '马塘区', '340200', '0');
INSERT INTO `hm_area` VALUES ('340204', '新芜区', '340200', '0');
INSERT INTO `hm_area` VALUES ('340207', '鸠江区', '340200', '0');
INSERT INTO `hm_area` VALUES ('340221', '芜湖县', '340200', '0');
INSERT INTO `hm_area` VALUES ('340222', '繁昌县', '340200', '0');
INSERT INTO `hm_area` VALUES ('340223', '南陵县', '340200', '0');
INSERT INTO `hm_area` VALUES ('340301', '市辖区', '340300', '0');
INSERT INTO `hm_area` VALUES ('340302', '龙子湖区', '340300', '0');
INSERT INTO `hm_area` VALUES ('340303', '蚌山区', '340300', '0');
INSERT INTO `hm_area` VALUES ('340304', '禹会区', '340300', '0');
INSERT INTO `hm_area` VALUES ('340311', '淮上区', '340300', '0');
INSERT INTO `hm_area` VALUES ('340321', '怀远县', '340300', '0');
INSERT INTO `hm_area` VALUES ('340322', '五河县', '340300', '0');
INSERT INTO `hm_area` VALUES ('340323', '固镇县', '340300', '0');
INSERT INTO `hm_area` VALUES ('340401', '市辖区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340402', '大通区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340403', '田家庵区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340404', '谢家集区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340405', '八公山区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340406', '潘集区', '340400', '0');
INSERT INTO `hm_area` VALUES ('340421', '凤台县', '340400', '0');
INSERT INTO `hm_area` VALUES ('340501', '市辖区', '340500', '0');
INSERT INTO `hm_area` VALUES ('340502', '金家庄区', '340500', '0');
INSERT INTO `hm_area` VALUES ('340503', '花山区', '340500', '0');
INSERT INTO `hm_area` VALUES ('340504', '雨山区', '340500', '0');
INSERT INTO `hm_area` VALUES ('340521', '当涂县', '340500', '0');
INSERT INTO `hm_area` VALUES ('340601', '市辖区', '340600', '0');
INSERT INTO `hm_area` VALUES ('340602', '杜集区', '340600', '0');
INSERT INTO `hm_area` VALUES ('340603', '相山区', '340600', '0');
INSERT INTO `hm_area` VALUES ('340604', '烈山区', '340600', '0');
INSERT INTO `hm_area` VALUES ('340621', '濉溪县', '340600', '0');
INSERT INTO `hm_area` VALUES ('340701', '市辖区', '340700', '0');
INSERT INTO `hm_area` VALUES ('340702', '铜官山区', '340700', '0');
INSERT INTO `hm_area` VALUES ('340703', '狮子山区', '340700', '0');
INSERT INTO `hm_area` VALUES ('340711', '郊　区', '340700', '0');
INSERT INTO `hm_area` VALUES ('340721', '铜陵县', '340700', '0');
INSERT INTO `hm_area` VALUES ('340801', '市辖区', '340800', '0');
INSERT INTO `hm_area` VALUES ('340802', '迎江区', '340800', '0');
INSERT INTO `hm_area` VALUES ('340803', '大观区', '340800', '0');
INSERT INTO `hm_area` VALUES ('340811', '郊　区', '340800', '0');
INSERT INTO `hm_area` VALUES ('340822', '怀宁县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340823', '枞阳县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340824', '潜山县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340825', '太湖县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340826', '宿松县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340827', '望江县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340828', '岳西县', '340800', '0');
INSERT INTO `hm_area` VALUES ('340881', '桐城市', '340800', '0');
INSERT INTO `hm_area` VALUES ('341001', '市辖区', '341000', '0');
INSERT INTO `hm_area` VALUES ('341002', '屯溪区', '341000', '0');
INSERT INTO `hm_area` VALUES ('341003', '黄山区', '341000', '0');
INSERT INTO `hm_area` VALUES ('341004', '徽州区', '341000', '0');
INSERT INTO `hm_area` VALUES ('341021', '歙　县', '341000', '0');
INSERT INTO `hm_area` VALUES ('341022', '休宁县', '341000', '0');
INSERT INTO `hm_area` VALUES ('341023', '黟　县', '341000', '0');
INSERT INTO `hm_area` VALUES ('341024', '祁门县', '341000', '0');
INSERT INTO `hm_area` VALUES ('341101', '市辖区', '341100', '0');
INSERT INTO `hm_area` VALUES ('341102', '琅琊区', '341100', '0');
INSERT INTO `hm_area` VALUES ('341103', '南谯区', '341100', '0');
INSERT INTO `hm_area` VALUES ('341122', '来安县', '341100', '0');
INSERT INTO `hm_area` VALUES ('341124', '全椒县', '341100', '0');
INSERT INTO `hm_area` VALUES ('341125', '定远县', '341100', '0');
INSERT INTO `hm_area` VALUES ('341126', '凤阳县', '341100', '0');
INSERT INTO `hm_area` VALUES ('341181', '天长市', '341100', '0');
INSERT INTO `hm_area` VALUES ('341182', '明光市', '341100', '0');
INSERT INTO `hm_area` VALUES ('341201', '市辖区', '341200', '0');
INSERT INTO `hm_area` VALUES ('341202', '颍州区', '341200', '0');
INSERT INTO `hm_area` VALUES ('341203', '颍东区', '341200', '0');
INSERT INTO `hm_area` VALUES ('341204', '颍泉区', '341200', '0');
INSERT INTO `hm_area` VALUES ('341221', '临泉县', '341200', '0');
INSERT INTO `hm_area` VALUES ('341222', '太和县', '341200', '0');
INSERT INTO `hm_area` VALUES ('341225', '阜南县', '341200', '0');
INSERT INTO `hm_area` VALUES ('341226', '颍上县', '341200', '0');
INSERT INTO `hm_area` VALUES ('341282', '界首市', '341200', '0');
INSERT INTO `hm_area` VALUES ('341301', '市辖区', '341300', '0');
INSERT INTO `hm_area` VALUES ('341302', '墉桥区', '341300', '0');
INSERT INTO `hm_area` VALUES ('341321', '砀山县', '341300', '0');
INSERT INTO `hm_area` VALUES ('341322', '萧　县', '341300', '0');
INSERT INTO `hm_area` VALUES ('341323', '灵璧县', '341300', '0');
INSERT INTO `hm_area` VALUES ('341324', '泗　县', '341300', '0');
INSERT INTO `hm_area` VALUES ('341401', '市辖区', '341400', '0');
INSERT INTO `hm_area` VALUES ('341402', '居巢区', '341400', '0');
INSERT INTO `hm_area` VALUES ('341421', '庐江县', '341400', '0');
INSERT INTO `hm_area` VALUES ('341422', '无为县', '341400', '0');
INSERT INTO `hm_area` VALUES ('341423', '含山县', '341400', '0');
INSERT INTO `hm_area` VALUES ('341424', '和　县', '341400', '0');
INSERT INTO `hm_area` VALUES ('341501', '市辖区', '341500', '0');
INSERT INTO `hm_area` VALUES ('341502', '金安区', '341500', '0');
INSERT INTO `hm_area` VALUES ('341503', '裕安区', '341500', '0');
INSERT INTO `hm_area` VALUES ('341521', '寿　县', '341500', '0');
INSERT INTO `hm_area` VALUES ('341522', '霍邱县', '341500', '0');
INSERT INTO `hm_area` VALUES ('341523', '舒城县', '341500', '0');
INSERT INTO `hm_area` VALUES ('341524', '金寨县', '341500', '0');
INSERT INTO `hm_area` VALUES ('341525', '霍山县', '341500', '0');
INSERT INTO `hm_area` VALUES ('341601', '市辖区', '341600', '0');
INSERT INTO `hm_area` VALUES ('341602', '谯城区', '341600', '0');
INSERT INTO `hm_area` VALUES ('341621', '涡阳县', '341600', '0');
INSERT INTO `hm_area` VALUES ('341622', '蒙城县', '341600', '0');
INSERT INTO `hm_area` VALUES ('341623', '利辛县', '341600', '0');
INSERT INTO `hm_area` VALUES ('341701', '市辖区', '341700', '0');
INSERT INTO `hm_area` VALUES ('341702', '贵池区', '341700', '0');
INSERT INTO `hm_area` VALUES ('341721', '东至县', '341700', '0');
INSERT INTO `hm_area` VALUES ('341722', '石台县', '341700', '0');
INSERT INTO `hm_area` VALUES ('341723', '青阳县', '341700', '0');
INSERT INTO `hm_area` VALUES ('341801', '市辖区', '341800', '0');
INSERT INTO `hm_area` VALUES ('341802', '宣州区', '341800', '0');
INSERT INTO `hm_area` VALUES ('341821', '郎溪县', '341800', '0');
INSERT INTO `hm_area` VALUES ('341822', '广德县', '341800', '0');
INSERT INTO `hm_area` VALUES ('341823', '泾　县', '341800', '0');
INSERT INTO `hm_area` VALUES ('341824', '绩溪县', '341800', '0');
INSERT INTO `hm_area` VALUES ('341825', '旌德县', '341800', '0');
INSERT INTO `hm_area` VALUES ('341881', '宁国市', '341800', '0');
INSERT INTO `hm_area` VALUES ('350101', '市辖区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350102', '鼓楼区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350103', '台江区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350104', '仓山区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350105', '马尾区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350111', '晋安区', '350100', '0');
INSERT INTO `hm_area` VALUES ('350121', '闽侯县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350122', '连江县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350123', '罗源县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350124', '闽清县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350125', '永泰县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350128', '平潭县', '350100', '0');
INSERT INTO `hm_area` VALUES ('350181', '福清市', '350100', '0');
INSERT INTO `hm_area` VALUES ('350182', '长乐市', '350100', '0');
INSERT INTO `hm_area` VALUES ('350201', '市辖区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350203', '思明区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350205', '海沧区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350206', '湖里区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350211', '集美区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350212', '同安区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350213', '翔安区', '350200', '0');
INSERT INTO `hm_area` VALUES ('350301', '市辖区', '350300', '0');
INSERT INTO `hm_area` VALUES ('350302', '城厢区', '350300', '0');
INSERT INTO `hm_area` VALUES ('350303', '涵江区', '350300', '0');
INSERT INTO `hm_area` VALUES ('350304', '荔城区', '350300', '0');
INSERT INTO `hm_area` VALUES ('350305', '秀屿区', '350300', '0');
INSERT INTO `hm_area` VALUES ('350322', '仙游县', '350300', '0');
INSERT INTO `hm_area` VALUES ('350401', '市辖区', '350400', '0');
INSERT INTO `hm_area` VALUES ('350402', '梅列区', '350400', '0');
INSERT INTO `hm_area` VALUES ('350403', '三元区', '350400', '0');
INSERT INTO `hm_area` VALUES ('350421', '明溪县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350423', '清流县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350424', '宁化县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350425', '大田县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350426', '尤溪县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350427', '沙　县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350428', '将乐县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350429', '泰宁县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350430', '建宁县', '350400', '0');
INSERT INTO `hm_area` VALUES ('350481', '永安市', '350400', '0');
INSERT INTO `hm_area` VALUES ('350501', '市辖区', '350500', '0');
INSERT INTO `hm_area` VALUES ('350502', '鲤城区', '350500', '0');
INSERT INTO `hm_area` VALUES ('350503', '丰泽区', '350500', '0');
INSERT INTO `hm_area` VALUES ('350504', '洛江区', '350500', '0');
INSERT INTO `hm_area` VALUES ('350505', '泉港区', '350500', '0');
INSERT INTO `hm_area` VALUES ('350521', '惠安县', '350500', '0');
INSERT INTO `hm_area` VALUES ('350524', '安溪县', '350500', '0');
INSERT INTO `hm_area` VALUES ('350525', '永春县', '350500', '0');
INSERT INTO `hm_area` VALUES ('350526', '德化县', '350500', '0');
INSERT INTO `hm_area` VALUES ('350527', '金门县', '350500', '0');
INSERT INTO `hm_area` VALUES ('350581', '石狮市', '350500', '0');
INSERT INTO `hm_area` VALUES ('350582', '晋江市', '350500', '0');
INSERT INTO `hm_area` VALUES ('350583', '南安市', '350500', '0');
INSERT INTO `hm_area` VALUES ('350601', '市辖区', '350600', '0');
INSERT INTO `hm_area` VALUES ('350602', '芗城区', '350600', '0');
INSERT INTO `hm_area` VALUES ('350603', '龙文区', '350600', '0');
INSERT INTO `hm_area` VALUES ('350622', '云霄县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350623', '漳浦县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350624', '诏安县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350625', '长泰县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350626', '东山县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350627', '南靖县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350628', '平和县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350629', '华安县', '350600', '0');
INSERT INTO `hm_area` VALUES ('350681', '龙海市', '350600', '0');
INSERT INTO `hm_area` VALUES ('350701', '市辖区', '350700', '0');
INSERT INTO `hm_area` VALUES ('350702', '延平区', '350700', '0');
INSERT INTO `hm_area` VALUES ('350721', '顺昌县', '350700', '0');
INSERT INTO `hm_area` VALUES ('350722', '浦城县', '350700', '0');
INSERT INTO `hm_area` VALUES ('350723', '光泽县', '350700', '0');
INSERT INTO `hm_area` VALUES ('350724', '松溪县', '350700', '0');
INSERT INTO `hm_area` VALUES ('350725', '政和县', '350700', '0');
INSERT INTO `hm_area` VALUES ('350781', '邵武市', '350700', '0');
INSERT INTO `hm_area` VALUES ('350782', '武夷山市', '350700', '0');
INSERT INTO `hm_area` VALUES ('350783', '建瓯市', '350700', '0');
INSERT INTO `hm_area` VALUES ('350784', '建阳市', '350700', '0');
INSERT INTO `hm_area` VALUES ('350801', '市辖区', '350800', '0');
INSERT INTO `hm_area` VALUES ('350802', '新罗区', '350800', '0');
INSERT INTO `hm_area` VALUES ('350821', '长汀县', '350800', '0');
INSERT INTO `hm_area` VALUES ('350822', '永定县', '350800', '0');
INSERT INTO `hm_area` VALUES ('350823', '上杭县', '350800', '0');
INSERT INTO `hm_area` VALUES ('350824', '武平县', '350800', '0');
INSERT INTO `hm_area` VALUES ('350825', '连城县', '350800', '0');
INSERT INTO `hm_area` VALUES ('350881', '漳平市', '350800', '0');
INSERT INTO `hm_area` VALUES ('350901', '市辖区', '350900', '0');
INSERT INTO `hm_area` VALUES ('350902', '蕉城区', '350900', '0');
INSERT INTO `hm_area` VALUES ('350921', '霞浦县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350922', '古田县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350923', '屏南县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350924', '寿宁县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350925', '周宁县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350926', '柘荣县', '350900', '0');
INSERT INTO `hm_area` VALUES ('350981', '福安市', '350900', '0');
INSERT INTO `hm_area` VALUES ('350982', '福鼎市', '350900', '0');
INSERT INTO `hm_area` VALUES ('360101', '市辖区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360102', '东湖区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360103', '西湖区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360104', '青云谱区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360105', '湾里区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360111', '青山湖区', '360100', '0');
INSERT INTO `hm_area` VALUES ('360121', '南昌县', '360100', '0');
INSERT INTO `hm_area` VALUES ('360122', '新建县', '360100', '0');
INSERT INTO `hm_area` VALUES ('360123', '安义县', '360100', '0');
INSERT INTO `hm_area` VALUES ('360124', '进贤县', '360100', '0');
INSERT INTO `hm_area` VALUES ('360201', '市辖区', '360200', '0');
INSERT INTO `hm_area` VALUES ('360202', '昌江区', '360200', '0');
INSERT INTO `hm_area` VALUES ('360203', '珠山区', '360200', '0');
INSERT INTO `hm_area` VALUES ('360222', '浮梁县', '360200', '0');
INSERT INTO `hm_area` VALUES ('360281', '乐平市', '360200', '0');
INSERT INTO `hm_area` VALUES ('360301', '市辖区', '360300', '0');
INSERT INTO `hm_area` VALUES ('360302', '安源区', '360300', '0');
INSERT INTO `hm_area` VALUES ('360313', '湘东区', '360300', '0');
INSERT INTO `hm_area` VALUES ('360321', '莲花县', '360300', '0');
INSERT INTO `hm_area` VALUES ('360322', '上栗县', '360300', '0');
INSERT INTO `hm_area` VALUES ('360323', '芦溪县', '360300', '0');
INSERT INTO `hm_area` VALUES ('360401', '市辖区', '360400', '0');
INSERT INTO `hm_area` VALUES ('360402', '庐山区', '360400', '0');
INSERT INTO `hm_area` VALUES ('360403', '浔阳区', '360400', '0');
INSERT INTO `hm_area` VALUES ('360421', '九江县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360423', '武宁县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360424', '修水县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360425', '永修县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360426', '德安县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360427', '星子县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360428', '都昌县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360429', '湖口县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360430', '彭泽县', '360400', '0');
INSERT INTO `hm_area` VALUES ('360481', '瑞昌市', '360400', '0');
INSERT INTO `hm_area` VALUES ('360501', '市辖区', '360500', '0');
INSERT INTO `hm_area` VALUES ('360502', '渝水区', '360500', '0');
INSERT INTO `hm_area` VALUES ('360521', '分宜县', '360500', '0');
INSERT INTO `hm_area` VALUES ('360601', '市辖区', '360600', '0');
INSERT INTO `hm_area` VALUES ('360602', '月湖区', '360600', '0');
INSERT INTO `hm_area` VALUES ('360622', '余江县', '360600', '0');
INSERT INTO `hm_area` VALUES ('360681', '贵溪市', '360600', '0');
INSERT INTO `hm_area` VALUES ('360701', '市辖区', '360700', '0');
INSERT INTO `hm_area` VALUES ('360702', '章贡区', '360700', '0');
INSERT INTO `hm_area` VALUES ('360721', '赣　县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360722', '信丰县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360723', '大余县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360724', '上犹县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360725', '崇义县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360726', '安远县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360727', '龙南县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360728', '定南县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360729', '全南县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360730', '宁都县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360731', '于都县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360732', '兴国县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360733', '会昌县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360734', '寻乌县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360735', '石城县', '360700', '0');
INSERT INTO `hm_area` VALUES ('360781', '瑞金市', '360700', '0');
INSERT INTO `hm_area` VALUES ('360782', '南康市', '360700', '0');
INSERT INTO `hm_area` VALUES ('360801', '市辖区', '360800', '0');
INSERT INTO `hm_area` VALUES ('360802', '吉州区', '360800', '0');
INSERT INTO `hm_area` VALUES ('360803', '青原区', '360800', '0');
INSERT INTO `hm_area` VALUES ('360821', '吉安县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360822', '吉水县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360823', '峡江县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360824', '新干县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360825', '永丰县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360826', '泰和县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360827', '遂川县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360828', '万安县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360829', '安福县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360830', '永新县', '360800', '0');
INSERT INTO `hm_area` VALUES ('360881', '井冈山市', '360800', '0');
INSERT INTO `hm_area` VALUES ('360901', '市辖区', '360900', '0');
INSERT INTO `hm_area` VALUES ('360902', '袁州区', '360900', '0');
INSERT INTO `hm_area` VALUES ('360921', '奉新县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360922', '万载县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360923', '上高县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360924', '宜丰县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360925', '靖安县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360926', '铜鼓县', '360900', '0');
INSERT INTO `hm_area` VALUES ('360981', '丰城市', '360900', '0');
INSERT INTO `hm_area` VALUES ('360982', '樟树市', '360900', '0');
INSERT INTO `hm_area` VALUES ('360983', '高安市', '360900', '0');
INSERT INTO `hm_area` VALUES ('361001', '市辖区', '361000', '0');
INSERT INTO `hm_area` VALUES ('361002', '临川区', '361000', '0');
INSERT INTO `hm_area` VALUES ('361021', '南城县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361022', '黎川县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361023', '南丰县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361024', '崇仁县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361025', '乐安县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361026', '宜黄县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361027', '金溪县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361028', '资溪县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361029', '东乡县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361030', '广昌县', '361000', '0');
INSERT INTO `hm_area` VALUES ('361101', '市辖区', '361100', '0');
INSERT INTO `hm_area` VALUES ('361102', '信州区', '361100', '0');
INSERT INTO `hm_area` VALUES ('361121', '上饶县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361122', '广丰县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361123', '玉山县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361124', '铅山县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361125', '横峰县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361126', '弋阳县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361127', '余干县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361128', '鄱阳县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361129', '万年县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361130', '婺源县', '361100', '0');
INSERT INTO `hm_area` VALUES ('361181', '德兴市', '361100', '0');
INSERT INTO `hm_area` VALUES ('370101', '市辖区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370102', '历下区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370103', '市中区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370104', '槐荫区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370105', '天桥区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370112', '历城区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370113', '长清区', '370100', '0');
INSERT INTO `hm_area` VALUES ('370124', '平阴县', '370100', '0');
INSERT INTO `hm_area` VALUES ('370125', '济阳县', '370100', '0');
INSERT INTO `hm_area` VALUES ('370126', '商河县', '370100', '0');
INSERT INTO `hm_area` VALUES ('370181', '章丘市', '370100', '0');
INSERT INTO `hm_area` VALUES ('370201', '市辖区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370202', '市南区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370203', '市北区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370205', '四方区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370211', '黄岛区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370212', '崂山区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370213', '李沧区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370214', '城阳区', '370200', '0');
INSERT INTO `hm_area` VALUES ('370281', '胶州市', '370200', '0');
INSERT INTO `hm_area` VALUES ('370282', '即墨市', '370200', '0');
INSERT INTO `hm_area` VALUES ('370283', '平度市', '370200', '0');
INSERT INTO `hm_area` VALUES ('370284', '胶南市', '370200', '0');
INSERT INTO `hm_area` VALUES ('370285', '莱西市', '370200', '0');
INSERT INTO `hm_area` VALUES ('370301', '市辖区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370302', '淄川区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370303', '张店区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370304', '博山区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370305', '临淄区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370306', '周村区', '370300', '0');
INSERT INTO `hm_area` VALUES ('370321', '桓台县', '370300', '0');
INSERT INTO `hm_area` VALUES ('370322', '高青县', '370300', '0');
INSERT INTO `hm_area` VALUES ('370323', '沂源县', '370300', '0');
INSERT INTO `hm_area` VALUES ('370401', '市辖区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370402', '市中区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370403', '薛城区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370404', '峄城区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370405', '台儿庄区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370406', '山亭区', '370400', '0');
INSERT INTO `hm_area` VALUES ('370481', '滕州市', '370400', '0');
INSERT INTO `hm_area` VALUES ('370501', '市辖区', '370500', '0');
INSERT INTO `hm_area` VALUES ('370502', '东营区', '370500', '0');
INSERT INTO `hm_area` VALUES ('370503', '河口区', '370500', '0');
INSERT INTO `hm_area` VALUES ('370521', '垦利县', '370500', '0');
INSERT INTO `hm_area` VALUES ('370522', '利津县', '370500', '0');
INSERT INTO `hm_area` VALUES ('370523', '广饶县', '370500', '0');
INSERT INTO `hm_area` VALUES ('370601', '市辖区', '370600', '0');
INSERT INTO `hm_area` VALUES ('370602', '芝罘区', '370600', '0');
INSERT INTO `hm_area` VALUES ('370611', '福山区', '370600', '0');
INSERT INTO `hm_area` VALUES ('370612', '牟平区', '370600', '0');
INSERT INTO `hm_area` VALUES ('370613', '莱山区', '370600', '0');
INSERT INTO `hm_area` VALUES ('370634', '长岛县', '370600', '0');
INSERT INTO `hm_area` VALUES ('370681', '龙口市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370682', '莱阳市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370683', '莱州市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370684', '蓬莱市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370685', '招远市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370686', '栖霞市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370687', '海阳市', '370600', '0');
INSERT INTO `hm_area` VALUES ('370701', '市辖区', '370700', '0');
INSERT INTO `hm_area` VALUES ('370702', '潍城区', '370700', '0');
INSERT INTO `hm_area` VALUES ('370703', '寒亭区', '370700', '0');
INSERT INTO `hm_area` VALUES ('370704', '坊子区', '370700', '0');
INSERT INTO `hm_area` VALUES ('370705', '奎文区', '370700', '0');
INSERT INTO `hm_area` VALUES ('370724', '临朐县', '370700', '0');
INSERT INTO `hm_area` VALUES ('370725', '昌乐县', '370700', '0');
INSERT INTO `hm_area` VALUES ('370781', '青州市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370782', '诸城市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370783', '寿光市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370784', '安丘市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370785', '高密市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370786', '昌邑市', '370700', '0');
INSERT INTO `hm_area` VALUES ('370801', '市辖区', '370800', '0');
INSERT INTO `hm_area` VALUES ('370802', '市中区', '370800', '0');
INSERT INTO `hm_area` VALUES ('370811', '任城区', '370800', '0');
INSERT INTO `hm_area` VALUES ('370826', '微山县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370827', '鱼台县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370828', '金乡县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370829', '嘉祥县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370830', '汶上县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370831', '泗水县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370832', '梁山县', '370800', '0');
INSERT INTO `hm_area` VALUES ('370881', '曲阜市', '370800', '0');
INSERT INTO `hm_area` VALUES ('370882', '兖州市', '370800', '0');
INSERT INTO `hm_area` VALUES ('370883', '邹城市', '370800', '0');
INSERT INTO `hm_area` VALUES ('370901', '市辖区', '370900', '0');
INSERT INTO `hm_area` VALUES ('370902', '泰山区', '370900', '0');
INSERT INTO `hm_area` VALUES ('370903', '岱岳区', '370900', '0');
INSERT INTO `hm_area` VALUES ('370921', '宁阳县', '370900', '0');
INSERT INTO `hm_area` VALUES ('370923', '东平县', '370900', '0');
INSERT INTO `hm_area` VALUES ('370982', '新泰市', '370900', '0');
INSERT INTO `hm_area` VALUES ('370983', '肥城市', '370900', '0');
INSERT INTO `hm_area` VALUES ('371001', '市辖区', '371000', '0');
INSERT INTO `hm_area` VALUES ('371002', '环翠区', '371000', '0');
INSERT INTO `hm_area` VALUES ('371081', '文登市', '371000', '0');
INSERT INTO `hm_area` VALUES ('371082', '荣成市', '371000', '0');
INSERT INTO `hm_area` VALUES ('371083', '乳山市', '371000', '0');
INSERT INTO `hm_area` VALUES ('371101', '市辖区', '371100', '0');
INSERT INTO `hm_area` VALUES ('371102', '东港区', '371100', '0');
INSERT INTO `hm_area` VALUES ('371103', '岚山区', '371100', '0');
INSERT INTO `hm_area` VALUES ('371121', '五莲县', '371100', '0');
INSERT INTO `hm_area` VALUES ('371122', '莒　县', '371100', '0');
INSERT INTO `hm_area` VALUES ('371201', '市辖区', '371200', '0');
INSERT INTO `hm_area` VALUES ('371202', '莱城区', '371200', '0');
INSERT INTO `hm_area` VALUES ('371203', '钢城区', '371200', '0');
INSERT INTO `hm_area` VALUES ('371301', '市辖区', '371300', '0');
INSERT INTO `hm_area` VALUES ('371302', '兰山区', '371300', '0');
INSERT INTO `hm_area` VALUES ('371311', '罗庄区', '371300', '0');
INSERT INTO `hm_area` VALUES ('371312', '河东区', '371300', '0');
INSERT INTO `hm_area` VALUES ('371321', '沂南县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371322', '郯城县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371323', '沂水县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371324', '苍山县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371325', '费　县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371326', '平邑县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371327', '莒南县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371328', '蒙阴县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371329', '临沭县', '371300', '0');
INSERT INTO `hm_area` VALUES ('371401', '市辖区', '371400', '0');
INSERT INTO `hm_area` VALUES ('371402', '德城区', '371400', '0');
INSERT INTO `hm_area` VALUES ('371421', '陵　县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371422', '宁津县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371423', '庆云县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371424', '临邑县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371425', '齐河县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371426', '平原县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371427', '夏津县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371428', '武城县', '371400', '0');
INSERT INTO `hm_area` VALUES ('371481', '乐陵市', '371400', '0');
INSERT INTO `hm_area` VALUES ('371482', '禹城市', '371400', '0');
INSERT INTO `hm_area` VALUES ('371501', '市辖区', '371500', '0');
INSERT INTO `hm_area` VALUES ('371502', '东昌府区', '371500', '0');
INSERT INTO `hm_area` VALUES ('371521', '阳谷县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371522', '莘　县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371523', '茌平县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371524', '东阿县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371525', '冠　县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371526', '高唐县', '371500', '0');
INSERT INTO `hm_area` VALUES ('371581', '临清市', '371500', '0');
INSERT INTO `hm_area` VALUES ('371601', '市辖区', '371600', '0');
INSERT INTO `hm_area` VALUES ('371602', '滨城区', '371600', '0');
INSERT INTO `hm_area` VALUES ('371621', '惠民县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371622', '阳信县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371623', '无棣县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371624', '沾化县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371625', '博兴县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371626', '邹平县', '371600', '0');
INSERT INTO `hm_area` VALUES ('371701', '市辖区', '371700', '0');
INSERT INTO `hm_area` VALUES ('371702', '牡丹区', '371700', '0');
INSERT INTO `hm_area` VALUES ('371721', '曹　县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371722', '单　县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371723', '成武县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371724', '巨野县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371725', '郓城县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371726', '鄄城县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371727', '定陶县', '371700', '0');
INSERT INTO `hm_area` VALUES ('371728', '东明县', '371700', '0');
INSERT INTO `hm_area` VALUES ('410101', '市辖区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410102', '中原区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410103', '二七区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410104', '管城回族区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410105', '金水区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410106', '上街区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410108', '邙山区', '410100', '0');
INSERT INTO `hm_area` VALUES ('410122', '中牟县', '410100', '0');
INSERT INTO `hm_area` VALUES ('410181', '巩义市', '410100', '0');
INSERT INTO `hm_area` VALUES ('410182', '荥阳市', '410100', '0');
INSERT INTO `hm_area` VALUES ('410183', '新密市', '410100', '0');
INSERT INTO `hm_area` VALUES ('410184', '新郑市', '410100', '0');
INSERT INTO `hm_area` VALUES ('410185', '登封市', '410100', '0');
INSERT INTO `hm_area` VALUES ('410201', '市辖区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410202', '龙亭区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410203', '顺河回族区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410204', '鼓楼区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410205', '南关区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410211', '郊　区', '410200', '0');
INSERT INTO `hm_area` VALUES ('410221', '杞　县', '410200', '0');
INSERT INTO `hm_area` VALUES ('410222', '通许县', '410200', '0');
INSERT INTO `hm_area` VALUES ('410223', '尉氏县', '410200', '0');
INSERT INTO `hm_area` VALUES ('410224', '开封县', '410200', '0');
INSERT INTO `hm_area` VALUES ('410225', '兰考县', '410200', '0');
INSERT INTO `hm_area` VALUES ('410301', '市辖区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410302', '老城区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410303', '西工区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410304', '廛河回族区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410305', '涧西区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410306', '吉利区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410307', '洛龙区', '410300', '0');
INSERT INTO `hm_area` VALUES ('410322', '孟津县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410323', '新安县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410324', '栾川县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410325', '嵩　县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410326', '汝阳县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410327', '宜阳县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410328', '洛宁县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410329', '伊川县', '410300', '0');
INSERT INTO `hm_area` VALUES ('410381', '偃师市', '410300', '0');
INSERT INTO `hm_area` VALUES ('410401', '市辖区', '410400', '0');
INSERT INTO `hm_area` VALUES ('410402', '新华区', '410400', '0');
INSERT INTO `hm_area` VALUES ('410403', '卫东区', '410400', '0');
INSERT INTO `hm_area` VALUES ('410404', '石龙区', '410400', '0');
INSERT INTO `hm_area` VALUES ('410411', '湛河区', '410400', '0');
INSERT INTO `hm_area` VALUES ('410421', '宝丰县', '410400', '0');
INSERT INTO `hm_area` VALUES ('410422', '叶　县', '410400', '0');
INSERT INTO `hm_area` VALUES ('410423', '鲁山县', '410400', '0');
INSERT INTO `hm_area` VALUES ('410425', '郏　县', '410400', '0');
INSERT INTO `hm_area` VALUES ('410481', '舞钢市', '410400', '0');
INSERT INTO `hm_area` VALUES ('410482', '汝州市', '410400', '0');
INSERT INTO `hm_area` VALUES ('410501', '市辖区', '410500', '0');
INSERT INTO `hm_area` VALUES ('410502', '文峰区', '410500', '0');
INSERT INTO `hm_area` VALUES ('410503', '北关区', '410500', '0');
INSERT INTO `hm_area` VALUES ('410505', '殷都区', '410500', '0');
INSERT INTO `hm_area` VALUES ('410506', '龙安区', '410500', '0');
INSERT INTO `hm_area` VALUES ('410522', '安阳县', '410500', '0');
INSERT INTO `hm_area` VALUES ('410523', '汤阴县', '410500', '0');
INSERT INTO `hm_area` VALUES ('410526', '滑　县', '410500', '0');
INSERT INTO `hm_area` VALUES ('410527', '内黄县', '410500', '0');
INSERT INTO `hm_area` VALUES ('410581', '林州市', '410500', '0');
INSERT INTO `hm_area` VALUES ('410601', '市辖区', '410600', '0');
INSERT INTO `hm_area` VALUES ('410602', '鹤山区', '410600', '0');
INSERT INTO `hm_area` VALUES ('410603', '山城区', '410600', '0');
INSERT INTO `hm_area` VALUES ('410611', '淇滨区', '410600', '0');
INSERT INTO `hm_area` VALUES ('410621', '浚　县', '410600', '0');
INSERT INTO `hm_area` VALUES ('410622', '淇　县', '410600', '0');
INSERT INTO `hm_area` VALUES ('410701', '市辖区', '410700', '0');
INSERT INTO `hm_area` VALUES ('410702', '红旗区', '410700', '0');
INSERT INTO `hm_area` VALUES ('410703', '卫滨区', '410700', '0');
INSERT INTO `hm_area` VALUES ('410704', '凤泉区', '410700', '0');
INSERT INTO `hm_area` VALUES ('410711', '牧野区', '410700', '0');
INSERT INTO `hm_area` VALUES ('410721', '新乡县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410724', '获嘉县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410725', '原阳县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410726', '延津县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410727', '封丘县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410728', '长垣县', '410700', '0');
INSERT INTO `hm_area` VALUES ('410781', '卫辉市', '410700', '0');
INSERT INTO `hm_area` VALUES ('410782', '辉县市', '410700', '0');
INSERT INTO `hm_area` VALUES ('410801', '市辖区', '410800', '0');
INSERT INTO `hm_area` VALUES ('410802', '解放区', '410800', '0');
INSERT INTO `hm_area` VALUES ('410803', '中站区', '410800', '0');
INSERT INTO `hm_area` VALUES ('410804', '马村区', '410800', '0');
INSERT INTO `hm_area` VALUES ('410811', '山阳区', '410800', '0');
INSERT INTO `hm_area` VALUES ('410821', '修武县', '410800', '0');
INSERT INTO `hm_area` VALUES ('410822', '博爱县', '410800', '0');
INSERT INTO `hm_area` VALUES ('410823', '武陟县', '410800', '0');
INSERT INTO `hm_area` VALUES ('410825', '温　县', '410800', '0');
INSERT INTO `hm_area` VALUES ('410881', '济源市', '410800', '0');
INSERT INTO `hm_area` VALUES ('410882', '沁阳市', '410800', '0');
INSERT INTO `hm_area` VALUES ('410883', '孟州市', '410800', '0');
INSERT INTO `hm_area` VALUES ('410901', '市辖区', '410900', '0');
INSERT INTO `hm_area` VALUES ('410902', '华龙区', '410900', '0');
INSERT INTO `hm_area` VALUES ('410922', '清丰县', '410900', '0');
INSERT INTO `hm_area` VALUES ('410923', '南乐县', '410900', '0');
INSERT INTO `hm_area` VALUES ('410926', '范　县', '410900', '0');
INSERT INTO `hm_area` VALUES ('410927', '台前县', '410900', '0');
INSERT INTO `hm_area` VALUES ('410928', '濮阳县', '410900', '0');
INSERT INTO `hm_area` VALUES ('411001', '市辖区', '411000', '0');
INSERT INTO `hm_area` VALUES ('411002', '魏都区', '411000', '0');
INSERT INTO `hm_area` VALUES ('411023', '许昌县', '411000', '0');
INSERT INTO `hm_area` VALUES ('411024', '鄢陵县', '411000', '0');
INSERT INTO `hm_area` VALUES ('411025', '襄城县', '411000', '0');
INSERT INTO `hm_area` VALUES ('411081', '禹州市', '411000', '0');
INSERT INTO `hm_area` VALUES ('411082', '长葛市', '411000', '0');
INSERT INTO `hm_area` VALUES ('411101', '市辖区', '411100', '0');
INSERT INTO `hm_area` VALUES ('411102', '源汇区', '411100', '0');
INSERT INTO `hm_area` VALUES ('411103', '郾城区', '411100', '0');
INSERT INTO `hm_area` VALUES ('411104', '召陵区', '411100', '0');
INSERT INTO `hm_area` VALUES ('411121', '舞阳县', '411100', '0');
INSERT INTO `hm_area` VALUES ('411122', '临颍县', '411100', '0');
INSERT INTO `hm_area` VALUES ('411201', '市辖区', '411200', '0');
INSERT INTO `hm_area` VALUES ('411202', '湖滨区', '411200', '0');
INSERT INTO `hm_area` VALUES ('411221', '渑池县', '411200', '0');
INSERT INTO `hm_area` VALUES ('411222', '陕　县', '411200', '0');
INSERT INTO `hm_area` VALUES ('411224', '卢氏县', '411200', '0');
INSERT INTO `hm_area` VALUES ('411281', '义马市', '411200', '0');
INSERT INTO `hm_area` VALUES ('411282', '灵宝市', '411200', '0');
INSERT INTO `hm_area` VALUES ('411301', '市辖区', '411300', '0');
INSERT INTO `hm_area` VALUES ('411302', '宛城区', '411300', '0');
INSERT INTO `hm_area` VALUES ('411303', '卧龙区', '411300', '0');
INSERT INTO `hm_area` VALUES ('411321', '南召县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411322', '方城县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411323', '西峡县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411324', '镇平县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411325', '内乡县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411326', '淅川县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411327', '社旗县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411328', '唐河县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411329', '新野县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411330', '桐柏县', '411300', '0');
INSERT INTO `hm_area` VALUES ('411381', '邓州市', '411300', '0');
INSERT INTO `hm_area` VALUES ('411401', '市辖区', '411400', '0');
INSERT INTO `hm_area` VALUES ('411402', '梁园区', '411400', '0');
INSERT INTO `hm_area` VALUES ('411403', '睢阳区', '411400', '0');
INSERT INTO `hm_area` VALUES ('411421', '民权县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411422', '睢　县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411423', '宁陵县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411424', '柘城县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411425', '虞城县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411426', '夏邑县', '411400', '0');
INSERT INTO `hm_area` VALUES ('411481', '永城市', '411400', '0');
INSERT INTO `hm_area` VALUES ('411501', '市辖区', '411500', '0');
INSERT INTO `hm_area` VALUES ('411502', '师河区', '411500', '0');
INSERT INTO `hm_area` VALUES ('411503', '平桥区', '411500', '0');
INSERT INTO `hm_area` VALUES ('411521', '罗山县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411522', '光山县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411523', '新　县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411524', '商城县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411525', '固始县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411526', '潢川县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411527', '淮滨县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411528', '息　县', '411500', '0');
INSERT INTO `hm_area` VALUES ('411601', '市辖区', '411600', '0');
INSERT INTO `hm_area` VALUES ('411602', '川汇区', '411600', '0');
INSERT INTO `hm_area` VALUES ('411621', '扶沟县', '411600', '122');
INSERT INTO `hm_area` VALUES ('411622', '西华县', '411600', '0');
INSERT INTO `hm_area` VALUES ('411623', '商水县', '411600', '125');
INSERT INTO `hm_area` VALUES ('411624', '沈丘县', '411600', '124');
INSERT INTO `hm_area` VALUES ('411625', '郸城县', '411600', '0');
INSERT INTO `hm_area` VALUES ('411626', '淮阳县', '411600', '123');
INSERT INTO `hm_area` VALUES ('411627', '太康县', '411600', '0');
INSERT INTO `hm_area` VALUES ('411628', '鹿邑县', '411600', '0');
INSERT INTO `hm_area` VALUES ('411681', '项城市', '411600', '127');
INSERT INTO `hm_area` VALUES ('411701', '市辖区', '411700', '0');
INSERT INTO `hm_area` VALUES ('411702', '驿城区', '411700', '0');
INSERT INTO `hm_area` VALUES ('411721', '西平县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411722', '上蔡县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411723', '平舆县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411724', '正阳县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411725', '确山县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411726', '泌阳县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411727', '汝南县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411728', '遂平县', '411700', '0');
INSERT INTO `hm_area` VALUES ('411729', '新蔡县', '411700', '0');
INSERT INTO `hm_area` VALUES ('420101', '市辖区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420102', '江岸区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420103', '江汉区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420104', '乔口区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420105', '汉阳区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420106', '武昌区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420107', '青山区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420111', '洪山区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420112', '东西湖区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420113', '汉南区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420114', '蔡甸区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420115', '江夏区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420116', '黄陂区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420117', '新洲区', '420100', '0');
INSERT INTO `hm_area` VALUES ('420201', '市辖区', '420200', '0');
INSERT INTO `hm_area` VALUES ('420202', '黄石港区', '420200', '0');
INSERT INTO `hm_area` VALUES ('420203', '西塞山区', '420200', '0');
INSERT INTO `hm_area` VALUES ('420204', '下陆区', '420200', '0');
INSERT INTO `hm_area` VALUES ('420205', '铁山区', '420200', '0');
INSERT INTO `hm_area` VALUES ('420222', '阳新县', '420200', '0');
INSERT INTO `hm_area` VALUES ('420281', '大冶市', '420200', '0');
INSERT INTO `hm_area` VALUES ('420301', '市辖区', '420300', '0');
INSERT INTO `hm_area` VALUES ('420302', '茅箭区', '420300', '0');
INSERT INTO `hm_area` VALUES ('420303', '张湾区', '420300', '0');
INSERT INTO `hm_area` VALUES ('420321', '郧　县', '420300', '0');
INSERT INTO `hm_area` VALUES ('420322', '郧西县', '420300', '0');
INSERT INTO `hm_area` VALUES ('420323', '竹山县', '420300', '0');
INSERT INTO `hm_area` VALUES ('420324', '竹溪县', '420300', '0');
INSERT INTO `hm_area` VALUES ('420325', '房　县', '420300', '0');
INSERT INTO `hm_area` VALUES ('420381', '丹江口市', '420300', '0');
INSERT INTO `hm_area` VALUES ('420501', '市辖区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420502', '西陵区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420503', '伍家岗区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420504', '点军区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420505', '猇亭区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420506', '夷陵区', '420500', '0');
INSERT INTO `hm_area` VALUES ('420525', '远安县', '420500', '0');
INSERT INTO `hm_area` VALUES ('420526', '兴山县', '420500', '0');
INSERT INTO `hm_area` VALUES ('420527', '秭归县', '420500', '0');
INSERT INTO `hm_area` VALUES ('420528', '长阳土家族自治县', '420500', '0');
INSERT INTO `hm_area` VALUES ('420529', '五峰土家族自治县', '420500', '0');
INSERT INTO `hm_area` VALUES ('420581', '宜都市', '420500', '0');
INSERT INTO `hm_area` VALUES ('420582', '当阳市', '420500', '0');
INSERT INTO `hm_area` VALUES ('420583', '枝江市', '420500', '0');
INSERT INTO `hm_area` VALUES ('420601', '市辖区', '420600', '0');
INSERT INTO `hm_area` VALUES ('420602', '襄城区', '420600', '0');
INSERT INTO `hm_area` VALUES ('420606', '樊城区', '420600', '0');
INSERT INTO `hm_area` VALUES ('420607', '襄阳区', '420600', '0');
INSERT INTO `hm_area` VALUES ('420624', '南漳县', '420600', '0');
INSERT INTO `hm_area` VALUES ('420625', '谷城县', '420600', '0');
INSERT INTO `hm_area` VALUES ('420626', '保康县', '420600', '0');
INSERT INTO `hm_area` VALUES ('420682', '老河口市', '420600', '0');
INSERT INTO `hm_area` VALUES ('420683', '枣阳市', '420600', '0');
INSERT INTO `hm_area` VALUES ('420684', '宜城市', '420600', '0');
INSERT INTO `hm_area` VALUES ('420701', '市辖区', '420700', '0');
INSERT INTO `hm_area` VALUES ('420702', '梁子湖区', '420700', '0');
INSERT INTO `hm_area` VALUES ('420703', '华容区', '420700', '0');
INSERT INTO `hm_area` VALUES ('420704', '鄂城区', '420700', '0');
INSERT INTO `hm_area` VALUES ('420801', '市辖区', '420800', '0');
INSERT INTO `hm_area` VALUES ('420802', '东宝区', '420800', '0');
INSERT INTO `hm_area` VALUES ('420804', '掇刀区', '420800', '0');
INSERT INTO `hm_area` VALUES ('420821', '京山县', '420800', '0');
INSERT INTO `hm_area` VALUES ('420822', '沙洋县', '420800', '0');
INSERT INTO `hm_area` VALUES ('420881', '钟祥市', '420800', '0');
INSERT INTO `hm_area` VALUES ('420901', '市辖区', '420900', '0');
INSERT INTO `hm_area` VALUES ('420902', '孝南区', '420900', '0');
INSERT INTO `hm_area` VALUES ('420921', '孝昌县', '420900', '0');
INSERT INTO `hm_area` VALUES ('420922', '大悟县', '420900', '0');
INSERT INTO `hm_area` VALUES ('420923', '云梦县', '420900', '0');
INSERT INTO `hm_area` VALUES ('420981', '应城市', '420900', '0');
INSERT INTO `hm_area` VALUES ('420982', '安陆市', '420900', '0');
INSERT INTO `hm_area` VALUES ('420984', '汉川市', '420900', '0');
INSERT INTO `hm_area` VALUES ('421001', '市辖区', '421000', '0');
INSERT INTO `hm_area` VALUES ('421002', '沙市区', '421000', '0');
INSERT INTO `hm_area` VALUES ('421003', '荆州区', '421000', '0');
INSERT INTO `hm_area` VALUES ('421022', '公安县', '421000', '0');
INSERT INTO `hm_area` VALUES ('421023', '监利县', '421000', '0');
INSERT INTO `hm_area` VALUES ('421024', '江陵县', '421000', '0');
INSERT INTO `hm_area` VALUES ('421081', '石首市', '421000', '0');
INSERT INTO `hm_area` VALUES ('421083', '洪湖市', '421000', '0');
INSERT INTO `hm_area` VALUES ('421087', '松滋市', '421000', '0');
INSERT INTO `hm_area` VALUES ('421101', '市辖区', '421100', '0');
INSERT INTO `hm_area` VALUES ('421102', '黄州区', '421100', '0');
INSERT INTO `hm_area` VALUES ('421121', '团风县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421122', '红安县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421123', '罗田县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421124', '英山县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421125', '浠水县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421126', '蕲春县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421127', '黄梅县', '421100', '0');
INSERT INTO `hm_area` VALUES ('421181', '麻城市', '421100', '0');
INSERT INTO `hm_area` VALUES ('421182', '武穴市', '421100', '0');
INSERT INTO `hm_area` VALUES ('421201', '市辖区', '421200', '0');
INSERT INTO `hm_area` VALUES ('421202', '咸安区', '421200', '0');
INSERT INTO `hm_area` VALUES ('421221', '嘉鱼县', '421200', '0');
INSERT INTO `hm_area` VALUES ('421222', '通城县', '421200', '0');
INSERT INTO `hm_area` VALUES ('421223', '崇阳县', '421200', '0');
INSERT INTO `hm_area` VALUES ('421224', '通山县', '421200', '0');
INSERT INTO `hm_area` VALUES ('421281', '赤壁市', '421200', '0');
INSERT INTO `hm_area` VALUES ('421301', '市辖区', '421300', '0');
INSERT INTO `hm_area` VALUES ('421302', '曾都区', '421300', '0');
INSERT INTO `hm_area` VALUES ('421381', '广水市', '421300', '0');
INSERT INTO `hm_area` VALUES ('422801', '恩施市', '422800', '0');
INSERT INTO `hm_area` VALUES ('422802', '利川市', '422800', '0');
INSERT INTO `hm_area` VALUES ('422822', '建始县', '422800', '0');
INSERT INTO `hm_area` VALUES ('422823', '巴东县', '422800', '0');
INSERT INTO `hm_area` VALUES ('422825', '宣恩县', '422800', '0');
INSERT INTO `hm_area` VALUES ('422826', '咸丰县', '422800', '0');
INSERT INTO `hm_area` VALUES ('422827', '来凤县', '422800', '0');
INSERT INTO `hm_area` VALUES ('422828', '鹤峰县', '422800', '0');
INSERT INTO `hm_area` VALUES ('429004', '仙桃市', '429000', '0');
INSERT INTO `hm_area` VALUES ('429005', '潜江市', '429000', '0');
INSERT INTO `hm_area` VALUES ('429006', '天门市', '429000', '0');
INSERT INTO `hm_area` VALUES ('429021', '神农架林区', '429000', '0');
INSERT INTO `hm_area` VALUES ('430101', '市辖区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430102', '芙蓉区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430103', '天心区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430104', '岳麓区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430105', '开福区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430111', '雨花区', '430100', '0');
INSERT INTO `hm_area` VALUES ('430121', '长沙县', '430100', '0');
INSERT INTO `hm_area` VALUES ('430122', '望城县', '430100', '0');
INSERT INTO `hm_area` VALUES ('430124', '宁乡县', '430100', '0');
INSERT INTO `hm_area` VALUES ('430181', '浏阳市', '430100', '0');
INSERT INTO `hm_area` VALUES ('430201', '市辖区', '430200', '0');
INSERT INTO `hm_area` VALUES ('430202', '荷塘区', '430200', '0');
INSERT INTO `hm_area` VALUES ('430203', '芦淞区', '430200', '0');
INSERT INTO `hm_area` VALUES ('430204', '石峰区', '430200', '0');
INSERT INTO `hm_area` VALUES ('430211', '天元区', '430200', '0');
INSERT INTO `hm_area` VALUES ('430221', '株洲县', '430200', '0');
INSERT INTO `hm_area` VALUES ('430223', '攸　县', '430200', '0');
INSERT INTO `hm_area` VALUES ('430224', '茶陵县', '430200', '0');
INSERT INTO `hm_area` VALUES ('430225', '炎陵县', '430200', '0');
INSERT INTO `hm_area` VALUES ('430281', '醴陵市', '430200', '0');
INSERT INTO `hm_area` VALUES ('430301', '市辖区', '430300', '0');
INSERT INTO `hm_area` VALUES ('430302', '雨湖区', '430300', '0');
INSERT INTO `hm_area` VALUES ('430304', '岳塘区', '430300', '0');
INSERT INTO `hm_area` VALUES ('430321', '湘潭县', '430300', '0');
INSERT INTO `hm_area` VALUES ('430381', '湘乡市', '430300', '0');
INSERT INTO `hm_area` VALUES ('430382', '韶山市', '430300', '0');
INSERT INTO `hm_area` VALUES ('430401', '市辖区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430405', '珠晖区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430406', '雁峰区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430407', '石鼓区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430408', '蒸湘区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430412', '南岳区', '430400', '0');
INSERT INTO `hm_area` VALUES ('430421', '衡阳县', '430400', '0');
INSERT INTO `hm_area` VALUES ('430422', '衡南县', '430400', '0');
INSERT INTO `hm_area` VALUES ('430423', '衡山县', '430400', '0');
INSERT INTO `hm_area` VALUES ('430424', '衡东县', '430400', '0');
INSERT INTO `hm_area` VALUES ('430426', '祁东县', '430400', '0');
INSERT INTO `hm_area` VALUES ('430481', '耒阳市', '430400', '0');
INSERT INTO `hm_area` VALUES ('430482', '常宁市', '430400', '0');
INSERT INTO `hm_area` VALUES ('430501', '市辖区', '430500', '0');
INSERT INTO `hm_area` VALUES ('430502', '双清区', '430500', '0');
INSERT INTO `hm_area` VALUES ('430503', '大祥区', '430500', '0');
INSERT INTO `hm_area` VALUES ('430511', '北塔区', '430500', '0');
INSERT INTO `hm_area` VALUES ('430521', '邵东县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430522', '新邵县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430523', '邵阳县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430524', '隆回县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430525', '洞口县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430527', '绥宁县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430528', '新宁县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430529', '城步苗族自治县', '430500', '0');
INSERT INTO `hm_area` VALUES ('430581', '武冈市', '430500', '0');
INSERT INTO `hm_area` VALUES ('430601', '市辖区', '430600', '0');
INSERT INTO `hm_area` VALUES ('430602', '岳阳楼区', '430600', '0');
INSERT INTO `hm_area` VALUES ('430603', '云溪区', '430600', '0');
INSERT INTO `hm_area` VALUES ('430611', '君山区', '430600', '0');
INSERT INTO `hm_area` VALUES ('430621', '岳阳县', '430600', '0');
INSERT INTO `hm_area` VALUES ('430623', '华容县', '430600', '0');
INSERT INTO `hm_area` VALUES ('430624', '湘阴县', '430600', '0');
INSERT INTO `hm_area` VALUES ('430626', '平江县', '430600', '0');
INSERT INTO `hm_area` VALUES ('430681', '汨罗市', '430600', '0');
INSERT INTO `hm_area` VALUES ('430682', '临湘市', '430600', '0');
INSERT INTO `hm_area` VALUES ('430701', '市辖区', '430700', '0');
INSERT INTO `hm_area` VALUES ('430702', '武陵区', '430700', '0');
INSERT INTO `hm_area` VALUES ('430703', '鼎城区', '430700', '0');
INSERT INTO `hm_area` VALUES ('430721', '安乡县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430722', '汉寿县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430723', '澧　县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430724', '临澧县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430725', '桃源县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430726', '石门县', '430700', '0');
INSERT INTO `hm_area` VALUES ('430781', '津市市', '430700', '0');
INSERT INTO `hm_area` VALUES ('430801', '市辖区', '430800', '0');
INSERT INTO `hm_area` VALUES ('430802', '永定区', '430800', '0');
INSERT INTO `hm_area` VALUES ('430811', '武陵源区', '430800', '0');
INSERT INTO `hm_area` VALUES ('430821', '慈利县', '430800', '0');
INSERT INTO `hm_area` VALUES ('430822', '桑植县', '430800', '0');
INSERT INTO `hm_area` VALUES ('430901', '市辖区', '430900', '0');
INSERT INTO `hm_area` VALUES ('430902', '资阳区', '430900', '0');
INSERT INTO `hm_area` VALUES ('430903', '赫山区', '430900', '0');
INSERT INTO `hm_area` VALUES ('430921', '南　县', '430900', '0');
INSERT INTO `hm_area` VALUES ('430922', '桃江县', '430900', '0');
INSERT INTO `hm_area` VALUES ('430923', '安化县', '430900', '0');
INSERT INTO `hm_area` VALUES ('430981', '沅江市', '430900', '0');
INSERT INTO `hm_area` VALUES ('431001', '市辖区', '431000', '0');
INSERT INTO `hm_area` VALUES ('431002', '北湖区', '431000', '0');
INSERT INTO `hm_area` VALUES ('431003', '苏仙区', '431000', '0');
INSERT INTO `hm_area` VALUES ('431021', '桂阳县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431022', '宜章县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431023', '永兴县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431024', '嘉禾县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431025', '临武县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431026', '汝城县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431027', '桂东县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431028', '安仁县', '431000', '0');
INSERT INTO `hm_area` VALUES ('431081', '资兴市', '431000', '0');
INSERT INTO `hm_area` VALUES ('431101', '市辖区', '431100', '0');
INSERT INTO `hm_area` VALUES ('431102', '芝山区', '431100', '0');
INSERT INTO `hm_area` VALUES ('431103', '冷水滩区', '431100', '0');
INSERT INTO `hm_area` VALUES ('431121', '祁阳县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431122', '东安县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431123', '双牌县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431124', '道　县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431125', '江永县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431126', '宁远县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431127', '蓝山县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431128', '新田县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431129', '江华瑶族自治县', '431100', '0');
INSERT INTO `hm_area` VALUES ('431201', '市辖区', '431200', '0');
INSERT INTO `hm_area` VALUES ('431202', '鹤城区', '431200', '0');
INSERT INTO `hm_area` VALUES ('431221', '中方县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431222', '沅陵县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431223', '辰溪县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431224', '溆浦县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431225', '会同县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431226', '麻阳苗族自治县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431227', '新晃侗族自治县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431228', '芷江侗族自治县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431229', '靖州苗族侗族自治县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431230', '通道侗族自治县', '431200', '0');
INSERT INTO `hm_area` VALUES ('431281', '洪江市', '431200', '0');
INSERT INTO `hm_area` VALUES ('431301', '市辖区', '431300', '0');
INSERT INTO `hm_area` VALUES ('431302', '娄星区', '431300', '0');
INSERT INTO `hm_area` VALUES ('431321', '双峰县', '431300', '0');
INSERT INTO `hm_area` VALUES ('431322', '新化县', '431300', '0');
INSERT INTO `hm_area` VALUES ('431381', '冷水江市', '431300', '0');
INSERT INTO `hm_area` VALUES ('431382', '涟源市', '431300', '0');
INSERT INTO `hm_area` VALUES ('433101', '吉首市', '433100', '0');
INSERT INTO `hm_area` VALUES ('433122', '泸溪县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433123', '凤凰县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433124', '花垣县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433125', '保靖县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433126', '古丈县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433127', '永顺县', '433100', '0');
INSERT INTO `hm_area` VALUES ('433130', '龙山县', '433100', '0');
INSERT INTO `hm_area` VALUES ('440101', '市辖区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440102', '东山区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440103', '荔湾区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440104', '越秀区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440105', '海珠区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440106', '天河区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440107', '芳村区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440111', '白云区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440112', '黄埔区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440113', '番禺区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440114', '花都区', '440100', '0');
INSERT INTO `hm_area` VALUES ('440183', '增城市', '440100', '0');
INSERT INTO `hm_area` VALUES ('440184', '从化市', '440100', '0');
INSERT INTO `hm_area` VALUES ('440201', '市辖区', '440200', '0');
INSERT INTO `hm_area` VALUES ('440203', '武江区', '440200', '0');
INSERT INTO `hm_area` VALUES ('440204', '浈江区', '440200', '0');
INSERT INTO `hm_area` VALUES ('440205', '曲江区', '440200', '0');
INSERT INTO `hm_area` VALUES ('440222', '始兴县', '440200', '0');
INSERT INTO `hm_area` VALUES ('440224', '仁化县', '440200', '0');
INSERT INTO `hm_area` VALUES ('440229', '翁源县', '440200', '0');
INSERT INTO `hm_area` VALUES ('440232', '乳源瑶族自治县', '440200', '0');
INSERT INTO `hm_area` VALUES ('440233', '新丰县', '440200', '0');
INSERT INTO `hm_area` VALUES ('440281', '乐昌市', '440200', '0');
INSERT INTO `hm_area` VALUES ('440282', '南雄市', '440200', '0');
INSERT INTO `hm_area` VALUES ('440301', '市辖区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440303', '罗湖区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440304', '福田区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440305', '南山区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440306', '宝安区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440307', '龙岗区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440308', '盐田区', '440300', '0');
INSERT INTO `hm_area` VALUES ('440401', '市辖区', '440400', '0');
INSERT INTO `hm_area` VALUES ('440402', '香洲区', '440400', '0');
INSERT INTO `hm_area` VALUES ('440403', '斗门区', '440400', '0');
INSERT INTO `hm_area` VALUES ('440404', '金湾区', '440400', '0');
INSERT INTO `hm_area` VALUES ('440501', '市辖区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440507', '龙湖区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440511', '金平区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440512', '濠江区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440513', '潮阳区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440514', '潮南区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440515', '澄海区', '440500', '0');
INSERT INTO `hm_area` VALUES ('440523', '南澳县', '440500', '0');
INSERT INTO `hm_area` VALUES ('440601', '市辖区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440604', '禅城区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440605', '南海区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440606', '顺德区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440607', '三水区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440608', '高明区', '440600', '0');
INSERT INTO `hm_area` VALUES ('440701', '市辖区', '440700', '0');
INSERT INTO `hm_area` VALUES ('440703', '蓬江区', '440700', '0');
INSERT INTO `hm_area` VALUES ('440704', '江海区', '440700', '0');
INSERT INTO `hm_area` VALUES ('440705', '新会区', '440700', '0');
INSERT INTO `hm_area` VALUES ('440781', '台山市', '440700', '0');
INSERT INTO `hm_area` VALUES ('440783', '开平市', '440700', '0');
INSERT INTO `hm_area` VALUES ('440784', '鹤山市', '440700', '0');
INSERT INTO `hm_area` VALUES ('440785', '恩平市', '440700', '0');
INSERT INTO `hm_area` VALUES ('440801', '市辖区', '440800', '0');
INSERT INTO `hm_area` VALUES ('440802', '赤坎区', '440800', '0');
INSERT INTO `hm_area` VALUES ('440803', '霞山区', '440800', '0');
INSERT INTO `hm_area` VALUES ('440804', '坡头区', '440800', '0');
INSERT INTO `hm_area` VALUES ('440811', '麻章区', '440800', '0');
INSERT INTO `hm_area` VALUES ('440823', '遂溪县', '440800', '0');
INSERT INTO `hm_area` VALUES ('440825', '徐闻县', '440800', '0');
INSERT INTO `hm_area` VALUES ('440881', '廉江市', '440800', '0');
INSERT INTO `hm_area` VALUES ('440882', '雷州市', '440800', '0');
INSERT INTO `hm_area` VALUES ('440883', '吴川市', '440800', '0');
INSERT INTO `hm_area` VALUES ('440901', '市辖区', '440900', '0');
INSERT INTO `hm_area` VALUES ('440902', '茂南区', '440900', '0');
INSERT INTO `hm_area` VALUES ('440903', '茂港区', '440900', '0');
INSERT INTO `hm_area` VALUES ('440923', '电白县', '440900', '0');
INSERT INTO `hm_area` VALUES ('440981', '高州市', '440900', '0');
INSERT INTO `hm_area` VALUES ('440982', '化州市', '440900', '0');
INSERT INTO `hm_area` VALUES ('440983', '信宜市', '440900', '0');
INSERT INTO `hm_area` VALUES ('441201', '市辖区', '441200', '0');
INSERT INTO `hm_area` VALUES ('441202', '端州区', '441200', '0');
INSERT INTO `hm_area` VALUES ('441203', '鼎湖区', '441200', '0');
INSERT INTO `hm_area` VALUES ('441223', '广宁县', '441200', '0');
INSERT INTO `hm_area` VALUES ('441224', '怀集县', '441200', '0');
INSERT INTO `hm_area` VALUES ('441225', '封开县', '441200', '0');
INSERT INTO `hm_area` VALUES ('441226', '德庆县', '441200', '0');
INSERT INTO `hm_area` VALUES ('441283', '高要市', '441200', '0');
INSERT INTO `hm_area` VALUES ('441284', '四会市', '441200', '0');
INSERT INTO `hm_area` VALUES ('441301', '市辖区', '441300', '0');
INSERT INTO `hm_area` VALUES ('441302', '惠城区', '441300', '0');
INSERT INTO `hm_area` VALUES ('441303', '惠阳区', '441300', '0');
INSERT INTO `hm_area` VALUES ('441322', '博罗县', '441300', '0');
INSERT INTO `hm_area` VALUES ('441323', '惠东县', '441300', '0');
INSERT INTO `hm_area` VALUES ('441324', '龙门县', '441300', '0');
INSERT INTO `hm_area` VALUES ('441401', '市辖区', '441400', '0');
INSERT INTO `hm_area` VALUES ('441402', '梅江区', '441400', '0');
INSERT INTO `hm_area` VALUES ('441421', '梅　县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441422', '大埔县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441423', '丰顺县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441424', '五华县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441426', '平远县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441427', '蕉岭县', '441400', '0');
INSERT INTO `hm_area` VALUES ('441481', '兴宁市', '441400', '0');
INSERT INTO `hm_area` VALUES ('441501', '市辖区', '441500', '0');
INSERT INTO `hm_area` VALUES ('441502', '城　区', '441500', '0');
INSERT INTO `hm_area` VALUES ('441521', '海丰县', '441500', '0');
INSERT INTO `hm_area` VALUES ('441523', '陆河县', '441500', '0');
INSERT INTO `hm_area` VALUES ('441581', '陆丰市', '441500', '0');
INSERT INTO `hm_area` VALUES ('441601', '市辖区', '441600', '0');
INSERT INTO `hm_area` VALUES ('441602', '源城区', '441600', '0');
INSERT INTO `hm_area` VALUES ('441621', '紫金县', '441600', '0');
INSERT INTO `hm_area` VALUES ('441622', '龙川县', '441600', '0');
INSERT INTO `hm_area` VALUES ('441623', '连平县', '441600', '0');
INSERT INTO `hm_area` VALUES ('441624', '和平县', '441600', '0');
INSERT INTO `hm_area` VALUES ('441625', '东源县', '441600', '0');
INSERT INTO `hm_area` VALUES ('441701', '市辖区', '441700', '0');
INSERT INTO `hm_area` VALUES ('441702', '江城区', '441700', '0');
INSERT INTO `hm_area` VALUES ('441721', '阳西县', '441700', '0');
INSERT INTO `hm_area` VALUES ('441723', '阳东县', '441700', '0');
INSERT INTO `hm_area` VALUES ('441781', '阳春市', '441700', '0');
INSERT INTO `hm_area` VALUES ('441801', '市辖区', '441800', '0');
INSERT INTO `hm_area` VALUES ('441802', '清城区', '441800', '0');
INSERT INTO `hm_area` VALUES ('441821', '佛冈县', '441800', '0');
INSERT INTO `hm_area` VALUES ('441823', '阳山县', '441800', '0');
INSERT INTO `hm_area` VALUES ('441825', '连山壮族瑶族自治县', '441800', '0');
INSERT INTO `hm_area` VALUES ('441826', '连南瑶族自治县', '441800', '0');
INSERT INTO `hm_area` VALUES ('441827', '清新县', '441800', '0');
INSERT INTO `hm_area` VALUES ('441881', '英德市', '441800', '0');
INSERT INTO `hm_area` VALUES ('441882', '连州市', '441800', '0');
INSERT INTO `hm_area` VALUES ('445101', '市辖区', '445100', '0');
INSERT INTO `hm_area` VALUES ('445102', '湘桥区', '445100', '0');
INSERT INTO `hm_area` VALUES ('445121', '潮安县', '445100', '0');
INSERT INTO `hm_area` VALUES ('445122', '饶平县', '445100', '0');
INSERT INTO `hm_area` VALUES ('445201', '市辖区', '445200', '0');
INSERT INTO `hm_area` VALUES ('445202', '榕城区', '445200', '0');
INSERT INTO `hm_area` VALUES ('445221', '揭东县', '445200', '0');
INSERT INTO `hm_area` VALUES ('445222', '揭西县', '445200', '0');
INSERT INTO `hm_area` VALUES ('445224', '惠来县', '445200', '0');
INSERT INTO `hm_area` VALUES ('445281', '普宁市', '445200', '0');
INSERT INTO `hm_area` VALUES ('445301', '市辖区', '445300', '0');
INSERT INTO `hm_area` VALUES ('445302', '云城区', '445300', '0');
INSERT INTO `hm_area` VALUES ('445321', '新兴县', '445300', '0');
INSERT INTO `hm_area` VALUES ('445322', '郁南县', '445300', '0');
INSERT INTO `hm_area` VALUES ('445323', '云安县', '445300', '0');
INSERT INTO `hm_area` VALUES ('445381', '罗定市', '445300', '0');
INSERT INTO `hm_area` VALUES ('450101', '市辖区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450102', '兴宁区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450103', '青秀区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450105', '江南区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450107', '西乡塘区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450108', '良庆区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450109', '邕宁区', '450100', '0');
INSERT INTO `hm_area` VALUES ('450122', '武鸣县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450123', '隆安县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450124', '马山县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450125', '上林县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450126', '宾阳县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450127', '横　县', '450100', '0');
INSERT INTO `hm_area` VALUES ('450201', '市辖区', '450200', '0');
INSERT INTO `hm_area` VALUES ('450202', '城中区', '450200', '0');
INSERT INTO `hm_area` VALUES ('450203', '鱼峰区', '450200', '0');
INSERT INTO `hm_area` VALUES ('450204', '柳南区', '450200', '0');
INSERT INTO `hm_area` VALUES ('450205', '柳北区', '450200', '0');
INSERT INTO `hm_area` VALUES ('450221', '柳江县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450222', '柳城县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450223', '鹿寨县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450224', '融安县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450225', '融水苗族自治县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450226', '三江侗族自治县', '450200', '0');
INSERT INTO `hm_area` VALUES ('450301', '市辖区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450302', '秀峰区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450303', '叠彩区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450304', '象山区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450305', '七星区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450311', '雁山区', '450300', '0');
INSERT INTO `hm_area` VALUES ('450321', '阳朔县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450322', '临桂县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450323', '灵川县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450324', '全州县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450325', '兴安县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450326', '永福县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450327', '灌阳县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450328', '龙胜各族自治县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450329', '资源县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450330', '平乐县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450331', '荔蒲县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450332', '恭城瑶族自治县', '450300', '0');
INSERT INTO `hm_area` VALUES ('450401', '市辖区', '450400', '0');
INSERT INTO `hm_area` VALUES ('450403', '万秀区', '450400', '0');
INSERT INTO `hm_area` VALUES ('450404', '蝶山区', '450400', '0');
INSERT INTO `hm_area` VALUES ('450405', '长洲区', '450400', '0');
INSERT INTO `hm_area` VALUES ('450421', '苍梧县', '450400', '0');
INSERT INTO `hm_area` VALUES ('450422', '藤　县', '450400', '0');
INSERT INTO `hm_area` VALUES ('450423', '蒙山县', '450400', '0');
INSERT INTO `hm_area` VALUES ('450481', '岑溪市', '450400', '0');
INSERT INTO `hm_area` VALUES ('450501', '市辖区', '450500', '0');
INSERT INTO `hm_area` VALUES ('450502', '海城区', '450500', '0');
INSERT INTO `hm_area` VALUES ('450503', '银海区', '450500', '0');
INSERT INTO `hm_area` VALUES ('450512', '铁山港区', '450500', '0');
INSERT INTO `hm_area` VALUES ('450521', '合浦县', '450500', '0');
INSERT INTO `hm_area` VALUES ('450601', '市辖区', '450600', '0');
INSERT INTO `hm_area` VALUES ('450602', '港口区', '450600', '0');
INSERT INTO `hm_area` VALUES ('450603', '防城区', '450600', '0');
INSERT INTO `hm_area` VALUES ('450621', '上思县', '450600', '0');
INSERT INTO `hm_area` VALUES ('450681', '东兴市', '450600', '0');
INSERT INTO `hm_area` VALUES ('450701', '市辖区', '450700', '0');
INSERT INTO `hm_area` VALUES ('450702', '钦南区', '450700', '0');
INSERT INTO `hm_area` VALUES ('450703', '钦北区', '450700', '0');
INSERT INTO `hm_area` VALUES ('450721', '灵山县', '450700', '0');
INSERT INTO `hm_area` VALUES ('450722', '浦北县', '450700', '0');
INSERT INTO `hm_area` VALUES ('450801', '市辖区', '450800', '0');
INSERT INTO `hm_area` VALUES ('450802', '港北区', '450800', '0');
INSERT INTO `hm_area` VALUES ('450803', '港南区', '450800', '0');
INSERT INTO `hm_area` VALUES ('450804', '覃塘区', '450800', '0');
INSERT INTO `hm_area` VALUES ('450821', '平南县', '450800', '0');
INSERT INTO `hm_area` VALUES ('450881', '桂平市', '450800', '0');
INSERT INTO `hm_area` VALUES ('450901', '市辖区', '450900', '0');
INSERT INTO `hm_area` VALUES ('450902', '玉州区', '450900', '0');
INSERT INTO `hm_area` VALUES ('450921', '容　县', '450900', '0');
INSERT INTO `hm_area` VALUES ('450922', '陆川县', '450900', '0');
INSERT INTO `hm_area` VALUES ('450923', '博白县', '450900', '0');
INSERT INTO `hm_area` VALUES ('450924', '兴业县', '450900', '0');
INSERT INTO `hm_area` VALUES ('450981', '北流市', '450900', '0');
INSERT INTO `hm_area` VALUES ('451001', '市辖区', '451000', '0');
INSERT INTO `hm_area` VALUES ('451002', '右江区', '451000', '0');
INSERT INTO `hm_area` VALUES ('451021', '田阳县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451022', '田东县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451023', '平果县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451024', '德保县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451025', '靖西县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451026', '那坡县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451027', '凌云县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451028', '乐业县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451029', '田林县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451030', '西林县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451031', '隆林各族自治县', '451000', '0');
INSERT INTO `hm_area` VALUES ('451101', '市辖区', '451100', '0');
INSERT INTO `hm_area` VALUES ('451102', '八步区', '451100', '0');
INSERT INTO `hm_area` VALUES ('451121', '昭平县', '451100', '0');
INSERT INTO `hm_area` VALUES ('451122', '钟山县', '451100', '0');
INSERT INTO `hm_area` VALUES ('451123', '富川瑶族自治县', '451100', '0');
INSERT INTO `hm_area` VALUES ('451201', '市辖区', '451200', '0');
INSERT INTO `hm_area` VALUES ('451202', '金城江区', '451200', '0');
INSERT INTO `hm_area` VALUES ('451221', '南丹县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451222', '天峨县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451223', '凤山县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451224', '东兰县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451225', '罗城仫佬族自治县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451226', '环江毛南族自治县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451227', '巴马瑶族自治县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451228', '都安瑶族自治县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451229', '大化瑶族自治县', '451200', '0');
INSERT INTO `hm_area` VALUES ('451281', '宜州市', '451200', '0');
INSERT INTO `hm_area` VALUES ('451301', '市辖区', '451300', '0');
INSERT INTO `hm_area` VALUES ('451302', '兴宾区', '451300', '0');
INSERT INTO `hm_area` VALUES ('451321', '忻城县', '451300', '0');
INSERT INTO `hm_area` VALUES ('451322', '象州县', '451300', '0');
INSERT INTO `hm_area` VALUES ('451323', '武宣县', '451300', '0');
INSERT INTO `hm_area` VALUES ('451324', '金秀瑶族自治县', '451300', '0');
INSERT INTO `hm_area` VALUES ('451381', '合山市', '451300', '0');
INSERT INTO `hm_area` VALUES ('451401', '市辖区', '451400', '0');
INSERT INTO `hm_area` VALUES ('451402', '江洲区', '451400', '0');
INSERT INTO `hm_area` VALUES ('451421', '扶绥县', '451400', '0');
INSERT INTO `hm_area` VALUES ('451422', '宁明县', '451400', '0');
INSERT INTO `hm_area` VALUES ('451423', '龙州县', '451400', '0');
INSERT INTO `hm_area` VALUES ('451424', '大新县', '451400', '0');
INSERT INTO `hm_area` VALUES ('451425', '天等县', '451400', '0');
INSERT INTO `hm_area` VALUES ('451481', '凭祥市', '451400', '0');
INSERT INTO `hm_area` VALUES ('460101', '市辖区', '460100', '0');
INSERT INTO `hm_area` VALUES ('460105', '秀英区', '460100', '0');
INSERT INTO `hm_area` VALUES ('460106', '龙华区', '460100', '0');
INSERT INTO `hm_area` VALUES ('460107', '琼山区', '460100', '0');
INSERT INTO `hm_area` VALUES ('460108', '美兰区', '460100', '0');
INSERT INTO `hm_area` VALUES ('460201', '市辖区', '460200', '0');
INSERT INTO `hm_area` VALUES ('469001', '五指山市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469002', '琼海市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469003', '儋州市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469005', '文昌市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469006', '万宁市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469007', '东方市', '469000', '0');
INSERT INTO `hm_area` VALUES ('469025', '定安县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469026', '屯昌县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469027', '澄迈县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469028', '临高县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469030', '白沙黎族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469031', '昌江黎族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469033', '乐东黎族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469034', '陵水黎族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469035', '保亭黎族苗族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469036', '琼中黎族苗族自治县', '469000', '0');
INSERT INTO `hm_area` VALUES ('469037', '西沙群岛', '469000', '0');
INSERT INTO `hm_area` VALUES ('469038', '南沙群岛', '469000', '0');
INSERT INTO `hm_area` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000', '0');
INSERT INTO `hm_area` VALUES ('500101', '万州区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500102', '涪陵区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500103', '渝中区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500104', '大渡口区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500105', '江北区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500106', '沙坪坝区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500107', '九龙坡区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500108', '南岸区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500109', '北碚区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500110', '万盛区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500111', '双桥区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500112', '渝北区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500113', '巴南区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500114', '黔江区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500115', '长寿区', '500100', '0');
INSERT INTO `hm_area` VALUES ('500222', '綦江县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500223', '潼南县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500224', '铜梁县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500225', '大足县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500226', '荣昌县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500227', '璧山县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500228', '梁平县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500229', '城口县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500230', '丰都县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500231', '垫江县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500232', '武隆县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500233', '忠　县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500234', '开　县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500235', '云阳县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500236', '奉节县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500237', '巫山县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500238', '巫溪县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500240', '石柱土家族自治县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500241', '秀山土家族苗族自治县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500242', '酉阳土家族苗族自治县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500243', '彭水苗族土家族自治县', '500200', '0');
INSERT INTO `hm_area` VALUES ('500381', '江津市', '500300', '0');
INSERT INTO `hm_area` VALUES ('500382', '合川市', '500300', '0');
INSERT INTO `hm_area` VALUES ('500383', '永川市', '500300', '0');
INSERT INTO `hm_area` VALUES ('500384', '南川市', '500300', '0');
INSERT INTO `hm_area` VALUES ('510101', '市辖区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510104', '锦江区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510105', '青羊区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510106', '金牛区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510107', '武侯区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510108', '成华区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510112', '龙泉驿区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510113', '青白江区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510114', '新都区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510115', '温江区', '510100', '0');
INSERT INTO `hm_area` VALUES ('510121', '金堂县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510122', '双流县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510124', '郫　县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510129', '大邑县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510131', '蒲江县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510132', '新津县', '510100', '0');
INSERT INTO `hm_area` VALUES ('510181', '都江堰市', '510100', '0');
INSERT INTO `hm_area` VALUES ('510182', '彭州市', '510100', '0');
INSERT INTO `hm_area` VALUES ('510183', '邛崃市', '510100', '0');
INSERT INTO `hm_area` VALUES ('510184', '崇州市', '510100', '0');
INSERT INTO `hm_area` VALUES ('510301', '市辖区', '510300', '0');
INSERT INTO `hm_area` VALUES ('510302', '自流井区', '510300', '0');
INSERT INTO `hm_area` VALUES ('510303', '贡井区', '510300', '0');
INSERT INTO `hm_area` VALUES ('510304', '大安区', '510300', '0');
INSERT INTO `hm_area` VALUES ('510311', '沿滩区', '510300', '0');
INSERT INTO `hm_area` VALUES ('510321', '荣　县', '510300', '0');
INSERT INTO `hm_area` VALUES ('510322', '富顺县', '510300', '0');
INSERT INTO `hm_area` VALUES ('510401', '市辖区', '510400', '0');
INSERT INTO `hm_area` VALUES ('510402', '东　区', '510400', '0');
INSERT INTO `hm_area` VALUES ('510403', '西　区', '510400', '0');
INSERT INTO `hm_area` VALUES ('510411', '仁和区', '510400', '0');
INSERT INTO `hm_area` VALUES ('510421', '米易县', '510400', '0');
INSERT INTO `hm_area` VALUES ('510422', '盐边县', '510400', '0');
INSERT INTO `hm_area` VALUES ('510501', '市辖区', '510500', '0');
INSERT INTO `hm_area` VALUES ('510502', '江阳区', '510500', '0');
INSERT INTO `hm_area` VALUES ('510503', '纳溪区', '510500', '0');
INSERT INTO `hm_area` VALUES ('510504', '龙马潭区', '510500', '0');
INSERT INTO `hm_area` VALUES ('510521', '泸　县', '510500', '0');
INSERT INTO `hm_area` VALUES ('510522', '合江县', '510500', '0');
INSERT INTO `hm_area` VALUES ('510524', '叙永县', '510500', '0');
INSERT INTO `hm_area` VALUES ('510525', '古蔺县', '510500', '0');
INSERT INTO `hm_area` VALUES ('510601', '市辖区', '510600', '0');
INSERT INTO `hm_area` VALUES ('510603', '旌阳区', '510600', '0');
INSERT INTO `hm_area` VALUES ('510623', '中江县', '510600', '0');
INSERT INTO `hm_area` VALUES ('510626', '罗江县', '510600', '0');
INSERT INTO `hm_area` VALUES ('510681', '广汉市', '510600', '0');
INSERT INTO `hm_area` VALUES ('510682', '什邡市', '510600', '0');
INSERT INTO `hm_area` VALUES ('510683', '绵竹市', '510600', '0');
INSERT INTO `hm_area` VALUES ('510701', '市辖区', '510700', '0');
INSERT INTO `hm_area` VALUES ('510703', '涪城区', '510700', '0');
INSERT INTO `hm_area` VALUES ('510704', '游仙区', '510700', '0');
INSERT INTO `hm_area` VALUES ('510722', '三台县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510723', '盐亭县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510724', '安　县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510725', '梓潼县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510726', '北川羌族自治县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510727', '平武县', '510700', '0');
INSERT INTO `hm_area` VALUES ('510781', '江油市', '510700', '0');
INSERT INTO `hm_area` VALUES ('510801', '市辖区', '510800', '0');
INSERT INTO `hm_area` VALUES ('510802', '市中区', '510800', '0');
INSERT INTO `hm_area` VALUES ('510811', '元坝区', '510800', '0');
INSERT INTO `hm_area` VALUES ('510812', '朝天区', '510800', '0');
INSERT INTO `hm_area` VALUES ('510821', '旺苍县', '510800', '0');
INSERT INTO `hm_area` VALUES ('510822', '青川县', '510800', '0');
INSERT INTO `hm_area` VALUES ('510823', '剑阁县', '510800', '0');
INSERT INTO `hm_area` VALUES ('510824', '苍溪县', '510800', '0');
INSERT INTO `hm_area` VALUES ('510901', '市辖区', '510900', '0');
INSERT INTO `hm_area` VALUES ('510903', '船山区', '510900', '0');
INSERT INTO `hm_area` VALUES ('510904', '安居区', '510900', '0');
INSERT INTO `hm_area` VALUES ('510921', '蓬溪县', '510900', '0');
INSERT INTO `hm_area` VALUES ('510922', '射洪县', '510900', '0');
INSERT INTO `hm_area` VALUES ('510923', '大英县', '510900', '0');
INSERT INTO `hm_area` VALUES ('511001', '市辖区', '511000', '0');
INSERT INTO `hm_area` VALUES ('511002', '市中区', '511000', '0');
INSERT INTO `hm_area` VALUES ('511011', '东兴区', '511000', '0');
INSERT INTO `hm_area` VALUES ('511024', '威远县', '511000', '0');
INSERT INTO `hm_area` VALUES ('511025', '资中县', '511000', '0');
INSERT INTO `hm_area` VALUES ('511028', '隆昌县', '511000', '0');
INSERT INTO `hm_area` VALUES ('511101', '市辖区', '511100', '0');
INSERT INTO `hm_area` VALUES ('511102', '市中区', '511100', '0');
INSERT INTO `hm_area` VALUES ('511111', '沙湾区', '511100', '0');
INSERT INTO `hm_area` VALUES ('511112', '五通桥区', '511100', '0');
INSERT INTO `hm_area` VALUES ('511113', '金口河区', '511100', '0');
INSERT INTO `hm_area` VALUES ('511123', '犍为县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511124', '井研县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511126', '夹江县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511129', '沐川县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511132', '峨边彝族自治县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511133', '马边彝族自治县', '511100', '0');
INSERT INTO `hm_area` VALUES ('511181', '峨眉山市', '511100', '0');
INSERT INTO `hm_area` VALUES ('511301', '市辖区', '511300', '0');
INSERT INTO `hm_area` VALUES ('511302', '顺庆区', '511300', '0');
INSERT INTO `hm_area` VALUES ('511303', '高坪区', '511300', '0');
INSERT INTO `hm_area` VALUES ('511304', '嘉陵区', '511300', '0');
INSERT INTO `hm_area` VALUES ('511321', '南部县', '511300', '0');
INSERT INTO `hm_area` VALUES ('511322', '营山县', '511300', '0');
INSERT INTO `hm_area` VALUES ('511323', '蓬安县', '511300', '0');
INSERT INTO `hm_area` VALUES ('511324', '仪陇县', '511300', '0');
INSERT INTO `hm_area` VALUES ('511325', '西充县', '511300', '0');
INSERT INTO `hm_area` VALUES ('511381', '阆中市', '511300', '0');
INSERT INTO `hm_area` VALUES ('511401', '市辖区', '511400', '0');
INSERT INTO `hm_area` VALUES ('511402', '东坡区', '511400', '0');
INSERT INTO `hm_area` VALUES ('511421', '仁寿县', '511400', '0');
INSERT INTO `hm_area` VALUES ('511422', '彭山县', '511400', '0');
INSERT INTO `hm_area` VALUES ('511423', '洪雅县', '511400', '0');
INSERT INTO `hm_area` VALUES ('511424', '丹棱县', '511400', '0');
INSERT INTO `hm_area` VALUES ('511425', '青神县', '511400', '0');
INSERT INTO `hm_area` VALUES ('511501', '市辖区', '511500', '0');
INSERT INTO `hm_area` VALUES ('511502', '翠屏区', '511500', '0');
INSERT INTO `hm_area` VALUES ('511521', '宜宾县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511522', '南溪县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511523', '江安县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511524', '长宁县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511525', '高　县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511526', '珙　县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511527', '筠连县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511528', '兴文县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511529', '屏山县', '511500', '0');
INSERT INTO `hm_area` VALUES ('511601', '市辖区', '511600', '0');
INSERT INTO `hm_area` VALUES ('511602', '广安区', '511600', '0');
INSERT INTO `hm_area` VALUES ('511621', '岳池县', '511600', '0');
INSERT INTO `hm_area` VALUES ('511622', '武胜县', '511600', '0');
INSERT INTO `hm_area` VALUES ('511623', '邻水县', '511600', '0');
INSERT INTO `hm_area` VALUES ('511681', '华莹市', '511600', '0');
INSERT INTO `hm_area` VALUES ('511701', '市辖区', '511700', '0');
INSERT INTO `hm_area` VALUES ('511702', '通川区', '511700', '0');
INSERT INTO `hm_area` VALUES ('511721', '达　县', '511700', '0');
INSERT INTO `hm_area` VALUES ('511722', '宣汉县', '511700', '0');
INSERT INTO `hm_area` VALUES ('511723', '开江县', '511700', '0');
INSERT INTO `hm_area` VALUES ('511724', '大竹县', '511700', '0');
INSERT INTO `hm_area` VALUES ('511725', '渠　县', '511700', '0');
INSERT INTO `hm_area` VALUES ('511781', '万源市', '511700', '0');
INSERT INTO `hm_area` VALUES ('511801', '市辖区', '511800', '0');
INSERT INTO `hm_area` VALUES ('511802', '雨城区', '511800', '0');
INSERT INTO `hm_area` VALUES ('511821', '名山县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511822', '荥经县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511823', '汉源县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511824', '石棉县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511825', '天全县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511826', '芦山县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511827', '宝兴县', '511800', '0');
INSERT INTO `hm_area` VALUES ('511901', '市辖区', '511900', '0');
INSERT INTO `hm_area` VALUES ('511902', '巴州区', '511900', '0');
INSERT INTO `hm_area` VALUES ('511921', '通江县', '511900', '0');
INSERT INTO `hm_area` VALUES ('511922', '南江县', '511900', '0');
INSERT INTO `hm_area` VALUES ('511923', '平昌县', '511900', '0');
INSERT INTO `hm_area` VALUES ('512001', '市辖区', '512000', '0');
INSERT INTO `hm_area` VALUES ('512002', '雁江区', '512000', '0');
INSERT INTO `hm_area` VALUES ('512021', '安岳县', '512000', '0');
INSERT INTO `hm_area` VALUES ('512022', '乐至县', '512000', '0');
INSERT INTO `hm_area` VALUES ('512081', '简阳市', '512000', '0');
INSERT INTO `hm_area` VALUES ('513221', '汶川县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513222', '理　县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513223', '茂　县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513224', '松潘县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513225', '九寨沟县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513226', '金川县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513227', '小金县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513228', '黑水县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513229', '马尔康县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513230', '壤塘县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513231', '阿坝县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513232', '若尔盖县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513233', '红原县', '513200', '0');
INSERT INTO `hm_area` VALUES ('513321', '康定县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513322', '泸定县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513323', '丹巴县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513324', '九龙县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513325', '雅江县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513326', '道孚县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513327', '炉霍县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513328', '甘孜县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513329', '新龙县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513330', '德格县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513331', '白玉县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513332', '石渠县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513333', '色达县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513334', '理塘县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513335', '巴塘县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513336', '乡城县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513337', '稻城县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513338', '得荣县', '513300', '0');
INSERT INTO `hm_area` VALUES ('513401', '西昌市', '513400', '0');
INSERT INTO `hm_area` VALUES ('513422', '木里藏族自治县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513423', '盐源县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513424', '德昌县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513425', '会理县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513426', '会东县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513427', '宁南县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513428', '普格县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513429', '布拖县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513430', '金阳县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513431', '昭觉县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513432', '喜德县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513433', '冕宁县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513434', '越西县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513435', '甘洛县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513436', '美姑县', '513400', '0');
INSERT INTO `hm_area` VALUES ('513437', '雷波县', '513400', '0');
INSERT INTO `hm_area` VALUES ('520101', '市辖区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520102', '南明区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520103', '云岩区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520111', '花溪区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520112', '乌当区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520113', '白云区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520114', '小河区', '520100', '0');
INSERT INTO `hm_area` VALUES ('520121', '开阳县', '520100', '0');
INSERT INTO `hm_area` VALUES ('520122', '息烽县', '520100', '0');
INSERT INTO `hm_area` VALUES ('520123', '修文县', '520100', '0');
INSERT INTO `hm_area` VALUES ('520181', '清镇市', '520100', '0');
INSERT INTO `hm_area` VALUES ('520201', '钟山区', '520200', '0');
INSERT INTO `hm_area` VALUES ('520203', '六枝特区', '520200', '0');
INSERT INTO `hm_area` VALUES ('520221', '水城县', '520200', '0');
INSERT INTO `hm_area` VALUES ('520222', '盘　县', '520200', '0');
INSERT INTO `hm_area` VALUES ('520301', '市辖区', '520300', '0');
INSERT INTO `hm_area` VALUES ('520302', '红花岗区', '520300', '0');
INSERT INTO `hm_area` VALUES ('520303', '汇川区', '520300', '0');
INSERT INTO `hm_area` VALUES ('520321', '遵义县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520322', '桐梓县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520323', '绥阳县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520324', '正安县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520327', '凤冈县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520328', '湄潭县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520329', '余庆县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520330', '习水县', '520300', '0');
INSERT INTO `hm_area` VALUES ('520381', '赤水市', '520300', '0');
INSERT INTO `hm_area` VALUES ('520382', '仁怀市', '520300', '0');
INSERT INTO `hm_area` VALUES ('520401', '市辖区', '520400', '0');
INSERT INTO `hm_area` VALUES ('520402', '西秀区', '520400', '0');
INSERT INTO `hm_area` VALUES ('520421', '平坝县', '520400', '0');
INSERT INTO `hm_area` VALUES ('520422', '普定县', '520400', '0');
INSERT INTO `hm_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400', '0');
INSERT INTO `hm_area` VALUES ('520424', '关岭布依族苗族自治县', '520400', '0');
INSERT INTO `hm_area` VALUES ('520425', '紫云苗族布依族自治县', '520400', '0');
INSERT INTO `hm_area` VALUES ('522201', '铜仁市', '522200', '0');
INSERT INTO `hm_area` VALUES ('522222', '江口县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522223', '玉屏侗族自治县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522224', '石阡县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522225', '思南县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522226', '印江土家族苗族自治县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522227', '德江县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522228', '沿河土家族自治县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522229', '松桃苗族自治县', '522200', '0');
INSERT INTO `hm_area` VALUES ('522230', '万山特区', '522200', '0');
INSERT INTO `hm_area` VALUES ('522301', '兴义市', '522300', '0');
INSERT INTO `hm_area` VALUES ('522322', '兴仁县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522323', '普安县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522324', '晴隆县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522325', '贞丰县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522326', '望谟县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522327', '册亨县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522328', '安龙县', '522300', '0');
INSERT INTO `hm_area` VALUES ('522401', '毕节市', '522400', '0');
INSERT INTO `hm_area` VALUES ('522422', '大方县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522423', '黔西县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522424', '金沙县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522425', '织金县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522426', '纳雍县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522427', '威宁彝族回族苗族自治县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522428', '赫章县', '522400', '0');
INSERT INTO `hm_area` VALUES ('522601', '凯里市', '522600', '0');
INSERT INTO `hm_area` VALUES ('522622', '黄平县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522623', '施秉县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522624', '三穗县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522625', '镇远县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522626', '岑巩县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522627', '天柱县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522628', '锦屏县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522629', '剑河县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522630', '台江县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522631', '黎平县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522632', '榕江县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522633', '从江县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522634', '雷山县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522635', '麻江县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522636', '丹寨县', '522600', '0');
INSERT INTO `hm_area` VALUES ('522701', '都匀市', '522700', '0');
INSERT INTO `hm_area` VALUES ('522702', '福泉市', '522700', '0');
INSERT INTO `hm_area` VALUES ('522722', '荔波县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522723', '贵定县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522725', '瓮安县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522726', '独山县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522727', '平塘县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522728', '罗甸县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522729', '长顺县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522730', '龙里县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522731', '惠水县', '522700', '0');
INSERT INTO `hm_area` VALUES ('522732', '三都水族自治县', '522700', '0');
INSERT INTO `hm_area` VALUES ('530101', '市辖区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530102', '五华区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530103', '盘龙区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530111', '官渡区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530112', '西山区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530113', '东川区', '530100', '0');
INSERT INTO `hm_area` VALUES ('530121', '呈贡县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530122', '晋宁县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530124', '富民县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530125', '宜良县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530126', '石林彝族自治县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530127', '嵩明县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530129', '寻甸回族彝族自治县', '530100', '0');
INSERT INTO `hm_area` VALUES ('530181', '安宁市', '530100', '0');
INSERT INTO `hm_area` VALUES ('530301', '市辖区', '530300', '0');
INSERT INTO `hm_area` VALUES ('530302', '麒麟区', '530300', '0');
INSERT INTO `hm_area` VALUES ('530321', '马龙县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530322', '陆良县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530323', '师宗县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530324', '罗平县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530325', '富源县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530326', '会泽县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530328', '沾益县', '530300', '0');
INSERT INTO `hm_area` VALUES ('530381', '宣威市', '530300', '0');
INSERT INTO `hm_area` VALUES ('530401', '市辖区', '530400', '0');
INSERT INTO `hm_area` VALUES ('530402', '红塔区', '530400', '0');
INSERT INTO `hm_area` VALUES ('530421', '江川县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530422', '澄江县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530423', '通海县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530424', '华宁县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530425', '易门县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530426', '峨山彝族自治县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530427', '新平彝族傣族自治县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400', '0');
INSERT INTO `hm_area` VALUES ('530501', '市辖区', '530500', '0');
INSERT INTO `hm_area` VALUES ('530502', '隆阳区', '530500', '0');
INSERT INTO `hm_area` VALUES ('530521', '施甸县', '530500', '0');
INSERT INTO `hm_area` VALUES ('530522', '腾冲县', '530500', '0');
INSERT INTO `hm_area` VALUES ('530523', '龙陵县', '530500', '0');
INSERT INTO `hm_area` VALUES ('530524', '昌宁县', '530500', '0');
INSERT INTO `hm_area` VALUES ('530601', '市辖区', '530600', '0');
INSERT INTO `hm_area` VALUES ('530602', '昭阳区', '530600', '0');
INSERT INTO `hm_area` VALUES ('530621', '鲁甸县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530622', '巧家县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530623', '盐津县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530624', '大关县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530625', '永善县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530626', '绥江县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530627', '镇雄县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530628', '彝良县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530629', '威信县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530630', '水富县', '530600', '0');
INSERT INTO `hm_area` VALUES ('530701', '市辖区', '530700', '0');
INSERT INTO `hm_area` VALUES ('530702', '古城区', '530700', '0');
INSERT INTO `hm_area` VALUES ('530721', '玉龙纳西族自治县', '530700', '0');
INSERT INTO `hm_area` VALUES ('530722', '永胜县', '530700', '0');
INSERT INTO `hm_area` VALUES ('530723', '华坪县', '530700', '0');
INSERT INTO `hm_area` VALUES ('530724', '宁蒗彝族自治县', '530700', '0');
INSERT INTO `hm_area` VALUES ('530801', '市辖区', '530800', '0');
INSERT INTO `hm_area` VALUES ('530802', '翠云区', '530800', '0');
INSERT INTO `hm_area` VALUES ('530821', '普洱哈尼族彝族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530822', '墨江哈尼族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530823', '景东彝族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530824', '景谷傣族彝族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530828', '澜沧拉祜族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530829', '西盟佤族自治县', '530800', '0');
INSERT INTO `hm_area` VALUES ('530901', '市辖区', '530900', '0');
INSERT INTO `hm_area` VALUES ('530902', '临翔区', '530900', '0');
INSERT INTO `hm_area` VALUES ('530921', '凤庆县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530922', '云　县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530923', '永德县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530924', '镇康县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530926', '耿马傣族佤族自治县', '530900', '0');
INSERT INTO `hm_area` VALUES ('530927', '沧源佤族自治县', '530900', '0');
INSERT INTO `hm_area` VALUES ('532301', '楚雄市', '532300', '0');
INSERT INTO `hm_area` VALUES ('532322', '双柏县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532323', '牟定县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532324', '南华县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532325', '姚安县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532326', '大姚县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532327', '永仁县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532328', '元谋县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532329', '武定县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532331', '禄丰县', '532300', '0');
INSERT INTO `hm_area` VALUES ('532501', '个旧市', '532500', '0');
INSERT INTO `hm_area` VALUES ('532502', '开远市', '532500', '0');
INSERT INTO `hm_area` VALUES ('532522', '蒙自县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532523', '屏边苗族自治县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532524', '建水县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532525', '石屏县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532526', '弥勒县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532527', '泸西县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532528', '元阳县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532529', '红河县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532531', '绿春县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532532', '河口瑶族自治县', '532500', '0');
INSERT INTO `hm_area` VALUES ('532621', '文山县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532622', '砚山县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532623', '西畴县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532624', '麻栗坡县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532625', '马关县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532626', '丘北县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532627', '广南县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532628', '富宁县', '532600', '0');
INSERT INTO `hm_area` VALUES ('532801', '景洪市', '532800', '0');
INSERT INTO `hm_area` VALUES ('532822', '勐海县', '532800', '0');
INSERT INTO `hm_area` VALUES ('532823', '勐腊县', '532800', '0');
INSERT INTO `hm_area` VALUES ('532901', '大理市', '532900', '0');
INSERT INTO `hm_area` VALUES ('532922', '漾濞彝族自治县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532923', '祥云县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532924', '宾川县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532925', '弥渡县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532926', '南涧彝族自治县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532927', '巍山彝族回族自治县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532928', '永平县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532929', '云龙县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532930', '洱源县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532931', '剑川县', '532900', '0');
INSERT INTO `hm_area` VALUES ('532932', '鹤庆县', '532900', '0');
INSERT INTO `hm_area` VALUES ('533102', '瑞丽市', '533100', '0');
INSERT INTO `hm_area` VALUES ('533103', '潞西市', '533100', '0');
INSERT INTO `hm_area` VALUES ('533122', '梁河县', '533100', '0');
INSERT INTO `hm_area` VALUES ('533123', '盈江县', '533100', '0');
INSERT INTO `hm_area` VALUES ('533124', '陇川县', '533100', '0');
INSERT INTO `hm_area` VALUES ('533321', '泸水县', '533300', '0');
INSERT INTO `hm_area` VALUES ('533323', '福贡县', '533300', '0');
INSERT INTO `hm_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300', '0');
INSERT INTO `hm_area` VALUES ('533325', '兰坪白族普米族自治县', '533300', '0');
INSERT INTO `hm_area` VALUES ('533421', '香格里拉县', '533400', '0');
INSERT INTO `hm_area` VALUES ('533422', '德钦县', '533400', '0');
INSERT INTO `hm_area` VALUES ('533423', '维西傈僳族自治县', '533400', '0');
INSERT INTO `hm_area` VALUES ('540101', '市辖区', '540100', '0');
INSERT INTO `hm_area` VALUES ('540102', '城关区', '540100', '0');
INSERT INTO `hm_area` VALUES ('540121', '林周县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540122', '当雄县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540123', '尼木县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540124', '曲水县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540125', '堆龙德庆县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540126', '达孜县', '540100', '0');
INSERT INTO `hm_area` VALUES ('540127', '墨竹工卡县', '540100', '0');
INSERT INTO `hm_area` VALUES ('542121', '昌都县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542122', '江达县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542123', '贡觉县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542124', '类乌齐县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542125', '丁青县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542126', '察雅县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542127', '八宿县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542128', '左贡县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542129', '芒康县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542132', '洛隆县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542133', '边坝县', '542100', '0');
INSERT INTO `hm_area` VALUES ('542221', '乃东县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542222', '扎囊县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542223', '贡嘎县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542224', '桑日县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542225', '琼结县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542226', '曲松县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542227', '措美县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542228', '洛扎县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542229', '加查县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542231', '隆子县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542232', '错那县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542233', '浪卡子县', '542200', '0');
INSERT INTO `hm_area` VALUES ('542301', '日喀则市', '542300', '0');
INSERT INTO `hm_area` VALUES ('542322', '南木林县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542323', '江孜县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542324', '定日县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542325', '萨迦县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542326', '拉孜县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542327', '昂仁县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542328', '谢通门县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542329', '白朗县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542330', '仁布县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542331', '康马县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542332', '定结县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542333', '仲巴县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542334', '亚东县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542335', '吉隆县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542336', '聂拉木县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542337', '萨嘎县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542338', '岗巴县', '542300', '0');
INSERT INTO `hm_area` VALUES ('542421', '那曲县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542422', '嘉黎县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542423', '比如县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542424', '聂荣县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542425', '安多县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542426', '申扎县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542427', '索　县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542428', '班戈县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542429', '巴青县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542430', '尼玛县', '542400', '0');
INSERT INTO `hm_area` VALUES ('542521', '普兰县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542522', '札达县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542523', '噶尔县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542524', '日土县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542525', '革吉县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542526', '改则县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542527', '措勤县', '542500', '0');
INSERT INTO `hm_area` VALUES ('542621', '林芝县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542622', '工布江达县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542623', '米林县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542624', '墨脱县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542625', '波密县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542626', '察隅县', '542600', '0');
INSERT INTO `hm_area` VALUES ('542627', '朗　县', '542600', '0');
INSERT INTO `hm_area` VALUES ('610101', '市辖区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610102', '新城区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610103', '碑林区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610104', '莲湖区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610111', '灞桥区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610112', '未央区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610113', '雁塔区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610114', '阎良区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610115', '临潼区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610116', '长安区', '610100', '0');
INSERT INTO `hm_area` VALUES ('610122', '蓝田县', '610100', '0');
INSERT INTO `hm_area` VALUES ('610124', '周至县', '610100', '0');
INSERT INTO `hm_area` VALUES ('610125', '户　县', '610100', '0');
INSERT INTO `hm_area` VALUES ('610126', '高陵县', '610100', '0');
INSERT INTO `hm_area` VALUES ('610201', '市辖区', '610200', '0');
INSERT INTO `hm_area` VALUES ('610202', '王益区', '610200', '0');
INSERT INTO `hm_area` VALUES ('610203', '印台区', '610200', '0');
INSERT INTO `hm_area` VALUES ('610204', '耀州区', '610200', '0');
INSERT INTO `hm_area` VALUES ('610222', '宜君县', '610200', '0');
INSERT INTO `hm_area` VALUES ('610301', '市辖区', '610300', '0');
INSERT INTO `hm_area` VALUES ('610302', '渭滨区', '610300', '0');
INSERT INTO `hm_area` VALUES ('610303', '金台区', '610300', '0');
INSERT INTO `hm_area` VALUES ('610304', '陈仓区', '610300', '0');
INSERT INTO `hm_area` VALUES ('610322', '凤翔县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610323', '岐山县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610324', '扶风县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610326', '眉　县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610327', '陇　县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610328', '千阳县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610329', '麟游县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610330', '凤　县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610331', '太白县', '610300', '0');
INSERT INTO `hm_area` VALUES ('610401', '市辖区', '610400', '0');
INSERT INTO `hm_area` VALUES ('610402', '秦都区', '610400', '0');
INSERT INTO `hm_area` VALUES ('610403', '杨凌区', '610400', '0');
INSERT INTO `hm_area` VALUES ('610404', '渭城区', '610400', '0');
INSERT INTO `hm_area` VALUES ('610422', '三原县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610423', '泾阳县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610424', '乾　县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610425', '礼泉县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610426', '永寿县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610427', '彬　县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610428', '长武县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610429', '旬邑县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610430', '淳化县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610431', '武功县', '610400', '0');
INSERT INTO `hm_area` VALUES ('610481', '兴平市', '610400', '0');
INSERT INTO `hm_area` VALUES ('610501', '市辖区', '610500', '0');
INSERT INTO `hm_area` VALUES ('610502', '临渭区', '610500', '0');
INSERT INTO `hm_area` VALUES ('610521', '华　县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610522', '潼关县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610523', '大荔县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610524', '合阳县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610525', '澄城县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610526', '蒲城县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610527', '白水县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610528', '富平县', '610500', '0');
INSERT INTO `hm_area` VALUES ('610581', '韩城市', '610500', '0');
INSERT INTO `hm_area` VALUES ('610582', '华阴市', '610500', '0');
INSERT INTO `hm_area` VALUES ('610601', '市辖区', '610600', '0');
INSERT INTO `hm_area` VALUES ('610602', '宝塔区', '610600', '0');
INSERT INTO `hm_area` VALUES ('610621', '延长县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610622', '延川县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610623', '子长县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610624', '安塞县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610625', '志丹县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610626', '吴旗县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610627', '甘泉县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610628', '富　县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610629', '洛川县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610630', '宜川县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610631', '黄龙县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610632', '黄陵县', '610600', '0');
INSERT INTO `hm_area` VALUES ('610701', '市辖区', '610700', '0');
INSERT INTO `hm_area` VALUES ('610702', '汉台区', '610700', '0');
INSERT INTO `hm_area` VALUES ('610721', '南郑县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610722', '城固县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610723', '洋　县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610724', '西乡县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610725', '勉　县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610726', '宁强县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610727', '略阳县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610728', '镇巴县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610729', '留坝县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610730', '佛坪县', '610700', '0');
INSERT INTO `hm_area` VALUES ('610801', '市辖区', '610800', '0');
INSERT INTO `hm_area` VALUES ('610802', '榆阳区', '610800', '0');
INSERT INTO `hm_area` VALUES ('610821', '神木县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610822', '府谷县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610823', '横山县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610824', '靖边县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610825', '定边县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610826', '绥德县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610827', '米脂县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610828', '佳　县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610829', '吴堡县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610830', '清涧县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610831', '子洲县', '610800', '0');
INSERT INTO `hm_area` VALUES ('610901', '市辖区', '610900', '0');
INSERT INTO `hm_area` VALUES ('610902', '汉滨区', '610900', '0');
INSERT INTO `hm_area` VALUES ('610921', '汉阴县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610922', '石泉县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610923', '宁陕县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610924', '紫阳县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610925', '岚皋县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610926', '平利县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610927', '镇坪县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610928', '旬阳县', '610900', '0');
INSERT INTO `hm_area` VALUES ('610929', '白河县', '610900', '0');
INSERT INTO `hm_area` VALUES ('611001', '市辖区', '611000', '0');
INSERT INTO `hm_area` VALUES ('611002', '商州区', '611000', '0');
INSERT INTO `hm_area` VALUES ('611021', '洛南县', '611000', '0');
INSERT INTO `hm_area` VALUES ('611022', '丹凤县', '611000', '0');
INSERT INTO `hm_area` VALUES ('611023', '商南县', '611000', '0');
INSERT INTO `hm_area` VALUES ('611024', '山阳县', '611000', '0');
INSERT INTO `hm_area` VALUES ('611025', '镇安县', '611000', '0');
INSERT INTO `hm_area` VALUES ('611026', '柞水县', '611000', '0');
INSERT INTO `hm_area` VALUES ('620101', '市辖区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620102', '城关区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620103', '七里河区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620104', '西固区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620105', '安宁区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620111', '红古区', '620100', '0');
INSERT INTO `hm_area` VALUES ('620121', '永登县', '620100', '0');
INSERT INTO `hm_area` VALUES ('620122', '皋兰县', '620100', '0');
INSERT INTO `hm_area` VALUES ('620123', '榆中县', '620100', '0');
INSERT INTO `hm_area` VALUES ('620201', '市辖区', '620200', '0');
INSERT INTO `hm_area` VALUES ('620301', '市辖区', '620300', '0');
INSERT INTO `hm_area` VALUES ('620302', '金川区', '620300', '0');
INSERT INTO `hm_area` VALUES ('620321', '永昌县', '620300', '0');
INSERT INTO `hm_area` VALUES ('620401', '市辖区', '620400', '0');
INSERT INTO `hm_area` VALUES ('620402', '白银区', '620400', '0');
INSERT INTO `hm_area` VALUES ('620403', '平川区', '620400', '0');
INSERT INTO `hm_area` VALUES ('620421', '靖远县', '620400', '0');
INSERT INTO `hm_area` VALUES ('620422', '会宁县', '620400', '0');
INSERT INTO `hm_area` VALUES ('620423', '景泰县', '620400', '0');
INSERT INTO `hm_area` VALUES ('620501', '市辖区', '620500', '0');
INSERT INTO `hm_area` VALUES ('620502', '秦城区', '620500', '0');
INSERT INTO `hm_area` VALUES ('620503', '北道区', '620500', '0');
INSERT INTO `hm_area` VALUES ('620521', '清水县', '620500', '0');
INSERT INTO `hm_area` VALUES ('620522', '秦安县', '620500', '0');
INSERT INTO `hm_area` VALUES ('620523', '甘谷县', '620500', '0');
INSERT INTO `hm_area` VALUES ('620524', '武山县', '620500', '0');
INSERT INTO `hm_area` VALUES ('620525', '张家川回族自治县', '620500', '0');
INSERT INTO `hm_area` VALUES ('620601', '市辖区', '620600', '0');
INSERT INTO `hm_area` VALUES ('620602', '凉州区', '620600', '0');
INSERT INTO `hm_area` VALUES ('620621', '民勤县', '620600', '0');
INSERT INTO `hm_area` VALUES ('620622', '古浪县', '620600', '0');
INSERT INTO `hm_area` VALUES ('620623', '天祝藏族自治县', '620600', '0');
INSERT INTO `hm_area` VALUES ('620701', '市辖区', '620700', '0');
INSERT INTO `hm_area` VALUES ('620702', '甘州区', '620700', '0');
INSERT INTO `hm_area` VALUES ('620721', '肃南裕固族自治县', '620700', '0');
INSERT INTO `hm_area` VALUES ('620722', '民乐县', '620700', '0');
INSERT INTO `hm_area` VALUES ('620723', '临泽县', '620700', '0');
INSERT INTO `hm_area` VALUES ('620724', '高台县', '620700', '0');
INSERT INTO `hm_area` VALUES ('620725', '山丹县', '620700', '0');
INSERT INTO `hm_area` VALUES ('620801', '市辖区', '620800', '0');
INSERT INTO `hm_area` VALUES ('620802', '崆峒区', '620800', '0');
INSERT INTO `hm_area` VALUES ('620821', '泾川县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620822', '灵台县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620823', '崇信县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620824', '华亭县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620825', '庄浪县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620826', '静宁县', '620800', '0');
INSERT INTO `hm_area` VALUES ('620901', '市辖区', '620900', '0');
INSERT INTO `hm_area` VALUES ('620902', '肃州区', '620900', '0');
INSERT INTO `hm_area` VALUES ('620921', '金塔县', '620900', '0');
INSERT INTO `hm_area` VALUES ('620922', '安西县', '620900', '0');
INSERT INTO `hm_area` VALUES ('620923', '肃北蒙古族自治县', '620900', '0');
INSERT INTO `hm_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900', '0');
INSERT INTO `hm_area` VALUES ('620981', '玉门市', '620900', '0');
INSERT INTO `hm_area` VALUES ('620982', '敦煌市', '620900', '0');
INSERT INTO `hm_area` VALUES ('621001', '市辖区', '621000', '0');
INSERT INTO `hm_area` VALUES ('621002', '西峰区', '621000', '0');
INSERT INTO `hm_area` VALUES ('621021', '庆城县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621022', '环　县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621023', '华池县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621024', '合水县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621025', '正宁县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621026', '宁　县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621027', '镇原县', '621000', '0');
INSERT INTO `hm_area` VALUES ('621101', '市辖区', '621100', '0');
INSERT INTO `hm_area` VALUES ('621102', '安定区', '621100', '0');
INSERT INTO `hm_area` VALUES ('621121', '通渭县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621122', '陇西县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621123', '渭源县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621124', '临洮县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621125', '漳　县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621126', '岷　县', '621100', '0');
INSERT INTO `hm_area` VALUES ('621201', '市辖区', '621200', '0');
INSERT INTO `hm_area` VALUES ('621202', '武都区', '621200', '0');
INSERT INTO `hm_area` VALUES ('621221', '成　县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621222', '文　县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621223', '宕昌县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621224', '康　县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621225', '西和县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621226', '礼　县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621227', '徽　县', '621200', '0');
INSERT INTO `hm_area` VALUES ('621228', '两当县', '621200', '0');
INSERT INTO `hm_area` VALUES ('622901', '临夏市', '622900', '0');
INSERT INTO `hm_area` VALUES ('622921', '临夏县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622922', '康乐县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622923', '永靖县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622924', '广河县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622925', '和政县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622926', '东乡族自治县', '622900', '0');
INSERT INTO `hm_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900', '0');
INSERT INTO `hm_area` VALUES ('623001', '合作市', '623000', '0');
INSERT INTO `hm_area` VALUES ('623021', '临潭县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623022', '卓尼县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623023', '舟曲县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623024', '迭部县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623025', '玛曲县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623026', '碌曲县', '623000', '0');
INSERT INTO `hm_area` VALUES ('623027', '夏河县', '623000', '0');
INSERT INTO `hm_area` VALUES ('630101', '市辖区', '630100', '0');
INSERT INTO `hm_area` VALUES ('630102', '城东区', '630100', '0');
INSERT INTO `hm_area` VALUES ('630103', '城中区', '630100', '0');
INSERT INTO `hm_area` VALUES ('630104', '城西区', '630100', '0');
INSERT INTO `hm_area` VALUES ('630105', '城北区', '630100', '0');
INSERT INTO `hm_area` VALUES ('630121', '大通回族土族自治县', '630100', '0');
INSERT INTO `hm_area` VALUES ('630122', '湟中县', '630100', '0');
INSERT INTO `hm_area` VALUES ('630123', '湟源县', '630100', '0');
INSERT INTO `hm_area` VALUES ('632121', '平安县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632122', '民和回族土族自治县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632123', '乐都县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632126', '互助土族自治县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632127', '化隆回族自治县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632128', '循化撒拉族自治县', '632100', '0');
INSERT INTO `hm_area` VALUES ('632221', '门源回族自治县', '632200', '0');
INSERT INTO `hm_area` VALUES ('632222', '祁连县', '632200', '0');
INSERT INTO `hm_area` VALUES ('632223', '海晏县', '632200', '0');
INSERT INTO `hm_area` VALUES ('632224', '刚察县', '632200', '0');
INSERT INTO `hm_area` VALUES ('632321', '同仁县', '632300', '0');
INSERT INTO `hm_area` VALUES ('632322', '尖扎县', '632300', '0');
INSERT INTO `hm_area` VALUES ('632323', '泽库县', '632300', '0');
INSERT INTO `hm_area` VALUES ('632324', '河南蒙古族自治县', '632300', '0');
INSERT INTO `hm_area` VALUES ('632521', '共和县', '632500', '0');
INSERT INTO `hm_area` VALUES ('632522', '同德县', '632500', '0');
INSERT INTO `hm_area` VALUES ('632523', '贵德县', '632500', '0');
INSERT INTO `hm_area` VALUES ('632524', '兴海县', '632500', '0');
INSERT INTO `hm_area` VALUES ('632525', '贵南县', '632500', '0');
INSERT INTO `hm_area` VALUES ('632621', '玛沁县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632622', '班玛县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632623', '甘德县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632624', '达日县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632625', '久治县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632626', '玛多县', '632600', '0');
INSERT INTO `hm_area` VALUES ('632721', '玉树县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632722', '杂多县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632723', '称多县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632724', '治多县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632725', '囊谦县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632726', '曲麻莱县', '632700', '0');
INSERT INTO `hm_area` VALUES ('632801', '格尔木市', '632800', '0');
INSERT INTO `hm_area` VALUES ('632802', '德令哈市', '632800', '0');
INSERT INTO `hm_area` VALUES ('632821', '乌兰县', '632800', '0');
INSERT INTO `hm_area` VALUES ('632822', '都兰县', '632800', '0');
INSERT INTO `hm_area` VALUES ('632823', '天峻县', '632800', '0');
INSERT INTO `hm_area` VALUES ('640101', '市辖区', '640100', '0');
INSERT INTO `hm_area` VALUES ('640104', '兴庆区', '640100', '0');
INSERT INTO `hm_area` VALUES ('640105', '西夏区', '640100', '0');
INSERT INTO `hm_area` VALUES ('640106', '金凤区', '640100', '0');
INSERT INTO `hm_area` VALUES ('640121', '永宁县', '640100', '0');
INSERT INTO `hm_area` VALUES ('640122', '贺兰县', '640100', '0');
INSERT INTO `hm_area` VALUES ('640181', '灵武市', '640100', '0');
INSERT INTO `hm_area` VALUES ('640201', '市辖区', '640200', '0');
INSERT INTO `hm_area` VALUES ('640202', '大武口区', '640200', '0');
INSERT INTO `hm_area` VALUES ('640205', '惠农区', '640200', '0');
INSERT INTO `hm_area` VALUES ('640221', '平罗县', '640200', '0');
INSERT INTO `hm_area` VALUES ('640301', '市辖区', '640300', '0');
INSERT INTO `hm_area` VALUES ('640302', '利通区', '640300', '0');
INSERT INTO `hm_area` VALUES ('640323', '盐池县', '640300', '0');
INSERT INTO `hm_area` VALUES ('640324', '同心县', '640300', '0');
INSERT INTO `hm_area` VALUES ('640381', '青铜峡市', '640300', '0');
INSERT INTO `hm_area` VALUES ('640401', '市辖区', '640400', '0');
INSERT INTO `hm_area` VALUES ('640402', '原州区', '640400', '0');
INSERT INTO `hm_area` VALUES ('640422', '西吉县', '640400', '0');
INSERT INTO `hm_area` VALUES ('640423', '隆德县', '640400', '0');
INSERT INTO `hm_area` VALUES ('640424', '泾源县', '640400', '0');
INSERT INTO `hm_area` VALUES ('640425', '彭阳县', '640400', '0');
INSERT INTO `hm_area` VALUES ('640501', '市辖区', '640500', '0');
INSERT INTO `hm_area` VALUES ('640502', '沙坡头区', '640500', '0');
INSERT INTO `hm_area` VALUES ('640521', '中宁县', '640500', '0');
INSERT INTO `hm_area` VALUES ('640522', '海原县', '640500', '0');
INSERT INTO `hm_area` VALUES ('650101', '市辖区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650102', '天山区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650103', '沙依巴克区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650104', '新市区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650105', '水磨沟区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650106', '头屯河区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650107', '达坂城区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650108', '东山区', '650100', '0');
INSERT INTO `hm_area` VALUES ('650121', '乌鲁木齐县', '650100', '0');
INSERT INTO `hm_area` VALUES ('650201', '市辖区', '650200', '0');
INSERT INTO `hm_area` VALUES ('650202', '独山子区', '650200', '0');
INSERT INTO `hm_area` VALUES ('650203', '克拉玛依区', '650200', '0');
INSERT INTO `hm_area` VALUES ('650204', '白碱滩区', '650200', '0');
INSERT INTO `hm_area` VALUES ('650205', '乌尔禾区', '650200', '0');
INSERT INTO `hm_area` VALUES ('652101', '吐鲁番市', '652100', '0');
INSERT INTO `hm_area` VALUES ('652122', '鄯善县', '652100', '0');
INSERT INTO `hm_area` VALUES ('652123', '托克逊县', '652100', '0');
INSERT INTO `hm_area` VALUES ('652201', '哈密市', '652200', '0');
INSERT INTO `hm_area` VALUES ('652222', '巴里坤哈萨克自治县', '652200', '0');
INSERT INTO `hm_area` VALUES ('652223', '伊吾县', '652200', '0');
INSERT INTO `hm_area` VALUES ('652301', '昌吉市', '652300', '0');
INSERT INTO `hm_area` VALUES ('652302', '阜康市', '652300', '0');
INSERT INTO `hm_area` VALUES ('652303', '米泉市', '652300', '0');
INSERT INTO `hm_area` VALUES ('652323', '呼图壁县', '652300', '0');
INSERT INTO `hm_area` VALUES ('652324', '玛纳斯县', '652300', '0');
INSERT INTO `hm_area` VALUES ('652325', '奇台县', '652300', '0');
INSERT INTO `hm_area` VALUES ('652327', '吉木萨尔县', '652300', '0');
INSERT INTO `hm_area` VALUES ('652328', '木垒哈萨克自治县', '652300', '0');
INSERT INTO `hm_area` VALUES ('652701', '博乐市', '652700', '0');
INSERT INTO `hm_area` VALUES ('652722', '精河县', '652700', '0');
INSERT INTO `hm_area` VALUES ('652723', '温泉县', '652700', '0');
INSERT INTO `hm_area` VALUES ('652801', '库尔勒市', '652800', '0');
INSERT INTO `hm_area` VALUES ('652822', '轮台县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652823', '尉犁县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652824', '若羌县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652825', '且末县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652826', '焉耆回族自治县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652827', '和静县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652828', '和硕县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652829', '博湖县', '652800', '0');
INSERT INTO `hm_area` VALUES ('652901', '阿克苏市', '652900', '0');
INSERT INTO `hm_area` VALUES ('652922', '温宿县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652923', '库车县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652924', '沙雅县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652925', '新和县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652926', '拜城县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652927', '乌什县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652928', '阿瓦提县', '652900', '0');
INSERT INTO `hm_area` VALUES ('652929', '柯坪县', '652900', '0');
INSERT INTO `hm_area` VALUES ('653001', '阿图什市', '653000', '0');
INSERT INTO `hm_area` VALUES ('653022', '阿克陶县', '653000', '0');
INSERT INTO `hm_area` VALUES ('653023', '阿合奇县', '653000', '0');
INSERT INTO `hm_area` VALUES ('653024', '乌恰县', '653000', '0');
INSERT INTO `hm_area` VALUES ('653101', '喀什市', '653100', '0');
INSERT INTO `hm_area` VALUES ('653121', '疏附县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653122', '疏勒县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653123', '英吉沙县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653124', '泽普县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653125', '莎车县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653126', '叶城县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653127', '麦盖提县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653128', '岳普湖县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653129', '伽师县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653130', '巴楚县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100', '0');
INSERT INTO `hm_area` VALUES ('653201', '和田市', '653200', '0');
INSERT INTO `hm_area` VALUES ('653221', '和田县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653222', '墨玉县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653223', '皮山县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653224', '洛浦县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653225', '策勒县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653226', '于田县', '653200', '0');
INSERT INTO `hm_area` VALUES ('653227', '民丰县', '653200', '0');
INSERT INTO `hm_area` VALUES ('654002', '伊宁市', '654000', '0');
INSERT INTO `hm_area` VALUES ('654003', '奎屯市', '654000', '0');
INSERT INTO `hm_area` VALUES ('654021', '伊宁县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654022', '察布查尔锡伯自治县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654023', '霍城县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654024', '巩留县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654025', '新源县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654026', '昭苏县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654027', '特克斯县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654028', '尼勒克县', '654000', '0');
INSERT INTO `hm_area` VALUES ('654201', '塔城市', '654200', '0');
INSERT INTO `hm_area` VALUES ('654202', '乌苏市', '654200', '0');
INSERT INTO `hm_area` VALUES ('654221', '额敏县', '654200', '0');
INSERT INTO `hm_area` VALUES ('654223', '沙湾县', '654200', '0');
INSERT INTO `hm_area` VALUES ('654224', '托里县', '654200', '0');
INSERT INTO `hm_area` VALUES ('654225', '裕民县', '654200', '0');
INSERT INTO `hm_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200', '0');
INSERT INTO `hm_area` VALUES ('654301', '阿勒泰市', '654300', '0');
INSERT INTO `hm_area` VALUES ('654321', '布尔津县', '654300', '0');
INSERT INTO `hm_area` VALUES ('654322', '富蕴县', '654300', '0');
INSERT INTO `hm_area` VALUES ('654323', '福海县', '654300', '0');
INSERT INTO `hm_area` VALUES ('654324', '哈巴河县', '654300', '0');
INSERT INTO `hm_area` VALUES ('654325', '青河县', '654300', '0');
INSERT INTO `hm_area` VALUES ('654326', '吉木乃县', '654300', '0');
INSERT INTO `hm_area` VALUES ('659001', '石河子市', '659000', '0');
INSERT INTO `hm_area` VALUES ('659002', '阿拉尔市', '659000', '0');
INSERT INTO `hm_area` VALUES ('659003', '图木舒克市', '659000', '0');
INSERT INTO `hm_area` VALUES ('659004', '五家渠市', '659000', '0');
INSERT INTO `hm_area` VALUES ('120100', '市辖区', '120000', '0');
INSERT INTO `hm_area` VALUES ('120200', '县', '120000', '0');
INSERT INTO `hm_area` VALUES ('130100', '石家庄市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130200', '唐山市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130300', '秦皇岛市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130400', '邯郸市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130500', '邢台市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130600', '保定市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130700', '张家口市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130800', '承德市', '130000', '0');
INSERT INTO `hm_area` VALUES ('130900', '沧州市', '130000', '0');
INSERT INTO `hm_area` VALUES ('131000', '廊坊市', '130000', '0');
INSERT INTO `hm_area` VALUES ('131100', '衡水市', '130000', '0');
INSERT INTO `hm_area` VALUES ('140100', '太原市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140200', '大同市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140300', '阳泉市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140400', '长治市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140500', '晋城市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140600', '朔州市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140700', '晋中市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140800', '运城市', '140000', '0');
INSERT INTO `hm_area` VALUES ('140900', '忻州市', '140000', '0');
INSERT INTO `hm_area` VALUES ('141000', '临汾市', '140000', '0');
INSERT INTO `hm_area` VALUES ('141100', '吕梁市', '140000', '0');
INSERT INTO `hm_area` VALUES ('150100', '呼和浩特市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150200', '包头市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150300', '乌海市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150400', '赤峰市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150500', '通辽市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150600', '鄂尔多斯市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150700', '呼伦贝尔市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150800', '巴彦淖尔市', '150000', '0');
INSERT INTO `hm_area` VALUES ('150900', '乌兰察布市', '150000', '0');
INSERT INTO `hm_area` VALUES ('152200', '兴安盟', '150000', '0');
INSERT INTO `hm_area` VALUES ('152500', '锡林郭勒盟', '150000', '0');
INSERT INTO `hm_area` VALUES ('152900', '阿拉善盟', '150000', '0');
INSERT INTO `hm_area` VALUES ('210100', '沈阳市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210200', '大连市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210300', '鞍山市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210400', '抚顺市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210500', '本溪市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210600', '丹东市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210700', '锦州市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210800', '营口市', '210000', '0');
INSERT INTO `hm_area` VALUES ('210900', '阜新市', '210000', '0');
INSERT INTO `hm_area` VALUES ('211000', '辽阳市', '210000', '0');
INSERT INTO `hm_area` VALUES ('211100', '盘锦市', '210000', '0');
INSERT INTO `hm_area` VALUES ('211200', '铁岭市', '210000', '0');
INSERT INTO `hm_area` VALUES ('211300', '朝阳市', '210000', '0');
INSERT INTO `hm_area` VALUES ('211400', '葫芦岛市', '210000', '0');
INSERT INTO `hm_area` VALUES ('220100', '长春市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220200', '吉林市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220300', '四平市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220400', '辽源市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220500', '通化市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220600', '白山市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220700', '松原市', '220000', '0');
INSERT INTO `hm_area` VALUES ('220800', '白城市', '220000', '0');
INSERT INTO `hm_area` VALUES ('222400', '延边朝鲜族自治州', '220000', '0');
INSERT INTO `hm_area` VALUES ('230100', '哈尔滨市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230200', '齐齐哈尔市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230300', '鸡西市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230400', '鹤岗市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230500', '双鸭山市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230600', '大庆市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230700', '伊春市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230800', '佳木斯市', '230000', '0');
INSERT INTO `hm_area` VALUES ('230900', '七台河市', '230000', '0');
INSERT INTO `hm_area` VALUES ('231000', '牡丹江市', '230000', '0');
INSERT INTO `hm_area` VALUES ('231100', '黑河市', '230000', '0');
INSERT INTO `hm_area` VALUES ('231200', '绥化市', '230000', '0');
INSERT INTO `hm_area` VALUES ('232700', '大兴安岭地区', '230000', '0');
INSERT INTO `hm_area` VALUES ('310100', '市辖区', '310000', '0');
INSERT INTO `hm_area` VALUES ('310200', '县', '310000', '0');
INSERT INTO `hm_area` VALUES ('320100', '南京市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320200', '无锡市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320300', '徐州市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320400', '常州市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320500', '苏州市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320600', '南通市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320700', '连云港市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320800', '淮安市', '320000', '0');
INSERT INTO `hm_area` VALUES ('320900', '盐城市', '320000', '0');
INSERT INTO `hm_area` VALUES ('321000', '扬州市', '320000', '0');
INSERT INTO `hm_area` VALUES ('321100', '镇江市', '320000', '0');
INSERT INTO `hm_area` VALUES ('321200', '泰州市', '320000', '0');
INSERT INTO `hm_area` VALUES ('321300', '宿迁市', '320000', '0');
INSERT INTO `hm_area` VALUES ('330100', '杭州市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330200', '宁波市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330300', '温州市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330400', '嘉兴市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330500', '湖州市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330600', '绍兴市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330700', '金华市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330800', '衢州市', '330000', '0');
INSERT INTO `hm_area` VALUES ('330900', '舟山市', '330000', '0');
INSERT INTO `hm_area` VALUES ('331000', '台州市', '330000', '0');
INSERT INTO `hm_area` VALUES ('331100', '丽水市', '330000', '0');
INSERT INTO `hm_area` VALUES ('340100', '合肥市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340200', '芜湖市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340300', '蚌埠市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340400', '淮南市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340500', '马鞍山市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340600', '淮北市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340700', '铜陵市', '340000', '0');
INSERT INTO `hm_area` VALUES ('340800', '安庆市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341000', '黄山市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341100', '滁州市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341200', '阜阳市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341300', '宿州市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341400', '巢湖市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341500', '六安市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341600', '亳州市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341700', '池州市', '340000', '0');
INSERT INTO `hm_area` VALUES ('341800', '宣城市', '340000', '0');
INSERT INTO `hm_area` VALUES ('350100', '福州市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350200', '厦门市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350300', '莆田市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350400', '三明市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350500', '泉州市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350600', '漳州市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350700', '南平市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350800', '龙岩市', '350000', '0');
INSERT INTO `hm_area` VALUES ('350900', '宁德市', '350000', '0');
INSERT INTO `hm_area` VALUES ('360100', '南昌市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360200', '景德镇市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360300', '萍乡市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360400', '九江市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360500', '新余市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360600', '鹰潭市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360700', '赣州市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360800', '吉安市', '360000', '0');
INSERT INTO `hm_area` VALUES ('360900', '宜春市', '360000', '0');
INSERT INTO `hm_area` VALUES ('361000', '抚州市', '360000', '0');
INSERT INTO `hm_area` VALUES ('361100', '上饶市', '360000', '0');
INSERT INTO `hm_area` VALUES ('370100', '济南市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370200', '青岛市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370300', '淄博市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370400', '枣庄市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370500', '东营市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370600', '烟台市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370700', '潍坊市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370800', '济宁市', '370000', '0');
INSERT INTO `hm_area` VALUES ('370900', '泰安市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371000', '威海市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371100', '日照市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371200', '莱芜市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371300', '临沂市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371400', '德州市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371500', '聊城市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371600', '滨州市', '370000', '0');
INSERT INTO `hm_area` VALUES ('371700', '荷泽市', '370000', '0');
INSERT INTO `hm_area` VALUES ('410100', '郑州市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410200', '开封市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410300', '洛阳市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410400', '平顶山市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410500', '安阳市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410600', '鹤壁市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410700', '新乡市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410800', '焦作市', '410000', '0');
INSERT INTO `hm_area` VALUES ('410900', '濮阳市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411000', '许昌市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411100', '漯河市', '410000', '125');
INSERT INTO `hm_area` VALUES ('411200', '三门峡市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411300', '南阳市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411400', '商丘市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411500', '信阳市', '410000', '0');
INSERT INTO `hm_area` VALUES ('411600', '周口市', '410000', '127');
INSERT INTO `hm_area` VALUES ('411700', '驻马店市', '410000', '126');
INSERT INTO `hm_area` VALUES ('420100', '武汉市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420200', '黄石市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420300', '十堰市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420500', '宜昌市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420600', '襄樊市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420700', '鄂州市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420800', '荆门市', '420000', '0');
INSERT INTO `hm_area` VALUES ('420900', '孝感市', '420000', '0');
INSERT INTO `hm_area` VALUES ('421000', '荆州市', '420000', '0');
INSERT INTO `hm_area` VALUES ('421100', '黄冈市', '420000', '0');
INSERT INTO `hm_area` VALUES ('421200', '咸宁市', '420000', '0');
INSERT INTO `hm_area` VALUES ('421300', '随州市', '420000', '0');
INSERT INTO `hm_area` VALUES ('422800', '恩施土家族苗族自治州', '420000', '0');
INSERT INTO `hm_area` VALUES ('429000', '省直辖行政单位', '420000', '0');
INSERT INTO `hm_area` VALUES ('430100', '长沙市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430200', '株洲市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430300', '湘潭市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430400', '衡阳市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430500', '邵阳市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430600', '岳阳市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430700', '常德市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430800', '张家界市', '430000', '0');
INSERT INTO `hm_area` VALUES ('430900', '益阳市', '430000', '0');
INSERT INTO `hm_area` VALUES ('431000', '郴州市', '430000', '0');
INSERT INTO `hm_area` VALUES ('431100', '永州市', '430000', '0');
INSERT INTO `hm_area` VALUES ('431200', '怀化市', '430000', '0');
INSERT INTO `hm_area` VALUES ('431300', '娄底市', '430000', '0');
INSERT INTO `hm_area` VALUES ('433100', '湘西土家族苗族自治州', '430000', '0');
INSERT INTO `hm_area` VALUES ('440100', '广州市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440200', '韶关市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440300', '深圳市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440400', '珠海市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440500', '汕头市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440600', '佛山市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440700', '江门市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440800', '湛江市', '440000', '0');
INSERT INTO `hm_area` VALUES ('440900', '茂名市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441200', '肇庆市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441300', '惠州市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441400', '梅州市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441500', '汕尾市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441600', '河源市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441700', '阳江市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441800', '清远市', '440000', '0');
INSERT INTO `hm_area` VALUES ('441900', '东莞市', '440000', '0');
INSERT INTO `hm_area` VALUES ('442000', '中山市', '440000', '0');
INSERT INTO `hm_area` VALUES ('445100', '潮州市', '440000', '0');
INSERT INTO `hm_area` VALUES ('445200', '揭阳市', '440000', '0');
INSERT INTO `hm_area` VALUES ('445300', '云浮市', '440000', '0');
INSERT INTO `hm_area` VALUES ('450100', '南宁市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450200', '柳州市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450300', '桂林市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450400', '梧州市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450500', '北海市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450600', '防城港市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450700', '钦州市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450800', '贵港市', '450000', '0');
INSERT INTO `hm_area` VALUES ('450900', '玉林市', '450000', '0');
INSERT INTO `hm_area` VALUES ('451000', '百色市', '450000', '0');
INSERT INTO `hm_area` VALUES ('451100', '贺州市', '450000', '0');
INSERT INTO `hm_area` VALUES ('451200', '河池市', '450000', '0');
INSERT INTO `hm_area` VALUES ('451300', '来宾市', '450000', '0');
INSERT INTO `hm_area` VALUES ('451400', '崇左市', '450000', '0');
INSERT INTO `hm_area` VALUES ('460100', '海口市', '460000', '0');
INSERT INTO `hm_area` VALUES ('460200', '三亚市', '460000', '0');
INSERT INTO `hm_area` VALUES ('469000', '省直辖县级行政单位', '460000', '0');
INSERT INTO `hm_area` VALUES ('500100', '市辖区', '500000', '0');
INSERT INTO `hm_area` VALUES ('500200', '县', '500000', '0');
INSERT INTO `hm_area` VALUES ('500300', '市', '500000', '0');
INSERT INTO `hm_area` VALUES ('510100', '成都市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510300', '自贡市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510400', '攀枝花市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510500', '泸州市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510600', '德阳市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510700', '绵阳市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510800', '广元市', '510000', '0');
INSERT INTO `hm_area` VALUES ('510900', '遂宁市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511000', '内江市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511100', '乐山市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511300', '南充市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511400', '眉山市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511500', '宜宾市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511600', '广安市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511700', '达州市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511800', '雅安市', '510000', '0');
INSERT INTO `hm_area` VALUES ('511900', '巴中市', '510000', '0');
INSERT INTO `hm_area` VALUES ('512000', '资阳市', '510000', '0');
INSERT INTO `hm_area` VALUES ('513200', '阿坝藏族羌族自治州', '510000', '0');
INSERT INTO `hm_area` VALUES ('513300', '甘孜藏族自治州', '510000', '0');
INSERT INTO `hm_area` VALUES ('513400', '凉山彝族自治州', '510000', '0');
INSERT INTO `hm_area` VALUES ('520100', '贵阳市', '520000', '0');
INSERT INTO `hm_area` VALUES ('520200', '六盘水市', '520000', '0');
INSERT INTO `hm_area` VALUES ('520300', '遵义市', '520000', '0');
INSERT INTO `hm_area` VALUES ('520400', '安顺市', '520000', '0');
INSERT INTO `hm_area` VALUES ('522200', '铜仁地区', '520000', '0');
INSERT INTO `hm_area` VALUES ('522300', '黔西南布依族苗族自治州', '520000', '0');
INSERT INTO `hm_area` VALUES ('522400', '毕节地区', '520000', '0');
INSERT INTO `hm_area` VALUES ('522600', '黔东南苗族侗族自治州', '520000', '0');
INSERT INTO `hm_area` VALUES ('522700', '黔南布依族苗族自治州', '520000', '0');
INSERT INTO `hm_area` VALUES ('530100', '昆明市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530300', '曲靖市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530400', '玉溪市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530500', '保山市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530600', '昭通市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530700', '丽江市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530800', '思茅市', '530000', '0');
INSERT INTO `hm_area` VALUES ('530900', '临沧市', '530000', '0');
INSERT INTO `hm_area` VALUES ('532300', '楚雄彝族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('532500', '红河哈尼族彝族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('532600', '文山壮族苗族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('532800', '西双版纳傣族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('532900', '大理白族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('533100', '德宏傣族景颇族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('533300', '怒江傈僳族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('533400', '迪庆藏族自治州', '530000', '0');
INSERT INTO `hm_area` VALUES ('540100', '拉萨市', '540000', '0');
INSERT INTO `hm_area` VALUES ('542100', '昌都地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('542200', '山南地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('542300', '日喀则地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('542400', '那曲地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('542500', '阿里地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('542600', '林芝地区', '540000', '0');
INSERT INTO `hm_area` VALUES ('610100', '西安市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610200', '铜川市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610300', '宝鸡市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610400', '咸阳市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610500', '渭南市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610600', '延安市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610700', '汉中市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610800', '榆林市', '610000', '0');
INSERT INTO `hm_area` VALUES ('610900', '安康市', '610000', '0');
INSERT INTO `hm_area` VALUES ('611000', '商洛市', '610000', '0');
INSERT INTO `hm_area` VALUES ('620100', '兰州市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620200', '嘉峪关市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620300', '金昌市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620400', '白银市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620500', '天水市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620600', '武威市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620700', '张掖市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620800', '平凉市', '620000', '0');
INSERT INTO `hm_area` VALUES ('620900', '酒泉市', '620000', '0');
INSERT INTO `hm_area` VALUES ('621000', '庆阳市', '620000', '0');
INSERT INTO `hm_area` VALUES ('621100', '定西市', '620000', '0');
INSERT INTO `hm_area` VALUES ('621200', '陇南市', '620000', '0');
INSERT INTO `hm_area` VALUES ('622900', '临夏回族自治州', '620000', '0');
INSERT INTO `hm_area` VALUES ('623000', '甘南藏族自治州', '620000', '0');
INSERT INTO `hm_area` VALUES ('630100', '西宁市', '630000', '0');
INSERT INTO `hm_area` VALUES ('632100', '海东地区', '630000', '0');
INSERT INTO `hm_area` VALUES ('632200', '海北藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('632300', '黄南藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('632500', '海南藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('632600', '果洛藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('632700', '玉树藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('632800', '海西蒙古族藏族自治州', '630000', '0');
INSERT INTO `hm_area` VALUES ('640100', '银川市', '640000', '0');
INSERT INTO `hm_area` VALUES ('640200', '石嘴山市', '640000', '0');
INSERT INTO `hm_area` VALUES ('640300', '吴忠市', '640000', '0');
INSERT INTO `hm_area` VALUES ('640400', '固原市', '640000', '0');
INSERT INTO `hm_area` VALUES ('640500', '中卫市', '640000', '0');
INSERT INTO `hm_area` VALUES ('650100', '乌鲁木齐市', '650000', '0');
INSERT INTO `hm_area` VALUES ('650200', '克拉玛依市', '650000', '0');
INSERT INTO `hm_area` VALUES ('652100', '吐鲁番地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('652200', '哈密地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('652300', '昌吉回族自治州', '650000', '0');
INSERT INTO `hm_area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000', '0');
INSERT INTO `hm_area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000', '0');
INSERT INTO `hm_area` VALUES ('652900', '阿克苏地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000', '0');
INSERT INTO `hm_area` VALUES ('653100', '喀什地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('653200', '和田地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('654000', '伊犁哈萨克自治州', '650000', '0');
INSERT INTO `hm_area` VALUES ('654200', '塔城地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('654300', '阿勒泰地区', '650000', '0');
INSERT INTO `hm_area` VALUES ('659000', '省直辖行政单位', '650000', '0');
INSERT INTO `hm_area` VALUES ('110000', '北京', '0', '0');
INSERT INTO `hm_area` VALUES ('120000', '天津', '0', '0');
INSERT INTO `hm_area` VALUES ('130000', '河北', '0', '108');
INSERT INTO `hm_area` VALUES ('140000', '山西', '0', '0');
INSERT INTO `hm_area` VALUES ('150000', '内蒙古', '0', '0');
INSERT INTO `hm_area` VALUES ('210000', '辽宁', '0', '97');
INSERT INTO `hm_area` VALUES ('220000', '吉林', '0', '96');
INSERT INTO `hm_area` VALUES ('230000', '黑龙江', '0', '98');
INSERT INTO `hm_area` VALUES ('310000', '上海市', '0', '0');
INSERT INTO `hm_area` VALUES ('320000', '江苏', '0', '0');
INSERT INTO `hm_area` VALUES ('330000', '浙江', '0', '0');
INSERT INTO `hm_area` VALUES ('340000', '安徽', '0', '110');
INSERT INTO `hm_area` VALUES ('350000', '福建', '0', '0');
INSERT INTO `hm_area` VALUES ('360000', '江西', '0', '0');
INSERT INTO `hm_area` VALUES ('370000', '山东', '0', '95');
INSERT INTO `hm_area` VALUES ('410000', '河南', '0', '127');
INSERT INTO `hm_area` VALUES ('420000', '湖北', '0', '109');
INSERT INTO `hm_area` VALUES ('430000', '湖南', '0', '100');
INSERT INTO `hm_area` VALUES ('440000', '广东', '0', '0');
INSERT INTO `hm_area` VALUES ('450000', '广西', '0', '0');
INSERT INTO `hm_area` VALUES ('460000', '海南', '0', '99');
INSERT INTO `hm_area` VALUES ('500000', '重庆', '0', '0');
INSERT INTO `hm_area` VALUES ('510000', '四川', '0', '0');
INSERT INTO `hm_area` VALUES ('520000', '贵州', '0', '0');
INSERT INTO `hm_area` VALUES ('530000', '云南', '0', '0');
INSERT INTO `hm_area` VALUES ('540000', '西藏', '0', '0');
INSERT INTO `hm_area` VALUES ('610000', '陕西', '0', '0');
INSERT INTO `hm_area` VALUES ('620000', '甘肃', '0', '0');
INSERT INTO `hm_area` VALUES ('630000', '青海', '0', '0');
INSERT INTO `hm_area` VALUES ('640000', '宁夏', '0', '0');
INSERT INTO `hm_area` VALUES ('650000', '新疆', '0', '0');
INSERT INTO `hm_area` VALUES ('710000', '台湾', '0', '0');
INSERT INTO `hm_area` VALUES ('810000', '香港', '0', '0');
INSERT INTO `hm_area` VALUES ('820000', '澳门', '0', '0');

-- ----------------------------
-- Table structure for `hm_ask`
-- ----------------------------
DROP TABLE IF EXISTS `hm_ask`;
CREATE TABLE `hm_ask` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `wer` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ewr',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问答表';

-- ----------------------------
-- Records of hm_ask
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `hm_attributes`;
CREATE TABLE `hm_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段注释',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` smallint(2) NOT NULL DEFAULT '0',
  `group_id` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `model_id` (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COMMENT='模型属性表';

-- ----------------------------
-- Records of hm_attributes
-- ----------------------------
INSERT INTO `hm_attributes` VALUES ('3', 'title', '标题', 'char(80) NOT NULL ', 'string', '', '文档标题', '1', '', '1', '1', '1383894778', '1383891233', '0', '0');
INSERT INTO `hm_attributes` VALUES ('129', 'covers', '图集', '', 'photo', '', '', '1', '', '2', '0', '0', '0', '0', '1');
INSERT INTO `hm_attributes` VALUES ('139', 'url', 'url', '', 'string', '', '', '1', '', '4', '0', '0', '0', '0', '0');
INSERT INTO `hm_attributes` VALUES ('10', 'position', '推荐位', 'smallint(5) unsigned NOT NULL ', 'select', 'char(50) default NULL', '多个推荐则将其推荐值相加', '1', '0:无|1:首页推荐|2:频道推荐|3:列表推荐\r\n\r\n', '1', '1', '1383895640', '1383891233', '0', '1');
INSERT INTO `hm_attributes` VALUES ('12', 'cover_id', '封面', 'int(10) unsigned NOT NULL ', 'picture', '0', '0-无封面，大于0-封面图片ID，需要函数处理', '1', '', '1', '1', '1384147827', '1383891233', '0', '0');
INSERT INTO `hm_attributes` VALUES ('133', 'language', '软件语言', '', 'string', '', '', '1', '', '3', '0', '0', '0', '0', '1');
INSERT INTO `hm_attributes` VALUES ('131', 'url', '下载地址', '', 'string', '', '', '1', '', '3', '0', '0', '0', '0', '0');
INSERT INTO `hm_attributes` VALUES ('16', 'view', '浏览量', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '1', '1', '1383895835', '1383891233', '0', '0');
INSERT INTO `hm_attributes` VALUES ('17', 'comment', '评论数', 'int(10) unsigned NOT NULL ', 'num', 'int(10) UNSIGNED NOT NULL  default \'0\'', '', '1', '', '1', '1', '1383895846', '1383891233', '0', '0');
INSERT INTO `hm_attributes` VALUES ('136', 'level', '评分等级', '', 'string', '', '', '1', '', '3', '0', '0', '0', '0', '0');
INSERT INTO `hm_attributes` VALUES ('20', 'create_time', '创建时间', 'int(10) unsigned NOT NULL ', 'date', '0', '', '1', '', '1', '1', '1383895903', '1383891233', '0', '1');
INSERT INTO `hm_attributes` VALUES ('21', 'update_time', '更新时间', 'int(10) unsigned NOT NULL ', 'date', '0', '', '0', '', '1', '1', '1384508277', '1383891233', '0', '1');
INSERT INTO `hm_attributes` VALUES ('22', 'status', '数据状态', 'tinyint(4) NOT NULL ', 'num', 'int(10) UNSIGNED NOT NULL  default \'0\'', '', '0', '-1:删除\r\n0:禁用\r\n1:正常\r\n2:待审核\r\n3:草稿', '1', '1', '1384508496', '1383891233', '0', '0');
INSERT INTO `hm_attributes` VALUES ('135', 'type', '软件类型', '', 'string', '', '', '1', '', '3', '0', '0', '0', '0', '1');
INSERT INTO `hm_attributes` VALUES ('25', 'content', '内容', 'varchar(100) NOT NULL ', 'editor', '', '参照display方法参数的定义', '1', '', '1', '1', '1383896190', '1383891243', '0', '0');
INSERT INTO `hm_attributes` VALUES ('134', 'platform', '软件平台', '', 'string', '', '', '1', '', '3', '0', '0', '0', '0', '0');
INSERT INTO `hm_attributes` VALUES ('132', 'authorize', '授权形式', '', 'string', '', '免费|商业版', '1', '', '3', '0', '0', '0', '0', '1');
INSERT INTO `hm_attributes` VALUES ('30', 'file_id', '文件ID', 'int(10) unsigned NOT NULL ', 'file', '0', '需要函数处理', '1', '', '3', '1', '1383896415', '1383891252', '0', '0');
INSERT INTO `hm_attributes` VALUES ('31', 'download', '下载次数', 'int(10) unsigned NOT NULL ', 'num', 'int(10) UNSIGNED NOT NULL', '', '1', '', '3', '1', '1383896380', '1383891252', '0', '0');
INSERT INTO `hm_attributes` VALUES ('32', 'size', '文件大小', 'bigint(20) unsigned NOT NULL ', 'num', '0', '单位bit', '1', '', '3', '1', '1383896371', '1383891252', '0', '0');
INSERT INTO `hm_attributes` VALUES ('152', 'description', '内容描述', '', 'textarea', 'varchar(225) default NULL', '文章内容描述', '1', '', '1', '1', '0', '0', '0', '1');
INSERT INTO `hm_attributes` VALUES ('162', ' trait', '学生特点', '', 'string', 'varchar(255) default NULL', '学生的特点', '1', '', '5', '0', '0', '0', '0', '0');
INSERT INTO `hm_attributes` VALUES ('161', 'occupation', '职业', '', 'string', 'varchar(255) default NULL', '就业职业名称', '1', '', '5', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `hm_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `hm_auth_group`;
CREATE TABLE `hm_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `group_id` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_auth_group
-- ----------------------------
INSERT INTO `hm_auth_group` VALUES ('6', 'admin', '1', '文员', '457654564', '1', '68,74,77,83', '0');
INSERT INTO `hm_auth_group` VALUES ('7', 'admin', '1', '美工', '    cursor: pointer;', '1', '74,77,78,127,128,129,133', '0');
INSERT INTO `hm_auth_group` VALUES ('8', 'admin', '1', '程序员', '', '1', '', '0');

-- ----------------------------
-- Table structure for `hm_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `hm_auth_group_access`;
CREATE TABLE `hm_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  `id` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_auth_group_access
-- ----------------------------
INSERT INTO `hm_auth_group_access` VALUES ('6', '3', '0');
INSERT INTO `hm_auth_group_access` VALUES ('6', '2', '0');
INSERT INTO `hm_auth_group_access` VALUES ('9', '6', '0');
INSERT INTO `hm_auth_group_access` VALUES ('9', '7', '0');

-- ----------------------------
-- Table structure for `hm_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `hm_auth_rule`;
CREATE TABLE `hm_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_auth_rule
-- ----------------------------
INSERT INTO `hm_auth_rule` VALUES ('1', 'admin', '2', 'Admin/Index/index', '首页', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('2', 'admin', '2', 'Admin/Article/index', '文章', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('3', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('4', 'admin', '2', 'Admin/Addons/index', '扩展', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('5', 'admin', '2', 'Admin/Config/group', '系统', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('7', 'admin', '1', 'Admin/article/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('8', 'admin', '1', 'Admin/article/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('9', 'admin', '1', 'Admin/article/setStatus', '改变状态', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('10', 'admin', '1', 'Admin/article/update', '保存', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('11', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('12', 'admin', '1', 'Admin/article/move', '移动', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('13', 'admin', '1', 'Admin/article/copy', '复制', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('14', 'admin', '1', 'Admin/article/paste', '粘贴', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('15', 'admin', '1', 'Admin/article/permit', '还原', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('16', 'admin', '1', 'Admin/article/clear', '清空', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('17', 'admin', '1', 'Admin/Article/examine', '审核列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('18', 'admin', '1', 'Admin/article/recycle', '回收站', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('19', 'admin', '1', 'Admin/User/addaction', '新增用户行为', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('20', 'admin', '1', 'Admin/User/editaction', '编辑用户行为', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('21', 'admin', '1', 'Admin/User/saveAction', '保存用户行为', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('22', 'admin', '1', 'Admin/User/setStatus', '变更行为状态', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('23', 'admin', '1', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('24', 'admin', '1', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('25', 'admin', '1', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('26', 'admin', '1', 'Admin/User/index', '用户信息', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('27', 'admin', '1', 'Admin/User/action', '用户行为', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('28', 'admin', '1', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('29', 'admin', '1', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('30', 'admin', '1', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('31', 'admin', '1', 'Admin/AuthManager/createGroup', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('32', 'admin', '1', 'Admin/AuthManager/editGroup', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('33', 'admin', '1', 'Admin/AuthManager/writeGroup', '保存用户组', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('34', 'admin', '1', 'Admin/AuthManager/group', '授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('35', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('36', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('37', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '解除授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('38', 'admin', '1', 'Admin/AuthManager/addToGroup', '保存成员授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('39', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('40', 'admin', '1', 'Admin/AuthManager/addToCategory', '保存分类授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('41', 'admin', '1', 'Admin/AuthManager/index', '权限管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('42', 'admin', '1', 'Admin/Addons/create', '创建', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('43', 'admin', '1', 'Admin/Addons/checkForm', '检测创建', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('44', 'admin', '1', 'Admin/Addons/preview', '预览', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('45', 'admin', '1', 'Admin/Addons/build', '快速生成插件', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('46', 'admin', '1', 'Admin/Addons/config', '设置', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('47', 'admin', '1', 'Admin/Addons/disable', '禁用', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('48', 'admin', '1', 'Admin/Addons/enable', '启用', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('49', 'admin', '1', 'Admin/Addons/install', '安装', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('50', 'admin', '1', 'Admin/Addons/uninstall', '卸载', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('51', 'admin', '1', 'Admin/Addons/saveconfig', '更新配置', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('52', 'admin', '1', 'Admin/Addons/adminList', '插件后台列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('53', 'admin', '1', 'Admin/Addons/execute', 'URL方式访问插件', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('54', 'admin', '1', 'Admin/Addons/index', '插件管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('55', 'admin', '1', 'Admin/Addons/hooks', '钩子管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('56', 'admin', '1', 'Admin/model/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('57', 'admin', '1', 'Admin/model/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('58', 'admin', '1', 'Admin/model/setStatus', '改变状态', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('59', 'admin', '1', 'Admin/model/update', '保存数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('60', 'admin', '1', 'Admin/Model/index', '模型管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('61', 'admin', '1', 'Admin/Config/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('62', 'admin', '1', 'Admin/Config/del', '删除', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('63', 'admin', '1', 'Admin/Config/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('64', 'admin', '1', 'Admin/Config/save', '保存', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('65', 'admin', '1', 'Admin/Config/group', '网站设置', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('66', 'admin', '1', 'Admin/Config/index', '配置管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('67', 'admin', '1', 'Admin/Channel/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('68', 'admin', '1', 'Admin/Channel/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('69', 'admin', '1', 'Admin/Channel/del', '删除', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('70', 'admin', '1', 'Admin/Channel/index', '导航管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('71', 'admin', '1', 'Admin/Category/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('72', 'admin', '1', 'Admin/Category/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('73', 'admin', '1', 'Admin/Category/remove', '删除', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('74', 'admin', '1', 'Admin/Category/index', '商品分类', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('75', 'admin', '1', 'Admin/file/upload', '上传控件', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('76', 'admin', '1', 'Admin/file/uploadPicture', '上传图片', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('77', 'admin', '1', 'Admin/file/download', '下载', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('94', 'admin', '1', 'Admin/AuthManager/modelauth', '模型授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('79', 'admin', '1', 'Admin/article/batchOperate', '导入', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('80', 'admin', '1', 'Admin/Database/index?type=export', '备份数据库', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('81', 'admin', '1', 'Admin/Database/index?type=import', '还原数据库', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('82', 'admin', '1', 'Admin/Database/export', '备份', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('83', 'admin', '1', 'Admin/Database/optimize', '优化表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('84', 'admin', '1', 'Admin/Database/repair', '修复表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('86', 'admin', '1', 'Admin/Database/import', '恢复', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('87', 'admin', '1', 'Admin/Database/del', '删除', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('88', 'admin', '1', 'Admin/User/add', '新增用户', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('89', 'admin', '1', 'Admin/Attribute/index', '属性管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('90', 'admin', '1', 'Admin/Attribute/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('91', 'admin', '1', 'Admin/Attribute/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('92', 'admin', '1', 'Admin/Attribute/setStatus', '改变状态', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('93', 'admin', '1', 'Admin/Attribute/update', '保存数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('95', 'admin', '1', 'Admin/AuthManager/addToModel', '保存模型授权', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('96', 'admin', '1', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('97', 'admin', '1', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('98', 'admin', '1', 'Admin/Config/menu', '后台菜单管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('99', 'admin', '1', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('100', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('101', 'admin', '1', 'Admin/other', '其他', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('102', 'admin', '1', 'Admin/Menu/add', '新增', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('103', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('104', 'admin', '1', 'Admin/Think/lists?model=article', '文章管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('105', 'admin', '1', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('106', 'admin', '1', 'Admin/Think/lists?model=config', '配置管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('107', 'admin', '1', 'Admin/Action/actionlog', '行为日志', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('108', 'admin', '1', 'Admin/User/updatePassword', '修改密码', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('109', 'admin', '1', 'Admin/User/updateNickname', '修改昵称', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('110', 'admin', '1', 'Admin/action/edit', '查看行为日志', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('205', 'admin', '1', 'Admin/think/add', '新增数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('111', 'admin', '2', 'Admin/article/index', '文档列表', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('112', 'admin', '2', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('113', 'admin', '2', 'Admin/article/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('114', 'admin', '2', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('115', 'admin', '2', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('116', 'admin', '2', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('117', 'admin', '2', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('118', 'admin', '2', 'Admin/article/copy', '复制', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('119', 'admin', '2', 'Admin/article/paste', '粘贴', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('120', 'admin', '2', 'Admin/article/batchOperate', '导入', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('121', 'admin', '2', 'Admin/article/recycle', '回收站', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('122', 'admin', '2', 'Admin/article/permit', '还原', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('123', 'admin', '2', 'Admin/article/clear', '清空', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('124', 'admin', '2', 'Admin/User/add', '新增用户', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('125', 'admin', '2', 'Admin/User/action', '用户行为', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('126', 'admin', '2', 'Admin/User/addAction', '新增用户行为', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('127', 'admin', '2', 'Admin/User/editAction', '编辑用户行为', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('128', 'admin', '2', 'Admin/User/saveAction', '保存用户行为', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('129', 'admin', '2', 'Admin/User/setStatus', '变更行为状态', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('130', 'admin', '2', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('131', 'admin', '2', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('132', 'admin', '2', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('133', 'admin', '2', 'Admin/AuthManager/index', '权限管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('134', 'admin', '2', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('135', 'admin', '2', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('136', 'admin', '2', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('137', 'admin', '2', 'Admin/AuthManager/createGroup', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('138', 'admin', '2', 'Admin/AuthManager/editGroup', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('139', 'admin', '2', 'Admin/AuthManager/writeGroup', '保存用户组', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('140', 'admin', '2', 'Admin/AuthManager/group', '授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('141', 'admin', '2', 'Admin/AuthManager/access', '访问授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('142', 'admin', '2', 'Admin/AuthManager/user', '成员授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('143', 'admin', '2', 'Admin/AuthManager/removeFromGroup', '解除授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('144', 'admin', '2', 'Admin/AuthManager/addToGroup', '保存成员授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('145', 'admin', '2', 'Admin/AuthManager/category', '分类授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('146', 'admin', '2', 'Admin/AuthManager/addToCategory', '保存分类授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('147', 'admin', '2', 'Admin/AuthManager/modelauth', '模型授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('148', 'admin', '2', 'Admin/AuthManager/addToModel', '保存模型授权', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('149', 'admin', '2', 'Admin/Addons/create', '创建', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('150', 'admin', '2', 'Admin/Addons/checkForm', '检测创建', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('151', 'admin', '2', 'Admin/Addons/preview', '预览', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('152', 'admin', '2', 'Admin/Addons/build', '快速生成插件', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('153', 'admin', '2', 'Admin/Addons/config', '设置', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('154', 'admin', '2', 'Admin/Addons/disable', '禁用', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('155', 'admin', '2', 'Admin/Addons/enable', '启用', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('156', 'admin', '2', 'Admin/Addons/install', '安装', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('157', 'admin', '2', 'Admin/Addons/uninstall', '卸载', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('158', 'admin', '2', 'Admin/Addons/saveconfig', '更新配置', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('159', 'admin', '2', 'Admin/Addons/adminList', '插件后台列表', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('160', 'admin', '2', 'Admin/Addons/execute', 'URL方式访问插件', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('161', 'admin', '2', 'Admin/Addons/hooks', '钩子管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('162', 'admin', '2', 'Admin/Model/index', '模型管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('163', 'admin', '2', 'Admin/model/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('164', 'admin', '2', 'Admin/model/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('165', 'admin', '2', 'Admin/model/setStatus', '改变状态', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('166', 'admin', '2', 'Admin/model/update', '保存数据', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('167', 'admin', '2', 'Admin/Attribute/index', '属性管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('168', 'admin', '2', 'Admin/Attribute/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('169', 'admin', '2', 'Admin/Attribute/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('170', 'admin', '2', 'Admin/Attribute/setStatus', '改变状态', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('171', 'admin', '2', 'Admin/Attribute/update', '保存数据', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('172', 'admin', '2', 'Admin/Config/index', '配置管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('173', 'admin', '2', 'Admin/Config/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('174', 'admin', '2', 'Admin/Config/del', '删除', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('175', 'admin', '2', 'Admin/Config/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('176', 'admin', '2', 'Admin/Config/save', '保存', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('177', 'admin', '2', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('178', 'admin', '2', 'Admin/Channel/index', '导航管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('179', 'admin', '2', 'Admin/Channel/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('180', 'admin', '2', 'Admin/Channel/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('181', 'admin', '2', 'Admin/Channel/del', '删除', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('182', 'admin', '2', 'Admin/Category/index', '分类管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('183', 'admin', '2', 'Admin/Category/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('184', 'admin', '2', 'Admin/Category/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('185', 'admin', '2', 'Admin/Category/remove', '删除', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('186', 'admin', '2', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('187', 'admin', '2', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('188', 'admin', '2', 'Admin/Database/index?type=export', '备份数据库', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('189', 'admin', '2', 'Admin/Database/export', '备份', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('190', 'admin', '2', 'Admin/Database/optimize', '优化表', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('191', 'admin', '2', 'Admin/Database/repair', '修复表', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('192', 'admin', '2', 'Admin/Database/index?type=import', '还原数据库', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('193', 'admin', '2', 'Admin/Database/import', '恢复', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('194', 'admin', '2', 'Admin/Database/del', '删除', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('195', 'admin', '2', 'Admin/other', '其他', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('196', 'admin', '2', 'Admin/Menu/add', '新增', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('197', 'admin', '2', 'Admin/Menu/edit', '编辑', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('198', 'admin', '2', 'Admin/Think/lists?model=article', '应用', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('199', 'admin', '2', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('200', 'admin', '2', 'Admin/Think/lists?model=config', '应用', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('201', 'admin', '2', 'Admin/Action/actionlog', '行为日志', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('202', 'admin', '2', 'Admin/User/updatePassword', '修改密码', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('203', 'admin', '2', 'Admin/User/updateNickname', '修改昵称', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('204', 'admin', '2', 'Admin/action/edit', '查看行为日志', '-1', '');
INSERT INTO `hm_auth_rule` VALUES ('206', 'admin', '1', 'Admin/think/edit', '编辑数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('207', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('208', 'admin', '1', 'Admin/Model/generate', '生成', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('209', 'admin', '1', 'Admin/Addons/addHook', '新增钩子', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('210', 'admin', '1', 'Admin/Addons/edithook', '编辑钩子', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('211', 'admin', '1', 'Admin/Article/sort', '文档排序', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('212', 'admin', '1', 'Admin/Config/sort', '排序', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('213', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('214', 'admin', '1', 'Admin/Channel/sort', '排序', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('215', 'admin', '1', 'Admin/Category/operate/type/move', '移动', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('216', 'admin', '1', 'Admin/Category/operate/type/merge', '合并', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('217', 'admin', '1', 'Admin/article/index', '文档列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('218', 'admin', '1', 'Admin/think/lists', '数据列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('219', 'admin', '1', 'Admin/Attributes/index', '属性配置', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('220', 'admin', '1', 'Admin/Brand/index', '品牌管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('221', 'admin', '1', 'Admin/Slide/index', '幻灯片', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('222', 'admin', '1', 'Admin/Ad/index', '广告', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('223', 'admin', '1', 'Admin/Check/index', '商家审核', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('224', 'admin', '1', 'Admin/SellerMenu/index', '后台菜单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('225', 'admin', '1', 'Admin/Types/index', ' 商品类型', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('226', 'admin', '1', 'Admin/Order/index', '提交订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('227', 'admin', '1', 'Admin/GoodsAttributes/index', '商品属性', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('228', 'admin', '1', 'Admin/Cancel/index', '取消管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('229', 'admin', '1', 'Admin/Catearticle/index', '文章分类', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('230', 'admin', '1', 'Admin/Goods/index', '商品列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('231', 'admin', '1', 'Admin/Back/index', '正退货订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('232', 'admin', '1', 'Admin/Stock/index', '库存sku', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('233', 'admin', '1', 'Admin/Fcoupon/index', '优惠券', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('234', 'admin', '1', 'Admin/Change/index', '换货管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('235', 'admin', '2', 'Admin/Goods/index', '商品', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('236', 'admin', '1', 'Admin/Backrefuse/index', '拒绝退货订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('237', 'admin', '2', 'Admin/Order/index', '订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('238', 'admin', '1', 'Admin/UserLog/index', '日志管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('239', 'admin', '1', 'Admin/Backon/index', '退货中订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('240', 'admin', '1', 'Admin/Email/index', '邮件管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('241', 'admin', '1', 'Admin/Backagree/index', '同意退货订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('242', 'admin', '1', 'Admin/Sms/index', '短信管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('243', 'admin', '1', 'Admin/Reserve/index', '预约列表', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('244', 'admin', '1', 'Admin/Backover/index', '已退货订单', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('245', 'admin', '1', 'Admin/Pay/index', '支付管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('246', 'admin', '1', 'Admin/Envelope/index', '站内信管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('247', 'admin', '1', 'Admin/Express/index', ' 快递管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('248', 'admin', '2', 'Admin/Slide/index', '广告', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('249', 'admin', '1', 'Admin/Message/index', '留言管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('250', 'admin', '1', 'Admin/Reply/index', '回复管理', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('251', 'admin', '2', 'Admin/Check/index', '商家', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('252', 'admin', '1', 'Admin/Statistics/index', '今日销量统计', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('253', 'admin', '1', 'Admin/Statistics/week', '本周销量统计', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('254', 'admin', '1', 'Admin/Statistics/month', '本月销量统计', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('255', 'admin', '1', 'Admin/Report/index', '每日数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('256', 'admin', '1', 'Admin/Report/week', '每周数据', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('257', 'admin', '1', 'Admin/Report/month', '每月统计', '1', '');
INSERT INTO `hm_auth_rule` VALUES ('258', 'admin', '1', 'Admin/Lookup/index', '流量统计', '1', '');

-- ----------------------------
-- Table structure for `hm_category`
-- ----------------------------
DROP TABLE IF EXISTS `hm_category`;
CREATE TABLE `hm_category` (
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
-- Records of hm_category
-- ----------------------------
INSERT INTO `hm_category` VALUES ('1', null, '新闻动态', '0', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('2', '', '学校介绍', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `hm_category` VALUES ('3', '', '特色专业', '0', '0', '3', '', '', '', '', 'model/document_photo_list', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `hm_category` VALUES ('4', '', '教学管理', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `hm_category` VALUES ('5', '', '校园文化', '0', '0', '10', '', '', '', '', '', '', '', '0', '0', '0', '1', '', '1');
INSERT INTO `hm_category` VALUES ('6', null, '实训就业', '0', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('7', null, '学习之星', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '5');
INSERT INTO `hm_category` VALUES ('8', null, '招生问答', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('9', null, '教学成果', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('10', null, '填报指南', '0', '0', '0', null, null, null, null, '', null, null, '1', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('11', null, '校园风采', '0', '0', '0', null, null, null, null, 'document_photo_list', null, null, '0', '0', '0', '1', null, '24');
INSERT INTO `hm_category` VALUES ('12', null, '学院新闻', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('13', null, '学生风采', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('14', null, '招生政策', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('15', null, '重要通知', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');
INSERT INTO `hm_category` VALUES ('16', null, '行业快讯', '1', '0', '0', null, null, null, null, '', null, null, '0', '0', '0', '1', null, '1');

-- ----------------------------
-- Table structure for `hm_channel`
-- ----------------------------
DROP TABLE IF EXISTS `hm_channel`;
CREATE TABLE `hm_channel` (
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
-- Records of hm_channel
-- ----------------------------
INSERT INTO `hm_channel` VALUES ('1', '0', '首页', 'index/index', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('2', '0', '学校介绍', 'article/detail?id=2', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('3', '0', '特色专业', 'article/lists?id=3', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('4', '3', '软件开发PHP', 'article/detail?id=8', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('5', '3', '软件测试', 'article/detail?id=9', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('6', '3', '大数据', 'article/detail?id=10', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('7', '3', '电子商务', 'article/detail?id=11', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('8', '3', '企业网络信息安全管理', 'article/detail?id=12', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('9', '0', '教学管理', 'article/lists?id=4', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('10', '0', '校园文化', 'article/lists?id=5', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('11', '0', '招生问答', 'article/lists?id=8', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('12', '0', '实训就业', 'article/lists?id=6', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('13', '0', '在线报名', 'index/online', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('14', '0', '联系我们', 'http://wpa.qq.com/msgrd?v=3&uin=1011723206&site=qq&menu=yes', '0', '0', '0', '1', '_blank');
INSERT INTO `hm_channel` VALUES ('15', '2', '学院概况', 'article/detail?id=2', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('16', '2', '共建专业特色', 'article/detail?id=4', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('17', '2', '办学特色', 'article/detail?id=5', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('18', '2', '现任领导', 'article/detail?id=6', '0', '0', '0', '1', '_self');
INSERT INTO `hm_channel` VALUES ('19', '2', '新闻动态', 'article/lists?id=1', '0', '0', '0', '1', '_self');

-- ----------------------------
-- Table structure for `hm_collect`
-- ----------------------------
DROP TABLE IF EXISTS `hm_collect`;
CREATE TABLE `hm_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `key` varchar(225) DEFAULT '' COMMENT 'key',
  `doc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='密钥表';

-- ----------------------------
-- Records of hm_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_comment`
-- ----------------------------
DROP TABLE IF EXISTS `hm_comment`;
CREATE TABLE `hm_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `doc_id` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `zan` int(10) NOT NULL DEFAULT '0',
  `key` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hm_comment
-- ----------------------------
INSERT INTO `hm_comment` VALUES ('50', '1496114194', '3465547', '1', '92', '0', '11', null);
INSERT INTO `hm_comment` VALUES ('51', '1496114245', '45654765', '1', '92', '0', '16', null);
INSERT INTO `hm_comment` VALUES ('52', '1496115471', '43543', '1', '92', '0', '9', null);
INSERT INTO `hm_comment` VALUES ('53', '1496115808', '2342424', '1', '92', '50', '4', null);
INSERT INTO `hm_comment` VALUES ('54', '1496117342', '564645', '1', '115', '0', '0', null);
INSERT INTO `hm_comment` VALUES ('55', '0', '1232', '0', '90', '0', '4', null);
INSERT INTO `hm_comment` VALUES ('56', '0', '123', '0', '92', '0', '10', '');
INSERT INTO `hm_comment` VALUES ('57', '0', '123', '0', '88', '0', '10', '');
INSERT INTO `hm_comment` VALUES ('58', '0', '123456', '0', '94', '0', '1', '');
INSERT INTO `hm_comment` VALUES ('59', '0', '123', '0', '200', '0', '0', '');
INSERT INTO `hm_comment` VALUES ('60', '0', '123456', '0', '180', '0', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501193017');
INSERT INTO `hm_comment` VALUES ('61', '0', '113456', '0', '92', '0', '4', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501193017');
INSERT INTO `hm_comment` VALUES ('62', '0', '', '0', '88', '0', '11', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501400592');
INSERT INTO `hm_comment` VALUES ('63', '0', '', '0', '90', '0', '9', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501414757');
INSERT INTO `hm_comment` VALUES ('64', '0', '123', '0', '211', '0', '6', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('65', '0', '123', '0', '95', '0', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('66', '0', '回复undefined:123456', '0', '88', '0', '8', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('67', '0', '122334556', '0', '92', '0', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('68', '0', '好看', '0', '207', '0', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('69', '0', '', '0', '212', '0', '2', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('70', '0', '好听', '0', '208', '0', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('71', '0', '好听', '0', '213', '0', '1', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');
INSERT INTO `hm_comment` VALUES ('72', '0', '', '0', '89', '0', '1', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177');

-- ----------------------------
-- Table structure for `hm_config`
-- ----------------------------
DROP TABLE IF EXISTS `hm_config`;
CREATE TABLE `hm_config` (
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
-- Records of hm_config
-- ----------------------------
INSERT INTO `hm_config` VALUES ('1', 'WEB_SITE_TITLE', 'string', '网站标题', '0', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', '项城市慧敏计算机职业技能培训学校', '0');
INSERT INTO `hm_config` VALUES ('2', 'DESCRIPTION', 'textarea', '网站描述', '0', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', '项城市慧敏计算机职业技能培训学校是经河南省项城市民政局，人力资源和社会保障局批准的一所职业学校。', '1');
INSERT INTO `hm_config` VALUES ('3', 'KEYWORD', 'textarea', '网站关键字', '0', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', '慧敏职业学校,科浪教育,', '8');
INSERT INTO `hm_config` VALUES ('4', 'WEB_SITE_CLOSE', 'select', '关闭站点', '0', '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1379235296', '1', '1', '1');
INSERT INTO `hm_config` VALUES ('100', 'QQKEY', 'text', 'QqKEY', '2', '', 'qq登录key', '0', '0', '0', '', '0');
INSERT INTO `hm_config` VALUES ('101', 'QQSECRET', 'text', 'QqSecret', '2', '', 'qq登录密钥', '0', '0', '0', '', '0');
INSERT INTO `hm_config` VALUES ('116', 'ADDRESS', 'string', '学习地址', '2', '', '', '0', '0', '0', '项城市慧敏计算机职业技能学校位于项城市平安大道东段', '0');
INSERT INTO `hm_config` VALUES ('92', 'LOGO', 'picture', '网站logo', '0', '', '网站logo', '0', '0', '0', '7', '0');
INSERT INTO `hm_config` VALUES ('108', 'COLOR', 'color', '主题', '1', '#03a9f4 ', '推荐值#2982ce,#0099cc,#03a9f4 ', '0', '0', '0', '#2982ce', '0');
INSERT INTO `hm_config` VALUES ('91', 'GROUP', 'string', '配置分组', '1', '', '', '0', '0', '0', '基本|高级|联系', '0');
INSERT INTO `hm_config` VALUES ('102', 'DIALOG_STYLE', 'select', '提示框弹窗类型', '1', '0:旧式风格,\r\n1:Dialog', '处理成功后弹出类型', '0', '0', '0', '0', '0');
INSERT INTO `hm_config` VALUES ('106', 'USER_ALLOW_REGISTER', 'select', '是否开启会员注册', '1', '0:关闭,1:开启', '0:关闭,1:开启', '0', '0', '0', '1', '0');
INSERT INTO `hm_config` VALUES ('107', 'DOCUMENT_GROUP', 'string', '文档分组', '1', '', '', '0', '0', '0', '基本|高级', '0');
INSERT INTO `hm_config` VALUES ('109', 'BTN', 'color', '按钮背景色', '1', '#5ebc62', '', '0', '0', '0', '#dd514c', '0');
INSERT INTO `hm_config` VALUES ('110', 'XQQ', 'string', '如云老师', '2', '', '如云老师qq', '0', '0', '0', '13381922071', '0');
INSERT INTO `hm_config` VALUES ('112', 'LQQ', 'string', '如琳老师', '2', '', '如琳老师qq', '0', '0', '0', '1011723206', '0');
INSERT INTO `hm_config` VALUES ('111', 'YQQ', 'string', '如荫老师', '2', '', '如荫师qq', '0', '0', '0', '1010422715', '0');
INSERT INTO `hm_config` VALUES ('113', 'HQQ', 'string', '如洁老师', '2', '', '如洁老师qq', '0', '0', '0', '1010422715', '0');
INSERT INTO `hm_config` VALUES ('114', 'PHONE', 'string', '联系电话', '2', '', '', '0', '0', '0', '13381922071', '0');
INSERT INTO `hm_config` VALUES ('115', 'ISP', 'string', '域名备案号', '0', '', '', '0', '0', '0', '鄂ICP备12002142', '0');
INSERT INTO `hm_config` VALUES ('117', 'guojicode', 'string', '国际招生代码', '2', '', '', '0', '0', '0', '13234', '0');
INSERT INTO `hm_config` VALUES ('118', 'procode', 'string', '省招生代码', '2', '', '', '0', '0', '0', '2197', '0');

-- ----------------------------
-- Table structure for `hm_count`
-- ----------------------------
DROP TABLE IF EXISTS `hm_count`;
CREATE TABLE `hm_count` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `mark` text NOT NULL COMMENT '名称',
  `num` tinyint(10) NOT NULL DEFAULT '0' COMMENT '数量',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `model` varchar(225) DEFAULT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_count
-- ----------------------------
INSERT INTO `hm_count` VALUES ('62', '访客数+1', '1', '1505334830', '0', 'visitor', '20170914');
INSERT INTO `hm_count` VALUES ('63', '访客数+1', '1', '1505407723', '0', 'visitor', '20170915');
INSERT INTO `hm_count` VALUES ('64', '访客数+1', '1', '1505491821', '0', 'visitor', '20170916');
INSERT INTO `hm_count` VALUES ('65', '访客数+1', '1', '1505621510', '0', 'visitor', '20170917');
INSERT INTO `hm_count` VALUES ('66', '访客数+1', '1', '1505665970', '0', 'visitor', '20170918');
INSERT INTO `hm_count` VALUES ('67', '访客数+1', '1', '1506179039', '0', 'visitor', '20170923');
INSERT INTO `hm_count` VALUES ('68', '访客数+1', '1', '1506183008', '0', 'visitor', '20170924');
INSERT INTO `hm_count` VALUES ('69', '访客数+1', '1', '1506297531', '0', 'visitor', '20170925');
INSERT INTO `hm_count` VALUES ('70', '访客数+1', '1', '1506465021', '0', 'visitor', '20170927');
INSERT INTO `hm_count` VALUES ('71', '访客数+1', '1', '1506535027', '0', 'visitor', '20170928');
INSERT INTO `hm_count` VALUES ('72', '访客数+1', '1', '1506617896', '0', 'visitor', '20170929');
INSERT INTO `hm_count` VALUES ('73', '访客数+1', '1', '1506724358', '0', 'visitor', '20170930');
INSERT INTO `hm_count` VALUES ('74', '访客数+1', '1', '1506803475', '0', 'visitor', '20171001');
INSERT INTO `hm_count` VALUES ('75', '访客数+1', '1', '1506898595', '0', 'visitor', '20171002');
INSERT INTO `hm_count` VALUES ('76', '访客数+1', '1', '1506970951', '0', 'visitor', '20171003');
INSERT INTO `hm_count` VALUES ('77', '访客数+1', '1', '1507065441', '0', 'visitor', '20171004');
INSERT INTO `hm_count` VALUES ('78', '访客数+1', '1', '1507154584', '0', 'visitor', '20171005');
INSERT INTO `hm_count` VALUES ('79', '访客数+1', '1', '1507243743', '0', 'visitor', '20171006');
INSERT INTO `hm_count` VALUES ('80', '访客数+1', '1', '1610691884', '0', 'visitor', '20210115');
INSERT INTO `hm_count` VALUES ('81', '访客数+1', '1', '1610757729', '0', 'visitor', '20210116');

-- ----------------------------
-- Table structure for `hm_document`
-- ----------------------------
DROP TABLE IF EXISTS `hm_document`;
CREATE TABLE `hm_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(80) DEFAULT NULL COMMENT '标题',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `content` text NOT NULL,
  `sort` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(225) DEFAULT NULL,
  `comment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `position` char(50) DEFAULT NULL COMMENT '推荐位',
  `model_id` int(2) NOT NULL DEFAULT '1',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `template_detail` varchar(255) DEFAULT NULL COMMENT '模板',
  `ceshi` varchar(255) DEFAULT NULL COMMENT '测试',
  `ceshis` varchar(255) DEFAULT NULL COMMENT '测试s',
  `ceshiss` varchar(255) DEFAULT NULL COMMENT '测试ss',
  `ceshisss` varchar(255) DEFAULT NULL COMMENT '测试ssa',
  PRIMARY KEY (`id`),
  KEY `idx_category_status` (`category_id`) USING BTREE,
  KEY `idx_status_type_pid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='文档模型基础表';

-- ----------------------------
-- Records of hm_document
-- ----------------------------
INSERT INTO `hm_document` VALUES ('2', '1', '学校概况', '2', '0', '1000037', '1506216237', '1506750325', '<p style=\"color:#222222;font-family:\" background-color:#fafafa;text-indent:43px;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:20px;color:#333333;\"><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">项城市慧敏计算机职业技能学是一所经市人社局批准，以培养校计算机软件开发，软件测试，大数据工程技术，电子商务等实用技术人才为主的专业培训机构。学校位于项城市平安大道东段。</span></span> \r\n	</p>\r\n<p style=\"color:#222222;font-family:\" background-color:#fafafa;text-indent:43px;\"=\"\"><span style=\"font-family:仿宋_GB2312;font-size:20px;\"></span> \r\n</p>\r\n<p style=\"color:#222222;font-family:\" background-color:#fafafa;text-indent:43px;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:20px;\"></span> \r\n	</p>\r\n	<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"color:#333333;\">慧敏职业学校建立了一支结构合理、技术精湛、高素质、高水平的教职工队伍。老师们都是来自北上广深知名企业且具备较强软件技能的人才，包括在企业里担任十年以上的技术总监、项目经理、测试经理等的高端技术讲师，形成了一支顺应时代、领先市场的教学管理队伍。学校教学采用“体验式教学”，学生每人一台电脑，让每个学生自入校开始就能体验职场状态，受到良好的教学效果。<br />\r\n</span><span style=\"color:#333333;\">从学校创始之初，学生就业就是慧敏职业学校办学的初心与使命，为此学校在北京、上海、深圳、杭州、广州等地设有就业指导中心，现场指导学生就业，学生就业率达到98%以上。项城市慧敏计算机职业技能培训学校立足建立 “办学有层次、专业有特殊、技能有保证、就业有出路”的职业技能体系。</span> \r\n	</p>\r\n	<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"color:#333333;\"><span style=\"color:#333333;\">学校注重教学设施建设，配备了宽敞的教室，整洁的宿舍，干净卫生的食堂，并安装了空调、高清投影仪、电脑等硬件设备，给学生提供了一个舒适放心的学习生活环境。</span><br />\r\n</span><img src=\"/public/uploads/editor/2021-01-15/6001922113877.jpg\" width=\"751\" height=\"1200\" alt=\"\" /> <span style=\"color:#333333;\">自建校以来，慧敏职业学校桃李芳天下，学校老师们兢兢业业，把很多技能对学员倾囊相授，可谓授业解惑。学员毕业后就职于一线城市的正规大企业，带着父母的嘱托与学校的期望，同时在就业指导老师的悉心引导下，凭着学到的过硬技能，在许许多多的知名大企业里施展才华，更重要的是这些父老乡亲的儿女们，学校的天骄们，在职业生涯上，彻底改变了自身与家庭的命运，最直观的体现就是薪水上，都超过月薪一万的水平，家里从此过上幸福生活！坊间有很多家长都是悄悄给孩子报名，自家孩子学会技能就业了，一个月拿一万五，两万，过年开着新车回去，说媒的也找到家里了，而邻居们很是羡慕。但学校创始人的初心，就是通过传授真正的软件技能，让更多家乡的年轻人们找到理想好工作，过上幸福生活。长此以往，学校获得了许多家长与学员的认可与赞誉，学软件技术给很多家庭带来的改变每天都在发生，学校的名声逐渐传播开来，从项城到周边县市，再到整个周口，慢慢的名声传播到全国很多地市，学校里现在有来自贵州的学员，新疆、黑龙江的学员等等，都是一传十，十传百，慕名而来。</span> \r\n	</p>\r\n	<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		<br />\r\n<span style=\"color:#333333;\">十年磨一剑，成长为如今闪耀行业的一所职业培训学校，这凝结了创始人“科技回报家乡”的满腔热血，也是学校与老师们一步步脚踏实地的见证，更是学员们学成就业，对学校无声的肯定与赞美。</span> \r\n	</p>\r\n	<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"color:#333333;\"><span style=\"font-weight:700;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">项城市慧敏计算机职业技能学校地图：</span><br />\r\n</span>\r\n	</p>\r\n	<p>\r\n		<img src=\"http://api.map.baidu.com/staticimage?center=114.933623%2C33.441745&zoom=19&width=558&height=360&markers=114.933623%2C33.441745&markerStyles=l%2CA\" alt=\"\" />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<p style=\"color:#222222;font-family:\" background-color:#fafafa;text-indent:43px;\"=\"\"><span style=\"font-family:仿宋_GB2312;font-size:20px;\"></span> \r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('6', '1', '现任领导', '2', '0', '12', '1506216484', '1506817271', '$list = $Attributes-&gt;getList($cate[\"model_id\"]);', '0', '', '0', '0', '6', '1', 'document_title', null, null, null, null);
INSERT INTO `hm_document` VALUES ('4', '1', '共建专业特色', '2', '0', '13', '1506216275', '1506216275', '<p>\r\n	<img src=\"/public/uploads/editor/2021-01-16/60023b546a29d.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<img src=\"/public/uploads/editor/2021-01-16/60023b61e5713.png\" alt=\"\" />\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('5', '1', '办学特色', '2', '0', '600003', '1506216407', '1506216407', '<p>\r\n	封闭式管理\r\n</p>\r\n<p>\r\n	包教包会，终身学习\r\n</p>\r\n<p>\r\n	老师在北京，上海，杭州，广州，深圳，郑州等地亲自指导就业\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('7', '1', '新闻动态', '2', '0', '1', '1506216539', '1506216539', '$list = $Attributes-&gt;getList($cate[\"model_id\"]);', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('8', '1', 'PHP软件全栈工程师', '3', '31', '12', '1506216571', '1506216571', '<img src=\"/public/uploads/editor/2021-01-16/600236107f8f2.jpg\" alt=\"\" />', '0', 'web开发和移动应用开发', '0', '99', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('9', '1', '软件测试', '3', '32', '7', '1506216814', '1506216814', '<img src=\"/public/uploads/editor/2021-01-16/6002364b1e52f.jpg\" alt=\"\" />', '0', 'web功能性能，安全，接口等测试', '0', '98', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('10', '1', '大数据', '3', '34', '8888890', '1506217218', '1506217218', '<span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">本专业培养拥护党的基本路线,适应社会主义\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	大数据采集与管理专业是从大数据应用的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%95%B0%E6%8D%AE%E7%AE%A1%E7%90%86/295844\">数据管理</a>、系统开发、海量数据分析与挖掘等层面系统地帮助<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%81%E4%B8%9A/707680\">企业</a>掌握大数据应用中的各种典型问题的解决办法的专业。\r\n</div>\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	“大数据”（Big Data）指一般的软件工具难以捕捉、管理和分析的大容量数据。“大数据”之“大”，并不仅仅在于“容量之大”，更大的意义在于：通过对海量数据的交换、整合和分析，发现新的知识，创造新的价值，带来“大知识”、“大科技”、“大利润”和“大发展”。“大数据”能帮助企业找到一个个难题的答案，给企业带来前所未有的商业价值与机会。大数据同时也给企业的IT系统提出了巨大的挑战。通过不同行业的“大数据”应用状况，我们能够看到企业如何使用大数据和云计算技术，解决他们的难题，灵活、快速、高效地响应瞬息万变的市场需求。\r\n</div>\r\n</span>\r\n<p>\r\n	<span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">市场经济需要,面向</span><span style=\"color:#CC0000;font-family:arial;font-size:13px;background-color:#FFFFFF;\">金融</span><span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">、</span><span style=\"color:#CC0000;font-family:arial;font-size:13px;background-color:#FFFFFF;\">电信</span><span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">、银行、证券等企业</span><span style=\"color:#CC0000;font-family:arial;font-size:13px;background-color:#FFFFFF;\">软件开发</span><span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">、</span><span style=\"color:#CC0000;font-family:arial;font-size:13px;background-color:#FFFFFF;\">管理</span><span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">和服务第一线,掌握基于企业自有业务和规范所需的基本知识和专业.</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">\r\n	<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		今天，越来越多的行业对大数据应用持乐观的态度，大数据或者相关数据分析解决方案的使用在互联网行业，比如百度、腾讯、淘宝、新浪等公司已经成为标准。而像电信、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%87%91%E8%9E%8D/2313938\">金融</a>、能源这些传统行业，越来越多的用户开始尝试或者考虑怎么样使用大数据解决方案，来提升自己的业务水平。\r\n	</div>\r\n	<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n		在“大数据”背景之下，精通“大数据”的专业人才将成为企业最重要的业务角色，“大数据”从业人员薪酬持续增长，人才缺口巨大。\r\n	</div>\r\n<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">大数据专业将从大数据应用的三个主要层面（即数据管理、系统开发、海量数据分析与挖掘）系统地帮助企业掌握大数据应用中的各种典型问题的解决办法，包括实现和分析协同过滤算法、运行和学习分类算法、分布式Hadoop集群的搭建和基准测试、分布式Hbase集群的搭建和基准测试、实现一个基于、Mapreduce的并行算法、部署Hive并实现一个的数据操作等等，实际</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8F%90%E5%8D%87\">提升</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">企业解决实际问题的能力。</span><br />\r\n</span>\r\n</p>', '0', '大数据更智能', '0', '97', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('11', '1', '电子商务', '3', '35', '55556', '1506217247', '1506217247', '<span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\">\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	电子商务专业是一门普通高等学校专科专业，属电子商务类专业，基本修业年限为三年，设有网站（网店）运营、跨境电子商务等专业方向，主要对应销售人员、商务咨询服务人员等职业类别。&nbsp;\r\n</div>\r\n<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	该专业培养掌握现代经营管理、计算机及网络等方面的基础理论知识，具备网络营销、电商平台运营、网站编辑与网页美工、电子商务交易、电子商务物流配送等工作技能，服务于企事业单位的电子商务、网络营销、物流管理等生产和管理第一线的高素质高技能应用型专门人才。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<p style=\"font-size:14px;color:#333333;\">\r\n		培养德、智、体、美全面发展，具有良好职业道德和人文素养，掌握信息技术、电子商务、国际贸易等基础知识和网站（网店）运营相关知识，具备商务信息处理、网络营销、网店内容维护与管理、网络交易管理、网络客户服务与管理等能力，从事网站（网店）规划与运营及网络客户服务管理等工作的高素质技术技能人才。\r\n	</p>\r\n	<p style=\"font-size:14px;color:#333333;\">\r\n		<div class=\"para-title level-3\" style=\"margin:20px 0px 12px;font-size:18px;font-family:&quot;color:#333333;background-color:#FFFFFF;\">\r\n			<h3 class=\"title-text\" style=\"font-size:18px;font-weight:400;\">\r\n				总体框架\r\n			</h3>\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			电子商务专业开设课程由综合基础课、专业核心课程、专业方向课程、选修课程、实训实习课程五个模块所构成。&nbsp;\r\n		</div>\r\n		<div class=\"para-title level-3\" style=\"margin:20px 0px 12px;font-size:18px;font-family:&quot;color:#333333;background-color:#FFFFFF;\">\r\n			<h3 class=\"title-text\" style=\"font-size:18px;font-weight:400;\">\r\n				理论课程\r\n			</h3>\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">综合基础课程</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			主要开设《思想道德法律基础》《高等数学》《大学英语》《经济学基础》《管理学基础》《会计学基础》 《体育》等\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">专业课程</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			专业基础课：《西方经济学》《商务学》《计算机基础》《Internet基础》《C语言设计》《电子商务概论》等\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			专业核心课：《电子商务基础（概论）》《商品信息采集与处理》《网站内容编辑》《网站建设与管理》《网络客户服务与管理》《网络营销》《交易管理》《电子商务综合实训》等。&nbsp;\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			专业方向课：《客户关系管理》《电子商务信息检索》《网络营销》《网上贸易》《电子商务项目实施管理》等\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">选修课程</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			采用弹性化的模块形式，富有灵活性和开放性，可包括相关专业课程、心理学课程、第二外语、文学和艺术课程等。\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">实践教学课程</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			主要有《项目策划与管理》《网页设计》《物流实务》《网店运营管理与实务》《商品摄影及视频制作》《商务谈判》《跨境电商实训》《企业实习实训》等&nbsp;\r\n		</div>\r\n		<div class=\"para-title level-3\" style=\"margin:20px 0px 12px;font-size:18px;font-family:&quot;color:#333333;background-color:#FFFFFF;\">\r\n			<h3 class=\"title-text\" style=\"font-size:18px;font-weight:400;\">\r\n				实习实训\r\n			</h3>\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">实习目标</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			学生通过电子商务专业顶岗实习，了解企业的运作、组织架构、规章制度和企业文化；掌握岗位的典型工作流程、工作内容及核心技能；养成爱岗敬业、精益求精、诚实守信的职业精神，增强学生的就业能力。\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">实习时间</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			学生在实习企业的实习时间根据专业入才培养方案确定，一般为6个月。建议安排在第三学年进行。&nbsp;\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">实习企业</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			一般分为交易型、第三方平台型、支撑服务型等三类企业。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			交易型企业指利用第三方平台或自建网络交易平台开展商品交易、服务交易的企业，含内、外贸交易，传统生产型企业开展电子商务业务亦归属此类；第三方平台型企业指运营第三方电子商务平台的企业，主要为其他电子商务企业提供交易撮合及其他辅助服务；支撑服务型企业指为其他企业开展电子商务业务提供配套支撑服务的企业。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			实习企业应是符合国家规范的诚信企业，具有与业务范围相适应的管理人员、技术入员、服务人员、经营场所、设施设备等，符合安全生产法律法规要求。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			高等职业院校原则上应选择管理规范、规模较大、技术先进、有较高社会信誉或具有较高资质等级，提供岗位与学生所学专业对口或相近的实习企业组织学生顶岗实习。\r\n		</div>\r\n		<ul class=\"custom_dot  para-list list-paddingleft-1\" style=\"color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			<li class=\"list-dot list-dot-paddingleft\">\r\n				<div class=\"para\" style=\"font-size:14px;margin-left:20px;\">\r\n					<span style=\"font-weight:700;\">实习岗位</span>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			实习岗位包括运营推广、美工设计、客户服务（拓展）、技术开发等四大岗位群，具体岗位如下。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			（1）运营推广岗位群：包括网店运营推广、互联网运营推广、微运营等主要岗位。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			（2）美工设计岗位群：包括商品信息采集、图片编辑、网页设计、前端UI设计等主要岗位。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			（3）客户服务（拓展）岗位群：包括销售客服、售后客服、客户维护（拓展）等主要岗位。\r\n		</div>\r\n		<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n			（4）技术开发岗位群：包括前端开发、后台开发、网站安全与维护、移动端开发等主要岗位。\r\n		</div>\r\n	</p>\r\n	<div class=\"para-title level-2\" style=\"font-size:22px;font-family:&quot;margin:35px 0px 15px -30px;\">\r\n		<div>\r\n			<br />\r\n		</div>\r\n	</div>\r\n</p>\r\n</span><span style=\"color:#333333;font-family:arial;font-size:13px;background-color:#FFFFFF;\"></span>', '0', '网上购物，在线消费', '0', '96', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('12', '1', '企业网络信息安全管理', '3', '33', '27', '1506217273', '1506217273', '<span style=\"color:#999999;font-family:微软雅黑;background-color:#FFFFFF;\">计算机信息管理（4G移\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	1.专业特色\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(1). 全国第一个也是唯一囊括Google公司Android系统，Apple公司的iPhone iOS系统，SUN公司 J2ME 等主流智能嵌入式平台的专业。\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(2). 全国唯一从零开始至少编写九款手机游戏及应用程序，所有游戏及应用程序均可下载并且使用，包括：雷电游戏/俄罗斯方块/对对碰看/联网斗地主/blog客户端 /商务警务通/无线点餐系统/股票分析软件等。\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(3). 全国唯一能将Android开发进行到内核、驱动层次的顶级4G课程，从内核驱动程序到Dalvik中间件虚拟机开发，一直到Android应用及游戏，iPhone游戏及应用，J2ME应用游戏及应用，专业都有涉及。\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(4). 全程贯彻 “不能自己写出代码= 0”的教学理念，逼着学生自己写代码，每天人手一机写代码，坚决剔除所谓全理论课程。\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(5). 授课讲师一律不能照搬照PPT讲课，必须是实打实的代码演示，实践授课。\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	(6). 紧随3G/4G产业潮流，在2007年12月美斯坦福就成功移植Android操作\r\n</div>\r\n动商务开发）1.专业特色(1).全国第一个也是唯一囊括Google公司Android系统，Apple公司的iPhoneiOS系统，SUN公司J2ME等主流智能嵌入式平台的专业</span>', '0', '智能嵌入式平台', '0', '95', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('117', '1', '张天雷', '7', '10', '0', '1506943086', '1506943086', '', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('118', '1', '李泽坤', '7', '28', '0', '1506943086', '1506943086', '', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('119', '1', '常雪洁', '7', '26', '0', '1506943086', '1506943086', '', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('13', '1', '教学特色', '4', '0', '40001', '1506218431', '1506218431', '<a href=\"/admin.php/document/edit/id/{:U(\'auth/edit?id=\'.$vo[\'id\'])}\">\r\n<p style=\"color:#464646;font-family:&quot;font-size:14px;background-color:#BCD3E5;\">\r\n	第 一个特色主要是在大学生的课程中，一共分为三个阶段，每个阶段在结束后都设有一个阶段性的项目。这个阶段性的项目，主要是检测我们学员对知识的掌握情况、运用情况以及他的实际操作能力。在这个阶段的项目之后，我们会有项目答辩，这个项目答辩也可以锻炼学生的口才，我们把这个部分称之为项目驱动教学。\r\n</p>\r\n<p style=\"color:#464646;font-family:&quot;font-size:14px;background-color:#BCD3E5;\">\r\n	  第二点是在教学过程中的每个阶段里会设置二到三次考试，我们称之为阶段测试监控教学。这个阶段测试是由笔试加机试组成的，其中笔试主要目的是检测一个学员的知识掌握情况，机试主要检查上机、动手能力。\r\n</p>\r\n<p style=\"color:#464646;font-family:&quot;font-size:14px;background-color:#BCD3E5;\">\r\n	  在我们的知识学习到后面就是我们项目的实训阶段，项目实训阶段会有我们专业的项目经理带领学生到我们的实训基地进行一个项目的实训。在这个过程中，我们会引入一个真实的项目案例，并且还带有一个真实的项目开发流程，从而让我们的学员真切的感受到将来工作中一个真实的场景，这个部分我们将它称为阶段项目驱动就业。\r\n</p>\r\n<p style=\"color:#464646;font-family:&quot;font-size:14px;background-color:#BCD3E5;\">\r\n	  第四点，学员的学习过程中经常会在课堂上遇到一些问题，但是有很多问题在课堂上没办法做到及时的解答，会造成学员的知识掌握的不牢固。所以每个周六的晚上会有我们的教员定时定点辅导一些基础比较薄弱的学生，在他们操作能力上和一些知识层面上，对他们进行一个强化的加深辅导。这个过程会使得我们这些基础薄弱的学生及时赶上课程的进度，并且有一个学习能力的提高，这个部分被我们称为小班辅导巩固教学。\r\n</p>\r\n<p style=\"color:#464646;font-family:&quot;font-size:14px;background-color:#BCD3E5;\">\r\n	  另外，在我们校区设有一个叫学习联盟的组织，这个组织是由学生自行创建的，并且有教员参与管理的一个组织。这个组织主要负责校区一些日常的学员管理工作，并且还会帮忙辅助一些简单的教学工作。学习联盟的成员会在这个过程中，获得自学能力和管理能力的提高，这个部分被我们称之为学习联盟辅助教学。\r\n</p>\r\n</a>\r\n<div>\r\n	<br />\r\n</div>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('14', '1', '师资力量', '4', '0', '7', '1506218799', '1506218799', '王企鹅无群吧', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('15', '1', '专业建设', '4', '0', '248891', '1506218814', '1506218814', '<img src=\"/public/uploads/editor/2021-01-16/60023e858d6b1.jpg\" alt=\"\" />', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('16', '1', '管理特色', '164', '0', '10005', '1506218840', '1506218840', '全部学生住校，类军事化管理', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('17', '1', '规章制度', '164', '0', '0', '1506218854', '1506218854', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('18', '1', '协会建设', '164', '0', '0', '1506218876', '1506218876', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('22', '1', '省教育厅关于公布湖北省高校名单的公告', '235', '0', '0', '1506537218', '1506537365', '<a href=\"/sc/admin.php/auth/edit/id/19.html\">省教育厅关于公布湖北省高校名单的公告</a>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('24', '1', '2016年网上报名开始啦', '235', '0', '1', '1506537422', '1506537422', '2016年网上报名开始啦', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('25', '1', '志愿填报', '10', '0', '16', '1506630583', '1506630583', '{:url(\'article/detail?id=8\')}', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('26', '1', '录取规则', '10', '0', '15', '1506630624', '1506630624', '录取规则', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('27', '1', '奖助学金', '8', '0', '13', '1506630963', '1506754532', '奖助学金', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('28', '1', '就业管理', '6', '0', '11', '1506631095', '1506631095', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('29', '1', '报备咨询', '6', '0', '7', '1506631115', '1506631115', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('30', '1', '校园风采', '11', '9', '8', '1506760553', '1506900356', '校园风采', '0', '', '0', '1', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('31', '1', '我校被评为示范性教师教育基地', '12', '0', '0', '1506728239', '1506728239', '<p class=\"vsbcontent_start\" style=\"text-indent:2em;font-size:14pt;font-family:宋体;\">\r\n	近日，喜讯传来，经自治区教育厅审核批准，我校被评为自治区示范性教师教育基地，又增添了一张靓丽的“金字招牌”。 &nbsp;\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14pt;font-family:宋体;\">\r\n	近几年，我校按照上级有关要求，积极实施师范专业办学能力提升计划，认真做好顶层设计，坚定走转型发展之路；坚持硬件软件相结合，加强师范内涵建设；坚持改革创新，破解教师培养难题；坚持“立足师范本色、服务职教发展、培养应用人才”的办学特色，大力培养基础教育师资、职业教育师资及应用型人才，加快建设特色鲜明的地方应用型本科院校。 &nbsp;\r\n</p>\r\n<p class=\"vsbcontent_end\" style=\"text-indent:2em;font-size:14pt;font-family:宋体;\">\r\n	据悉，此次同时获得自治区示范性教师教育基地称号的学校还有广西师范大学等6所学校。 &nbsp;\r\n</p>', '0', '近日，喜讯传来，经自治区教育厅审核批准，我校被评为自治区示范性教师教育基地，又增添了一张靓丽的“金字招牌”', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('32', '1', '省教育厅领导实地检查学院秋季开学工作', '12', '0', '0', '1506749719', '1506749719', '<p class=\"MsoNormal\" style=\"text-align:justify;font-size:14px;font-family:Calibri, sans-serif;text-indent:28pt;\">\r\n	<span><span style=\"font-size:14pt;font-family:宋体;line-height:28px;\"><span style=\"font-size:14pt;font-family:宋体;line-height:28px;\">9</span><span style=\"font-size:14pt;font-family:宋体;line-height:28px;\">月7日，广东省教育厅政策法规处调研员张耀荣一行莅临广州城建职业学院，实地督导检查秋季开学工作情况。校管会主任张亚斌，校长刘国生，党委书记、副校长杨清国等校</span>领导及相关部门负责人参加了汇报会。</span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:justify;font-size:14px;font-family:Calibri, sans-serif;text-indent:28pt;\">\r\n	<span><span style=\"font-size:14pt;font-family:宋体;line-height:28px;\">张耀荣组长简要介绍了本次督查的目的和重点内容</span><span style=\"font-size:14pt;font-family:宋体;\">。</span><span style=\"font-size:14pt;font-family:宋体;line-height:28px;\">张亚斌主任对督导组一行表示欢迎，希望各相关部门照督导组的要求，努力做好开学工作，确保校园安全稳定和正常的教学秩序。</span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:justify;font-size:14px;font-family:Calibri, sans-serif;text-indent:28pt;\">\r\n	<span><span style=\"font-size:14pt;line-height:28px;\">刘国生校长就学校秋季开学工作，从开学条件保障、规范办学和治理乱收费、校园安全卫生管理和共青团改革等四个方面作了汇报。</span><span style=\"font-size:14pt;background:white;line-height:28px;\">杨清国书记就学校落实暑期省厅相关会议精神，抓好意识形态，确保学校政治安全和校园稳定等情况作了汇报。</span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:justify;font-size:14px;font-family:Calibri, sans-serif;text-indent:28pt;\">\r\n	<span><span style=\"font-size:14pt;font-family:宋体;background:white;line-height:28px;\"></span></span><span style=\"font-size:14pt;font-family:宋体;\">督导组听取汇报后查阅了城建学院开学工作的相关资料，随后深入学生食堂、超市、安全监控中心、心理咨询室、实训中心和团委等进行了实地督导检查，并向相关部门进行了询问，提出了具体指导意见和建议。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:justify;font-size:14px;font-family:Calibri, sans-serif;text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\"></span>&nbsp;\r\n</p>', '0', '9月7日，广东省教育厅政策法规处调研员张耀荣一行莅临广州城建职业学院，实地督导检查秋季开学工作情况。校管会主任张亚斌，校长刘国生，党委书记、副校长杨清国等校', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('33', '1', '关于开展2017年国家励志奖学金评选工作的通知', '12', '0', '0', '1506749822', '1506749822', '<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	根据《财政部、教育部关于印发&lt;普通本科高校、高等学校国家励志奖学金管理暂行办法&gt;的通知》（财教〔2007〕91号）及《广东省教育厅办公室关于做好2017年我省国家奖助学金评审工作的通知》(粤教助办函〔2017〕48号)要求，现将我校2017年国家励志奖学金评选工作有关事项通知如下：\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	<strong>一、名额及奖励金额</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	上级主管部门下达给我校2017年国家励志奖学金的名额为340名，奖励标准为每生每年5000元。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	<strong>二、申请、发放条件</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	1.热爱社会主义祖国，拥护中国共产党的领导。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	2.自觉遵守宪法和法律，遵守学校各项规章制度。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	3.诚实守信，道德品质好，积极参加校内外公益活动。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	4.在校期间各方面表现突出，学习成绩优秀，上一学年综合测评排名在班级前30%，各科平均分达到70分，单科不低于65分。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	5.家庭经济困难，生活俭朴。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	<strong>三、申请及评审程序</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	1.上一学年已通过困难认定并符合条件的学生提出申请，填写《国家励志奖学金申请审批表》。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	2.各二级学院评审领导小组初审后在各自学院范围内公示三天，将公示无争议的国家励志奖学金推荐人选及其申请表上报学生处。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	3.学生处根据各二级学院的推荐，组织校级评审小组按照《国家励志奖学金评审办法》进行审核，最终评审出学校推荐名单在校内公示五天。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	4.学生处将已公示且无争议的学生名单报省教育厅审批，奖学金按要求足额发放。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;font-family:宋体;background-color:#FFFFFF;\">\r\n	<strong>四、名额分配</strong>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('34', '1', '学院图书馆移动阅读平台招标公告', '12', '0', '0', '1506749918', '1506749918', '<p>\r\n	<table border=\"0\" class=\"winstyle20985 ke-zeroborder\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-size:9pt;font-family:宋体;color:#000000;background-color:#FFFFFF;\">\r\n		<tbody>\r\n			<tr>\r\n				<td align=\"center\">\r\n					<span class=\"timestyle20985\" style=\"font-size:9pt;\">2017-09-25 15:04</span>&nbsp;<span class=\"authorstyle20985\" style=\"font-size:9pt;\">供稿：实训管理与设备处 周海蛟&nbsp; 审核：杨清国</span>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"right\">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td height=\"3\">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"contentstyle20985\" style=\"font-size:14px;\">\r\n					<div class=\"c20985_content\" id=\"vsb_newscontent\">\r\n						<div id=\"vsb_content\">\r\n							<p style=\"text-indent:32px;\">\r\n								<span style=\"font-size:16px;font-family:宋体, SimSun;\">广州城建职业学院就图书馆移动阅读平台采购项目进行公开招标，诚邀具有相应资质和相应供货能力的厂家或供应商根据要求参加本次采购活动，采购项目要求如下：&nbsp;</span>\r\n							</p>\r\n							<p style=\"text-indent:32px;\">\r\n								<span style=\"font-size:16px;font-family:宋体, SimSun;\">一、招标方式：公开招标</span>\r\n							</p>\r\n							<p style=\"text-indent:32px;\">\r\n								<span style=\"font-size:16px;font-family:宋体, SimSun;\">二、采购内容：&nbsp;移动阅读平台一套，具体要求如下：</span>\r\n							</p>\r\n						</div>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<span><span style=\"background-color:#FFFFFF;\">\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">三、投标人应具备的资格条件：</span>\r\n	</p>\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">1.具有独立承担民事责任的能力；　　</span>\r\n	</p>\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">2.具有良好的商业信誉和健全的财务会计制度；　</span>\r\n	</p>\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">3.具有履行合同所必需的设备和专业技术能力；</span>\r\n	</p>\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">4.有依法缴纳税收和社会保障资金的良好记录；</span>\r\n	</p>\r\n	<p style=\"font-family:宋体;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n		<span style=\"font-size:16px;font-family:宋体, SimSun;\">5.参加政府采</span>\r\n	</p>\r\n<br />\r\n</span></span>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('35', '1', '关于2017年“国庆节”期间后勤服务开放安排的通知', '12', '0', '0', '1506750074', '1506750074', '<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;font-family:仿宋_gb2312;\">各位师生：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;font-family:仿宋_gb2312;\">学校</span><span style=\"font-size:19px;\">2017</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">年</span><span style=\"font-size:19px;\">“</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">国庆</span><span style=\"font-size:19px;\">”</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">放假期间，为便于学校管理，现将各教学楼、食堂、浴室开放安排通知如下：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:19px;line-height:28.5px;font-family:仿宋_gb2312;\">一、教学楼</span></strong><strong></strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第一教学楼：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">4</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日：全部关闭；</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">5</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日：开放一楼西侧教室，请从西侧一楼大门进入，开放时间：</span><span style=\"font-size:19px;\">8:00</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">21:00</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">2</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第二教学楼：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;font-family:仿宋_gb2312;\">开放时间：</span><span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日，由中德学院自行安排。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">3</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第三教学楼：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日关闭。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;font-family:仿宋_gb2312;\">注：请同学们将放在教室里的书及学习用品在上述安排之前自行带回，假期不再另外开门，请相互转告。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">4</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第四教学楼（军工路</span><span style=\"font-size:19px;\">334</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">号校区）：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;font-family:仿宋_gb2312;\">正常开放。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">5</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第五教学楼：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:38px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日关闭。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">6</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、综合楼</span><span style=\"font-size:19px;\">B</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">区、</span><span style=\"font-size:19px;\">D</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">区：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:38px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">4</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日关闭；</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:37px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">5</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日开放综合楼</span><span style=\"font-size:19px;\">B</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">区</span><span style=\"font-size:19px;\">105</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、</span><span style=\"font-size:19px;\">107</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">，开放时间：</span><span style=\"font-size:19px;\">08</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">：</span><span style=\"font-size:19px;\">00</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">21</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">：</span><span style=\"font-size:19px;\">00</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:19px;\">7</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">、第一教学楼（</span><span style=\"font-size:19px;\">1100</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">号校区）：</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:SimSun;font-size:14px;background-color:#FFFFFF;text-indent:38px;\">\r\n	<span style=\"font-size:19px;\">10</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">月</span><span style=\"font-size:19px;\">1</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">日：开放一楼全部教室，开放时间：</span><span style=\"font-size:19px;\">8</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">：</span><span style=\"font-size:19px;\">00</span><span style=\"font-size:19px;\">-</span><span style=\"font-size:19px;\">20</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">：</span><span style=\"font-size:19px;\">00</span><span style=\"font-size:19px;font-family:仿宋_gb2312;\">。</span>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('36', '1', '我校隆重举行2017级新生军训成果汇报表', '13', '0', '0', '1506750207', '1506750207', '<p style=\"text-indent:40px;font-size:14pt;font-family:宋体;background-color:#FAFAFA;\">\r\n	<span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">9月22日上午，我校2017级新</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">生军训成果汇报表演在平原路校区田径场隆重举行。新乡军分区副司令员张键、</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">省教育厅体卫艺处主任高根立、新乡军分区战备建设处处长王晓辉、</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">红旗区人武部部长陈爱国，校领导、校长助理、相关职能部门负责同志、各系党总支书记出席了汇报表演。全体新生与部分教师、全体辅导员观看了表演。汇报表演由校领导贾积身主持。</span>\r\n</p>\r\n<p style=\"text-indent:40px;font-size:14pt;font-family:宋体;background-color:#FAFAFA;\">\r\n	<span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\"></span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">汇报表演在庄严的国歌声中拉开帷幕，</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">校党委书记</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">宣布军训汇报表演正式开始。在激昂的检阅进行曲中，各方队开始分列式</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">表演，130个军训</span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">方队依次正步通过主席台，同学们个个精神饱满、步伐整齐、口号嘹亮，接受检阅。随后，进行了男子军体拳、女子军体拳、男子擒敌拳、旗语表演和拉歌比赛，整齐的方队、饱满的精神、干练的动作、嘹亮的声音、精彩的演出搏得了在场师生的阵阵掌声。</span>\r\n</p>\r\n<p style=\"text-indent:40px;font-size:14pt;font-family:宋体;background-color:#FAFAFA;\">\r\n	<span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\"></span><span style=\"font-size:20px;line-height:36px;font-family:仿宋_GB2312;\">校领导贾国强宣读了关于表彰先进集体、先进个人和优秀教官的决定，各获奖代表上台领奖。</span>\r\n</p>', '0', '9月22日上午，我校2017级新生军训成果汇报表演在平原路校区田径场隆重举行。新乡军分区副司令员张键、省教育厅体卫艺处主任高根立', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('37', '1', '学院举行2017年入伍大学生欢送会', '13', '0', '0', '1506750385', '1506750401', '<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, \" background-color:#ffffff;\"=\"\">\r\n	9月9日下午，学院2017年入伍大学生欢送会在学院樱花园校区拓新教学实训楼2号楼2楼举行。武装部长马立军，学生处负责人田华及各二级学院党团学办主任，学院今年参军入伍的大学生及部分学生家长参加。\r\n	</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, \" background-color:#ffffff;\"=\"\">\r\n	会上，学生代表在发言中向母校保证：到部队刻苦训练，努力学习，遵守纪律，服从领导，团结同志，把“吃苦在前,甘愿奉献”的思想牢牢扎根，尽快从一名新兵成长为一名合格的军人，决不辜负全体师生的期望。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, \" background-color:#ffffff;\"=\"\">\r\n	田华宣读了入伍大学生名单，向参军入伍的同学表示祝贺，下一步将协同武装部落实应征大学生入伍的优待政策，为参军入伍的大学生解决后顾之忧。马立军对入伍大学生提出了三点期望：一是要珍惜荣誉、牢记使命。二是要努力拼搏、刻苦锤炼。三是要建功立业，为校争光。希望同学们到部队好好学习，刻苦磨练，提高自身的政治素质和军事本领，在部队建功立业为祖国，为家乡，为学校争光添彩。\r\n	</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('38', '1', '学院2017年大学生乒乓球比赛圆满结束', '13', '0', '0', '1506750429', '1506750429', '<span style=\"color:#222222;font-family:微软雅黑, 宋体, &quot;font-size:14px;background-color:#FFFFFF;\">4月22日，学院2017年大学生乒乓球比赛在千鹤之舞体育馆举行，共有来自院的48名选手参加比赛。经过激列角逐，护理学院、医学院、鹤壁工程技术学院学生分获男子单打前三名；护理学院和医学院学生分获女子单打前三名。比赛丰富了我院大学生的课余生活，推动了乒乓球运动在学院的进一步开展。</span>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('39', '1', '学院团委举行国际志愿者日系列', '13', '0', '0', '1506750490', '1506750490', '<p style=\"color:#222222;font-family:微软雅黑, 宋体, &quot;font-size:14px;background-color:#FFFFFF;text-indent:40px;\">\r\n	12月5日中午，由学院团委学生会志愿服务中心承办的“12.5”国际志愿者日系列活动启动仪式在海棠园校区栖鹤广场举行，来自全院的两千余名青年志愿者参加了仪式。\r\n</p>\r\n<p style=\"color:#222222;font-family:微软雅黑, 宋体, &quot;font-size:14px;background-color:#FFFFFF;text-indent:40px;\">\r\n	本次志愿者日系列活动包括新志愿者宣誓仪式、爱心献血活动、志愿者风采大赛、保护淇河公益活动、敬老院献爱心活动等。本次活动秉承着“奉献、友爱、互助、进步”的志愿精神，以提高大学生志愿服务意识为宗\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('40', '1', '团委举行第十五届大学生文化艺术节闭幕式', '13', '0', '0', '1506750511', '1506750511', '<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, &quot;background-color:#FFFFFF;\">\r\n	12月25日晚，由学院团委、中国建设银行鹤壁分行联合主办的第十五届大学生文化艺术节闭幕式、“建行杯”鹤院达人秀总决赛暨元旦晚会在千鹤之舞体育馆举行。学院3000余名师生一起观看了演出。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, &quot;background-color:#FFFFFF;\">\r\n	闭幕式上，学院党委委员、副院长赵勇和中国建设银行鹤壁分行行长薛颖骁分别致辞。晚会在建行员工带来的舞蹈《盛世花开》拉开了晚会的帷幕，达人秀选手的表演精彩纷呈，形式多样、高潮迭起，《橱窗模特的爱情》舞动着青春的梦想；歌曲《我怀念的》情深意切，引人回味；舞蹈《我的歌声里》彰显了鹤院<a name=\"_GoBack\"></a>学子的青春风采；“截中截”组合的《将进酒》展现了中华武术的刚柔之美，引人向往；“梦想组合”的《喊麦大歌唱》等将现场气氛推向高潮。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, &quot;background-color:#FFFFFF;\">\r\n	护理学院、鹤壁工程技术学院、心连心艺术团也带来了歌曲《修炼爱情》、舞蹈《今天开始我们》、手语《感恩的心》、民族舞蹈《青花瓷》、舞蹈串烧《爵士+拉丁》等或清新自然或热烈奔放的精彩表演。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#222222;font-family:微软雅黑, 宋体, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"background-color:#F5F8FC;line-height:20px;font-family:宋体;color:#000000;\">经过现场打分和网络投票，一、二、三等奖等各个奖项的决胜者登上了领奖台。</span>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('41', '1', '学院2017年招生章程', '14', '0', '0', '1506752307', '1506752544', '<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <a name=\"OLE_LINK11\"></a><span style=\"font-family:黑体;font-size:16pt;color:black;\">第一章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>总则</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第一条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span></span><span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">为了维护学院和考生的合法权益，贯彻公平竞争、公正选拔的原则，规范学院招生工作，保证招生工作的顺利进行，根据《中华人民共和国教育法》、《中华人民共和国高等教育法》和教育部有关规定，特制定本章程。</span><span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第二条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院招生工作</span><span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">贯彻执行国家招生政策，</span><span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">并接受纪检监察部门、考生、家长以及社会各界的监督。</span> \r\n	</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\">第二章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院概况</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\"> </span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\"><span style=\"font-family:宋体;font-size:21.3333px;\">,</span>符合毕（结）业条件者<span style=\"font-family:宋体;font-size:21.3333px;\">,</span>颁发相应学历证书，并报河南省教育厅电子注册。颁发学历证书学院名称：鹤壁职业技术学院。证书种类：全日制普通高等院校毕业证书。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\">第三章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>组织机构和职责</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院设立由学院领导和相关职能部门负责人组成的招生工作领导小组，全面负责贯彻执行教育部和河南省招办的有关招生工作政策，负责制定招生章程、招生规定和实施细则、确定招生规模和调整学科招生计划，领导、监督招生工作的具体实施，协调处理招生工作中的重大事项。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十一条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>招生就业处为学院招生领导小组的执行机构，其主要职责是根据学院的招生规定和实施细则，编制招生计划，组织招生宣传和录取工作，负责考生报名，考生资格审查，处理招生中的日常事务。</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十二条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院设立招生监督小组，对招生工作实施监督。在录取期间由学院纪委成立纪检信访组，安排专人负责考生的信访、申诉、投诉处理工作。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\">第四章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>招生计划</span> \r\n	</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-family:\" font-size:10.5pt;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十三条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院制定年度招生事业计划，经院长办公会审定后，上报上级教育主管部门审批。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-family:\" font-size:10.5pt;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十四条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院招生就业处根据教育部、省教育厅下达的招生计划，制定学院分省来源计划，报教育部审核备案。</span> \r\n	</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-family:\" font-size:10.5pt;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十五条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>学院招生办公室将生源来源计划按要求及时寄<span style=\"font-family:宋体;font-size:21.3333px;\">(</span>送<span style=\"font-family:宋体;font-size:21.3333px;\">)</span>到各有关省<span style=\"font-family:宋体;font-size:21.3333px;\">(</span>自治区、直辖市<span style=\"font-family:宋体;font-size:21.3333px;\">)</span>普通高校招生办公室，并通过各种渠道向社会公布。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\">第五章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>招生对象</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十六条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>参加<span style=\"font-family:宋体;font-size:21.3333px;\">2017</span>年全国普通高等学校招生全国统一考试的考生可报考我院。其它政策按照国家教育部及各省、市、自治区的有关文件精神执行。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-family:\" font-size:10.5pt;text-align:center;color:#666666;background-color:#ffffff;\"=\"\"> <span style=\"font-family:黑体;font-size:16pt;color:black;\">第六章<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>录取规则</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十七条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>依据国家教育部最新颁布的有关文件精神的要求，本着公开、公平、公正的原则，德智体美全面考核，择优录取。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十八条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>外语语种限英语。</span> \r\n	</p>\r\n<p class=\"MsoNormal\" style=\"font-family:\" font-size:10.5pt;text-align:justify;color:#666666;background-color:#ffffff;text-indent:32pt;\"=\"\"> <span style=\"font-family:仿宋_GB2312;font-size:16pt;color:black;\">第十九条<span style=\"font-family:宋体;font-size:21.3333px;\">&nbsp;&nbsp;</span>空中乘务、高速铁路客运乘务、商检技术（海关检验检疫方向）等专业需要面试。</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>', '0', '第一条  为了维护学院和考生的合法权益，贯彻公平竞争、公正选拔的原则，规范学院招生工作，保证招生工作的顺利进行，根据《中华人民共和国教育法》、', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('42', '1', '艺术类招生音乐教育', '14', '0', '0', '1506752352', '1506752352', '<table border=\"0\" class=\"winstyle68503 ke-zeroborder\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-size:14px;color:#3E3A39;font-family:微软雅黑, Verdana, Arial, 宋体;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"titlestyle68503\" align=\"center\" style=\"font-size:18px;font-weight:bold;\">\r\n				音乐教育\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				<span class=\"timestyle68503\">2015-08-26 21:25</span>&nbsp;<span class=\"authorstyle68503\">&nbsp;</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"contentstyle68503\" style=\"font-size:14px;\">\r\n				<div class=\"c68503_content\" id=\"vsb_newscontent\">\r\n					<div id=\"vsb_content\">\r\n						<div align=\"left\">\r\n							<b>培养目标</b>\r\n						</div>\r\n						<div align=\"left\">\r\n							音乐教育专业是我院传统专业之一。本专业旨在培养具有先进的教育理念和扎实系统的小学音乐教育专业知识的基础上；重点掌握从事小学音乐教育教学能力；适应教育教学需要和学生管理等工作的高端技能型专门人才。\r\n						</div>\r\n						<div align=\"left\">\r\n							<b>专业特色</b>\r\n						</div>\r\n						<div align=\"left\">\r\n							本专业拥有一支教育观念新、理论水平高、综合素质强、教学经验丰富、具有敬业精神的教师队伍，专兼职教师15人，其中副教授5人，讲师9人，助教1人；校内校外实训基地资源丰富；专升本升学率高达98%；毕业生综合素质高，专业技术强，就业率高达95%以上，深受用人单位欢迎。\r\n						</div>\r\n						<div align=\"left\">\r\n							<b>主干课程</b>\r\n						</div>\r\n						<div align=\"left\">\r\n							音乐教学法、声乐、钢琴、舞蹈、合唱与指挥、基础乐理、视唱练耳、心理学、教育学。\r\n						</div>\r\n						<div align=\"left\">\r\n							<b>资格证书</b>\r\n						</div>\r\n						<div align=\"left\">\r\n							参加全国计算机等级考试取得一级证书或参加全国计算机应用技术考试取得初级证书；参加全国大学生英语应用能力考试取得B级证书；参加普通话水平测试取得二级乙等证书。\r\n						</div>\r\n						<div align=\"left\">\r\n							<b>优秀毕业生</b>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('43', '1', '对口升学招生专业一览表', '14', '0', '0', '1506752386', '1506752386', '<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;color:#666666;background:white;text-indent:15pt;\">\r\n	<span style=\"font-family:黑体;font-size:18pt;color:black;line-height:36px;\">学院<span style=\"font-family:宋体;\">2015</span>年对口升学招生专业表</span>\r\n</p>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;font-family:宋体;color:#666666;font-size:16px;background-color:#FFFFFF;\">\r\n	<table class=\"MsoNormalTable\" cellspacing=\"0\" cellpadding=\"0\" width=\"708\" border=\"1\" style=\"margin:0px;padding:0px;width:530.85pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">专业</span></b>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">代号</span></b>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">招生专业</span></b>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">学制</span></b>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">学费</span></b>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">(</span></b><b><span style=\"font-family:仿宋;font-size:14pt;\">元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span></b>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<b><span style=\"font-family:仿宋;font-size:14pt;\">备注</span></b>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">01</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">护理</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">国家紧缺人才培养基地</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">04</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">助产</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级示范性实训基地</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">05</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">医学影像技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级特色专业建设点</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">06</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">康复治疗技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级优秀教学团队</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">07</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">医学检验技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级示范性实训基地</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">08</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">口腔医学技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级骨干校重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">09</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">药学</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级示范性实训基地</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">10</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">食品药品监督管理</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级骨干校重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">13</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">计算机网络技术</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">(4G</span><span style=\"font-family:仿宋;font-size:14pt;\">通信工程方向<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">校企合作高薪就业</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">认证培训费<span style=\"font-family:宋体;font-size:18.6667px;\">4800</span>元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">15</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">计算机网络技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级优秀教学团队</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">18</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">汽车检测与维修技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级特色专业建设点</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">21</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">机电一体化技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级专业综合改革试点</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">24</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">会计电算化</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">中央财政支持的重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">25</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">营销与策划</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级特色专业建设点</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">26</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">旅游管理</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">(</span><span style=\"font-family:仿宋;font-size:14pt;\">高铁服务方向<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">校企合作高薪就业</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">认证培训费<span style=\"font-family:宋体;font-size:18.6667px;\">5500</span>元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">27</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">旅游管理</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">(</span><span style=\"font-family:仿宋;font-size:14pt;\">民航服务方向<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">校企合作高薪就业</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">认证培训费<span style=\"font-family:宋体;font-size:18.6667px;\">7700</span>元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">28</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">建筑工程技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级示范性实训基地</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">32</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">道路桥梁工程技术</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级骨干校重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">36</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">城市轨道交通运营管理</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">(</span><span style=\"font-family:仿宋;font-size:14pt;\">高铁技术应用方向<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">校企合作高薪就业</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">认证培训费<span style=\"font-family:宋体;font-size:18.6667px;\">5500</span>元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">38</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">食品营养与检测</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">(</span><span style=\"font-family:仿宋;font-size:14pt;\">海关检疫检验方向<span style=\"font-family:宋体;font-size:18.6667px;\">)</span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">校企合作高薪就业</span>\r\n					</p>\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">认证培训费<span style=\"font-family:宋体;font-size:18.6667px;\">5500</span>元<span style=\"font-family:宋体;font-size:18.6667px;\">/</span>年</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">39</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">学前教育</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">师范类</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">42</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">服装设计</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级骨干校重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">43</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">音乐教育</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">师范类</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"58\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">44</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"227\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">装潢艺术设计</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"57\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">3</span><span style=\"font-family:仿宋;font-size:14pt;\">年</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"85\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">5600</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"281\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n						<span style=\"font-family:仿宋;font-size:14pt;\">省级骨干校重点建设专业</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('44', '1', '学院2017年外省招生专业及计划', '14', '0', '0', '1506752423', '1506752423', '<table border=\"0\" class=\"winstyle1101 ke-zeroborder\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:0px;padding:0px;font-family:宋体;font-size:12px;color:#666666;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"titlestyle1101\" align=\"center\" style=\"font-family:宋体;font-size:18pt;font-weight:bold;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"contentstyle1101\" style=\"font-family:宋体;font-size:12pt;\">\r\n				<div class=\"c1101_content\" id=\"vsb_newscontent\" style=\"margin:0px;padding:0px;\">\r\n					<div id=\"vsb_content\" style=\"margin:0px;padding:0px;\">\r\n						<div class=\"WordSection1\" style=\"margin:0px;padding:0px;\">\r\n							<div align=\"center\" style=\"margin:0px;padding:0px;\">\r\n								<table class=\"MsoNormalTable\" cellspacing=\"0\" cellpadding=\"0\" width=\"714\" border=\"1\" style=\"margin:0px;padding:0px;width:535.65pt;\">\r\n									<tbody>\r\n										<tr>\r\n											<td width=\"75\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">省份</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"61\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">招生</span></b>\r\n												</p>\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">代码</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">专业</span></b>\r\n												</p>\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">代号</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">专业名称</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">招生</span></b>\r\n												</p>\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">计划</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">学制</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">科类</span></b>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">学费</span></b>\r\n												</p>\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<b><span style=\"font-family:仿宋;font-size:14pt;\">（元</span></b><b><span style=\"font-family:仿宋;font-size:14pt;\">/</span></b><b><span style=\"font-family:仿宋;font-size:14pt;\">年）</span></b>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\"75\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">内蒙古</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"61\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">0C09</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">01</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://hl.hbzy.edu.cn/info/1146/1980.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">护理</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">10</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td rowspan=\"2\" width=\"75\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">山东</span>\r\n												</p>\r\n											</td>\r\n											<td rowspan=\"2\" width=\"61\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">C793</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">01</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://hl.hbzy.edu.cn/info/1146/1980.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">护理</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">5</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\"58\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">40</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://rw.hbzy.edu.cn/zys/xqjy.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">学前教育</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">5</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td rowspan=\"2\" width=\"75\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">四川</span>\r\n												</p>\r\n											</td>\r\n											<td rowspan=\"2\" width=\"61\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4159</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">04</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://yx.hbzy.edu.cn/info/1007/1259.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">医学影像技术</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">5</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\"58\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">06</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://yx.hbzy.edu.cn/info/1009/1256.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">医学检验技术</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">5</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\"75\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">甘肃</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"61\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">2549</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">01</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://hl.hbzy.edu.cn/info/1146/1980.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">护理</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">10</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td rowspan=\"2\" width=\"75\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">山西</span>\r\n												</p>\r\n											</td>\r\n											<td rowspan=\"2\" width=\"61\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">2058</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"58\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">01</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://hl.hbzy.edu.cn/info/1146/1980.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">护理</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">5</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">4400</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\"58\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">40</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"180\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:宋体;\"><a href=\"http://rw.hbzy.edu.cn/zys/xqjy.htm\"><span style=\"font-family:仿宋_GB2312;font-size:14pt;color:black;\"><span style=\"font-family:宋体;font-size:18.6667px;\">学前教育</span></span></a></span>\r\n												</p>\r\n											</td>\r\n											<td width=\"56\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">6</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"62\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">三年</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"118\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">普招文史类</span>\r\n												</p>\r\n											</td>\r\n											<td width=\"104\" style=\"font-family:宋体;background:#F2F2F2;\">\r\n												<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:center;\">\r\n													<span style=\"font-family:仿宋;font-size:14pt;\">3300</span>\r\n												</p>\r\n											</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</div>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">说明：</span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">1.</span><span style=\"font-family:仿宋;font-size:16pt;color:black;\">点击专业名称可以查看详细的专业介绍。</span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">2.</span><span style=\"font-family:仿宋;font-size:16pt;color:black;\">请考生认真查看自己所处省份的招生代码、专业代号、专业名称和科类，以便填报高考志愿。</span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">学院网址：</span><span style=\"font-family:宋体;\"><a href=\"http://www.hbzy.edu.cn/\"><span style=\"font-family:仿宋;font-size:16pt;color:black;\">http://www.hbzy.edu.cn/</span></a></span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">学院地址：河南省鹤壁市淇滨区朝歌路<span style=\"font-family:宋体;font-size:21.3333px;\">5</span>号</span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">联系电话：<span style=\"font-family:宋体;font-size:21.3333px;\">0392-3352516</span>、<span style=\"font-family:宋体;font-size:21.3333px;\">3338711</span></span>\r\n							</p>\r\n							<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;font-size:10.5pt;text-align:justify;text-indent:32pt;\">\r\n								<span style=\"font-family:仿宋;font-size:16pt;color:black;\">招生<span style=\"font-family:宋体;font-size:21.3333px;\">QQ</span>群：<span style=\"font-family:宋体;font-size:21.3333px;\">340111174</span></span>\r\n							</p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('45', '1', '2017年普招再次征集志愿通知', '14', '0', '0', '1506752516', '1506752516', '<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;text-indent:32pt;\">\r\n	<span style=\"font-family:仿宋_GB2312;font-size:16pt;\">学院将于<span style=\"font-family:宋体;font-size:21.3333px;\">8</span>月<span style=\"font-family:宋体;font-size:21.3333px;\">21</span>日<span style=\"font-family:宋体;font-size:21.3333px;\">8</span>时至<span style=\"font-family:宋体;font-size:21.3333px;\">8</span>月<span style=\"font-family:宋体;font-size:21.3333px;\">22</span>日<span style=\"font-family:宋体;font-size:21.3333px;\">18</span>时再次征集高考志愿，凡高考成绩达到<span style=\"font-family:宋体;font-size:21.3333px;\">160</span>分且当前未被录取的考生，请登陆报考我院。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;text-indent:32pt;\">\r\n	<span style=\"font-family:仿宋_GB2312;font-size:16pt;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;text-indent:32pt;\">\r\n	<span style=\"font-family:仿宋_GB2312;font-size:16pt;\">招生热线：<span style=\"font-family:宋体;font-size:21.3333px;\">0392-3338711</span>、<span style=\"font-family:宋体;font-size:21.3333px;\">0392-3352516</span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"font-family:宋体;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;text-indent:32pt;\">\r\n	<span style=\"font-family:黑体;font-size:16pt;\">附征集志愿专业一览表</span><span style=\"font-family:仿宋_GB2312;font-size:14pt;\">（文理兼收）</span>\r\n</p>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;font-family:宋体;color:#666666;font-size:16px;background-color:#FFFFFF;\">\r\n	<table class=\"MsoNormalTable\" cellspacing=\"0\" cellpadding=\"0\" border=\"1\" style=\"margin:0px;padding:0px;\">\r\n		<tbody>\r\n			<tr>\r\n				<td valign=\"top\" width=\"114\" style=\"font-family:宋体;background:#D9D9D9;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<b>专业代号</b>\r\n					</p>\r\n				</td>\r\n				<td valign=\"top\" width=\"309\" style=\"font-family:宋体;background:#D9D9D9;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<b>专业名称</b>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"114\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">27</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"309\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">工业机器人技术</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"114\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">36</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"309\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">道路桥梁工程技术</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"114\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">38</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"309\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">光伏发电技术与应用</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"114\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">42</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"309\" style=\"font-family:宋体;\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-family:Calibri, sans-serif;text-align:center;font-size:10.5pt;\">\r\n						<span style=\"font-family:宋体;\">食品质量与安全</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p class=\"MsoNormal\" style=\"font-family:Calibri, sans-serif;text-align:justify;font-size:10.5pt;color:#666666;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">&nbsp;</span>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('46', '1', '关于做好 2017 年12 月大学英语四、六级考试和英语应用能力B 级考试报名工作的通知', '9', '0', '19', '1506752849', '1506753060', '<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">根据教育部考试中心和广西招生考试院的有关通知精神，结合我校实际，现将</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2017&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12</span></strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月大学英语四、六级考试和英语应用能力</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">B&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级考试报名工作相关事项通知如下。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">一、考试时间</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（一）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">大学英语四级（</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET4</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">）：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">16&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">09</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">00</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">－</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">11</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">20</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（二）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">大学英语六级（</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET6</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">）：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">16&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">15</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">00</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">－</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">17</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">25</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（三）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">英语应用能力（</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">B&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">）</span><span style=\"line-height:32px;font-size:16px;\">&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">17&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">15</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">00</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">－</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">17</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">：</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">00</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">二、报名资格</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（一）</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2015</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2016</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级专科学生可报考英语</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">B</span></strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（二）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">通过英语</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;<strong>B</strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级的专科学生可报考英语四级。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（三）</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2014</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2015</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2016</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级艺术类专业、中职升本的本科学生可报考英语</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;<strong>B&nbsp;</strong></span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（四）</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2014</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2015</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级本科学生可报考英语四级。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（五）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">英语四级分数达到</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;<strong>425&nbsp;</strong></span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">分及以上的学生可报考英语<strong>六</strong>级。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（六）</span></strong><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2016</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级本科学生报考英语<strong>四</strong>级的时间另行通知。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">三、报名费</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">大学英语<strong>四</strong>级</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">28&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">元／人</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">，大学英语<strong>六</strong>级</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">30&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">元／人</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">，英语应用能力</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">B&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">25&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">元／人</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">四、报名时间及方式</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（一）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">英语四、六级考试</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">网上报名时间：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">20&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">时</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">-9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">27&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">18&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">时</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">报名及缴费方式：今年下半年大学英语四、六级考试报名将首次使用</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">全国网上报名系统，</span><span style=\"line-height:32px;font-size:16px;\">&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">考生可登录</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">http://cet.etest.net.cn&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">或全国大学英语四六级考试网站</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">http://cet.etest.edu.cn</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">注册用户、查证报名资格、核对个人信息，选择考试语种级别、通过银行卡或支付宝缴费即完成报名。考生报名后须在</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">24</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">小时内完成交费，否则报名数据会被系统自动清除。（详见网上报名系统首页报名流程）</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">3</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">在报名四六级考试时，发现相片、姓名、身份证号等个人信息有误的，或是符合报名条件无法注册报名的考生，请持本人身份证和学生证到教务处（南校区飞天楼</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">502</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">室）更正、完善个人学籍信息方可报考。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">4</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">学校不再统一发放准考证，考生在</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9:00&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">后登录报名系统打印笔试准考证参加考试。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（二）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">英语</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">B</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">级</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">网上报名时间：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">20&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日－</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">27&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">18&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">时</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">财务缴费时间：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">10&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">13&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">3</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">报名方式：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">20&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日－</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">27&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">，学生请登录学校“教务管理系统（登录学校“教务处”主页，点击“教务管理系统”）在“学生成绩—等级考试报名”栏内进行网上报名。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">4</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">核对报名表：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">10&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">下午各班负责人到辅导员处领取本班的等级试报名表，学生认真核对报名表上的个人报考信息和照片，核对无误后请签名确认缴费。如发现报名表上个人信息错误，请在表上更正确认，如发现报名表上没有照片或者照片有误，请各班负责人带齐相关同学身份证或学生证复印件，于</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">10&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">13</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">前将数据拷贝至教务处（南校区飞天楼</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">502</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">室）。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">5</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">、</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">交报名费、报名表。</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">10&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">13&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">以班级为单位到财务处（南校区飞天楼</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">513</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">室）交报名费和报名表。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（<strong>特别提示：概不接收未在“教务管理系统”上报名的学生缴费，</strong>报名费用有变动的班级，请务必先到教务处（南校区飞天楼</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">502</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">室）进行审核后再缴费。为避免票据丢失，缴费后，请务必将报名表和缴费收据，一并交给财务处收费老师。）</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">五、其他事项</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\"></span></strong></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（一）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">口语考试报考说明：报考</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2017&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">12</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月大学英语四、六级口试的考生，须完成</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2017</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12&nbsp;</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月大学英语四、六级笔试报考<strong>。</strong></span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">2017</span></strong></span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年下半年我校不设口语考试考点，我区</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET-SET</span></strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">考点为广西大学、广西民族大学、广西师范大学和钦州学院，符合报考条件的考生可任意选择考点报名考试，报名时间为</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">23&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">12</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">时至</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">&nbsp;10&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">8&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">24&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">时</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">。使用</span><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">全国网上报名系统，登录</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">http://cet.etest.net.cn</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">或全国大学英语四六级考试网站</span><span style=\"font-family:Calibri;\"><strong><span style=\"line-height:32px;font-size:16px;\">http://cet.etest.edu.cn</span></strong>&nbsp;</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">报考口语，口语考试全国统一收费标准</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">50&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">元</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">/</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">人</span></strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">.</span><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">次。学校不统一发放准考证，考生可在</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">11&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">13&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">9:00</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">后登录报名系统打印口试准考证参加考试。英语四级口语考试（</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET-SET4</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">）考试时间为</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">11&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">18&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">，英语六级口语考试（</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">CET-SET6</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">）考试时间为</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">11&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span></strong><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">19&nbsp;</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">（二）</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">学生历年考试成绩可在“教务管理</span></span> \r\n</p>', '0', '根据教育部考试中心和广西招生考试院的有关通知精神，结合我校实际，现将2017 年12 月大学英语四、六级考试和英语应用能力B 级考试报名工作相关事项通知如下。', '0', '1', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('47', '1', '我校获批4项教育部2017年产学合作项目', '9', '0', '1', '1506752966', '1506753092', '<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;text-indent:0em;background-color:#FFFFFF;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">近日，教育部发布《教育部高教司关于公布有关企业支持的</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2017</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年第一批产学合作协同育人项目立项名单的函》（教高司函〔</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2017</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">〕</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">37</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">号）文件，其中，我校管理学院申报的<strong>《网络营销课程改革》</strong>、计算机科学与工程系申报的<strong>《青年骨干教师</strong></span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">ROS</span></strong><strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">机器人应用培训班》、《大数据专业建设及教学培训班》</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">和<strong>《大数据技术及应用师资培训》</strong>等共计</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">4</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">个项目获批立项。</span></span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;text-indent:0em;background-color:#FFFFFF;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">&nbsp;&nbsp;&nbsp; 产学合作协同育人项目是教育部为贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2015</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">〕</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">36</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">号）文件精神，创新产学合作协同育人机制，组织有关企业支持高校共同开展的产学合作协同育人项目。</span></span> \r\n</p>', '0', '我校获批4项教育部2017年第一批产学合作协同育人项目\r\n\r\n ', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('48', '1', '我校召开2017年教学研究项目结题验收会', '9', '0', '0', '1506753161', '1506753201', '<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<strong><span style=\"line-height:32px;font-family:仿宋_GB2312;font-size:12pt;\">5</span></strong><span style=\"line-height:32px;font-family:仿宋_GB2312;font-size:12pt;\">月<strong>2</strong>日下午，教务处在南校区飞天楼<strong>518</strong>会议室召开了<strong>2017</strong>年校级教学研究项目结题验收评审会。今年，各教学单位、职能部门共申报校级教学研究项目结题材料<strong>21</strong>项，经教务处前期审核，项目负责人申报的<strong>21</strong>项材料全部参加了专家评审验收。</span> \r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:12pt;\">\r\n	<span style=\"line-height:32px;font-family:仿宋_GB2312;font-size:12pt;\">&nbsp;&nbsp;</span><span style=\"line-height:32px;font-family:仿宋_GB2312;font-size:12pt;\">与会专家对结题材料逐一进行审阅，分组展开讨论，并对结题项目提出鉴定意见。最后全体评审专家以无记名投票方式推荐申报的<strong>21</strong>项校级教学研究项目通过了结题验收。</span> \r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('49', '1', '学院非学历性进修、培训管理规定', '9', '0', '4', '1506754128', '1506754128', '<p class=\"vsbcontent_start\" style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	为了适应学校事业发展的需要，规范非学历性进修、培训选派工作，不断提高教职工的业务水平、创新能力和实践能力，保证教学、科研和管理工作的正常运行，特制定本规定。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>第一条</b><b></b><b>总体原则</b><b></b>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（一）</b>统筹安排原则。在保证校内各项工作正常运行的前提下，学校统筹分类分批有计划安排，各系（部）每年选派的教师人数原则上不超过本部门教师人数的15%，行政部门人员的进修培训由学校统筹考虑。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（二）</b>发展需要原则。选派参加非学历性进修、培训人员坚持从实际出发的原则，根据学校学科建设、教学科研和教育管理工作的实际需要，学以致用，务求实效，专业对口学习。在合理安排的前提下，优先选派重点学科、重点专业的教师参加进修培训。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（三）</b>择优选派原则。进修、培训人员必须是师德师风良好，政治、业务素质较好，服从组织安排，安心本职工作，具有一定教学、科研、管理能力与发展潜力、近年工作表现优秀的教职员工。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（四）</b>效果评估原则。为保证进修、培训的质量，进修、培训人员应及时反馈培训成果考核材料，完成各项考核任务。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>第二条</b><b></b><b>进修、培训形式</b><b></b>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（一）</b>国外进修、培训\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	1.对象及条件：主要选派学科带头人、学术带头人、学术骨干、教学名师、中青年骨干教师参加国外语言学习、课程进修、访问学者等。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	2.进修目标：进一步拓宽教职工知识面，学习国外先进教学、科研方法和管理经验，提高其在本学科前沿领域赶超或保持国内领先和国际先进水平的能力。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	<b>（二）</b>国内访问学者\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('50', '1', '关于举办“慕课与混合式教学研讨会”的通知', '9', '0', '3', '1506754180', '1506754180', '各有关高等学校： &nbsp;为加快推进优质慕课资源在我区落地，推动我区高校更好地建设应用慕课，我厅联合教育部在线教育研究中心、清华学堂在线将于近期在南宁和桂林各举办一场“慕课与混合式教学研讨会”。现将研讨会有关事项通知如下： &nbsp;一、活动安排 &nbsp;（一）第一场研讨会时间：5月26日9：00-11：30 &nbsp;地点：桂林理工大学屏风校区图书馆报告厅（桂林市七星区建干路12号） &nbsp;内容：1.应用学堂在线平台进行翻转教学的经验以及新型翻转课堂工具“雨课堂\"实践——以生活英语为例（主讲：杨芳清华大学教授） &nbsp;2.学堂在线应用模式简介（主讲：李学锋清华学堂在线） &nbsp;（二）第二场研讨会时间：5月27日9：00-11：30 &nbsp;地点：广西广播电视大学1楼报告厅（南宁市东宝路1-1号） &nbsp;内容：1.应用学堂在线平台进行翻转教学的经验以及新型翻转课堂工具雨课堂实践——以生活英语为例（主讲：杨芳清华大学教授） &nbsp;2.MOOC教育创新的探索（主讲：陈伟教育部在线教育研究中心联络部主任） &nbsp;3.学堂在线应用模式简介（主讲：李学锋清华学堂在线） &nbsp;二、参会人员 &nbsp;各高校教务部门、教师发展中心相关管理人员，对“基于混合式教学的慕课”感兴趣的教师。 &nbsp;三、有关要求', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('51', '1', '举办“慕课与混合式教学研讨会”的通知', '9', '0', '5', '1506754204', '1506754204', '<p class=\"vsbcontent_start\" style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	各有关高等学校：\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	为加快推进优质慕课资源在我区落地，推动我区高校更好地建设应用慕课，我厅联合教育部在线教育研究中心、清华学堂在线将于近期在南宁和桂林各举办一场“慕课与混合式教学研讨会”。现将研讨会有关事项通知如下：\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	一、活动安排\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	（一）第一场研讨会时间：<b>5</b><b>月</b><b>26</b><b>日</b><b>9</b><b>：</b><b>00-11</b><b>：</b><b>30</b>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	地点：桂林理工大学屏风校区图书馆报告厅（桂林市七星区建干路12号）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	内容：1.应用学堂在线平台进行翻转教学的经验以及新型翻转课堂工具“雨课堂\"实践——以生活英语为例（主讲：杨芳清华大学教授）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	2.学堂在线应用模式简介（主讲：李学锋清华学堂在线）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	（二）第二场研讨会时间：<b>5</b><b>月</b><b>27</b><b>日</b><b>9</b><b>：</b><b>00-11</b><b>：</b><b>30</b>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	地点：广西广播电视大学1楼报告厅（南宁市东宝路<b>1-1</b>号）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	内容：1.应用学堂在线平台进行翻转教学的经验以及新型翻转课堂工具雨课堂实践——以生活英语为例（主讲：杨芳清华大学教授）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	2.MOOC教育创新的探索（主讲：陈伟教育部在线教育研究中心联络部主任）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	3.学堂在线应用模式简介（主讲：李学锋清华学堂在线）\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	二、参会人员\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#1B2B43;font-family:宋体, arial;background-color:#FFFFFF;\">\r\n	各高校教务部门、教师发展中心相关管理人员，对“基于混合式教学的慕课”感兴趣的\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('52', '1', '关于全国教育教学信息化大奖赛的通知', '9', '0', '4', '1506754269', '1506754269', '<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#000000;line-height:32px;font-family:宋体;font-size:16px;\">各教学单位：</span>\r\n</p>\r\n<p style=\"color:#1B2B43;font-family:宋体, arial;font-size:14px;background-color:#FFFFFF;text-indent:32px;\">\r\n	<span style=\"color:#000000;\"><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">根据《关于组织参加第二十一届全国教育教学信息化大奖赛的通知》（桂教办〔</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2016</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">〕</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1004</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">号），现向全校教师征集参赛作品，具体参赛内容见赛事指南（见教务群共享）。参赛作品（含作品光盘</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">份、作品登记表纸质稿和电子版各</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">1</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">份）请于</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2017</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">年</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">6</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">月</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">23</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">日（星期五）前提交给教务处。联系人：潘有志，联系电话：</span><strong><span style=\"line-height:32px;font-family:Calibri;font-size:16px;\">2253026</span></strong><span style=\"line-height:32px;font-family:宋体;font-size:16px;\">。</span></span>\r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('53', '1', '关于2017年普通高校招生 录取批次设置及志愿设置与填报的通知', '8', '0', '7', '1506754445', '1506754445', '<p style=\"font-family:宋体;font-size:14px;\">\r\n	<span style=\"font-family:仿宋;font-size:21px;\">各市、县招生办（考试院）：</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:仿宋;font-size:21px;\">现将我区2017年普通高校招生录取批次设置、志愿设置、志愿填报的有关事项通知如下。</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:黑体;font-size:21px;\">一、录取批次和志愿设置</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:楷体;font-size:21px;\">（一）批次设置。</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:仿宋;font-size:21px;\">普通高校招生录取共设置12个批次。其中，本科共设置9个批次：本科提前批、自主招生批、专项计划批、本科第一批、本科第一批预科批、本科第二批、精准脱贫专项计划本科批、本科第二批预科A类、本科第二批预科B类。高职高专共设置3个批次：高职高专提前批、高职高专普通批、精准脱贫专项计划专科批。</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:楷体;font-size:21px;\">（二）志愿设置。</span>\r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:32px;\">\r\n	<span style=\"font-family:仿宋;font-size:21px;\">我区2017年普通高校招生志愿设置分为单志愿、平行志愿和顺序志愿三种模式。</span>\r\n</p>', '0', '各市、县招生办（考试院）：\r\n现将我区2017年普通高校招生录取批次设置、志愿设置、志愿填报的有关事项通知如下。', '0', '1', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('54', '1', '关于我校2017年本科录取通知书邮寄说明', '8', '0', '2', '1506754647', '1506754660', '<p class=\"vsbcontent_start\" style=\"font-family:宋体;font-size:14px;text-align:center;\">\r\n	<strong><span style=\"font-size:21px;\">关于我校2017年本科录取通知书邮寄说明（一）</span></strong> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;\">\r\n	<span style=\"font-size:18px;\">&nbsp;&nbsp;&nbsp; 我校山东（普通文理）、北京、江苏、内蒙古、广东、海南<span>（普通文理和艺术类）</span>、河南（艺术类）、河北（艺术类）、甘肃（艺术类）、广西（预科直升、艺术类）、湖南（艺术类）</span><span style=\"font-size:18px;\">的本科录取通知书邮局已经于7月26日取走，上述录取通知书邮寄单号已经可以在本网站录取查询中进行查询。但由于邮局需要进行邮件分拣、数据整理才能将录取通知书寄出，故有的邮寄单号在EMS官网还查询不到邮寄状态，请耐心等待一下，邮局寄出后会第一时间在EMS官网进行数据更新的。</span> \r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('55', '1', '关于做好2017年高等学校招生工作的通知', '8', '0', '1', '1506754785', '1506754820', '<table width=\"95%\" border=\"0\" cellspacing=\"5\" cellpadding=\"10\" align=\"center\" style=\"margin:0px auto;padding:0px;color:#000000;font-family:宋体;font-size:14px;\" class=\"ke-zeroborder\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"30px\" align=\"center\" style=\"font-size:14px;\">\r\n				关于做好我区2017年普通高等学校招生工作的通知\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				录入：&nbsp;&nbsp;&nbsp;&nbsp;发表时间：2017/06/19\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<div id=\"vsb_content\" style=\"margin:0px;padding:0px;\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:方正小标宋简体;font-size:24px;\">关于做好我区</span><span style=\"font-family:\" font-size:24px;\"=\"\">2017</span><span style=\"font-family:方正小标宋简体;font-size:24px;\">年普通高等学校</span> \r\n					</p>\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:方正小标宋简体;font-size:24px;\">招生工作的通知</span> \r\n					</p>\r\n					<p>\r\n						<span style=\"font-family:仿宋;font-size:21px;\">各市、县招生考试委员会、教育局，各高等学校：</span> \r\n					</p>\r\n					<p style=\"text-indent:43px;\">\r\n						<span style=\"font-family:仿宋;font-size:21px;\">根据教育部《关于做好2017年普通高校招生工作的通知》（教学〔2017〕1号）精神，为确保我区普通高校考试招生工作安全、有序进行，现将《广西2017年普通高等学校招生工作规定》印发给你们，请遵照执行。</span> \r\n					</p>\r\n					<p style=\"text-indent:43px;\">\r\n						<span style=\"font-family:仿宋;font-size:21px;\">附件：广西2017年普通高等学校招生工作规定</span> \r\n					</p>\r\n					<p style=\"text-indent:224px;\">\r\n						<span style=\"font-family:仿宋;font-size:21px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 广西壮族自治区招生考试委员会</span> \r\n					</p>\r\n					<p style=\"text-indent:309px;\">\r\n						<span style=\"font-family:仿宋;font-size:21px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017</span><span style=\"font-family:仿宋;font-size:21px;\">年5月31日</span> \r\n					</p>\r\n					<p>\r\n						<span style=\"font-family:;\"></span> \r\n					</p>\r\n					<p>\r\n						<span style=\"font-family:黑体;font-size:24px;\">附件</span> \r\n					</p>\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:方正小标宋简体;font-size:24px;\">广西</span><span style=\"font-family:\" font-size:24px;\"=\"\">2017</span><span style=\"font-family:方正小标宋简体;font-size:24px;\">年普通高等学校招生工作规定</span> \r\n					</p>\r\n					<p style=\"text-indent:43px;\">\r\n						<span style=\"font-family:仿宋;font-size:20px;\">为做好2017年普通高等学校（以下简称高校）招生工作，保证高校选拔符合培养要求的新生，依据《中华人民共和国教育法》《中华人民共和国高等教育法》和《教育部关于做好2017年普通高等学校招生工作的通知》（教学〔2017〕1号）以及自治区有关规定，制定本规定。</span> \r\n					</p>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('56', '1', '2017年视觉设计专业各省录取分数统计表', '8', '0', '1', '1506754744', '1506754767', '<table cellspacing=\"0\" cellpadding=\"0\" width=\"680\" align=\"center\" style=\"margin:0px;padding:0px;color:#000000;font-family:宋体;font-size:14px;\">\r\n	<tbody>\r\n		<tr class=\"firstRow\">\r\n			<td height=\"35\" valign=\"center\" width=\"680\" colspan=\"9\" align=\"middle\">\r\n				<span style=\"font-size:24px;\"><strong>2016年视觉传达设计专业各省录取分数统计表</strong></span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"62\" valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				<strong>省份</strong> \r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				<strong>批次</strong> \r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				<strong>科类</strong> \r\n			</td>\r\n			<td valign=\"center\" colspan=\"2\" align=\"middle\">\r\n				<strong>投档分</strong> \r\n			</td>\r\n			<td valign=\"center\" colspan=\"2\" align=\"middle\">\r\n				<strong>文化分</strong> \r\n			</td>\r\n			<td valign=\"center\" colspan=\"2\" align=\"middle\">\r\n				<strong>专业分</strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				<strong>最高分</strong> \r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				<strong>最低分</strong> \r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				<strong>最高分</strong> \r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				<strong>最低分</strong> \r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				<strong>最高分</strong> \r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				<strong>最低分</strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"67\" valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				广西\r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				本科提前批\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术理\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				555\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				533\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				324\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				218\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				252\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				237\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				艺术文\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				571\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				540\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				412\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				261\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				255\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				233\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"67\" valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				山东\r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				本科一批\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术理\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				342\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				309\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				277\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				252\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				艺术文\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				342\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				309\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				239\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				192\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"67\" valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				河南\r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				艺术类专业本科A段\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术理\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				320\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				320\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				221\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				221\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				艺术文\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				327\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				314\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				228\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				208\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"67\" valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				湖南\r\n			</td>\r\n			<td valign=\"center\" rowspan=\"2\" align=\"middle\">\r\n				本科提前批\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术理\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				319\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				296\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				224\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				213\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				艺术文\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				357\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				339\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				234\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				223\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				海南\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				本科提前批\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术文\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				490\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				437\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				198\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				187\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				河北\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				本科提前批B\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				美术联考\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				374\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				294\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				251\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				190\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"33\" valign=\"center\" align=\"middle\">\r\n				云南\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				二本\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				艺术统考美术与艺术设计\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				—\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				440\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				349\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				238\r\n			</td>\r\n			<td valign=\"center\" align=\"middle\">\r\n				225\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('57', '1', '招生考试院解读志愿填报起止时间已定', '8', '0', '1', '1506754868', '1506754885', '<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">2017年普通高考共设置12个批次，志愿设置仍然分为单志愿、顺序志愿、平行志愿三种模式。为了让考生更加了解何时填报志愿，填报志愿时需注意哪些问题，自治区招生考试院对志愿填报进行了解读。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"><span>●<strong>注意填报起止点，逾期不能补与改</strong></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span><span style=\"font-family:华文仿宋;font-size:21px;\">24</span><span style=\"font-family:华文仿宋;font-size:21px;\">日10时起填报</span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">提前批（本科和高职高专）志愿填报时间：</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span><span style=\"font-family:华文仿宋;font-size:21px;\">6</span><span style=\"font-family:华文仿宋;font-size:21px;\">月24日10:00起</span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span><span style=\"font-family:华文仿宋;font-size:21px;\">6</span><span style=\"font-family:华文仿宋;font-size:21px;\">月28日10:00止。</span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">其他批次志愿填报时间：</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span><span style=\"font-family:华文仿宋;font-size:21px;\">6</span><span style=\"font-family:华文仿宋;font-size:21px;\">月28日15:00起</span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span><span style=\"font-family:华文仿宋;font-size:21px;\">7</span><span style=\"font-family:华文仿宋;font-size:21px;\">月2日10:00止。</span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">实时公布征集</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">部分批次将预留征集志愿时间，并根据录取时计划完成情况确定是否征集志愿。征集志愿计划和填报时间将通过广西招生考试院官网、微博、微信发布，请考生关注。</span><span style=\"font-family:华文仿宋;font-size:21px;\"><span></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">请各位考生注意时间截点，志愿填报时间截止后，任何人和单位均不能更改志愿或补填，请考生按时填报。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"><span>●<strong>初次登录改密码，密保问答要记牢</strong></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">正式报志愿前，高考报名站会给每位参加普通高考的考生发放密封的考生身份识别码（即初始密码）。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">考生在初次登录时，需要输入自己的报名号、身份证号、个人初始密码及验证码，并填写密保问题及答案方可登录，首次登录时填写的密保问题及答案用于考生所填志愿的最终确认和锁定，密保问题一经保存不能再次修改。登录成功后必须先修改密码并重新登录后才能开始志愿填报。密码修改后，考生使用的个人初始密码即失效。修改过密码后再次登录志愿填报页面时，只需要填报名号及密码即可。考生在分类考试招生志愿填报时已修改过密码的，在统考招生志愿填报时无需再重新修改。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">请考生务必妥善保管好自己的报名号、身份证号、考生身份识别码、修改过的密码及密保问题答案，因泄密造成的后果由考生负责。如遗忘密码或密保问题，请向报名地招生办咨询。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"><span>●<strong>每次登录一刻钟，退出登录保信息</strong></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">为保证填报工作的顺利进行，在志愿填报截止之前，考生可多次登录志愿填报系统，但每次登录后的有效操作时间为15分钟，超过规定时间提交的志愿信息，将会被系统拒绝。因此，考生应先将有关志愿信息（院校代号、院校名称、专业代号、专业名称等）整理并记录好，登录系统后按整理好的内容进行选择即可。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">此外，特别建议考生在志愿落实后尽早上网填报，以避开接近志愿填报截止时间的网络繁忙期。考生在每次填报、修改志愿后，须先提交再点击“退出登录”按钮，并关闭所有填报志愿期间打开的窗口，以免填报信息丢失。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"><span>●<strong>确定志愿需谨慎，“锁定”信息防篡改</strong></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">从去年起，志愿填报采取点击“锁定考生志愿”并输入密保问题答案的方式，对当轮次所能填报的所有批次的志愿进行一次性确认。志愿一经“锁定”，考生本人及任何其他个人和单位均不能再修改，考生再登录时将看不到“填写志愿”的选择项，只能查询本人志愿。考生填报志愿分两个时间段进行，“锁定”会将本时间段填报的所有批次的志愿确认。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">因此建议考生在填报志愿并确定不再更改后，点击“锁定考生志愿”以“锁定”自己的志愿，杜绝他人篡改的可能性。考生如逾期不进行“锁定”，视同自愿放弃确认权利，其志愿信息以网上志愿填报工作截止时的信息为准。即考生在2017年6月24日10:00至28日10:00期间，考生点击“锁定”后，本科提前批、高职高专提前批的所有志愿均不可更改；在2017年6月28日15:00至7月2日10:00期间，考生点击“锁定”后，自主招生批、专项计划批、本科第一批、本科第一批预科批、本科第二批、精准脱贫专项计划本科批、本科第二批预科A类、本科第二批预科B类、高职高专普通批、精准脱贫专项计划专科批所有志愿均无法更改。考生应在“锁定”前，仔细检查填报的所有批次志愿。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\"><span>●<strong>批次投档有先后，出现冲突要取舍</strong></span></span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">投档是指将考生的档案投放到某一高校，一般情况下我区投档是按照批次依次进行，本科提前批艺术类的三个小批次依次投档，即艺本一批投档录取完成后才进行艺本二批的投档，以此类推。再如从今年起，本科提前批里增设空军招飞批，将对空军招飞计划先行投档，待这类院校及专业录取完成后再进行后续批次的投档录取。即填报了空军招飞类的考生，还可填报后续批次的院校和专业，如未被空军招飞类的院校录取，还可继续参与已填报的后续批次的投档录取。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">但有些批次也实行并行投档，如本科提前批的艺术、体育或其他类实行并行投档，即艺术、体育、其他类在同一时段进行投档（例如：艺术类投档后，填报了该批次的考生的档案正处于“院校在阅”状态，此时体育类也进行投档，则处于“院校在阅”状态的考生即使填报了体育类志愿，也无法投档到体育类），高职高专提前批的艺术、体育和其他类也同样采取并行投档的方式。若考生填报该批次多个专业类别的志愿，在投档过程中将有可能出现因档案处于“院校在阅”状态而无法被投放到其他类别志愿的情况。因此考生应学会取舍，在每个批次只可从这三类中选择一类进行填报。</span> \r\n</p>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('115', '1', '2017年普通高校考试招生一百问', '8', '0', '4', '1506754935', '1506819053', '<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:黑体;font-size:21px;\">1.2017&nbsp;</span><span style=\"font-family:黑体;font-size:21px;\">年共设置哪些批次？</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">答：普通高校招生录取共设置 12 个批次。其中，本科共设置 9 个批次：本科提前批、专项计划批、自主招生批、本科第一批、本科第一批预科批、本科第二批、精准脱贫专项计划本科批、本科第二批预科 A 类、本科第二批预科 B 类。高职高专共设置3 个批次：高职高专提前批、高职高专普通批、精准脱贫专a项计划专科批。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">部分批次将预留征集志愿时间，并根据录取时计划完成情况确定是否征集志愿。各批次征集志愿的填报时间将在广西招生考试院网站公布。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:黑体;font-size:21px;\">2.我区高考志愿分为哪些类型？</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">答：我区 2017年普通高校招生志愿设置分为单志愿、平行志愿和顺序志愿三种模式。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">①单志愿。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">单志愿设置 1 个院校志愿，6 个专业志愿和 1 个“是否服从校内专业调剂”选项。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">②平行志愿。</span> \r\n</p>\r\n<p style=\"font-family:宋体;font-size:14px;text-indent:43px;vertical-align:top;\">\r\n	<span style=\"font-family:华文仿宋;font-size:21px;\">平行志愿设置 6 个院校志愿，均为第一志愿，每个院校志愿设置 6 个专业志愿和 1 个“是否服从校内专业调剂”选项。其中，区内院校在“是否服从校内专业调剂”选项中再分为三种选项，具体表述为：一是全部服从调剂，即在所填专业无法满足时，调剂到该院校的其他专业；二是部分服从调剂，最多服从 10 个专业，即在该院校内再选择 10 个校内专业服从调剂；三是不服从调剂，即除所填报的专业外，不服从调剂到该院校的其他专业。</span> \r\n</p>', '0', '', '0', '0', '6', '1', '', null, null, null, null);
INSERT INTO `hm_document` VALUES ('59', '1', '杨涛', '7', '10', '9', '1506903628', '1506905097', '<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">在这条成长的人生道路上，学习已经贯穿了整条路，我们所经过的每一处都是值得学习的，学习就是我们对新知识的认知和吸收，而知识就是我们成长的标记。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">我们生来就是无知的，正是因为不断的吸收新的知识才让我们显得比动物更有独立的思维。作为学生的我们，新的知识可分为两类：一是书本上的，二是书本外的。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">面对书本上的知识，我们缺少学习的方法和坚持的毅力，只要有适合自己学习的方法，想要学好也没有想象中的那么难。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">在学习方法中，我们要做到以下几点：</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">1.<span style=\"font-size:7pt;font-family:;\">&nbsp;&nbsp;</span></span><span style=\"font-family:宋体;\">提前预习</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">2.<span style=\"font-size:7pt;font-family:;\">&nbsp;&nbsp;</span></span><span style=\"font-family:宋体;\">课堂做笔记</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\">3.<span style=\"font-size:7pt;font-family:;\">&nbsp;&nbsp;</span></span><span style=\"font-family:宋体;\">课后复习</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;color:#333333;\">提前预习就意味着在你认真投入学习之前，先把要学习的内容快速浏览一遍，了解新知识的大致内容及结构，以便能及时理解和消化学习内容。当然，你要注意轻重详略，在不太重要的地方你可以花少点时间，在重要的地方，你可以稍微放慢学习进程。做笔记</span><span style=\"font-family:宋体;color:#333333;\">有助于集中注意力，专心听讲，有助于培养动脑动手的能力，有助于增强鉴别力与思维的敏捷性，有助于课后复习，收到消化巩固之效。课后复习有助于对新知识的巩固，同时加深自己对新知识的理解，有效的吸收新知识的内容。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;color:#333333;\">在做好这些事之后学习就不会那么难，只是在做到这些的同时，我们还需要坚持，只有这样才能让自己的学习成绩有所提高，学习起来也会相对很轻松！知识的堆积能够体现我们内心的丰富，生活也会更加充实！</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;color:#333333;\">漫漫的人生道路，我们需要用知识充实我们的生活，让我们的生活在知识的海洋里扬帆起航！越行越远！</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;color:#333333;\"><span style=\"font-size:12px;\">兴趣:篮球&nbsp;乒乓球&nbsp;看书&nbsp;爬山&nbsp;游泳 &nbsp;</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;color:#333333;\"></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#666666;font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\"><span style=\"font-size:12px;\">座右铭:&nbsp;生命不息，运动不止。</span></span><span style=\"font-size:12pt;font-family:宋体;\">&nbsp;</span> \r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('60', '1', '图书馆', '11', '11', '1', '1506760122', '1506760122', '<span style=\"font-family:SimSun;\">图书馆照片</span>', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('61', '1', '篮球场', '11', '12', '0', '1506760163', '1506760163', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('62', '1', '学生活动中心', '11', '13', '1', '1506760214', '1506760214', '学生活动中心', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('63', '1', '教学楼', '11', '14', '1', '1506760237', '1506760237', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('64', '1', '教室', '11', '15', '0', '1506760318', '1506760318', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('65', '1', '毕业照', '11', '16', '0', '1506760343', '1506760343', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('66', '1', '学生风采', '11', '17', '2', '1506760360', '1506760360', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('67', '1', '宿舍', '11', '18', '4', '1506760637', '1506760637', '', '0', '', '0', '0', '6', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('68', '1', '田小娜', '7', '26', '7', '1506905143', '1506943075', 'sdfds', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('69', '1', '周志', '7', '36', '2', '1506942999', '1506943068', '<span style=\"color:#999999;font-family:微软雅黑;background-color:#FFFFFF;\">聪明、努力、成绩顶呱呱<img src=\"/sc/public/uploads/editor/2017-10-05/59d63d3471bb1.jpg\" alt=\"\" /></span>', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('70', '1', '戴浩', '7', '36', '0', '1506943086', '1506943086', '', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('120', '1', '周静', '7', '28', '0', '1506943086', '1506943086', '', '0', '', '0', '0', '5', '1', null, null, null, null, null);
INSERT INTO `hm_document` VALUES ('116', '1', '毕业学员', '5', '0', '1', '1610760120', '1610760120', '<img src=\"/public/uploads/editor/2021-01-16/60023fad046b8.jpg\" alt=\"\" />', '0', '', '0', '0', '1', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `hm_download`
-- ----------------------------
DROP TABLE IF EXISTS `hm_download`;
CREATE TABLE `hm_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `download` int(10) unsigned NOT NULL COMMENT '下载次数',
  `size` int(10) NOT NULL DEFAULT '0',
  `attach` int(10) NOT NULL DEFAULT '0',
  `file_id` int(2) NOT NULL DEFAULT '1',
  `authorize` varchar(225) DEFAULT NULL,
  `language` varchar(225) DEFAULT NULL,
  `platform` varchar(225) DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `level` int(2) NOT NULL DEFAULT '0',
  `url` varchar(225) NOT NULL DEFAULT 'http://www.yershop.com/yershop_v2.zip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载表';

-- ----------------------------
-- Records of hm_download
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_friendlink`
-- ----------------------------
DROP TABLE IF EXISTS `hm_friendlink`;
CREATE TABLE `hm_friendlink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '频道ID',
  `title` char(30) NOT NULL COMMENT '频道标题',
  `url` char(100) NOT NULL COMMENT '频道连接',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `target` varchar(225) DEFAULT '0' COMMENT '新窗口打开',
  `cover_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_friendlink
-- ----------------------------
INSERT INTO `hm_friendlink` VALUES ('1', '中华人民共和国工业和信息化部', 'http://www.yershop.com/', '0', '0', '0', '1', '_blank', '1');
INSERT INTO `hm_friendlink` VALUES ('2', '中华人民共和国教育部', 'http://www.moe.edu.cn/', '0', '0', '0', '1', '_blank', '19');
INSERT INTO `hm_friendlink` VALUES ('3', '湖北省教育厅', 'http://www.hbe.gov.cn/', '0', '0', '0', '1', '_blank', '20');
INSERT INTO `hm_friendlink` VALUES ('4', '中国高职高专教育网', 'http://www.tech.net.cn/web/index.aspx', '0', '0', '0', '1', '_blank', '21');
INSERT INTO `hm_friendlink` VALUES ('5', '湖北高职高专教育网', 'http://www.hbve.net.cn/', '0', '0', '0', '1', '_blank', '22');
INSERT INTO `hm_friendlink` VALUES ('6', '湖北招生信息网', 'http://zsxx.e21.cn/e21html/', '0', '0', '0', '1', '_blank', '23');
INSERT INTO `hm_friendlink` VALUES ('7', '湖北职业教育与成人教育网', 'http://hbzc.e21.cn/', '0', '0', '0', '1', '_blank', '24');

-- ----------------------------
-- Table structure for `hm_group`
-- ----------------------------
DROP TABLE IF EXISTS `hm_group`;
CREATE TABLE `hm_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `module` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_group
-- ----------------------------
INSERT INTO `hm_group` VALUES ('1', '系统', '0', '1', 'config/systems', '0', '1', null, null);
INSERT INTO `hm_group` VALUES ('7', '文章', '40', '3', 'document/index', '0', '1', null, null);
INSERT INTO `hm_group` VALUES ('18', '用户', '0', '3', '', '0', '1', null, null);
INSERT INTO `hm_group` VALUES ('20', '广告', '0', '4', 'slide/index', '0', '1', null, null);

-- ----------------------------
-- Table structure for `hm_history`
-- ----------------------------
DROP TABLE IF EXISTS `hm_history`;
CREATE TABLE `hm_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `key` varchar(225) DEFAULT '' COMMENT 'key',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  `doc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告图片',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录表';

-- ----------------------------
-- Records of hm_history
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_key`
-- ----------------------------
DROP TABLE IF EXISTS `hm_key`;
CREATE TABLE `hm_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `key` varchar(225) DEFAULT '' COMMENT 'key',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='密钥表';

-- ----------------------------
-- Records of hm_key
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_menu`
-- ----------------------------
DROP TABLE IF EXISTS `hm_menu`;
CREATE TABLE `hm_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '允许发布的内容类型',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `model_id` int(2) NOT NULL DEFAULT '2',
  `category_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of hm_menu
-- ----------------------------
INSERT INTO `hm_menu` VALUES ('1', '', '首页', '0', '0', '0', '0', '1', '2', '1');
INSERT INTO `hm_menu` VALUES ('159', '', '国内', '0', '0', '0', '0', '1', '2', '159');
INSERT INTO `hm_menu` VALUES ('162', '', '图片', '0', '0', '0', '0', '1', '1', '183');
INSERT INTO `hm_menu` VALUES ('163', '', '文化', '0', '0', '0', '0', '1', '1', '163');
INSERT INTO `hm_menu` VALUES ('166', '', '视频', '0', '0', '0', '0', '1', '1', '166');
INSERT INTO `hm_menu` VALUES ('168', '', '文学', '0', '0', '0', '0', '1', '1', '168');
INSERT INTO `hm_menu` VALUES ('169', '', '体育', '0', '0', '0', '0', '1', '1', '169');
INSERT INTO `hm_menu` VALUES ('170', '', '足球', '0', '0', '0', '0', '1', '1', '170');
INSERT INTO `hm_menu` VALUES ('171', '', '篮球', '0', '0', '0', '0', '1', '1', '171');
INSERT INTO `hm_menu` VALUES ('177', '', '欧洲', '0', '0', '0', '0', '1', '1', '177');
INSERT INTO `hm_menu` VALUES ('178', '', '娱乐', '0', '0', '0', '0', '1', '1', '178');
INSERT INTO `hm_menu` VALUES ('179', '', '明星', '0', '0', '0', '0', '1', '1', '179');
INSERT INTO `hm_menu` VALUES ('182', '', '军事', '0', '0', '0', '0', '1', '2', '182');
INSERT INTO `hm_menu` VALUES ('183', '', '影像', '0', '0', '0', '0', '1', '2', '183');
INSERT INTO `hm_menu` VALUES ('184', '', '下载', '0', '0', '0', '0', '1', '3', '184');
INSERT INTO `hm_menu` VALUES ('185', '', '历史', '0', '0', '0', '0', '1', '3', '185');

-- ----------------------------
-- Table structure for `hm_message`
-- ----------------------------
DROP TABLE IF EXISTS `hm_message`;
CREATE TABLE `hm_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `doc_id` int(10) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `key` varchar(225) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hm_message
-- ----------------------------
INSERT INTO `hm_message` VALUES ('50', '1496114194', '3465547', '1', '92', '11', null, '1');
INSERT INTO `hm_message` VALUES ('51', '1496114245', '45654765', '1', '92', '16', null, '1');
INSERT INTO `hm_message` VALUES ('52', '1496115471', '43543', '1', '92', '9', null, '1');
INSERT INTO `hm_message` VALUES ('53', '1496115808', '2342424', '1', '92', '3', null, '1');
INSERT INTO `hm_message` VALUES ('54', '1496117342', '564645', '1', '115', '0', null, '1');
INSERT INTO `hm_message` VALUES ('55', '0', '1232', '0', '90', '1', null, '1');
INSERT INTO `hm_message` VALUES ('56', '0', '123', '0', '92', '9', '', '1');
INSERT INTO `hm_message` VALUES ('57', '0', '123', '0', '88', '3', '', '1');
INSERT INTO `hm_message` VALUES ('58', '0', '123456', '0', '94', '0', '', '1');
INSERT INTO `hm_message` VALUES ('59', '0', '1233256546iukvjbnhvsdffhgjhdasjfhmv 1233256546iukvjbnhvsdffhgjhdasjfhmv 1233256546iukvjbnhvsdffhgjhdasjfhmv 1233256546iukvjbnhvsdffhgjhdasjfhmv 1233256546iukvjbnhvsdffhgjhdasjfhmv 1233256546iukvjbnhvsdffhgjhdasjfhmv ', '0', '200', '0', '', '1');
INSERT INTO `hm_message` VALUES ('60', '0', '123456', '0', '180', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501193017', '1');
INSERT INTO `hm_message` VALUES ('61', '0', '113456', '0', '92', '4', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501193017', '1');
INSERT INTO `hm_message` VALUES ('62', '0', '', '0', '88', '1', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501400592', '1');
INSERT INTO `hm_message` VALUES ('63', '0', '', '0', '90', '7', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501414757', '1');
INSERT INTO `hm_message` VALUES ('64', '0', '123', '0', '211', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177', '1');
INSERT INTO `hm_message` VALUES ('65', '0', '123', '0', '95', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177', '1');
INSERT INTO `hm_message` VALUES ('66', '0', '回复undefined:123456', '0', '88', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177', '1');
INSERT INTO `hm_message` VALUES ('67', '0', '122334556', '0', '92', '0', 'TVt95UgoFa%1&amp2dv!O#|jNh&gt^xGEb@B4u0LZ=RAY1501407177', '1');

-- ----------------------------
-- Table structure for `hm_models`
-- ----------------------------
DROP TABLE IF EXISTS `hm_models`;
CREATE TABLE `hm_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(225) DEFAULT '' COMMENT '标志',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '标题',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  `sort` int(2) NOT NULL DEFAULT '0',
  `base` text NOT NULL,
  `extend` text,
  `json` text NOT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of hm_models
-- ----------------------------
INSERT INTO `hm_models` VALUES ('1', 'document', '文章', '0', '0', '1', '0', '3,25,152,22,10,153,160', '20,12,17,16,21', '{\"1\":[\"3\",\"25\",\"152\",\"22\",\"10\"],\"2\":[\"20\",\"12\",\"17\",\"16\",\"21\"]}', '0');
INSERT INTO `hm_models` VALUES ('2', 'photo', '图片集', '0', '0', '1', '0', '3,12,129,16,17,22', '20,10,21,14,25', '[[\"3\",\"12\",\"129\",\"16\",\"17\",\"22\"],[\"20\",\"10\",\"21\",\"14\",\"25\"]]', '1');
INSERT INTO `hm_models` VALUES ('3', 'download', '下载', '0', '0', '1', '0', '3,134,10,12,133,131,16,136,135,132', '17,20,21,22,25,30,31,32', '{\"1\":[\"3\",\"134\",\"10\",\"12\",\"133\",\"131\",\"16\",\"136\",\"135\",\"132\"],\"2\":[\"17\",\"20\",\"21\",\"22\",\"25\",\"30\",\"31\",\"32\"]}', '1');
INSERT INTO `hm_models` VALUES ('4', 'video', '视频', '0', '0', '1', '0', '3,139,12,16', '10,17,21,20,22,25', '[[\"3\",\"139\",\"12\",\"16\"],[\"10\",\"17\",\"21\",\"20\",\"22\",\"25\"]]', '1');
INSERT INTO `hm_models` VALUES ('5', 'student', '就业明星', '0', '0', '1', '0', '3,161,162,12,25,22,10', '20,17,21,16,152', '{\"1\":[\"3\",\"161\",\"162\",\"12\",\"25\",\"22\",\"10\"],\"2\":[\"20\",\"17\",\"21\",\"16\",\"152\"]}', '1');
INSERT INTO `hm_models` VALUES ('6', 'scenery', '校园风采', '0', '0', '1', '0', '3,12,25,16,17,22', '10,20,21,152', '{\"1\":[\"3\",\"12\",\"25\",\"16\",\"17\",\"22\"],\"2\":[\"10\",\"20\",\"21\",\"152\"]}', '1');

-- ----------------------------
-- Table structure for `hm_module`
-- ----------------------------
DROP TABLE IF EXISTS `hm_module`;
CREATE TABLE `hm_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `group_id` int(2) DEFAULT '0',
  `icon` varchar(225) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `font` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_module
-- ----------------------------
INSERT INTO `hm_module` VALUES ('1', '系统管理', '0', '1', '', '0', '1', '1', null, '', 'align-justify');
INSERT INTO `hm_module` VALUES ('3', '模块管理', '1', '0', 'module/index', '0', '1', '1', '', '', 'sitemap');
INSERT INTO `hm_module` VALUES ('147', '导航管理', '1', '0', 'channel/index', '0', '0', '1', null, '', 'location-arrow');
INSERT INTO `hm_module` VALUES ('8', '文章分类', '1', '0', 'category/index', '0', '1', '1', null, '', 'list-ul');
INSERT INTO `hm_module` VALUES ('9', '文章管理', '43', '0', 'document/index', '0', '1', '7', null, '', 'file-text');
INSERT INTO `hm_module` VALUES ('143', '增加', '142', '0', 'slide/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('135', '用户组授权', '74', '0', 'auth/group', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('134', '删除', '74', '0', 'auth/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('150', '删除', '147', '0', 'channel/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('141', '删除', '9', '0', 'document/del', '0', '0', '7', null, '', null);
INSERT INTO `hm_module` VALUES ('140', '编辑', '9', '0', 'document/edit', '0', '0', '7', null, '', null);
INSERT INTO `hm_module` VALUES ('139', '增加', '9', '0', 'document/add', '0', '0', '7', null, '', null);
INSERT INTO `hm_module` VALUES ('138', '删除', '8', '0', 'category/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('137', '编辑', '8', '0', 'category/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('136', '增加', '8', '0', 'category/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('68', '配置管理', '1', '1', 'config/index', '0', '0', '1', null, '', 'wrench');
INSERT INTO `hm_module` VALUES ('151', '日志管理', '157', '0', 'log/index', '0', '0', '18', null, '', 'calendar');
INSERT INTO `hm_module` VALUES ('43', '文章管理', '0', '0', '', '0', '1', '7', null, '', 'align-justify');
INSERT INTO `hm_module` VALUES ('133', '写入用户组', '74', '0', 'auth/writeGrou', '0', '0', '0', null, '', null);
INSERT INTO `hm_module` VALUES ('132', '访问授权', '74', '0', 'auth/access', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('131', '编辑', '74', '0', 'auth/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('130', '增加', '74', '0', 'auth/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('129', '删除', '78', '0', 'ucenter/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('128', '编辑', '78', '0', 'ucenter/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('127', '增加', '78', '0', 'ucenter/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('73', '分组管理', '1', '0', 'group/index', '0', '0', '1', null, '', 'list-alt');
INSERT INTO `hm_module` VALUES ('148', '增加', '147', '0', 'channel/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('149', '编辑', '147', '0', 'channel/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('70', '系统设置', '1', '2', 'config/systems', '0', '0', '1', null, '', 'cog');
INSERT INTO `hm_module` VALUES ('74', '角色管理', '77', '0', 'auth/index', '0', '0', '18', null, '', 'user-circle');
INSERT INTO `hm_module` VALUES ('75', '增加', '3', '0', 'module/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('76', '编辑', '3', '2', 'module/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('77', '用户管理', '0', '0', '', '0', '0', '18', null, '', 'users');
INSERT INTO `hm_module` VALUES ('78', '用户列表', '77', '0', 'ucenter/index', '0', '0', '18', null, '', 'user');
INSERT INTO `hm_module` VALUES ('79', '广告管理', '158', '0', 'ad/index', '0', '0', '20', null, '', 'area-chart');
INSERT INTO `hm_module` VALUES ('81', '删除', '3', '0', 'module/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('82', '增加', '68', '0', 'config/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('83', '编辑', '68', '0', 'config/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('84', '删除', '68', '0', 'config/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('85', '增加', '73', '0', 'group/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('86', '编辑', '73', '0', 'group/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('87', '删除', '73', '0', 'group/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('88', '增加', '79', '0', 'ad/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('89', '编辑', '79', '0', 'ad/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('90', '删除', '79', '0', 'ad/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('91', '增加', '7', '0', 'category/add', '0', '0', '3', null, '', null);
INSERT INTO `hm_module` VALUES ('92', '编辑', '7', '0', 'category/edit', '0', '0', '3', null, '', null);
INSERT INTO `hm_module` VALUES ('93', '删除', '7', '0', 'category/del', '0', '0', '3', null, '', null);
INSERT INTO `hm_module` VALUES ('142', '幻灯片管理', '158', '0', 'slide/index', '0', '0', '20', null, '', 'sliders');
INSERT INTO `hm_module` VALUES ('144', '编辑', '142', '0', 'slide/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('145', '删除', '142', '0', 'slide/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('146', '切换分类', '142', '0', 'slide/change', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('157', '用户行为', '0', '0', '', '0', '0', '18', null, '', 'user-plus');
INSERT INTO `hm_module` VALUES ('158', '图片管理', '0', '0', '', '0', '0', '20', null, '', 'align-justify');
INSERT INTO `hm_module` VALUES ('159', '图片库', '158', '0', 'picture/index', '0', '0', '20', null, '', 'file-photo-o');
INSERT INTO `hm_module` VALUES ('169', '删除', '159', '0', 'picture/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('167', '增加', '159', '0', 'picture/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('168', '编辑', '159', '0', 'picture/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('164', '增加', '151', '0', 'log/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('165', '编辑', '151', '0', 'log/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('166', '删除', '151', '0', 'log/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('171', '友情链接', '1', '0', 'friendlink/index', '0', '0', '1', null, '', 'link');
INSERT INTO `hm_module` VALUES ('172', '增加', '171', '0', 'friendlink/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('173', '编辑', '171', '0', 'friendlink/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('174', '删除', '171', '0', 'friendlink/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('175', '模型管理', '180', '0', 'models/index', '0', '0', '1', null, '', 'table');
INSERT INTO `hm_module` VALUES ('176', '增加', '175', '0', 'models/add', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('177', '编辑', '175', '0', 'models/edit', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('178', '删除', '175', '0', 'models/del', '0', '0', '1', null, '', null);
INSERT INTO `hm_module` VALUES ('179', '属性管理', '180', '0', 'attributes/index', '0', '0', '1', null, '', 'sort-amount-asc');
INSERT INTO `hm_module` VALUES ('180', '模型管理', '0', '0', '', '0', '0', '1', null, '', 'align-justify');
INSERT INTO `hm_module` VALUES ('181', '增加', '179', '0', 'attributes/add', '0', '0', '1', null, '', '');
INSERT INTO `hm_module` VALUES ('182', '编辑', '179', '0', 'attributes/edit', '0', '0', '1', null, '', '');
INSERT INTO `hm_module` VALUES ('183', '删除', '179', '0', 'attributes/del', '0', '0', '1', null, '', '');
INSERT INTO `hm_module` VALUES ('184', '报名管理', '185', '0', 'user/index', '0', '0', '1', null, '', '');
INSERT INTO `hm_module` VALUES ('185', '报名管理', '0', '0', '', '0', '0', '1', null, '', '');

-- ----------------------------
-- Table structure for `hm_online`
-- ----------------------------
DROP TABLE IF EXISTS `hm_online`;
CREATE TABLE `hm_online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `sex` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '性别:1 男，2女',
  `province` int(10) unsigned DEFAULT '0' COMMENT '省ID',
  `city` int(10) unsigned DEFAULT '0' COMMENT '城市ID',
  `area` int(10) unsigned DEFAULT '0' COMMENT '区（县）ID',
  `detail` varchar(255) DEFAULT '' COMMENT '详细地址',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '用户手机',
  `idcard` char(18) DEFAULT '' COMMENT '身份证号',
  `profession` tinyint(4) unsigned DEFAULT '2' COMMENT '所学专业：1开发，2测试',
  `education` tinyint(4) DEFAULT NULL COMMENT '最高学历：1 研究生 2本科 3 大专 4 高中 5初中 6 小学',
  `qq` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `weixin` varchar(64) DEFAULT '' COMMENT '微信号',
  `referee_mobile` char(11) DEFAULT '' COMMENT '推荐人手机号',
  `referee` varchar(32) DEFAULT '' COMMENT '推荐人姓名',
  `other` varchar(255) DEFAULT '' COMMENT '其他说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_idcard` (`idcard`),
  KEY `idx_mobile` (`mobile`),
  KEY `idex_province_city_area` (`province`,`city`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户报名表';

-- ----------------------------
-- Records of hm_online
-- ----------------------------
INSERT INTO `hm_online` VALUES ('2', 'sdsd', '1', '410000', '411600', '411681', 'ddffdfesdsfdsfdsf', '15001795595', '232332232332', '8', '1', '12112121221', '12112121221', '15001795595', 'dsdsds', '', '1', '1610713185');
INSERT INTO `hm_online` VALUES ('3', '撒大声地', '1', '420000', '420200', '420201', '的士速递多所多', '15001795585', '340621198507234065', '8', '2', '122122122111122111', '122122122111122111', '15001795581', '撒大声地2', '', '1', '1610767431');

-- ----------------------------
-- Table structure for `hm_photo`
-- ----------------------------
DROP TABLE IF EXISTS `hm_photo`;
CREATE TABLE `hm_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(80) DEFAULT NULL COMMENT '标题',
  `covers` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_type_pid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型相册表';

-- ----------------------------
-- Records of hm_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_picture`
-- ----------------------------
DROP TABLE IF EXISTS `hm_picture`;
CREATE TABLE `hm_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_picture
-- ----------------------------
INSERT INTO `hm_picture` VALUES ('1', '/public/uploads/picture/2017-09-29/59cda5a0ebc17.jpg', '', '37f473f5cee5ea9fc4b87eda71e7b61c', '4366208b9c78eb53b2860f2fd097b707b5fd8e06', '1', '1506649504');
INSERT INTO `hm_picture` VALUES ('2', '/public/uploads/picture/2017-09-29/59cda5cc2f589.jpg', '', '6b117e1fc671919ba17263aa797c8f8f', '9be6e007f7f7cc5453b4949f3ac1c72224792f74', '1', '1506649548');
INSERT INTO `hm_picture` VALUES ('3', '/public/uploads/picture/2017-09-29/59cda5dd7e32f.jpg', '', '06defee161f49bcb65a4262c7a5040e6', '4a36ab2fa15d0e2f61740234a87b622130f011ca', '1', '1506649565');
INSERT INTO `hm_picture` VALUES ('4', '/public/uploads/picture/2017-09-29/59cda6db52d01.jpg', '', '7cde2aa61735b3efb82d98ab1f27b6e4', 'c1ea3b6d81a9b92412f08f9485f533075750f1c1', '1', '1506649819');
INSERT INTO `hm_picture` VALUES ('9', '/public/uploads/picture/2017-09-30/59cecb3884293.jpg', '', '1a568fb3a16d9f39cb1e47f454a35fb8', '8255686425ca70510520c13c14dc858dbf62deda', '1', '1506724664');
INSERT INTO `hm_picture` VALUES ('8', '/public/uploads/picture/2017-09-30/59cecab38bc13.png', '', 'f2d6f995dce7f5780643b511a26b8f0a', '3971178584cdcbdac597ff6cc026b95ff73e3a64', '1', '1506724531');
INSERT INTO `hm_picture` VALUES ('7', '/public/uploads/picture/2017-09-29/59cdaa78de704.png', '', '5c5fa76855e8f41e820dca0c8497b4d2', 'e79f42946c347f8a1bfa0991e9caad3f69026578', '1', '1506650744');
INSERT INTO `hm_picture` VALUES ('10', '/public/uploads/picture/2017-09-30/59cf4cce6646e.png', '', '655e656cdafbfed532f7f04cad027c40', 'c7c1a394255f61dd8852dbd46e350b63eaa99158', '1', '1506757838');
INSERT INTO `hm_picture` VALUES ('11', '/public/uploads/picture/2017-09-30/59cf55aa36f62.jpg', '', '355046c47a3419691029b33d2271b53d', '8155e1901b355d7fb12dcffc3ce4c7a6269e1b0a', '1', '1506760106');
INSERT INTO `hm_picture` VALUES ('12', '/public/uploads/picture/2017-09-30/59cf55df6196e.jpg', '', '75581513a9d8fad3e47b9ba43bc10ef4', '518aaf390f9efc998cfb1ffb8b83d54a08d89171', '1', '1506760159');
INSERT INTO `hm_picture` VALUES ('13', '/public/uploads/picture/2017-09-30/59cf56148a3bd.jpg', '', '229324ac8644286cc35076f32604b9ff', 'eb0c1e3878c7cdbeeb59f6041bd574bcc124e9f4', '1', '1506760212');
INSERT INTO `hm_picture` VALUES ('14', '/public/uploads/picture/2017-09-30/59cf562b4854e.jpg', '', 'f4da599daad2ae0437198b545d8f582c', '5f0c3373c81454318761e14efa0df1f3ed56ae0c', '1', '1506760235');
INSERT INTO `hm_picture` VALUES ('15', '/public/uploads/picture/2017-09-30/59cf567cb85b4.jpg', '', '6322aa1ebf092237f79f287c35785438', 'de88740d312858394d5bdbf97c2e719757be6600', '1', '1506760316');
INSERT INTO `hm_picture` VALUES ('16', '/public/uploads/picture/2017-09-30/59cf56952cf06.jpg', '', '5125fdcf2813e7215d20d1553c462760', '4e8ec5590736dcc9107935ff6a973e3dd93cf25e', '1', '1506760341');
INSERT INTO `hm_picture` VALUES ('17', '/public/uploads/picture/2017-09-30/59cf56a6e055f.jpg', '', 'abc230ef8715cd904e07bc7d3d70e5f0', '5b963676ccff84a966a031d0bc8a066e36550809', '1', '1506760358');
INSERT INTO `hm_picture` VALUES ('18', '/public/uploads/picture/2017-09-30/59cf57bb81c81.jpg', '', '282f699327f59d515fc9c35177b4a187', 'a8f4e0f4646f66f48f8f467f6ea826e17ad140a2', '1', '1506760635');
INSERT INTO `hm_picture` VALUES ('19', '/public/uploads/picture/2017-09-30/59cf580b286ff.jpg', '', 'b0823f2f2f299c08865917f3d2d5d87c', '9a6bff83621d48074cb4013effae7e0dbe76bde3', '1', '1506760715');
INSERT INTO `hm_picture` VALUES ('20', '/public/uploads/picture/2017-09-30/59cf591e98935.jpg', '', 'dbf9f20ebe154c3187bfcb9dd211c3ea', 'eff28e1e5fdbdbe3179e7c437b2ed6971fa7dd3a', '1', '1506760990');
INSERT INTO `hm_picture` VALUES ('21', '/public/uploads/picture/2017-09-30/59cf597e66699.jpg', '', '024f885e073578598b281e396423e865', '9c5cb87b95ad15b4bef64e4c909cd78b1a10dde5', '1', '1506761086');
INSERT INTO `hm_picture` VALUES ('22', '/public/uploads/picture/2017-09-30/59cf59c2d1260.jpg', '', '754dd1beb41f009c842572823e29c197', 'dabb9d1705717e85773f94caa6d22357e5ace893', '1', '1506761154');
INSERT INTO `hm_picture` VALUES ('23', '/public/uploads/picture/2017-09-30/59cf5a0964e13.jpg', '', '5e18c2ffc1fd7abfcace5eaaab2669c1', 'fcec44e7ed7af58db262b647973172dfbbf529e1', '1', '1506761225');
INSERT INTO `hm_picture` VALUES ('24', '/public/uploads/picture/2017-09-30/59cf5a3ceaae2.jpg', '', '12b8225f436899b4f2ba66a03899113f', '85ea7a43a7ef7f4dfb0f271556bc9f619e44ac2e', '1', '1506761276');
INSERT INTO `hm_picture` VALUES ('25', '/public/uploads/picture/2017-10-03/59d2bab185381.jpg', '', '6172c59f0bf93beb02f7535519d4d62c', '4ea13b45325b58ae8b5a1199ba91e76e7370be3a', '1', '1506982577');
INSERT INTO `hm_picture` VALUES ('26', '/public/uploads/picture/2017-10-03/59d2baf91bba4.jpg', '', '6172c59f0bf93beb02f7535519d4d62c', '4ea13b45325b58ae8b5a1199ba91e76e7370be3a', '1', '1506982649');
INSERT INTO `hm_picture` VALUES ('27', '/public/uploads/picture/2017-10-03/59d2bbb0bb9fd.jpg', '', 'cf351136e4dda7136ddadbe300f82fb8', '3ba929a9061b86f820e00e7a704a5f11b61bda16', '1', '1506982832');
INSERT INTO `hm_picture` VALUES ('28', '/public/uploads/picture/2017-10-03/59d2bd2518c75.jpg', '', '0c36409685bd6ca60abb54043fed1bd0', '1a51e885c5a3c63011587d4feba4d6d4986612f0', '1', '1506983205');
INSERT INTO `hm_picture` VALUES ('29', '/public/uploads/picture/2017-10-03/59d30ac9cbcd1.png', '', '19993eed99db30f08608e633a52e6670', '2b547d4fef93ad0598bc6b9cf452b21c4b6319d6', '1', '1507003081');
INSERT INTO `hm_picture` VALUES ('30', '/public/uploads/picture/2017-10-03/59d30b5918e7b.png', '', '19993eed99db30f08608e633a52e6670', '2b547d4fef93ad0598bc6b9cf452b21c4b6319d6', '1', '1507003225');
INSERT INTO `hm_picture` VALUES ('31', '/public/uploads/picture/2017-10-05/59d63b25963fa.png', '', '19993eed99db30f08608e633a52e6670', '2b547d4fef93ad0598bc6b9cf452b21c4b6319d6', '1', '1507212069');
INSERT INTO `hm_picture` VALUES ('32', '/public/uploads/picture/2017-10-05/59d63b3834e6d.jpg', '', '5b49b00025ab5d0c8cb8e93824b1aed9', 'b1012ce226e55bfd3640e2274f4b4276fb681054', '1', '1507212088');
INSERT INTO `hm_picture` VALUES ('33', '/public/uploads/picture/2017-10-05/59d63b9042064.jpg', '', 'cf351136e4dda7136ddadbe300f82fb8', '3ba929a9061b86f820e00e7a704a5f11b61bda16', '1', '1507212176');
INSERT INTO `hm_picture` VALUES ('34', '/public/uploads/picture/2017-10-05/59d63bc2ea42c.jpg', '', '3ee78077bcea6af46100ab0b220604b7', '3716512cc4b2f42cdedf2dc1de45e89afea4c6f0', '1', '1507212226');
INSERT INTO `hm_picture` VALUES ('35', '/public/uploads/picture/2017-10-05/59d63bff5a9dc.jpg', '', '28333ddb61f9bbdc90d9b4c1c0549edc', '66ee5b91b63bcab5fad6ac12102781cb9fba71f4', '1', '1507212287');
INSERT INTO `hm_picture` VALUES ('36', '/public/uploads/picture/2017-10-05/59d63d1dc947e.jpg', '', '8a5d42fc2f2e9447ebd535637bb1af34', 'fb4c1cc624cb06551609bb74794cf432673ce612', '1', '1507212573');

-- ----------------------------
-- Table structure for `hm_scenery`
-- ----------------------------
DROP TABLE IF EXISTS `hm_scenery`;
CREATE TABLE `hm_scenery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='校园风采表';

-- ----------------------------
-- Records of hm_scenery
-- ----------------------------
INSERT INTO `hm_scenery` VALUES ('30');
INSERT INTO `hm_scenery` VALUES ('60');
INSERT INTO `hm_scenery` VALUES ('61');
INSERT INTO `hm_scenery` VALUES ('62');
INSERT INTO `hm_scenery` VALUES ('63');
INSERT INTO `hm_scenery` VALUES ('64');
INSERT INTO `hm_scenery` VALUES ('65');
INSERT INTO `hm_scenery` VALUES ('66');
INSERT INTO `hm_scenery` VALUES ('67');

-- ----------------------------
-- Table structure for `hm_slide`
-- ----------------------------
DROP TABLE IF EXISTS `hm_slide`;
CREATE TABLE `hm_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `title` varchar(225) DEFAULT '' COMMENT '标题',
  `url` varchar(225) DEFAULT '' COMMENT '链接',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `place` tinyint(30) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  `time` int(10) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  `extra` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='幻灯片图片储存表';

-- ----------------------------
-- Records of hm_slide
-- ----------------------------
INSERT INTO `hm_slide` VALUES ('18', 'slide1', 'article/detail?id=4', '0', '2', '1495672417', '1495067617', '1', '4', '0', '0', '200');
INSERT INTO `hm_slide` VALUES ('17', 'banner2', 'article/detail?id=53', '0', '1', '1494958026', '1495735626', '1', '3', '0', '0', '203');
INSERT INTO `hm_slide` VALUES ('16', 'banner1', 'article/detail?id=117', '0', '1', '1495845170', '1494894817', '1', '2', '1494894817', '0', '117');
INSERT INTO `hm_slide` VALUES ('20', 'slide2', 'article/detail?id=115', '0', '2', '0', '0', '1', '8', '0', '0', '0');

-- ----------------------------
-- Table structure for `hm_student`
-- ----------------------------
DROP TABLE IF EXISTS `hm_student`;
CREATE TABLE `hm_student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
  `trait` varchar(255) DEFAULT NULL COMMENT '学生特点',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='学习之星表';

-- ----------------------------
-- Records of hm_student
-- ----------------------------
INSERT INTO `hm_student` VALUES ('59', '68', '热情，开朗，有目标，助人为乐');
INSERT INTO `hm_student` VALUES ('68', '3G/4G移动商务开发', '');
INSERT INTO `hm_student` VALUES ('70', '企业电子商务运营管理', '');
INSERT INTO `hm_student` VALUES ('69', '高级软件工程师方向', '');

-- ----------------------------
-- Table structure for `hm_sync_login`
-- ----------------------------
DROP TABLE IF EXISTS `hm_sync_login`;
CREATE TABLE `hm_sync_login` (
  `uid` int(11) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方登陆表';

-- ----------------------------
-- Records of hm_sync_login
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_ucenter_member`
-- ----------------------------
DROP TABLE IF EXISTS `hm_ucenter_member`;
CREATE TABLE `hm_ucenter_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` char(32) DEFAULT NULL COMMENT '用户邮箱',
  `mobile` int(11) NOT NULL DEFAULT '0' COMMENT '用户手机',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of hm_ucenter_member
-- ----------------------------
INSERT INTO `hm_ucenter_member` VALUES ('1', 'admin', '2973693d92667f9978b26df08b8273fe', 'huiminzhiyexuexiao@163.com', '0', '0', '0', '1610693994', '0', '0', '1');

-- ----------------------------
-- Table structure for `hm_user`
-- ----------------------------
DROP TABLE IF EXISTS `hm_user`;
CREATE TABLE `hm_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `sex` char(32) NOT NULL COMMENT '密码',
  `ids` char(32) DEFAULT NULL COMMENT '用户邮箱',
  `mobile` int(11) NOT NULL DEFAULT '0' COMMENT '用户手机',
  `numbers` char(226) NOT NULL COMMENT '用户名',
  `score` char(32) NOT NULL COMMENT '密码',
  `gradute` char(32) DEFAULT NULL COMMENT '用户邮箱',
  `up` char(32) DEFAULT NULL COMMENT '用户邮箱',
  `qq` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `up_mobile` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户状态',
  ` professional` varchar(225) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户报名表';

-- ----------------------------
-- Records of hm_user
-- ----------------------------

-- ----------------------------
-- Table structure for `hm_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `hm_user_log`;
CREATE TABLE `hm_user_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `title` text NOT NULL COMMENT '名称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,2为已使用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hm_user_log
-- ----------------------------
INSERT INTO `hm_user_log` VALUES ('232', 'edit_config', '1', '1', '1610692199', '1610692199', '0');
INSERT INTO `hm_user_log` VALUES ('233', 'edit_config', '1', '1', '1610692482', '1610692482', '0');
INSERT INTO `hm_user_log` VALUES ('234', 'edit_config', '1', '1', '1610693094', '1610693094', '0');
INSERT INTO `hm_user_log` VALUES ('235', 'edit_config', '1', '1', '1610694059', '1610694059', '0');
INSERT INTO `hm_user_log` VALUES ('236', 'edit_config', '1', '1', '1610694096', '1610694096', '0');
INSERT INTO `hm_user_log` VALUES ('237', 'edit_document', '1', '1', '1610694173', '1610694173', '0');
INSERT INTO `hm_user_log` VALUES ('238', 'edit_config', '1', '1', '1610694639', '1610694639', '0');
INSERT INTO `hm_user_log` VALUES ('239', 'edit_config', '1', '1', '1610702159', '1610702159', '0');
INSERT INTO `hm_user_log` VALUES ('240', 'edit_channel', '1', '1', '1610715105', '1610715105', '0');
INSERT INTO `hm_user_log` VALUES ('241', 'edit_category', '1', '1', '1610715132', '1610715132', '0');
INSERT INTO `hm_user_log` VALUES ('242', 'edit_document', '1', '1', '1610715487', '1610715487', '0');
INSERT INTO `hm_user_log` VALUES ('243', 'edit_document', '1', '1', '1610715693', '1610715693', '0');
INSERT INTO `hm_user_log` VALUES ('244', 'edit_document', '1', '1', '1610715785', '1610715785', '0');
INSERT INTO `hm_user_log` VALUES ('245', 'edit_document', '1', '1', '1610715829', '1610715829', '0');
INSERT INTO `hm_user_log` VALUES ('246', 'edit_document', '1', '1', '1610715932', '1610715932', '0');
INSERT INTO `hm_user_log` VALUES ('247', 'edit_channel', '1', '1', '1610716015', '1610716015', '0');
INSERT INTO `hm_user_log` VALUES ('248', 'edit_channel', '1', '1', '1610716032', '1610716032', '0');
INSERT INTO `hm_user_log` VALUES ('249', 'edit_channel', '1', '1', '1610716048', '1610716048', '0');
INSERT INTO `hm_user_log` VALUES ('250', 'edit_channel', '1', '1', '1610716071', '1610716071', '0');
INSERT INTO `hm_user_log` VALUES ('251', 'edit_document', '1', '1', '1610757661', '1610757661', '0');
INSERT INTO `hm_user_log` VALUES ('252', 'edit_document', '1', '1', '1610757712', '1610757712', '0');
INSERT INTO `hm_user_log` VALUES ('253', 'edit_document', '1', '1', '1610757960', '1610757960', '0');
INSERT INTO `hm_user_log` VALUES ('254', 'edit_document', '1', '1', '1610758092', '1610758092', '0');
INSERT INTO `hm_user_log` VALUES ('255', 'edit_document', '1', '1', '1610759013', '1610759013', '0');
INSERT INTO `hm_user_log` VALUES ('256', 'edit_document', '1', '1', '1610759189', '1610759189', '0');
INSERT INTO `hm_user_log` VALUES ('257', 'edit_document', '1', '1', '1610759240', '1610759240', '0');
INSERT INTO `hm_user_log` VALUES ('258', 'edit_document', '1', '1', '1610759314', '1610759314', '0');
INSERT INTO `hm_user_log` VALUES ('259', 'edit_document', '1', '1', '1610759421', '1610759421', '0');
INSERT INTO `hm_user_log` VALUES ('260', 'edit_document', '1', '1', '1610759579', '1610759579', '0');
INSERT INTO `hm_user_log` VALUES ('261', 'edit_document', '1', '1', '1610759821', '1610759821', '0');
INSERT INTO `hm_user_log` VALUES ('262', 'edit_document', '1', '1', '1610759957', '1610759957', '0');
INSERT INTO `hm_user_log` VALUES ('263', 'add_document', '1', '1', '1610760120', '1610760120', '0');

-- ----------------------------
-- Table structure for `hm_video`
-- ----------------------------
DROP TABLE IF EXISTS `hm_video`;
CREATE TABLE `hm_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `covers` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型相册表';

-- ----------------------------
-- Records of hm_video
-- ----------------------------
