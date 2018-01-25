/*
Navicat MySQL Data Transfer

Source Server         : sa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : d_ptp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-22 19:00:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bankcard`
-- ----------------------------
DROP TABLE IF EXISTS `bankcard`;
CREATE TABLE `bankcard` (
  `bcid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cardno` varchar(20) NOT NULL COMMENT '卡号',
  `rname` varchar(50) NOT NULL,
  `idno` varchar(18) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '所属银行',
  `status` int(11) DEFAULT '0',
  `bktime` datetime DEFAULT NULL COMMENT '绑卡时间',
  PRIMARY KEY (`bcid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bankcard
-- ----------------------------
INSERT INTO `bankcard` VALUES ('1', '5', '6228480402564890018', '张三', '360721198908117616', '建设银行', '0', null);
INSERT INTO `bankcard` VALUES ('2', '6', '6228480402564890017', '马冬梅', '360721198908117619', '建设银行', '0', null);
INSERT INTO `bankcard` VALUES ('3', '8', '6228480402564890018', '邹一佳', '450923198408222664', '农业银行', '0', '2018-01-19 09:54:23');
INSERT INTO `bankcard` VALUES ('5', '11', '6227001541800361839', '王五', '632726199407251701', '建设银行', '0', '2018-01-20 09:28:51');
INSERT INTO `bankcard` VALUES ('6', '7', '6228482448855660873', '王宁', '362121198911127112', '农村信用社', '0', '2018-01-22 15:09:02');

-- ----------------------------
-- Table structure for `borrowapply`
-- ----------------------------
DROP TABLE IF EXISTS `borrowapply`;
CREATE TABLE `borrowapply` (
  `baid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL COMMENT '真实姓名',
  `money` decimal(15,2) NOT NULL COMMENT '申请金额',
  `uid` int(11) NOT NULL COMMENT '借款人id',
  `bzid` int(11) NOT NULL COMMENT '标种id',
  `cktime` datetime DEFAULT NULL COMMENT '审核时间',
  `ckstatus` int(11) DEFAULT '0' COMMENT '审核状态',
  `type` int(11) NOT NULL COMMENT '借款类型',
  `term` int(11) NOT NULL COMMENT '借款期限',
  `deadline` datetime NOT NULL COMMENT '截止时间',
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` datetime DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`baid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrowapply
-- ----------------------------
INSERT INTO `borrowapply` VALUES ('11', '张三', '200000.00', '5', '1', '2018-01-18 10:09:28', '4', '1', '6', '2018-01-23 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('12', '张三', '500000.00', '5', '4', '2018-01-18 10:09:07', '2', '2', '6', '2018-01-22 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('13', '马冬梅', '15000.00', '6', '2', '2018-01-18 10:30:54', '3', '1', '12', '2018-01-18 10:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('14', '马冬梅', '30000.00', '6', '1', '2018-01-18 10:21:45', '2', '1', '3', '2018-02-01 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('15', '马冬梅', '210000.00', '6', '1', '2018-01-18 10:30:59', '5', '1', '3', '2018-01-30 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('16', '王大', '130000.00', '7', '3', '2018-01-18 14:58:06', '2', '1', '6', '2018-01-18 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('17', '王大', '100000.00', '7', '3', '2018-01-18 15:02:20', '2', '2', '12', '2018-02-01 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('18', '王大', '15000.00', '7', '1', '2018-01-18 15:02:29', '2', '1', '3', '2018-01-30 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('19', '王贰', '300000.00', '8', '2', '2018-01-18 15:27:58', '2', '2', '6', '2018-02-24 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('20', '王贰', '300000.00', '8', '2', '2018-01-18 15:27:49', '4', '2', '6', '2018-02-24 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('21', '王贰', '160000.00', '8', '2', '2018-01-18 15:27:12', '1', '1', '3', '2018-02-08 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('22', '王五', '123000.00', '9', '3', '2018-01-18 15:35:54', '2', '2', '3', '2018-01-18 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('23', '王五', '30000.00', '9', '2', '2018-01-18 15:35:48', '4', '1', '3', '2018-01-31 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('24', '王五', '50000.00', '9', '3', '2018-01-18 15:39:57', '4', '1', '12', '2018-02-10 00:00:00', null, null, '2018-01-19 08:41:37', null);
INSERT INTO `borrowapply` VALUES ('25', '强恒靳', '10000.00', '8', '2', '2018-01-19 10:29:11', '3', '1', '3', '2018-01-19 00:00:00', null, null, '2018-01-19 10:27:34', null);
INSERT INTO `borrowapply` VALUES ('26', '王五', '10000.00', '11', '2', '2018-01-20 09:35:35', '3', '1', '6', '2018-01-20 09:38:12', null, null, '2018-01-20 09:33:53', null);
INSERT INTO `borrowapply` VALUES ('27', '张三', '10000.00', '5', '3', '2018-01-22 15:36:32', '2', '1', '3', '2018-01-24 00:00:00', null, null, '2018-01-22 15:21:18', null);
INSERT INTO `borrowapply` VALUES ('28', '马冬梅', '10000.00', '6', '2', null, '0', '1', '6', '2018-01-24 00:00:00', null, null, '2018-01-22 15:30:33', null);

-- ----------------------------
-- Table structure for `borrowdetail`
-- ----------------------------
DROP TABLE IF EXISTS `borrowdetail`;
CREATE TABLE `borrowdetail` (
  `bdid` int(11) NOT NULL AUTO_INCREMENT,
  `fpic` varchar(500) NOT NULL COMMENT '法人身份证',
  `ypic` varchar(500) DEFAULT NULL COMMENT '营业执照副本',
  `qpic` varchar(500) DEFAULT NULL COMMENT '企业银行账号',
  `tpic` varchar(500) DEFAULT NULL COMMENT '其他资料',
  `mpurpose` varchar(300) NOT NULL DEFAULT '暂无' COMMENT '资金用途',
  `hksource` varchar(150) NOT NULL DEFAULT '暂无' COMMENT '还款来源',
  `suggest` varchar(300) DEFAULT '暂无' COMMENT '借款人介绍',
  `xmdes` varchar(300) DEFAULT '暂无' COMMENT '项目描述',
  `guarantee` varchar(200) DEFAULT '暂无' COMMENT '保障措施',
  `money` decimal(15,2) NOT NULL COMMENT '金额',
  `nprofit` float(4,2) NOT NULL COMMENT '年化收益',
  `way` varchar(20) NOT NULL DEFAULT '' COMMENT '收益方式',
  `cpname` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `baid` int(11) NOT NULL COMMENT '借款id',
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bdid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrowdetail
-- ----------------------------
INSERT INTO `borrowdetail` VALUES ('7', 'static/uploads/sfz2.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '资金周转', '电子商业承兑汇票到期资金', '原债权方赣州某广告传媒有限公司，主要从事地产营销、演艺策划、明星经纪、媒体传播、国内外时尚品牌发布会、会展及论坛举办、高级婚宴、高端私人酒会、公益慈善等，公司注册资本300万元。承接恒创有限公司全资子公司赣州恒创置业有限公司项目广告设计、制作安装、媒体传播等。原债权方将恒创置业所开具商业承兑汇票转让给某保理公司，恒创置业集团信用状况良好，资产实力充裕。本项目本次融资金额为132254元，融资期6个月。', '暂无', '暂无', '200000.00', '15.00', '1', 'PJ2018BZ0011', '11', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('8', 'static/uploads/sfz3.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '资金周转', '商业承兑汇票到期资金', '原债权方赣州某广告传媒有限公司，主要从事地产营销、演艺策划、明星经纪、媒体传播、国内外时尚品牌发布会、会展及论坛举办、高级婚宴、高端私人酒会、公益慈善等，公司注册资本300万元。承接恒大地产集团有限公司全资子公司赣州恒大地产有限公司地产项目广告设计、制作安装、媒体传播等。原债权方将恒大集团所开具商业承兑汇票转让给某保理公司，恒大集团信用状况良好，资产实力充裕。', '暂无', '暂无', '0.00', '16.00', '2', 'PJ2018BZ0012', '12', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('9', 'static/uploads/sfz1.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '补充流动资金', '商业承兑汇票到期资金', '原债权方赣州某广告传媒有限公司，主要从事地产营销、演艺策划、明星经纪、媒体传播、国内外时尚品牌发布会、会展及论坛举办、高级婚宴、高端私人酒会、公益慈善等，公司注册资本300万元。承接恒大地产集团有限公司全资子公司赣州恒大地产有限公司地产项目广告设计、制作安装、媒体传播等。原债权方将恒大集团所开具商业承兑汇票转让给某保理公司，恒大集团信用状况良好，资产实力充裕', '暂无', '暂无', '10000.00', '11.00', '1', 'PJ2018BZ0013', '13', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('10', 'static/uploads/sfz.jpg', 'static/uploads/yyzz.jpg', '', 'static/uploads/qtzl.jpg', '补充流动资金', '商业承兑汇票到期资金', '原债权方赣州某广告传媒有限公司，主要从事地产营销、演艺策划、明星经纪、媒体传播、国内外时尚品牌发布会、会展及论坛举办、高级婚宴、高端私人酒会、公益慈善等，公司注册资本300万元。承接恒大地产集团有限公司全资子公司赣州恒大地产有限公司地产项目广告设计、制作安装、媒体传播等。原债权方将恒大集团所开具商业承兑汇票转让给某保理公司，恒大集团信用状况良好，资产实力充裕。', '暂无', '暂无', '0.00', '12.00', '3', 'PJ2018BZ0014', '14', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('11', 'static/uploads/sfz.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', '', '补充流动资金', '商业承兑汇票到期资金', '原债权方赣州某广告传媒有限公司，主要从事地产营销、演艺策划、明星经纪、媒体传播、国内外时尚品牌发布会、会展及论坛举办、高级婚宴、高端私人酒会、公益慈善等，公司注册资本300万元。承接恒大地产集团有限公司全资子公司赣州恒大地产有限公司地产项目广告设计、制作安装、媒体传播等。原债权方将恒大集团所开具商业承兑汇票转让给某保理公司，恒大集团信用状况良好，资产实力充裕。', '暂无', '暂无', '210000.00', '12.00', '4', 'PJ2018BZ0015', '15', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('12', 'static/uploads/sfz1.jpg', '', 'static/uploads/qyyh.jpg', '', '资金周转', '经营收入', '本期项目为城投集团供应链项目，借款企业为赣州某建筑公司，于2012年成立，原注册地在上犹县，于2016年4月迁至开发区办公，注册资金767万元，企业资质为三级建筑工程承包资质，公司业务分布江西、浙江、河南、云南等多个省市，公司现有人员200余人（含在建项目施工人员），企业管理人员23人。公司总部设有工程部、生产部、合同部、行政部、项目部等五个职能部门。公司成立以来参与了多个国家重点工程建设，其中包括南水北调鹤壁段工程，仙居抽水蓄能电站工程、贵阳综合保税区平场工程，龙芯科技工业园厂房工程。目前公司自有设备24台套，在同等资质公司中竞争力强。', '暂无', '暂无', '0.00', '9.00', '3', 'PJ2018BZ0016', '16', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('13', 'static/uploads/sfz1.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', '', '资金周转', '经营收入', '本期项目为城投集团供应链项目，借款企业为赣州某建筑公司，于2012年成立，原注册地在上犹县，于2016年4月迁至开发区办公，注册资金767万元，企业资质为三级建筑工程承包资质，公司业务分布江西、浙江、河南、云南等多个省市，公司现有人员200余人（含在建项目施工人员），企业管理人员23人。公司总部设有工程部、生产部、合同部、行政部、项目部等五个职能部门。', '暂无', '暂无', '0.00', '10.00', '2', 'PJ2018BZ0017', '17', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('14', 'static/uploads/sfz1.jpg', '', 'static/uploads/qyyh.jpg', '', '资金周转', '个人收入', '暂无', '暂无', '暂无', '0.00', '8.00', '4', 'PJ2018BZ0018', '18', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('15', '', '', '', '', '资金周转', '企业收入', '本期项目为城投集团供应链项目，借款企业为赣州某建筑公司，于2012年成立，原注册地在上犹县，于2016年4月迁至开发区办公，注册资金767万元，企业资质为三级建筑工程承包资质，公司业务分布江西、浙江、河南、云南等多个省市，公司现有人员200余人（含在建项目施工人员），企业管理人员23人。公司总部设有工程部、生产部、合同部、行政部、项目部等五个职能部门。公司成立以来参与了多个国家重点工程建设，其中包括南水北调鹤壁段工程，仙居抽水蓄能电站工程、贵阳综合保税区平场工程，龙芯科技工业园厂房工程。目前公司自有设备24台套，在同等资质公司中竞争力强。', '暂无', '暂无', '50000.00', '12.00', '2', 'PJ2018BZ0019', '19', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('16', '', '', '', '', '资金周转', '企业收入', '本期项目为城投集团供应链项目，借款企业为赣州某建筑公司，于2012年成立，原注册地在上犹县，于2016年4月迁至开发区办公，注册资金767万元，企业资质为三级建筑工程承包资质，公司业务分布江西、浙江、河南、云南等多个省市，公司现有人员200余人（含在建项目施工人员），企业管理人员23人。公司总部设有工程部、生产部、合同部、行政部、项目部等五个职能部门。公司成立以来参与了多个国家重点工程建设，其中包括南水北调鹤壁段工程，仙居抽水蓄能电站工程、贵阳综合保税区平场工程，龙芯科技工业园厂房工程。目前公司自有设备24台套，在同等资质公司中竞争力强。', '暂无', '暂无', '300000.00', '12.00', '2', 'PJ2018BZ0020', '20', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('17', '', '', '', '', '还款', '暂无', '暂无', '暂无', '暂无', '0.00', '11.00', '4', 'PJ2018BZ0021', '21', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('18', 'static/uploads/sfz.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', '', '资金周转', '经营收入', '本期项目为城投集团供应链项目，借款企业为赣州某建筑公司，于2012年成立，原注册地在上犹县，于2016年4月迁至开发区办公，注册资金767万元，企业资质为三级建筑工程承包资质，公司业务分布江西、浙江、河南、云南等多个省市，公司现有人员200余人（含在建项目施工人员），企业管理人员23人。公司总部设有工程部、生产部、合同部、行政部、项目部等五个职能部门。', '暂无', '暂无', '0.00', '7.00', '2', 'PJ2018BZ0022', '22', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('19', 'static/uploads/sfz.jpg', '', '', '', '炒股', '炒股收入', '暂无', '暂无', '暂无', '30000.00', '10.00', '3', 'PJ2018BZ0023', '23', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('20', 'static/uploads/sfz1.jpg', '', '', '', '装修', '个人收入', '正在装修，工资23333/月', '暂无', '暂无', '50000.00', '8.90', '2', 'PJ2018BZ0024', '24', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('21', 'static/uploads/sfz.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '有钱，挥霍', '零花钱', '江西某医药有限公司创建于2006年12月份。注册资本2100万元，实收资本2100万元，股东分别是黄**，占股95.24%；赣州某管理有限公司（国企），占股4.76%。主要经营范围为生物制品、中成药、化学原料药、化学药制剂、抗生素原料药、抗生素制剂、生化药品（凭药品经营许可证经营）；II类（凭第二类医疗器械经营备案书经营）、III类医疗器械批发（凭医疗器械经营许可证经营）', '暂无', '暂无', '0.00', '10.00', '4', 'PJ2018BZ0025', '25', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('22', 'static/uploads/sfz.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '资金周转', '经营性收入', '赣州市**车业有限公司成立于2014年3月，注册资本200万元，股东为陈**占比70%，罗**占比30%，陈**为法定代表人，经营范围：电瓶车、摩托车、国产电动客车、家用电器及其配件、汽车配件销售。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '本次借款主要用于订购**电动车，该企业借款金额为100万元，第二期50万元，借款期限3个月，本平台为此借款提供服务。', '1、 公司股东陈*、肖*夫妇；罗*、钟*夫妇提供无限连带责任担保\r\n2、 赣州市**门诊部提供无限连带责任担保', '5000.00', '10.00', '1', 'PJ2018BZ0026', '26', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('23', 'static/uploads/sfz3.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '0.00', '5.00', '1', 'PJ2018BZ0027', '27', null, null, null, null);
INSERT INTO `borrowdetail` VALUES ('24', 'static/uploads/sfz2.jpg', 'static/uploads/yyzz.jpg', 'static/uploads/qyyh.jpg', 'static/uploads/qtzl.jpg', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '用于答辩时测试流标。', '0.00', '5.00', '1', 'PJ2018BZ0028', '28', null, null, null, null);

-- ----------------------------
-- Table structure for `bz`
-- ----------------------------
DROP TABLE IF EXISTS `bz`;
CREATE TABLE `bz` (
  `bzid` int(11) NOT NULL AUTO_INCREMENT,
  `bzname` varchar(30) NOT NULL COMMENT '标种名称',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`bzid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bz
-- ----------------------------
INSERT INTO `bz` VALUES ('1', '恒金宝', '1');
INSERT INTO `bz` VALUES ('2', '普金宝', '1');
INSERT INTO `bz` VALUES ('3', '多金宝', '1');
INSERT INTO `bz` VALUES ('4', '新手标', '1');

-- ----------------------------
-- Table structure for `dxmodel`
-- ----------------------------
DROP TABLE IF EXISTS `dxmodel`;
CREATE TABLE `dxmodel` (
  `dxid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`dxid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dxmodel
-- ----------------------------
INSERT INTO `dxmodel` VALUES ('1', '【普金资本】您好，欢迎使用普金资本借贷平台，您的注册验证码是：#code。若非本人操作，请忽略！');
INSERT INTO `dxmodel` VALUES ('2', '【普金资本】您好，欢迎使用普金资本借贷平台，您的登录验证码是：#code。若非本人操作，请及时修改密码！');

-- ----------------------------
-- Table structure for `dynamic`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `dyid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `content` text NOT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dyid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
INSERT INTO `dynamic` VALUES ('4', '校企联手 探寻合作新契机！', '2017年10月14号，普金资本公司与赣南医学院共同签定了《校外创新创业实践基地协议书》。根据协议，双方将充分发挥校企优势，加强学生就业、创业合作，联手培养互联网创新人才。', '<p><span style=\"text-align: justify;\">普金资本总裁吴鸿先生率领公司高层、联同赣南医学院领导刘宁生院长、</span><span style=\"text-align: justify;\">副院长</span><span style=\"text-align: justify;\">陶钧、人文学院管理系主任李钧一同出席了此次合作会议；吴鸿先生在致辞说，普金资本作为赣州知名的金融企业，一直注重基层管理人才的提前储备，近年来不断加大力度联手各高校建立创新型产学研合作人才培养模式，提高学生实践能力与社会适应能力，充分展现了普金资本对校企合作的重视度，未来，普金资本还将加大对人才的投入，为学校、社会提供更多的就业机会。</span></p><p style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171019175516_148.png\" alt=\"\"></p><p style=\"text-align: center;\"><br></p><p><span>刘宁生</span><span>院长上台发表讲话，他</span><span>说：一直以来，部分高校存在教育理念滞后、重理论轻实践的问题，导致学生在学校的学习内容和实践环节与企业的需求脱节，难以适应纷繁复杂的社会实际。目前，高校亟需强化实践，彻底解决理论与实践脱节、实践平台短缺等问题，促进学生全面发展，提升人力资本素质。通过此次的校企合作，学生们可以在普金资本精心规划的一系列实践中获得参与企业大型金融项目策划、组织及实施的机会，丰富课余文化生活和对金融产品的运营能力。而普金资本也能以直观形式将金融产品的全流程展现在学生眼前，丰富他们的项目实战经验，将为他们今后走上工作岗位打下坚实的基础。</span></p><p><span><br></span></p><p style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171019175535_668.png\" width=\"640\" height=\"480\" alt=\"\"></p><p><br></p><p><span style=\"text-align: center;\">上午</span><span style=\"text-align: center;\">10</span><span style=\"text-align: center;\">点</span><span style=\"text-align: center;\">30</span><span style=\"text-align: center;\">分，揭牌仪式正式开始，普金资本总裁吴鸿先生与刘宁生院长共同揭牌，并签订《校外创新创业实践基地协议书》。会议现场一片欢腾，同学们为此次的合作报以热烈的掌声。</span></p><p><span style=\"text-align: center;\"><br></span></p><p style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171019175550_204.png\" alt=\"\"></p><p><br></p><p><span style=\"text-align: justify;\">签字仪式后，普金资本专门聘请金融专业讲师给现场师生进行了精彩的讲座，如此迅速进入学习状态，刘院长大加赞赏，鼓励同学们勇于创新创业。</span></p><p><span style=\"text-align: justify;\"><br></span></p><p style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171019175613_929.png\" width=\"640\" height=\"214\" alt=\"\"></p><p><br></p><p><span style=\"text-align: justify;\">此次校企的合作，普金资本将现有的校企合作项目展现给各高校，打通合作通道，为未来企业运营获得更适用、高效的人才夯实了根基，获得更专业的人才培养的途径和方法，有利于普金资本吸收更多、更新、更好的思想，为普金资本科技创新、企业升级铺路。</span></p>', 'static/uploads/20171019175516_148.png', '2017-10-19 00:00:00');
INSERT INTO `dynamic` VALUES ('6', '普金资本通过国家信息安全等级保护三级认证', '2017年4月27日，普金资本正式通过了国家公安部信息系统安全等级测试备案证明，并获得公安部门核准颁发的“国家信息安全等级保护三级认证”。', '<p><span>该认证依据《信息系统安全等级保护基本要求》(中国国家标准GB/T22239-2008)的制度规定，是我国一套国家级信息系统安全等级认证，三级认证也是针对非银机构的最高级认证。</span></p><p><br></p><p style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/attached/image/2017/20170428/201704281027066723.png\" alt=\"\">&nbsp;</p><p>&nbsp;</p><p><span>2016</span><span>年</span><span>8月，银监会等四部委联合发布的《网贷机构业务活动管理暂行办法》中明确，从业机构应当按照国家网络安全相关规定和国家信息安全等级保护制度的要求，开展信息系统定级备案和等级测试。普金资本积极响应国家政策及行业规定，拥抱监管，合规发展。</span></p><p><span>普金资本获得第三级别备案认证需要并接受来自公安部授权的第三方评测机构的系统整体测评。测评主要依据《计算机信息系统安全保护等级划分准则》、《信息安全技术信息安全等级保护基本要求》第三级技术要求以及用户安全需求，从技术要求（物理安全、网络安全、主机安全、应用安全、数据安全及备份恢复）及管理要求（安全管理制度、安全管理机构、人员安全管理、系统建设管理、系统运维管理）两大方面提出了包含信息保护、安全审计、通信保密等在内的近300项要求。得到这个认证，充分证明普金资本在网络信息规范化管理等方面已达到非银行机构中的最高级别，符合国家政策法规，能为投资用户的信息提供更加安全、有效的管理。标志着平台在合法规范发展的道路上又迈进了一大步，同时也证明了在信息安全管控方面，符合国家政策法规，得到国家认可。</span></p><p><span>普金资本将持续拥抱监管，坚守合规，不断完善平台信息安全制度，为投资人们提供更加安全放心的互联网金融服务。</span></p>', 'static/uploads/201704281027066723.png', '2017-04-28 10:25:44');
INSERT INTO `dynamic` VALUES ('7', '普金资本与汇付天下、益金所洽谈战略合作', '7月28日，普金资本常务副总裁季晓春赴汇付天下上海总部考察并洽谈业务合作事宜。', '<p align=\"left\">当日率先考察了汇付天下总部大楼，随后拜访了汇付天下控股的成都益金所总经理黄华波先生，双方在总结既往合作的基础上对各自经营情况进行了交流，并就今后的战略合作进行了沟通、对业务关键环节进行了明确。<span style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;</span></p><p align=\"center\" style=\"text-align: center;\"><img src=\"https://www.pujinziben.com/attached/image/2017/20170728/201707282125325809.jpg\" alt=\"\"></p><p align=\"center\" style=\"text-align: center;\">汇付天下上海总部</p><p align=\"center\" style=\"text-align: center;\"><img src=\"https://www.pujinziben.com/attached/image/2017/20170728/201707282125542362.jpg\" alt=\"\"></p><p align=\"center\" style=\"text-align: center;\"><span>所获荣誉资质</span></p><p align=\"center\" style=\"text-align: left;\"><span style=\"text-align: center;\">益金所定位于打造以固定收益类金融产品交易为主要特色的国内一流交易平台，服务资产证券化，联合融资方、发行方、承销方，共同打造全国固定收益产品流通市场，降</span><span style=\"text-align: center;\">低流通成本，依法合规运营，构建严格的风险防范体系，让企业以较低的融资成本获得融资，让投资人在资金安全的前提下获得投资收益。</span></p><p align=\"center\" style=\"text-align: left;\"><span style=\"text-align: center;\">益金所构建了包含融资主体评估、融资需求评估、融资方案评估、财务承受力评估、营收和竞争力评估、基础资产评估六大构面的调研系统，益金所还建立了产品挂牌后的</span><span style=\"text-align: center;\">五级风险警示机制，以期尽早发现融资方可能暴露的风险事件，并作适当处置。同时，辅以风险准备金和风险保证金制度，从而最大可能保护投资方的利益。基于风控体系的建</span><span style=\"text-align: center;\">设，益金所将努力成为全方位金融服务供应商，除了交易功能之外，益金所还可以给企业提供包括内控和上市辅导的财务顾问服务以及融资方案设计和挂牌的投行服务。</span></p><p align=\"center\" style=\"text-align: left;\"><span style=\"text-align: center;\">益金所总经理黄华波指出：益金所与地方政府、央国企、同业金融机构紧密合作，凭借大风控大中台的基础架构优势，不但提供优质资产，也能将手握的这些优质资产，鲜</span><span style=\"text-align: center;\">明透彻层层剥解呈现到资本市场上，在资产端与资金端直接搭建起信息沟通的“高速公路”，将这个市场做通、做活、做透，打造一个接地气的金融环境。</span></p><p align=\"center\" style=\"text-align: left;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.pujinziben.com/attached/image/2017/20170728/201707282126172614.jpg\" alt=\"\" style=\"text-align: center;\"></p><p align=\"center\" style=\"text-align: center;\"><span>益金所总经理黄华波与普金资本常务副总裁季晓春 合影</span></p><p align=\"center\" style=\"text-align: left;\"><span style=\"text-align: center;\">此次洽谈合作，双方都拿出百分之百的诚意，汇付天下将给予普金资本大力支持，共同打造金融科技的创新及支付服务的升级；同时，普金资本与益金所初步的交流，为双</span><span style=\"text-align: center;\">方的后续合作奠定了坚实基础，后续将加强互金业务交流，为社会各界客户提供优质、专业的金融产品和服务，推进行业健康发展，开拓互金更广阔的市场。</span></p>', 'static/uploads/201707282124022386.jpg', '2017-07-28 21:23:21');
INSERT INTO `dynamic` VALUES ('8', '热烈祝贺普金资本荣膺普惠金融协会常务副会长单位', ' 7月17日，赣州市普惠金融协会秘书长刘荣龙亲临普金资本，亲自授牌普金资本为赣州市普惠金融协会常务副会长单位，以肯定普金资本自成立以来在赣州地区互联网金融领域的突出表现。', '<p><br></p><div style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/attached/image/2017/20170718/201707181721508220.jpg\" alt=\"\"></div><div style=\"text-align: center;\">普金资本副总裁林立标（左）与市普惠金融协会秘书长刘荣龙（右）合影</div><p><br><br><span>&nbsp; &nbsp; 赣州市普惠金融协会是依照国家有关政策法规成立的，由多家小额贷款公司、融资性担保公司、互联网金融企业共同发起组建的行业社团组织，赣州市金融工作局为业务主管单位。协会以开展行业自律、维护行业利益、提供会员服务、促进行业发展为宗旨。遵守国家宪法、法律、法规和经济金融方针政策，认真履行自律、维权、协调、服务职能。强化组织协调和服务水平，优化会员依法合规经营环境，维护会员合法权益，提高普惠金融行业素质，提升行业整体形象，促进普惠金融行业健康发展。</span><br><br><br><span>&nbsp; &nbsp; 在当日刘荣龙秘书长一行对普金资本的到访中，普金资本副总裁林立标等全程接待陪同，双方就金融创新与监管、公司发展模式、协会运营现状及模式等方面进行了深入的探讨和交流，并在互联网金融发展问题上达成系列共识。此次赣州普惠金融协会实地考察普金资本并授予“常务副会长单位”荣誉，一来反映了赣州苏区对新兴互联网金融发展的重视，同时也充分认可了普金资本在中小企业融资方面的重要作用，给普金资本及平台投资人以莫大信心。</span><br><br></p><div style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/attached/image/2017/20170718/201707181722219748.jpg\" alt=\"\"></div><p><span>&nbsp; &nbsp; &nbsp;显然正是由于不断的发展与进步，普金资本才能在广大平台用户的一致好评中，受到越来越多权威金融机构的认可。随着本次加入市普惠金融协会，公司势必将建立更加完备的风控模式，继续肩负起对社会投资者的责任。而依托协会在相关领域的影响力，普金资本不仅逐步发展为一支正规化、专业化的金融行业主力军，更将迈入前所未有的快速发展新阶段！</span><br><span>&nbsp; &nbsp; 未来，普金资本将会更加积极的投身到协会的各项工作当中，努力实现优势互补、合作共赢、协同创新、规范自律，与业界携手共同为赣州地区互联网金融的健康发展，为开创金融信息产业发展的新局面贡献自己的力量。</span><br></p><div><span><br></span></div>', 'static/uploads/201707181720447073.jpg', '2017-07-18 17:19:34');
INSERT INTO `dynamic` VALUES ('9', '2017年江西互联网金融行业高管人员培训班圆满举办', ' 为帮助我省互联网金融行业高管人员及时了解中央及地方相关行业信息，提升对数据安全、客户信息安全的风险防患意识，获悉互联网金融行业最新科技信息，经研究，江西省互联网金融协会于2017年6月15-16日在南昌举办了江西互联网金融行业高管人员培训班。', '<p style=\"text-align: center;\"><span><span><img src=\"/static/uploads/20171017161056_408.png\" alt=\"20171017161056_408.png\"><br></span></span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp;&nbsp;</span></span><span>本次培训受到了省政府金融办的高度重视，省金融办领导特委派保险非银处科长叶超同志到会为学员作政策解读。本次培训还特邀江西省互联网金融协会会长、北京大刚信息科技有限公司董事长周健，读秒CEO周静、江西神州信息安全评估中心特派员刘燚、万谦及吴雷现场授课。培训期间，参训学员与授课老师进行了热烈的互动交流。</span></p><p style=\"text-align: center;\"><span><img src=\"https://www.pujinziben.com:8443/attached/image/2017/20170621/201706211533048055.jpg\" alt=\"\"></span></p><p style=\"text-align: center;\"><span>老师授课中</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;</span></span><span>本次培训，时间安排一天半。在有限的授课时间内，叶超科长与学员们面对面讲解了我省互金行业清理整顿工作的进程，平台如何根据《网络借贷信息中介机构业务活动管理暂行办法》积极规范整改，并逐步完成银行资金存管接入、备案登记等工作，以及未来互联网金融行业发展的方向。</span></p><p style=\"text-align: center;\"><span><img src=\"https://www.pujinziben.com:8443/attached/image/2017/20170621/201706211533296408.jpg\" alt=\"\"></span></p><p style=\"text-align: center;\"><span>老师授课中</span></p><p style=\"text-align: justify;\"><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;周健会长为学员们带来了精彩的资讯分享及行业分析，并重点阐述了对网贷行业规范及法律文件的理解。周静CEO解读了智能信贷科技的核心、基础、风控模型的建立及具体操作以及首个以独立信贷技术服务商作为主要发起人的公募互联网金融ＡＢＳ。江西神州信息安全评估中心特派员们现场演示了计算机渗透技术，并解析了互联网金融网络信息安全风险防范及等级测评和信息安全保障体系建设。内容丰富，安排紧凑的培训授课获得学员的一致认可。</span></p><p style=\"text-align: center;\"><img src=\"https://www.pujinziben.com:8443/attached/image/2017/20170621/201706211533513002.jpg\" alt=\"\"></p><p style=\"text-align: justify;\"><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span>受邀参加本次培训会的普金资本相关负责人表示：未来，普金资本将继续规范发展、参与行业自律，并结合金融与大数据征信手段不断提升风控能力和效率，多措并举，以维护投资人和借款人的合法权益为前提，积极拥抱监管政策，务求为行业规范发展做出更多的贡献。</span></p>', 'static/uploads/20171017161056_408.png', '2017-06-16 18:27:10');
INSERT INTO `dynamic` VALUES ('10', '普金资本获准通过全国公安机关互联网网站备案', '   2017年2月22日，普金资本正式获准通过公安部互联网金融网站安全备案，标志着普金资本在践行合规网络建设上迈出重要一步，不断提高平台网络信息安全系数，平台合规化更进一步。', '<p><img src=\"http://www.pujinziben.com/attached/image/2017/20170222/20170222171929256.png\" alt=\"\" style=\"text-align: center;\"></p><p><span>&nbsp; &nbsp; &nbsp; &nbsp; 根据中国银行业监督管理委员会《网络借贷信息中介机构业务活动管理暂行办法》</span><span>银监会令</span><span>[2016]1</span><span>号&nbsp;</span><span>有关规定，网络借贷信息中介机构应当按照国家网络安全相关规定和国家信息安全等级保护制度的要求，开展信息系统定级备案和等级测试，具有完善的防火墙、入侵检测、数据加密以及灾难恢复等网络安全设施和管理制度，建立信息科技管理、科技风险管理和科技审计有关制度，配置充足的资源，采取完善的管理控制措施和技术手段保障信息系统安全稳健运行，保护出借人与借款人的信息安全。</span></p><p><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span>普金资本根据公安部对计算机信息网络安全保护和管理的要求，通过提报申请、身份验证、技术安全、业务合规、内容可信等信息核实及现场检查与约谈，普金资本顺利备案成功！通过公安机关网站备案后，公安机关可以定期检查平台的运营情况，促进平台不断完善管理控制措施和技术手段保障信息系统安全稳健运行，保护出借人与借款人的信息安全。</span></p><p><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span>普金资本致力于打造“专业、稳健、诚信、高效”的互联网金融平台，网站信息安全是发展的基础性保障，并一直以来积极向行业政策合规化要求靠拢，此次主动向公安部互联网金融网站安全备案即是朝着安全、稳健、合规化经营的又一例证。</span></p>', 'static/uploads/201702221717596521.jpg', '2017-02-22 17:16:17');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `furl` varchar(300) NOT NULL,
  `fpic` varchar(500) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('14', 'https://www.fadada.com/', 'static/uploads/hz_fadada.png');
INSERT INTO `friend` VALUES ('15', 'http://www.heimadc.com', 'static/uploads/hmLogo.png');
INSERT INTO `friend` VALUES ('16', 'http://www.chinapnr.com', 'static/uploads/hftxLogo.png');
INSERT INTO `friend` VALUES ('17', 'http://www.evergrande.com', 'static/uploads/hz_hddc.png');
INSERT INTO `friend` VALUES ('18', 'http://www.erongtu.com', 'static/uploads/rtwLogo.png');
INSERT INTO `friend` VALUES ('19', 'http://www.jxifa.org.cn', 'static/uploads/jrxhLogo.png');
INSERT INTO `friend` VALUES ('20', 'http://www.cgfae.cn', 'static/uploads/jyzxLogo.png');
INSERT INTO `friend` VALUES ('21', 'http://www.chinacsfl.cn', 'static/uploads/fwlmLogo.png');
INSERT INTO `friend` VALUES ('22', 'http://www.wdzj.com/', 'static/uploads/hz_wdzj.png');
INSERT INTO `friend` VALUES ('23', 'http://www.gzctgroup.cn', 'static/uploads/ctLogo.png');

-- ----------------------------
-- Table structure for `hkb`
-- ----------------------------
DROP TABLE IF EXISTS `hkb`;
CREATE TABLE `hkb` (
  `hkid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '借款人id',
  `rname` varchar(30) NOT NULL COMMENT '真实姓名',
  `cpname` varchar(50) NOT NULL COMMENT '产品名',
  `rnum` int(11) DEFAULT '0' COMMENT '已还期数',
  `tnum` int(11) DEFAULT NULL COMMENT '总期数',
  `ytime` datetime NOT NULL COMMENT '应还时间',
  `rtime` datetime DEFAULT NULL COMMENT '实际还款时间',
  `bzname` varchar(255) NOT NULL COMMENT '标种',
  `ybx` decimal(15,2) DEFAULT '0.00' COMMENT '应还本息',
  `rbx` decimal(15,2) DEFAULT '0.00' COMMENT '已还本息',
  `ylx` decimal(15,2) DEFAULT '0.00' COMMENT '应还利息',
  `rlx` decimal(15,2) DEFAULT '0.00' COMMENT '已还利息',
  `ybj` decimal(15,2) DEFAULT '0.00' COMMENT '应还本金',
  `rbj` decimal(15,2) DEFAULT '0.00' COMMENT '已还本金',
  `yfc` decimal(15,2) DEFAULT '0.00' COMMENT '应还罚息',
  `rfc` decimal(15,2) DEFAULT '0.00' COMMENT '已还罚息',
  `yucount` int(11) DEFAULT '0' COMMENT '逾期次数',
  `status` int(11) DEFAULT '0' COMMENT '还款状态',
  `baid` int(11) NOT NULL COMMENT '借款id',
  `yustartime` datetime DEFAULT NULL COMMENT '逾期执行时间',
  `huid` int(11) NOT NULL COMMENT '贷后负责人',
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hkid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hkb
-- ----------------------------
INSERT INTO `hkb` VALUES ('4', '6', '马冬梅', 'PJ2018BZ0015', '1', '1', '2018-01-18 11:00:47', '2018-01-18 11:36:09', '恒金宝', '235200.00', '235200.00', '25200.00', '25200.00', '210000.00', '210000.00', '0.00', '0.00', '0', '1', '15', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('5', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-02-19 10:14:54', null, '多金宝', '4506.60', '0.00', '339.93', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('6', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-03-19 10:14:54', null, '多金宝', '4475.70', '0.00', '309.03', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('7', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-04-19 10:14:54', null, '多金宝', '4444.79', '0.00', '278.12', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('8', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-05-19 10:14:54', null, '多金宝', '4413.89', '0.00', '247.22', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('9', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-06-19 10:14:54', null, '多金宝', '4382.99', '0.00', '216.32', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('10', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-07-19 10:14:54', null, '多金宝', '4352.09', '0.00', '185.42', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('11', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-08-19 10:14:54', null, '多金宝', '4321.18', '0.00', '154.51', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('12', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-09-19 10:14:54', null, '多金宝', '4290.28', '0.00', '123.61', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('13', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-10-19 10:14:54', null, '多金宝', '4259.38', '0.00', '92.71', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('14', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-11-19 10:14:54', null, '多金宝', '4228.48', '0.00', '61.81', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('15', '9', '王五', 'PJ2018BZ0024', '0', '12', '2018-12-19 10:14:54', null, '多金宝', '4197.57', '0.00', '30.90', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('16', '9', '王五', 'PJ2018BZ0024', '0', '12', '2019-01-19 10:14:54', null, '多金宝', '4166.67', '0.00', '0.00', '0.00', '4166.67', '0.00', '0.00', '0.00', '0', '0', '24', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('17', '9', '王五', 'PJ2018BZ0023', '1', '3', '2018-01-20 09:46:39', '2018-01-20 09:48:18', '普金宝', '250.00', '250.00', '250.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '23', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('18', '9', '王五', 'PJ2018BZ0023', '1', '3', '2018-03-20 09:44:48', null, '普金宝', '250.00', '0.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0', '23', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('19', '9', '王五', 'PJ2018BZ0023', '1', '3', '2018-04-20 09:44:48', null, '普金宝', '30250.00', '0.00', '250.00', '0.00', '30000.00', '0.00', '0.00', '0.00', '0', '0', '23', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('20', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-02-21 20:07:03', null, '普金宝', '52500.00', '0.00', '2500.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('21', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-03-21 20:07:03', null, '普金宝', '52000.00', '0.00', '2000.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('22', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-04-21 20:07:03', null, '普金宝', '51500.00', '0.00', '1500.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('23', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-05-21 20:07:03', null, '普金宝', '51000.00', '0.00', '1000.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('24', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-06-21 20:07:03', null, '普金宝', '50500.00', '0.00', '500.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('25', '8', '王贰', 'PJ2018BZ0020', '0', '6', '2018-07-21 20:07:03', null, '普金宝', '50000.00', '0.00', '0.00', '0.00', '50000.00', '0.00', '0.00', '0.00', '0', '0', '20', null, '2', null, null, null, null);
INSERT INTO `hkb` VALUES ('26', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-02-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '2500.00', '0.00', '32306.76', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('27', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-03-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '2096.17', '0.00', '32710.59', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('28', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-04-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '1687.28', '0.00', '33119.48', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('29', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-05-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '1273.29', '0.00', '33533.47', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('30', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-06-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '854.12', '0.00', '33952.64', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);
INSERT INTO `hkb` VALUES ('31', '5', '张三', 'PJ2018BZ0011', '0', '6', '2018-07-21 20:08:39', null, '恒金宝', '34806.76', '0.00', '429.71', '0.00', '34377.05', '0.00', '0.00', '0.00', '0', '0', '11', null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for `home`
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `pic1` varchar(500) DEFAULT NULL,
  `pic2` varchar(500) DEFAULT NULL,
  `pic3` varchar(500) DEFAULT NULL,
  `ewm` varchar(500) DEFAULT NULL COMMENT '二维码',
  `phone` varchar(15) DEFAULT NULL,
  `url1` varchar(100) DEFAULT NULL,
  `url2` varchar(100) DEFAULT NULL,
  `url3` varchar(100) DEFAULT NULL,
  `url4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('2', 'static/uploads/slide1.jpg', 'static/uploads/slide3.jpg', 'static/uploads/slide4.jpg', 'static/uploads/wechart.jpg', '13500000000', 'https://www.pujinziben.com/activity/activity_10.html', 'page/dynamic/dynamicDetail?dynamicId=6', 'page/company/mediaDetailPage?mediaId=2', null);

-- ----------------------------
-- Table structure for `huser`
-- ----------------------------
DROP TABLE IF EXISTS `huser`;
CREATE TABLE `huser` (
  `huid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL,
  `sex` varchar(4) DEFAULT '男',
  `phone` varchar(15) NOT NULL,
  `pwd` varchar(300) NOT NULL,
  `huname` varchar(50) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT '0' COMMENT '所属组ID',
  `oname` varchar(50) NOT NULL DEFAULT '默认分组' COMMENT '组名',
  `email` varchar(50) DEFAULT NULL,
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`huid`),
  UNIQUE KEY `uk_huser` (`phone`) USING BTREE,
  UNIQUE KEY `uk_hemail` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huser
-- ----------------------------
INSERT INTO `huser` VALUES ('1', 'root', '2', '13500000000', 'wr+H6GPsOw9hqVg1xXC1mQ==', 'root', '0', '默认分组', '123@qq.com', null, null, null, null);
INSERT INTO `huser` VALUES ('2', 'manage', '1', '13511111111', 'wr+H6GPsOw9hqVg1xXC1mQ==', 'manage', '1', '审核设置分组', '321@qq.com', null, null, null, null);
INSERT INTO `huser` VALUES ('3', 'message', '1', '13522222222', 'wr+H6GPsOw9hqVg1xXC1mQ==', 'message', '2', '信息设置分组', '222@qq.com', null, null, null, null);

-- ----------------------------
-- Table structure for `jklx`
-- ----------------------------
DROP TABLE IF EXISTS `jklx`;
CREATE TABLE `jklx` (
  `lxid` int(11) NOT NULL AUTO_INCREMENT,
  `lxname` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`lxid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jklx
-- ----------------------------
INSERT INTO `jklx` VALUES ('4', '个人', '1');
INSERT INTO `jklx` VALUES ('5', '企业', '1');

-- ----------------------------
-- Table structure for `jur`
-- ----------------------------
DROP TABLE IF EXISTS `jur`;
CREATE TABLE `jur` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jurl` varchar(200) NOT NULL COMMENT '权限URL',
  `content` varchar(300) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jur
-- ----------------------------
INSERT INTO `jur` VALUES ('1', 'message', '管理信息的权限');
INSERT INTO `jur` VALUES ('2', 'manage', '审核和设置奖励的权限');
INSERT INTO `jur` VALUES ('3', 'root', 'root的权限');
INSERT INTO `jur` VALUES ('6', 'test', '用于测试的权限');

-- ----------------------------
-- Table structure for `letter`
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------
INSERT INTO `letter` VALUES ('5', '欢迎加入普金资本', '<p>&nbsp; &nbsp; &nbsp; &nbsp;欢迎加入普金资本：</p><p>我们拥有优先的团队，先进的理念，只为打造一款优秀的投资平台；在使用过程中</p><p>您尽可以将遇到的问题反馈给我们。</p><p><br></p><p>——普金资本</p><p>——2018-1-18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2018-01-09 10:00:00', '1');
INSERT INTO `letter` VALUES ('6', '小伙伴！注意啦', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 本平台提供的代金券，是有时间期限的，请注意使用的时间期限欧。</p><p>逾期，代金券将失效哦。请尽快使用，谢谢。</p><p><br></p><p><br></p><p>——普金资本</p><p>——2018-1-10</p>', '2018-01-10 10:00:00', '1');
INSERT INTO `letter` VALUES ('7', '看看您的钱包', '<p>&nbsp; &nbsp; &nbsp; &nbsp;您在本平台使用的银行卡、收益情况、提现等等，都可以在您点击我的账户登入后可以看到</p><p>您想看的信息欧！！</p><p><br></p><p>——普金资本</p><p>——2018-1-19</p>', '2018-01-19 10:00:00', '1');
INSERT INTO `letter` VALUES ('8', '即将公布的站内信（先冻结）', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 新年快到了，在这里提前祝您新年快乐，生活愉快。</p><p><br></p>', '2018-01-20 00:00:00', '0');
INSERT INTO `letter` VALUES ('9', '冻结（用户不可查看）', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 冻结后，用户无法查看此信息，只有管理员进行激活，才可让用户查看。</p><p><br></p><p>——普金资本</p><p>——2018-1-20</p>', '2018-01-20 11:00:00', '0');

-- ----------------------------
-- Table structure for `log_cz`
-- ----------------------------
DROP TABLE IF EXISTS `log_cz`;
CREATE TABLE `log_cz` (
  `czid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bankcard` varchar(20) NOT NULL COMMENT '银行卡号',
  `banktype` varchar(50) NOT NULL COMMENT '银行卡类型',
  `money` decimal(15,2) NOT NULL COMMENT '金额',
  `created_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`czid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_cz
-- ----------------------------
INSERT INTO `log_cz` VALUES ('1', '5', '6228480402564890018', '建设银行', '1010000.00', '2018-01-18 10:42:31', '1');
INSERT INTO `log_cz` VALUES ('2', '6', '6228480402564890017', '建设银行', '100000.00', '2018-01-18 11:31:21', '1');
INSERT INTO `log_cz` VALUES ('3', '8', '6228480402564890018', '农业银行', '99999999.00', '2018-01-19 09:55:53', '0');
INSERT INTO `log_cz` VALUES ('4', '8', '6228480402564890018', '农业银行', '10000.00', '2018-01-19 14:59:14', '0');
INSERT INTO `log_cz` VALUES ('5', '8', '6228480402564890018', '农业银行', '12345.00', '2018-01-19 15:10:26', '0');
INSERT INTO `log_cz` VALUES ('6', '11', '6227001541800361839', '建设银行', '1000000.00', '2018-01-20 09:30:05', '0');

-- ----------------------------
-- Table structure for `log_money`
-- ----------------------------
DROP TABLE IF EXISTS `log_money`;
CREATE TABLE `log_money` (
  `lmid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `type` int(11) NOT NULL COMMENT '类型',
  `income` decimal(15,2) DEFAULT '0.00' COMMENT '收入',
  `outlay` decimal(15,2) DEFAULT '0.00' COMMENT '支出',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`lmid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_money
-- ----------------------------
INSERT INTO `log_money` VALUES ('2', '5', '1', '1010000.00', '0.00', '2018-01-18 14:24:18');
INSERT INTO `log_money` VALUES ('3', '6', '1', '100000.00', '0.00', '2018-01-18 14:24:21');
INSERT INTO `log_money` VALUES ('4', '8', '0', '99999999.00', '0.00', '2018-01-19 09:55:53');
INSERT INTO `log_money` VALUES ('5', '8', '0', '100000000.00', '0.00', '2018-01-19 10:11:59');
INSERT INTO `log_money` VALUES ('6', '8', '0', '10000000.00', '0.00', '2018-01-19 10:13:22');
INSERT INTO `log_money` VALUES ('7', '8', '1', '0.00', '10000.00', '2018-01-19 14:36:41');
INSERT INTO `log_money` VALUES ('8', '8', '0', '10000.00', '0.00', '2018-01-19 14:59:14');
INSERT INTO `log_money` VALUES ('9', '8', '0', '12345.00', '0.00', '2018-01-19 15:10:26');
INSERT INTO `log_money` VALUES ('10', '11', '0', '1000000.00', '0.00', '2018-01-20 09:30:05');
INSERT INTO `log_money` VALUES ('11', '11', '1', '0.00', '10000.00', '2018-01-20 09:55:39');

-- ----------------------------
-- Table structure for `log_tx`
-- ----------------------------
DROP TABLE IF EXISTS `log_tx`;
CREATE TABLE `log_tx` (
  `txid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bankcard` varchar(20) NOT NULL COMMENT '银行卡号',
  `banktype` varchar(50) NOT NULL COMMENT '所属银行',
  `money` decimal(15,2) NOT NULL COMMENT '金额',
  `created_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`txid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_tx
-- ----------------------------
INSERT INTO `log_tx` VALUES ('1', '8', '6228480402564890018', '农业银行', '100000000.00', '2018-01-19 10:11:59', '0');
INSERT INTO `log_tx` VALUES ('2', '8', '6228480402564890018', '农业银行', '10000000.00', '2018-01-19 10:13:22', '1');
INSERT INTO `log_tx` VALUES ('3', '8', '6228480402564890018', '农业银行', '10000.00', '2018-01-19 14:36:41', '1');
INSERT INTO `log_tx` VALUES ('4', '11', '6227001541800361839', '建设银行', '10000.00', '2018-01-20 09:55:39', '1');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `content` text NOT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `url` varchar(150) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('2', '庆贺普金资本成功当选江西省第二届互联网金融协会副会长单位！', '2017年10月13日，江西省互联网金融协会第二届第一次会员代表大会在南昌前湖迎宾馆隆重召开。', '<p class=\"p\"><span>本次会议，通过了第一届理事会工作报告和财务报告，并且选举产生了第二届理事单位。其中，普金资本运营（赣州）有限公司成功当选江西省互联网金融协会第二届副会长单位，与此同时，公司</span><span>CEO</span><span>吴鸿先生成功当选为理事会副会长。</span></p><p class=\"p\" style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171017161056_408.png\" width=\"640\" height=\"480\" alt=\"\"></p><p class=\"p\"><span>此次代表大会总结了江西省互联网金融协会成立以来所做的工作，指出协会的成立，是响应国家互联网金融业健康发展的具体要求，对我省互联网金融业的蓬勃发展和有序推进有着十分重要的作用。</span></p><p class=\"p\"><span>会议总结了全省互联网金融行业的基本情况，指出省内互联网金融行业的发展存在以下特点：第一，在对互联网金融行业的监管上取得了长足的进步，为行业的理性发展奠定了坚实的基础。第二，我省的互联网金融行业规模还有待进一步加大。据相关统计数据，截至</span><span>2017</span><span>年</span><span>8</span><span>月底，全省在运营的网络借贷信息中介机构共有</span><span>31</span><span>家，累计撮合成交量为</span><span>301.23</span><span>亿元，贷款余额为</span><span>30.89</span><span>亿元。第三，我省的互联网金融行业在运行上处于平稳发展的时期，管理风险是可控的。</span></p><p class=\"p\" style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171017161147_72.png\" width=\"640\" height=\"480\" alt=\"\"></p><p class=\"p\"><span>据悉，普金资本运营（赣州）有限公司（以下简称：普金资本）是由赣州城兴投资管理有限公司联合赣州盛汇资产管理有限公司一同设立的互联网金融平台，</span>2016<span>年</span><span>3</span><span>月注册成立于江西赣州。在平台成立之初，就获得了赣州市国资委备案，并且以前所未有的发展态势为赣州的各类企业提供了精准到位的投融资服务。由于普金资本在人才上始终坚持</span><span>“</span><span>以人为本</span><span>”</span><span>的原则，大批金融行业、城建行业、供应链管理行业的人才汇集于此，不但为公司的发展做出了自己的贡献，也为解决客户的资金问题提供了高效的运作方案。</span></p><p class=\"p\" style=\"text-align: center;\"><img src=\"http://www.pujinziben.com/upload/mediareport/2017/10/20171017161234_943.png\" width=\"640\" height=\"480\" alt=\"\"></p><p class=\"p\"><span>作为江西省互联网金融协会第二届副会长单位，普金资本致力于打造</span><span>“</span><span>专业、稳健、诚信、高效</span><span>”</span><span>的互联网金融平台，自成立以来就始终坚持严谨规范的理念，积极拥抱国家互金监管政策，始终走在省内互金行业规范平台的前列，用合规和自律的基本底线，不断夯实平台自身的发展实力。未来，普金资本必将继续深化在互联网金融领域的工作，担起江西省互金协会副会长单位职责，与全行业共同努力，推动江西互联网金融业的健康发展。</span></p>', 'static/uploads/20171017161015190.jpg', 'http://www.sohu.com/a/198324546_244119', '2017-10-17 00:00:00');
INSERT INTO `media` VALUES ('3', '年底投资有风险 选择普金资本安全可靠！', '随着近年来中国经济的快速发展，社会财富不断增长，个人金融资产也不断增加，理财的必要性也逐渐体现出来了。', '<p>同时，年关将至，很多人想乘着年末大赚一笔，不少消费者也会将自己的年终奖金投入到理财当中去，以获得鸡生蛋、蛋生鸡的效应。不过，年底投资还是有风险存在的，投资者一定要擦亮眼睛。</p><div style=\"text-align: center;\"><p><img src=\"http://p3.pstatp.com/large/46f6000137f66cbbd2fa\"></p><p style=\"text-align: start;\">具体来说，年底投资的风险体现在以下三个方面。第一，投资者选择了不靠谱的投资平台，而这些平台的老板借着年末敛财的时机圈钱跑路了。这对于投资者来说，确实是不小的打击。第二，投资者没有注意到理财产品的时效性，陷入了流动性的陷阱。当投资者把自己手头的钱全部投入到理财平台上之后，万一有急需用钱的情况，投资者就只有抓瞎了。第三，市场上还是存在着很多的金融诈骗案，在年底更值诈骗的高峰期，需要投资者提高警惕，不要轻易上当。综上所述，投资者只有选择有保障的大平台，才有可能取得好的收益。</p><div style=\"text-align: start;\"></div><div style=\"text-align: start;\"></div><p style=\"text-align: start;\">  有人可能会问，有保障的大平台究竟有哪些明显的特征呢？业内人士提醒大家，在选择投资平台时，首先要看投资平台是否有合法的资质，其次要看投资平台的企业实力，最后要看投资平台上的理财产品是否具有较高的安全性和收益性。说到底，如果一个投资平台是在金融监管单位的监督下成立和运行的，企业的注册资金相当雄厚，同时推出的理财产品也是安全可靠、能够带来高收益的，那么，这样的投资平台无疑是可以为投资者选择的。专家还向大家推荐了普金资本运营（赣州）有限公司，为有投资需求的朋友指明了方向。</p><p align=\"center\"><img src=\"http://p1.pstatp.com/large/46f6000138fdc3a2488d\"></p><p style=\"text-align: start;\">  据了解，普金资本运营（赣州）有限公司是由赣州城兴投资管理有限公司联合赣州盛汇资产管理有限公司共同出资设立的互联网金融平台，于2016年3月注册成立于江西赣州。普金资本不但获得了赣州市国资委备案，更是为赣州国有企业、大型集团上下游供应链提供了精准到位的投融资服务。</p><p style=\"text-align: start;\">  一直以来，普金资本都在为客户获得稳健高效的收益而努力，一方面，平台引进了来自金融行业、城建行业、供应链管理行业的一批专业人才，为客户的投融资业务提供帮助，另一方面，平台采用五级过滤的方式来确保项目的可靠性和收益性，建立起了完善的风控体系，严格遵循审核标准和审核流程，真正让投资者无后顾之忧。</p><p align=\"center\"><img src=\"http://p1.pstatp.com/large/46f40001a15fafb5375e\"></p><p style=\"text-align: start;\">  如此看来，在2017年末将至的时候，投资者一定要选择投资有保障的实力大平台，才有可能让自己的收益翻番，笑迎2018年的到来。</p></div>', 'static/uploads/20171121164504311.jpg', 'http://finance.hsw.cn/system/2017/1121/254170.shtml', '2017-11-21 16:41:18');
INSERT INTO `media` VALUES ('4', '互联网金融行业再次掀起风暴，普金资本横空出世', ' 基于国家“互联网+”的政策，金融行业开始逐步结合国家发展进行改革。', '<p class=\"MsoNormal\">不论是传统地面金融行业还是电商行业，都开始挖掘“资本”行业的市场潜力。支付宝-蚂蚁花呗、借呗、理财;微信中的理财通;京东金融的理财御存款等，无一不是在金融行业掘金。虽然利益点与发展相比传统金融行业收获更大，但其后面的支柱与安全性也在经受市场的考验。而大型企业及国有企业投资金融的市场却产生缺口，广大创业及投资人看重这块巨大的“蓝海”，纷纷由大众金融转型到大型金融行业。由此市场行业趋势，普金资本开始进入大众的视野，开始进行金融行业的全面革新与改革。</p><p class=\"MsoNormal\"><span>  普金资本运营</span>(赣州)有限公司(简称：普金资本)由赣州城兴投资管理有限公司联合赣州盛汇资产管理有限公司共同出资设立的互联网金融平台。通过多样的产品、多重的优势、专业的咨询售前售后服务，普金资本迎难而上，脱颖而出，伫立于大型金融行业发展。通过2016年的行业调查，业内人士表示，2017年行业继续发展，国家将出台完善政策给予金融行业相关规定与引导。许多缺少安全性与稳健性的中小型企业将逐渐退出市场舞台。而普金资本实力雄厚，的股东除了创始团队之外，还囊括了国有资产单位。其中包括实力雄厚的赣州城兴投资管理有限公司与盛汇资产管理有限公司。并且，针对现在市场的人才供应链与市场需求，继续一批专业性与全能型的工作团队引导行业发展。普金资本团队汇聚金融行业、城建行业、供应链管理行业一批专业人才，拥有丰富的从业经验，具备成熟的产品开发设计能力、严格的风险管理能力、良好的企业管理能力。致力于打造“专业、稳健、诚信、高效”的互联网金融平台，成为赣南苏区振兴发展投融资服务的示范性平台。另外，针对2016网贷行业成交额接近20000亿元的成交量来说，成交的安全性也受到业内外的关注。普金资本上线项目，必须经过五级过滤，即为：初审、实地调查、风控终审、介入过滤与筛选过滤等五大过滤体系。另外，普金资本更提供技术保障与法律保障，保障资金的安全性与稳健性。</p><p class=\"MsoNormal\"><span>  多重的优势与多样的产品，打造普金资本稳健匠心的品质。相信在未来，普金资本以及大型企业、国企的资金金融市场发展将会更加壮大。我们也可以预见，承接</span>2016年“监管整治+洗牌转型”的行业主旋律，2017年势必会产生更加崭新的行业发展势头，我们拭目以待。</p>', 'static/uploads/20170928143828088.jpg', 'http://www.huaxia.com/xw/zhxw/2017/09/5485817.html', '2017-09-28 00:00:00');
INSERT INTO `media` VALUES ('5', '普金资本：致力普惠金融', '  随着投资者的涌入，P2P网贷平台一度出现火爆局势。', '<p style=\"text-align: justify;\"><span>据网贷之家数据显示，就在刚过去不久的4月份，网贷单月成交再创新高，达到1430.91亿元，综合收益率实现9.30%。P2P除有收益较高安全等优势外，也一再被国家认可对促进普惠金融发展具备有益作用，并可缓解小微企业等低收入人群的融资难问题。</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>去年12月31日，国务院公布了《推进普惠金融发展规划(2016—2020年)》(以下简称“规划”)。《规划》明确了什么是普惠金融，以及推进普惠金融发展的意义，提出了具体的发展规划。其中，《规划》明确提出发挥互联网促进普惠金融发展的有益作用，发挥网络借贷平台融资便捷、对象广泛的特点，引导其缓解小微企业、农户和各类低收入人群的融资难问题。那么，P2P网贷平台应该如何抓住机遇，踏实做好推进普惠金融发展的具体实践?</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>中小微企业贷款难，除了银行渠道受限之外，其他渠道也不畅通，很多中小微企业是没法从资本市场获取资金的，这就导致中小微企业的融资渠道比较窄，可选择的空间比较少，因此就会导致融资成本的升高。</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>临时需要资金，寻求银行贷款，需要抵押审核时间耗上好几周;选择民间财务公司，利息又高得吓人;而民间高利贷侮辱和伤害的，不仅仅中小民企，还有在他们提供的大量就业岗位上勤勉养家糊口的普通打工者，更有正在努力通过脱虚向实、寻找靠谱动能的中国经济。</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>因此越来越多的人将融资目光投向P2P网络贷款平台。普金资本负责人表示，在小微企业贷款难背景下，P2P行业起到对现行金融系统补充的作用。“我们是传统金融机构的补充，提供的正是银行无法或者不愿意提供的服务。”</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>P2P网贷，颠覆不了传统金融，更没有能力去革传统金融的命，但是却有可能终结民间高利贷。原因十分简单，P2P网贷服务的族群，是传统金融行业服务不到、或者说服务不周全的族群，二者可以形成很好的补充关系。未来，网贷平台应不断加强内部系统建设，运用新的技术来为用户提供更好的金融服务和更优质的体验，为普惠金融贡献力量。</span></p><p style=\"text-align: justify;\"><span><span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>普金资本始终致力于打造“专业、稳健、诚信、高效”的互联网金融平台，为有资金需求和资金出借需求的个人或中小微企业主搭建一个公平、透明、稳定、高效的信息中介服务平台，为中国普及金融事业的发展添砖加瓦。</span></p>', 'static/uploads/201705241709128867.jpg', 'http://www.dzgdb.com/shrd/20170523/379696.html', '2017-05-24 17:08:24');
INSERT INTO `media` VALUES ('6', '这个双十一，你准备好了没有？', '随着双十一的临近，国内的金融投资市场也呈现出一派繁荣景象。', '<p>。不过，时值年底，对于普通的投资者来说，如果没有选择对投资平台，想赚钱盈利的美好愿望就会落空。所以，大多数投资者在选择投资平台时都是慎之又慎，不敢轻易下手。</p><p>就算这样，还是有不少投资者误入歧途，被那些不靠谱的平台的承诺所吸引，将自己的血汗钱投入到项目当中，结果是可想而知的，不但钱财血本无归，连精神上也受到了巨大的打击。比如退休在家的老刘，就因为上了一个投资平台的当，将5万元资本全部投入到所谓的高盈利项目中去，结果到期后不但没有承诺的高额利润，更是连本钱都拿不回来了。</p><p style=\"text-align: center;\"><img src=\"https://p1.pstatp.com/large/43650001ca72ad22dc78\"></p><p>面对这样的情形，很多投资者开始思考这样的问题：怎么样才能选择到好的投资平台，让自己的投资行为变得更理性、更有保障呢？其实，要想实现对投资的监管，主要还是要睁大眼睛，选择一个靠谱的金融投资平台。只有这样，才能确保自己的投资行为是理性的，是不会给自己带来负面影响的。特别是对于一些本身对金融不太懂的消费者来说，选择这样的平台，更可以省心省力，让自己在投资行动中如虎添翼，如鱼得水。</p><p>而以国企参股为特色的普金资本，显然是大家可以信赖的对象。据悉，普金资本是赣州市政府直属、市国资委监管的国有独资企业，不但在资金实力上相当的雄厚，在风险把控方面也做得十分到位。正因为此，自平台对外开放以来，已经有数以千计的投资者和融资者从这个平台中得到了自己想要的效益。</p><p style=\"text-align: center;\"><img src=\"https://p1.pstatp.com/large/43650001cb4be896302c\"></p><p>在双十一购物节拉开帷幕之际，普金资本更是为广大投资者带来了一个好消息，11.11普金狂欢节正在紧锣密鼓地进行着。对于所有平台用户来说，只要按照规则参加活动，在11月1日至11月30日之间，都可能获得非常丰厚的奖励回报。比如月累计投资奖、新手客户开门红和邀请好友投资奖励，只要是积极参与活动的朋友，都可以收获更多的精彩。</p><p>面对如此诱人的奖励，相信你已经动心了吧？的确，现在参加11.11普金狂欢节，非但可以拿到高额的奖励，还可以坐享更多的投资回报，赚钱生利，不再是遥不可及的梦想，财富唾手可得，你还在等什么呢？</p><p><br></p><p>广夏细旃磨厉以须髀里肉生事无大小驷马高门众人拾柴火焰高民淳俗厚剪发杜门风言风语一脚不移一丝一毫隳节败名家传人诵妇姑勃谿讲古论今绝代佳人背前面后头痛额热投袂荷戈招风惹草</p>', 'static/uploads/20171118092607167.jpg', 'http://www.020cf.com/gnxw/20171106/412406.html', '2017-11-18 09:29:08');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('11', '关于多金宝项目提前还款的公告', '<p class=\"MsoNormal\" align=\"left\">尊敬的普金资本用户：<br>2017年10月01日发布多金宝PJ2017BZ0031（1）项目（借款金额：50万元、借款期限：3个月）已于2018年01月16日提前归还本息504166.67元。如您是上述项目投资人，敬请查阅个人账户回款情况。<br>感谢您一直以来对我们的支持与厚爱！</p><p class=\"MsoNormal\" align=\"left\"><br></p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">普金资本运营（赣州）有限公司</p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">2018年01月16日</p>', '2018-01-16 15:00:00');
INSERT INTO `notice` VALUES ('12', '2018年1月16日新标预告', '<p class=\"MsoNormal\"><span>【项目简介】</span></p><p class=\"MsoNormal\"><span>本期投资标地的借款方</span><span>赣州市</span>**车业有限公司,<span>该企业</span><span>是目前赣州地区</span>**电动车的经销商。公司前身为赣州市**贸易有限公司，成立于2009年，主营品牌为豪进摩托、大阳摩托、长铃摩托等。由于摩托车行业变化和公司逐渐发展，在2013年与浙江**电动车有限公司签订经销合作协议。公司目前经营面积800多平米，仓库面积1500平米，在赣南摩托车大市场、环城路、东阳山均设有门店，**电动车，年销量10000台以上。</p><p class=\"MsoNormal\"><span>至</span>2017年8月份，公司主营业务收入合计1673.14万元，实现主营业务利润105.83万元。 本次借款主要用于<span>订购</span>**电动车<span>，该企业借款金额为</span>100万元，第二期50万元，借款期限3个月，本平台为此借款提供服务。</p><p class=\"p\"><span>【产品类别】</span><span>多金宝</span></p><p class=\"p\"><span>【借款金额】第二期</span>50万</p><p class=\"MsoNormal\"><span>【借款期限】</span>3个月<br><span>【借款利率】</span>9+1%<br><span>【发标时间】</span>2018年1月16日&nbsp;10：00</p>', '2018-01-16 10:00:00');
INSERT INTO `notice` VALUES ('13', '2018年01月11日新标预告', '<p>【项目简介】</p><p>本期投资标的借款企业某保理公司成立于2016年5月，办公地址前海深港合作区，主要从事保付代理业务，经济信息咨询，注册资本10000万元。将恒大集团所开具商业承兑汇票质押于我公司，恒大集团信用状况良好，资产实力充裕。本项目本次融资金额20万元，融资期1个月。该借款用于资金周转，借款总额20万元，本平台为此次借款提供服务。</p><p>【借款金额】 20万</p><p>【产品类别】新手标</p><p>【借款期限】1个月</p><p>【借款利率】12%</p><p>【发标时间】2018年01月12日&nbsp;10:00</p>', '2018-01-11 10:00:00');
INSERT INTO `notice` VALUES ('14', '2018年1月9日新标预告', '<p><span>【项目简介】&nbsp;</span><br><span>本期投资标的借款企业为江西某医药有限公司，专业从事生物制品、中成药、化学原料药、化学药制剂、抗生素原料药、抗生素制剂、生化药品等药物。本次借款主要用于流动资金周转，借款总额100万元。本平台为此次借款提供服务。</span><br><span>【借款金额】第二期50 万元</span><br><span>【产品类别】多金宝</span><br><span>【借款期限】3个月</span><br><span>【借款利率】9+1%</span><br><span>【发标时间】2018年01月09日 15:00</span></p>', '2018-01-09 10:00:00');
INSERT INTO `notice` VALUES ('15', '2018年01月08日新标预告', '<p><span>【<strong>项目简介</strong>】</span><span>&nbsp;</span><br><span>投资标的为某</span><span>商业保理有限公司转让出的编号为&nbsp;</span><span>YC2017TD00012</span><span>的保理服务合同对应的商业承兑汇票债权，原债权借款人为</span><span>赣**传媒有限公司</span><span>。以恒创置业有限公司商业承兑汇票转让借款，用于补充企业流动性资金。本平台为此次借款提供服务。</span><br><span>【<strong>借款金额</strong>】132254</span><span>元</span><br><span>【<strong>产品类别</strong>】恒金宝</span><br><span>【<strong>借款期限</strong>】6</span><span>个月</span><br><span>【<strong>借款利率</strong>】9+1%</span><br><span>【<strong>发标时间</strong>】</span><span>2018年01</span><span>月8</span><span>日</span><span>&nbsp;15:00</span></p>', '2018-01-08 10:00:00');
INSERT INTO `notice` VALUES ('16', '关于新手标项目正常还款的公告', '<p class=\"MsoNormal\" align=\"left\">尊敬的普金资本用户：<br>2017年11月28日发布新手标PJ2017JK0012项目（借款金额：10万元、借款期限：1个月）已于2018年01月05日归还本息101000元。如您是上述项目投资人，敬请查阅个人账户回款情况。<br>感谢您一直以来对我们的支持与厚爱！</p><p class=\"MsoNormal\" align=\"left\"><br></p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">普金资本运营（赣州）有限公司</p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">2018年01月05日</p>', '2018-01-05 10:00:00');
INSERT INTO `notice` VALUES ('17', '2017年12月29日新标预告', '<p><span>【项目简介】&nbsp;</span><br><span>借款人温**，</span><span>男，赣州市石城人，2014年经营一家广告公司，每月盈利5万元左右，经济实力强，该次借款用于还清银行按揭贷款，尾款目前余额50万元左右， 该借款人已跟买家签好房屋买卖合同，房产售出即可回款。本次借款用于还清银行按揭贷款，尾款目前余额50万元左右， 该借款人已跟买家签好房屋买卖合同，房产售出即可回款，该次借款金额为20万元，借款期限3个月，本平台为此借款提供服务。</span><span><br></span><span>【借款金额】20 万元</span><br><span>【产品类别】多金宝</span><br><span>【借款期限】3个月</span><br><span>【借款利率】9+1%</span><br><span>【发标时间】2017年12月29日 15:00</span></p>', '2017-12-29 15:00:00');
INSERT INTO `notice` VALUES ('18', '关于元旦假期工作安排公告', '<p class=\"MsoNormal\">尊敬的普金资本用户：</p><p class=\"MsoNormal\">  根据《国务院办公厅关于2018年部分节假日安排的通知》，经我公司研究决定，现将普金资本2018年元旦放假安排公告如下：</p><p class=\"MsoNormal\">  2017年12月30日（星期六）—2018年1月1日（星期一）放假，&nbsp;2018年1月2日(星期二)起正常上班。</p><p class=\"MsoNormal\">  元旦放假期间：</p><p class=\"MsoNormal\">  1、每天9：00——18：00安排在线客服值班。</p><p class=\"MsoNormal\">  备注：因假期内安排手机值班，如未能及时回复，敬请谅解!</p><p class=\"MsoNormal\">  2、假期内正常充值、回款。</p><p class=\"MsoNormal\">  3、关于提现：假期内不处理提现，2017年12月29日-2018年1月1日期间的普通提现，均2018年1月2日到账；请提前做好资金安排；</p><p class=\"MsoNormal\">  4、发标信息以普金资本网站公布的发标预告为准。</p><p class=\"MsoNormal\">  温馨提醒：请大家提前做好各项安排，不便之处，敬请谅解！如有疑问，请致电网站服务热线400-606-2079或0797-2139619</p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\">  特此通知!</p><p class=\"p\" align=\"right\" style=\"text-align: right;\"> 普金资本运营（赣州）有限公司</p><p class=\"p\" align=\"right\" style=\"text-align: right;\">2017年12月28日</p>', '2017-12-28 15:00:00');
INSERT INTO `notice` VALUES ('19', '关于多金宝项目正常还款的公告', '<p class=\"MsoNormal\" align=\"left\">尊敬的普金资本用户：<br>2017年09月19日发布多金宝PJ2017BZ0025(1)项目（借款金额：50万元、借款期限：3个月）已于2017年12月26日归还本息504166.67元。如您是上述项目投资人，敬请查阅个人账户回款情况。<br>感谢您一直以来对我们的支持与厚爱！</p><p class=\"MsoNormal\" align=\"left\"><br></p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">普金资本运营（赣州）有限公司</p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">2017年12月26日</p>', '2017-12-26 15:00:00');
INSERT INTO `notice` VALUES ('20', '2017年12月24日新标预告', '<p><span>【项目简介】&nbsp;</span><br><span>赣州市***贸易有限公司成立于2014-11-11，注册资金500万元，注册地址：赣州市定南县老城镇中段村，经营范围：玻璃制品及原材料、化工材料（危险化学品除外）、光伏组件、光伏材料及辅材、机械设备、五金建材、电子产品批发、零售。本次借款主要用采购焦锑酸钠，该企业借款金额为100万元，第一期50万元，期限3个月，本平台为此借款提供服务。</span><br><span>【借款金额】第一期50 万元</span><br><span>【产品类别】多金宝</span><br><span>【借款期限】3个月</span><br><span>【借款利率】9+1%</span><br><span>【发标时间】2017年12月24日 15:00</span></p>', '2017-12-24 15:00:00');
INSERT INTO `notice` VALUES ('21', '2017年12月24日新标预告', '<p><span>【项目简介】&nbsp;</span><br><span>赣州**商贸有限责任公司成立于2007年04月23日 &nbsp;，注册资本260万，实收资本260万元，股东分别为李**占比60%、吴**占比40%，经营范围：预包装食品，散装食品，乳制品（含婴幼儿配方乳粉）批发兼零售（凭有效食品经营许可证经营）；食盐批发(凭食盐批发有效许可证经营)；日用品销售；市场营销策划；展览展示服务。本次借款主要用于年底年货销售旺季备货，该企业借款金额为100万元，第一期50万元，期限3个月，本平台为此借款提供服务。</span><br><span>【借款金额】第一期50 万元</span><br><span>【产品类别】多金宝</span><br><span>【借款期限】3个月</span><br><span>【借款利率】9+1%</span><br><span>【发标时间】2017年12月24日 15:00</span></p>', '2017-12-23 10:00:00');
INSERT INTO `notice` VALUES ('22', '关于多金宝项目正常还款的公告', '<p class=\"MsoNormal\" align=\"left\">尊敬的普金资本用户：<br>2017年10月23日发布多金宝PJ2017BZ0009项目（借款金额：25万元、借款期限：2个月）已于2017年12月23日归还本息251875元。如您是上述项目投资人，敬请查阅个人账户回款情况。<br>感谢您一直以来对我们的支持与厚爱！</p><p class=\"MsoNormal\" align=\"left\"><br></p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">普金资本运营（赣州）有限公司</p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right;\">2017年12月23日</p>', '2017-12-23 09:00:00');

-- ----------------------------
-- Table structure for `option`
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `content` varchar(500) NOT NULL COMMENT '反馈内容',
  `created_time` datetime DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`opid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of option
-- ----------------------------

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `rmid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL COMMENT '推荐人id',
  `tname` varchar(50) NOT NULL COMMENT '推荐人姓名',
  `uid` int(11) NOT NULL COMMENT '被推荐人id',
  `rname` varchar(50) NOT NULL COMMENT '被推荐人姓名',
  `created_time` datetime DEFAULT NULL COMMENT '推荐时间',
  PRIMARY KEY (`rmid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '-89999', '-89999', '6', '李四', '2018-01-18 10:11:28');
INSERT INTO `recommend` VALUES ('2', '-89995', '-89995', '7', '13522222222', '2018-01-18 10:14:14');
INSERT INTO `recommend` VALUES ('3', '5', '5', '11', '王五', '2018-01-20 09:24:34');

-- ----------------------------
-- Table structure for `reward`
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `rwid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tmoney` decimal(15,2) DEFAULT '0.00' COMMENT '投资总额',
  `money` decimal(15,2) DEFAULT '0.00' COMMENT '奖励金额',
  `status` varchar(255) DEFAULT '0',
  `reward_time` datetime DEFAULT NULL COMMENT '奖励发放时间',
  PRIMARY KEY (`rwid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward
-- ----------------------------
INSERT INTO `reward` VALUES ('25', '5', '210000.00', '4200.00', '1', '2018-01-20 09:55:03');
INSERT INTO `reward` VALUES ('26', '8', '50000.00', '1000.00', '1', '2018-01-20 09:55:03');
INSERT INTO `reward` VALUES ('27', '9', '50000.00', '1000.00', '1', '2018-01-20 09:55:03');
INSERT INTO `reward` VALUES ('31', '11', '30000.00', '900.00', '1', '2018-01-20 09:55:03');
INSERT INTO `reward` VALUES ('32', '5', '300000.00', '6000.00', '0', null);
INSERT INTO `reward` VALUES ('33', '8', '200000.00', '4000.00', '0', null);
INSERT INTO `reward` VALUES ('34', '9', '0.00', '0.00', '0', null);
INSERT INTO `reward` VALUES ('35', '11', '0.00', '0.00', '0', null);

-- ----------------------------
-- Table structure for `reward_setting`
-- ----------------------------
DROP TABLE IF EXISTS `reward_setting`;
CREATE TABLE `reward_setting` (
  `rwsid` int(11) NOT NULL AUTO_INCREMENT,
  `minmoney` decimal(15,2) NOT NULL,
  `maxmoney` decimal(15,2) DEFAULT NULL,
  `percent` double NOT NULL COMMENT '奖励百分比',
  PRIMARY KEY (`rwsid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward_setting
-- ----------------------------
INSERT INTO `reward_setting` VALUES ('7', '10000.00', '20000.00', '5');
INSERT INTO `reward_setting` VALUES ('8', '20000.00', '50000.00', '3');
INSERT INTO `reward_setting` VALUES ('9', '50000.00', '999999999.00', '2');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'root', '最高级用户');
INSERT INTO `role` VALUES ('2', 'manage', '审核和设置奖励用户');
INSERT INTO `role` VALUES ('3', 'message', '信息设置用户');
INSERT INTO `role` VALUES ('4', 'test', '用于测试的角色');

-- ----------------------------
-- Table structure for `rolejur`
-- ----------------------------
DROP TABLE IF EXISTS `rolejur`;
CREATE TABLE `rolejur` (
  `rjid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `jid` int(11) NOT NULL,
  PRIMARY KEY (`rjid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolejur
-- ----------------------------
INSERT INTO `rolejur` VALUES ('2', '1', '2');
INSERT INTO `rolejur` VALUES ('3', '1', '3');
INSERT INTO `rolejur` VALUES ('4', '2', '2');
INSERT INTO `rolejur` VALUES ('5', '3', '1');
INSERT INTO `rolejur` VALUES ('8', '1', '1');
INSERT INTO `rolejur` VALUES ('9', '4', '6');

-- ----------------------------
-- Table structure for `roleuser`
-- ----------------------------
DROP TABLE IF EXISTS `roleuser`;
CREATE TABLE `roleuser` (
  `ruid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `huid` int(11) NOT NULL,
  PRIMARY KEY (`ruid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roleuser
-- ----------------------------
INSERT INTO `roleuser` VALUES ('1', '1', '1');
INSERT INTO `roleuser` VALUES ('2', '2', '2');
INSERT INTO `roleuser` VALUES ('3', '3', '3');

-- ----------------------------
-- Table structure for `rzvip`
-- ----------------------------
DROP TABLE IF EXISTS `rzvip`;
CREATE TABLE `rzvip` (
  `rzid` int(11) NOT NULL AUTO_INCREMENT COMMENT '认证id（主键）',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `xl` varchar(36) DEFAULT '暂无' COMMENT '学历',
  `ism` varchar(4) DEFAULT '未知' COMMENT '婚否',
  `bschool` varchar(100) DEFAULT NULL COMMENT '毕业院校',
  `addr` varchar(200) DEFAULT NULL,
  `work` varchar(50) DEFAULT '暂无数据',
  `age` int(11) DEFAULT NULL,
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rzid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rzvip
-- ----------------------------
INSERT INTO `rzvip` VALUES ('1', '5', '大专', '未婚', '宏图软件', '江西赣州', '程序猿', '21', null, null, null, null);
INSERT INTO `rzvip` VALUES ('2', '6', '高中', '未婚', '宏图软件', '江西赣州', '测试员', '18', null, null, null, null);
INSERT INTO `rzvip` VALUES ('3', '10', '小学', '未婚', '广西壮族自治区', '广西壮族自治区', '没工作', '24', null, null, null, null);
INSERT INTO `rzvip` VALUES ('4', '9', '新疆维吾尔自治区', '未婚', '新疆维吾尔自治区', '新疆维吾尔自治区', '新疆维吾尔自治区', '24', null, null, null, null);
INSERT INTO `rzvip` VALUES ('5', '8', '广西壮族自治区', '未婚', '广西壮族自治区', '广西壮族自治区', '广西壮族自治区', '23', null, null, null, null);
INSERT INTO `rzvip` VALUES ('6', '7', '本科', '未婚', '理工大学', '赣州', '学生', '22', null, null, null, null);
INSERT INTO `rzvip` VALUES ('7', '11', '青海省', '未婚', '青海省', '青海省', '青海省', '19', null, null, null, null);

-- ----------------------------
-- Table structure for `rz_check`
-- ----------------------------
DROP TABLE IF EXISTS `rz_check`;
CREATE TABLE `rz_check` (
  `rcid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `huid` int(11) NOT NULL COMMENT '审核人',
  `isok` int(11) NOT NULL DEFAULT '0' COMMENT '是否通过',
  `excuse` varchar(300) DEFAULT NULL COMMENT '审核理由',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rz_check
-- ----------------------------

-- ----------------------------
-- Table structure for `shborrow`
-- ----------------------------
DROP TABLE IF EXISTS `shborrow`;
CREATE TABLE `shborrow` (
  `shid` int(11) NOT NULL AUTO_INCREMENT,
  `huid` int(11) DEFAULT NULL COMMENT '审核人id',
  `isok` int(11) DEFAULT '0' COMMENT '审核是否通过',
  `excuse` varchar(255) DEFAULT NULL COMMENT '理由',
  `cktime` datetime DEFAULT NULL COMMENT '审核时间',
  `baid` int(11) NOT NULL COMMENT '借款ID',
  PRIMARY KEY (`shid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shborrow
-- ----------------------------
INSERT INTO `shborrow` VALUES ('13', '1', '7', '通过', '2018-01-18 10:09:06', '12');
INSERT INTO `shborrow` VALUES ('14', '1', '7', '通过', '2018-01-18 10:09:28', '11');
INSERT INTO `shborrow` VALUES ('15', '1', '7', '通过', '2018-01-18 10:21:45', '14');
INSERT INTO `shborrow` VALUES ('16', '1', '7', '通过', '2018-01-18 10:30:54', '13');
INSERT INTO `shborrow` VALUES ('17', '1', '7', '通过', '2018-01-18 10:30:59', '15');
INSERT INTO `shborrow` VALUES ('18', '2', '7', '通过', '2018-01-18 14:58:06', '16');
INSERT INTO `shborrow` VALUES ('19', '2', '7', '通过', '2018-01-18 15:02:20', '17');
INSERT INTO `shborrow` VALUES ('20', '2', '7', '通过', '2018-01-18 15:02:29', '18');
INSERT INTO `shborrow` VALUES ('21', '2', '1', '资料缺少', '2018-01-18 15:27:12', '21');
INSERT INTO `shborrow` VALUES ('22', '2', '7', '通过', '2018-01-18 15:27:49', '20');
INSERT INTO `shborrow` VALUES ('23', '2', '7', '通过', '2018-01-18 15:27:57', '19');
INSERT INTO `shborrow` VALUES ('24', '2', '7', '通过', '2018-01-18 15:35:48', '23');
INSERT INTO `shborrow` VALUES ('25', '2', '7', '通过', '2018-01-18 15:35:54', '22');
INSERT INTO `shborrow` VALUES ('26', '2', '7', '通过', '2018-01-18 15:39:57', '24');
INSERT INTO `shborrow` VALUES ('27', '1', '7', '通过', '2018-01-19 10:29:11', '25');
INSERT INTO `shborrow` VALUES ('28', '1', '7', '通过', '2018-01-20 09:35:35', '26');
INSERT INTO `shborrow` VALUES ('29', '1', '7', '通过', '2018-01-22 15:36:32', '27');

-- ----------------------------
-- Table structure for `skb`
-- ----------------------------
DROP TABLE IF EXISTS `skb`;
CREATE TABLE `skb` (
  `skid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `juid` int(11) NOT NULL COMMENT '借款人id',
  `ybx` decimal(15,2) DEFAULT '0.00' COMMENT '应收本息',
  `rbx` decimal(15,2) DEFAULT '0.00' COMMENT '已收本息',
  `ylx` decimal(15,2) DEFAULT '0.00' COMMENT '应收利息',
  `rlx` decimal(15,2) DEFAULT '0.00' COMMENT '已收利息',
  `ybj` decimal(15,2) DEFAULT '0.00' COMMENT '应收本金',
  `rbj` decimal(15,2) DEFAULT '0.00' COMMENT '已收本金',
  `rnum` int(11) DEFAULT NULL COMMENT '已还期数',
  `tnum` int(11) DEFAULT NULL COMMENT '总期数',
  `sktime` datetime DEFAULT NULL COMMENT '收款时间',
  `baid` int(11) NOT NULL COMMENT '借款id',
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`skid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skb
-- ----------------------------
INSERT INTO `skb` VALUES ('8', '5', '6', '235200.00', '235200.00', '25200.00', '25200.00', '210000.00', '210000.00', '1', '1', '2018-01-18 11:00:47', '15', null, null, null, null);
INSERT INTO `skb` VALUES ('9', '8', '9', '4506.60', '0.00', '339.93', '0.00', '4166.67', '0.00', '0', '12', '2018-02-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('10', '8', '9', '4475.70', '0.00', '309.03', '0.00', '4166.67', '0.00', '0', '12', '2018-03-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('11', '8', '9', '4444.79', '0.00', '278.12', '0.00', '4166.67', '0.00', '0', '12', '2018-04-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('12', '8', '9', '4413.89', '0.00', '247.22', '0.00', '4166.67', '0.00', '0', '12', '2018-05-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('13', '8', '9', '4382.99', '0.00', '216.32', '0.00', '4166.67', '0.00', '0', '12', '2018-06-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('14', '8', '9', '4352.09', '0.00', '185.42', '0.00', '4166.67', '0.00', '0', '12', '2018-07-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('15', '8', '9', '4321.18', '0.00', '154.51', '0.00', '4166.67', '0.00', '0', '12', '2018-08-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('16', '8', '9', '4290.28', '0.00', '123.61', '0.00', '4166.67', '0.00', '0', '12', '2018-09-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('17', '8', '9', '4259.38', '0.00', '92.71', '0.00', '4166.67', '0.00', '0', '12', '2018-10-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('18', '8', '9', '4228.48', '0.00', '61.81', '0.00', '4166.67', '0.00', '0', '12', '2018-11-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('19', '8', '9', '4197.57', '0.00', '30.90', '0.00', '4166.67', '0.00', '0', '12', '2018-12-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('20', '8', '9', '4166.67', '0.00', '0.00', '0.00', '4166.67', '0.00', '0', '12', '2019-01-19 10:14:54', '24', null, null, null, null);
INSERT INTO `skb` VALUES ('21', '11', '9', '250.00', '250.00', '250.00', '250.00', '0.00', '0.00', '1', '3', '2018-01-20 09:46:39', '23', null, null, null, null);
INSERT INTO `skb` VALUES ('22', '11', '9', '250.00', '0.00', '250.00', '0.00', '0.00', null, '1', '3', '2018-03-20 09:44:48', '23', null, null, null, null);
INSERT INTO `skb` VALUES ('23', '11', '9', '30250.00', '0.00', '250.00', '0.00', '30000.00', null, '1', '3', '2018-04-20 09:44:48', '23', null, null, null, null);
INSERT INTO `skb` VALUES ('24', '5', '8', '52500.00', '0.00', '2500.00', '0.00', '50000.00', '0.00', '0', '6', '2018-02-21 20:07:03', '20', null, null, null, null);
INSERT INTO `skb` VALUES ('25', '5', '8', '52000.00', '0.00', '2000.00', '0.00', '50000.00', '0.00', '0', '6', '2018-03-21 20:07:03', '20', null, null, null, null);
INSERT INTO `skb` VALUES ('26', '5', '8', '51500.00', '0.00', '1500.00', '0.00', '50000.00', '0.00', '0', '6', '2018-04-21 20:07:03', '20', null, null, null, null);
INSERT INTO `skb` VALUES ('27', '5', '8', '51000.00', '0.00', '1000.00', '0.00', '50000.00', '0.00', '0', '6', '2018-05-21 20:07:03', '20', null, null, null, null);
INSERT INTO `skb` VALUES ('28', '5', '8', '50500.00', '0.00', '500.00', '0.00', '50000.00', '0.00', '0', '6', '2018-06-21 20:07:03', '20', null, null, null, null);
INSERT INTO `skb` VALUES ('29', '5', '8', '50000.00', '0.00', '0.00', '0.00', '50000.00', '0.00', '0', '6', '2018-07-21 20:07:03', '20', null, null, null, null);

-- ----------------------------
-- Table structure for `sway`
-- ----------------------------
DROP TABLE IF EXISTS `sway`;
CREATE TABLE `sway` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `way` varchar(200) NOT NULL COMMENT '还款方式',
  `fw` varchar(200) NOT NULL COMMENT '算法',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sway
-- ----------------------------
INSERT INTO `sway` VALUES ('3', '先息后本', '12', '1');
INSERT INTO `sway` VALUES ('4', '等额本金', '10', '1');
INSERT INTO `sway` VALUES ('5', '等额本息', '15', '1');
INSERT INTO `sway` VALUES ('6', '一次还清', '13', '1');

-- ----------------------------
-- Table structure for `ticket`
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '券名称',
  `type` int(11) NOT NULL,
  `tkmoney` decimal(15,2) NOT NULL,
  `tktime` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES ('1', '推荐奖励券', '3', '5.00', '2019-01-18 00:00:00', '0');
INSERT INTO `ticket` VALUES ('2', '现金优惠券', '0', '10.00', '2019-02-18 00:00:00', '0');
INSERT INTO `ticket` VALUES ('3', '代金优惠券', '1', '5.00', '2019-02-18 00:00:00', '0');

-- ----------------------------
-- Table structure for `tx_check`
-- ----------------------------
DROP TABLE IF EXISTS `tx_check`;
CREATE TABLE `tx_check` (
  `tcid` int(11) NOT NULL AUTO_INCREMENT,
  `txid` int(11) NOT NULL COMMENT '提现id',
  `huid` int(11) NOT NULL COMMENT '审核人id',
  `isok` int(11) NOT NULL DEFAULT '0' COMMENT '是否通过',
  `excuse` varchar(300) DEFAULT NULL COMMENT '审核理由',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tx_check
-- ----------------------------

-- ----------------------------
-- Table structure for `tzb`
-- ----------------------------
DROP TABLE IF EXISTS `tzb`;
CREATE TABLE `tzb` (
  `tzid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `juid` int(11) NOT NULL COMMENT '借款人id',
  `money` decimal(15,2) NOT NULL COMMENT '投资金额',
  `tztime` datetime DEFAULT NULL COMMENT '投资时间',
  `nprofit` float(4,2) DEFAULT NULL COMMENT '利率',
  `cpname` varchar(50) NOT NULL COMMENT '产品名',
  `baid` int(11) NOT NULL COMMENT '借款id',
  `resint1` int(11) DEFAULT NULL,
  `resint2` int(11) DEFAULT NULL,
  `resstr1` varchar(50) DEFAULT NULL,
  `resstr2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tzid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tzb
-- ----------------------------
INSERT INTO `tzb` VALUES ('35', '5', '6', '10000.00', '2018-01-18 10:43:55', '11.00', 'PJ2018BZ0013', '13', '12', '1', null, null);
INSERT INTO `tzb` VALUES ('36', '5', '6', '210000.00', '2018-01-18 11:23:47', '12.00', 'PJ2018BZ0015', '15', '3', '4', null, null);
INSERT INTO `tzb` VALUES ('37', '8', '9', '50000.00', '2018-01-19 10:14:54', '8.90', 'PJ2018BZ0024', '24', '12', '2', null, null);
INSERT INTO `tzb` VALUES ('38', '9', '8', '50000.00', '2018-01-19 11:15:44', '12.00', 'PJ2018BZ0019', '19', '6', '2', null, null);
INSERT INTO `tzb` VALUES ('39', '8', '11', '5000.00', '2018-01-20 09:36:54', '10.00', 'PJ2018BZ0026', '26', '6', '1', null, null);
INSERT INTO `tzb` VALUES ('40', '11', '9', '30000.00', '2018-01-20 09:44:48', '10.00', 'PJ2018BZ0023', '23', '3', '3', null, null);
INSERT INTO `tzb` VALUES ('41', '5', '8', '300000.00', '2018-01-21 20:07:03', '12.00', 'PJ2018BZ0020', '20', '6', '2', null, null);
INSERT INTO `tzb` VALUES ('42', '8', '5', '200000.00', '2018-01-21 20:08:39', '15.00', 'PJ2018BZ0011', '11', '6', '1', null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(36) DEFAULT NULL,
  `upwd` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `tzm` int(11) DEFAULT NULL COMMENT '推荐码',
  `zpwd` varchar(200) DEFAULT NULL COMMENT '支付密码',
  `idtype` varchar(30) DEFAULT NULL COMMENT '证件类型',
  `idno` varchar(50) DEFAULT NULL COMMENT '证件号',
  `email` varchar(100) DEFAULT NULL,
  `rname` varchar(36) DEFAULT NULL COMMENT '真实姓名',
  `tid` int(11) DEFAULT NULL COMMENT '推荐人id',
  `face` varchar(500) DEFAULT NULL COMMENT '头像',
  `sex` int(2) DEFAULT '0' COMMENT '性别',
  `isvip` int(11) DEFAULT '0',
  `resint1` int(11) DEFAULT NULL COMMENT '预留int1',
  `resint2` int(11) DEFAULT NULL COMMENT '预留int2',
  `resstr1` datetime DEFAULT NULL COMMENT '预留String1',
  `resstr2` varchar(50) DEFAULT NULL COMMENT '预留String2',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uk_user` (`phone`) USING BTREE,
  UNIQUE KEY `uk_email` (`email`) USING BTREE,
  UNIQUE KEY `uk_idno1` (`idno`) USING BTREE,
  UNIQUE KEY `uk_tzm` (`tzm`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('5', '张三', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13500000000', null, null, '身份证', '360721198908117616', '1531952273@qq.com', '张三', null, 'static/images/face.jpg', '0', '1', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('6', '李四', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13511111111', null, null, '身份证', '360721198908117619', '1532952273@qq.com', '马冬梅', null, 'static/images/face.jpg', '0', '1', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('7', '13522222222', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13522222222', null, null, '身份证', '362121198911127112', '1521532222@qq.com', '王宁', null, 'static/images/face.jpg', '0', '2', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('8', '王贰', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13533333333', null, null, '身份证', '450923198408222664', null, '邹一佳', null, 'static/images/face.jpg', '0', '1', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('9', '王五', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13544444444', null, null, '身份证', '45102419941204431', '1312@qa.com', '颜景秀', null, 'static/images/face.jpg', '0', '1', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('10', 'ccf', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13566666666', null, null, '身份证', '451024199412044330', '10086@aa.com', '卓靖雄', null, 'static/images/face.jpg', '0', '1', null, null, '2018-01-19 08:40:48', null);
INSERT INTO `t_user` VALUES ('11', '王五', 'wr+H6GPsOw9hqVg1xXC1mQ==', '13555555555', null, null, '身份证', '632726199407251701', null, '王五', null, 'static/uploads/fish.jpg', '2', '1', null, null, '2018-01-21 20:49:20', null);

-- ----------------------------
-- Table structure for `usermoney`
-- ----------------------------
DROP TABLE IF EXISTS `usermoney`;
CREATE TABLE `usermoney` (
  `umid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `zmoney` decimal(15,2) DEFAULT '0.00' COMMENT '总资产',
  `kymoney` decimal(15,2) DEFAULT '0.00' COMMENT '可用余额',
  `symoney` decimal(15,2) DEFAULT '0.00' COMMENT '收益总额',
  `tzmoney` decimal(15,2) DEFAULT '0.00' COMMENT '投资总额',
  `djmoney` decimal(15,2) DEFAULT '0.00' COMMENT '冻结总额',
  `dsmoney` decimal(15,2) DEFAULT '0.00' COMMENT '待收总额',
  `jlmoney` decimal(15,2) DEFAULT '0.00' COMMENT '奖励总额',
  PRIMARY KEY (`umid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermoney
-- ----------------------------
INSERT INTO `usermoney` VALUES ('5', '5', '1246900.00', '939400.00', '32700.00', '510000.00', '0.00', '307500.00', '4200.00');
INSERT INTO `usermoney` VALUES ('6', '6', '74800.00', '74800.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `usermoney` VALUES ('7', '7', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `usermoney` VALUES ('8', '8', '90374224.15', '90063344.00', '10880.15', '250000.00', '50000.00', '260880.15', '1000.00');
INSERT INTO `usermoney` VALUES ('9', '9', '82000.00', '30750.00', '1250.00', '50000.00', '0.00', '51250.00', '1000.00');
INSERT INTO `usermoney` VALUES ('10', '10', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `usermoney` VALUES ('11', '11', '993905.00', '961155.00', '3000.00', '30000.00', '0.00', '32750.00', '900.00');

-- ----------------------------
-- Table structure for `user_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `user_ticket`;
CREATE TABLE `user_ticket` (
  `ukid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `kid` int(11) NOT NULL COMMENT '券id',
  `tktime` datetime NOT NULL COMMENT '领券时间',
  PRIMARY KEY (`ukid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ticket
-- ----------------------------
INSERT INTO `user_ticket` VALUES ('1', '-89999', '1', '2018-01-18 10:11:28');
INSERT INTO `user_ticket` VALUES ('2', '-89995', '1', '2018-01-18 10:14:14');
INSERT INTO `user_ticket` VALUES ('3', '5', '1', '2018-01-20 09:24:34');
INSERT INTO `user_ticket` VALUES ('5', '7', '2', '2018-01-22 15:10:26');

-- ----------------------------
-- Table structure for `ydata`
-- ----------------------------
DROP TABLE IF EXISTS `ydata`;
CREATE TABLE `ydata` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `tmoney` decimal(15,2) NOT NULL COMMENT '交易总额',
  `mmoney` decimal(15,2) NOT NULL COMMENT '月交易总额',
  `tuser` int(11) NOT NULL COMMENT '总用户数',
  `muser` int(11) NOT NULL COMMENT '月注册数',
  `ttzno` int(11) NOT NULL COMMENT '总投资人数',
  `mtzno` int(11) NOT NULL COMMENT '月投资人数',
  `tdkno` int(11) NOT NULL COMMENT '总贷款人数',
  `mdkno` int(11) NOT NULL COMMENT '月贷款人数',
  `tdkbno` int(11) NOT NULL COMMENT '总贷款笔数',
  `mdkbno` int(11) NOT NULL COMMENT '月贷款笔数',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ydata
-- ----------------------------
INSERT INTO `ydata` VALUES ('2', '220000.00', '220000.00', '6', '6', '2', '2', '5', '5', '14', '14', '2018-01-19 08:17:17');
