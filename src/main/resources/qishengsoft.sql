/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : qishengsoft

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2014-08-01 16:47:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bbuy`
-- ----------------------------
DROP TABLE IF EXISTS `bbuy`;
CREATE TABLE `bbuy` (
  `buyid` int(9) NOT NULL AUTO_INCREMENT COMMENT '采购ID',
  `btype` varchar(3) NOT NULL COMMENT '单据类型',
  `buyname` varchar(64) DEFAULT NULL COMMENT '采购名称',
  `buyno` varchar(16) NOT NULL COMMENT '采购编号',
  `buydate` varchar(10) DEFAULT NULL COMMENT '采购日期',
  `currflow` varchar(32) DEFAULT NULL COMMENT '当前流程',
  `maker` varchar(32) DEFAULT NULL COMMENT '制单人',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`buyid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='采购表';

-- ----------------------------
-- Records of bbuy
-- ----------------------------
INSERT INTO `bbuy` VALUES ('2', 'CGD', '采购单名称一', 'CGD-2013-0002', '2013-03-01', '结束', 'ZHOUJD', '2013-03-01 17:03:37', '备注二');
INSERT INTO `bbuy` VALUES ('3', 'JYD', '简易采购单1', 'JYD-2013-0001', '2014-05-01', '结束', 'ZHOUJD', '2013-03-01 17:05:32', '');
INSERT INTO `bbuy` VALUES ('4', 'CGD', '采购单名称三', 'CGD-2013-0003', '2013-03-01', '结束', 'ZHOUJD', '2013-03-02 20:44:21', '备注三');
INSERT INTO `bbuy` VALUES ('5', 'CGD', '采购单2', 'CGD-2014-0001', '2014-07-04', '结束', 'ZHOUJD', '2014-07-04 11:16:49', '');
INSERT INTO `bbuy` VALUES ('6', 'CGD', '采购单3', 'CGD-2014-0002', '2014-07-04', '结束', 'ZHOUJD', '2014-07-04 11:20:29', '');
INSERT INTO `bbuy` VALUES ('7', 'CGD', '采购单4', 'CGD-2014-0003', '2014-06-01', '结束', 'ZHOUJD', '2014-07-04 11:31:38', '');
INSERT INTO `bbuy` VALUES ('8', 'CGD', '2014.07.19小周采购', 'CGD-2014-0004', '2014-07-19', '结束', 'ZHOUJD', '2014-07-19 14:16:29', '');

-- ----------------------------
-- Table structure for `bbuyrow`
-- ----------------------------
DROP TABLE IF EXISTS `bbuyrow`;
CREATE TABLE `bbuyrow` (
  `buyrowid` int(7) NOT NULL AUTO_INCREMENT COMMENT '采购行项ID',
  `buyid` int(7) NOT NULL COMMENT '采购单ID',
  `materialid` int(5) DEFAULT NULL COMMENT '物资ID',
  `materialname` varchar(64) NOT NULL COMMENT '物资名称',
  `unit` int(3) DEFAULT NULL COMMENT '计量单位',
  `price` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '预算单价',
  `num` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '采购数量',
  `sum` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `manuid` int(9) DEFAULT NULL COMMENT '供应商ID',
  `manuname` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `manucontact` varchar(64) DEFAULT NULL COMMENT '联系人',
  `manutel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`buyrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COMMENT='采购行项表';

-- ----------------------------
-- Records of bbuyrow
-- ----------------------------
INSERT INTO `bbuyrow` VALUES ('118', '2', '1', '物资名称一1', '1', '0.22', '1.00', '0.22', '4', '供应商A', '周少华', '11111111', null);
INSERT INTO `bbuyrow` VALUES ('145', '4', '1', '物资名称一1', '1', '0.22', '3.00', '0.66', '4', '供应商A', '周少华', '11111111', '备注3');
INSERT INTO `bbuyrow` VALUES ('146', '4', '4', '物资三', '1', '33.30', '2.00', '66.60', '4', '供应商A', '周少华', '11111111', null);
INSERT INTO `bbuyrow` VALUES ('147', '4', '5', '物资四', '2', '4444.00', '0.00', '0.00', '8', '供应商B', '供应商B联系人', '00000', null);
INSERT INTO `bbuyrow` VALUES ('148', '4', null, '物资五', '3', '3.00', '2.00', '6.00', null, null, null, null, '小卖部采购');
INSERT INTO `bbuyrow` VALUES ('179', '7', '1', '物资A11', '1', '0.22', '433.00', '95.26', '4', '供应商A', '周少华', '11111111', null);
INSERT INTO `bbuyrow` VALUES ('180', '7', '6', '物资A21', '3', '43.20', '22.00', '950.40', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('181', '7', '4', '物资B11', '1', '33.30', '44.00', '1465.20', '4', '供应商A', '周少华', '11111111', null);
INSERT INTO `bbuyrow` VALUES ('182', '7', '5', '物资B12', '2', '4444.00', '2.00', '8888.00', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('183', '6', '1', '物资A11', '1', '0.22', '421.00', '92.62', '4', '供应商A', '周少华', '11111111', null);
INSERT INTO `bbuyrow` VALUES ('184', '6', '6', '物资A21', '3', '43.20', '22.00', '950.40', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('185', '6', '5', '物资B12', '2', '4444.00', '1.00', '4444.00', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('186', '5', '6', '物资A21', '3', '43.20', '22.00', '950.40', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('187', '5', '5', '物资B12', '2', '4444.00', '1.00', '4444.00', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('188', '3', null, '简易采购物品1', '1', '544.00', '3.00', '1632.00', null, null, null, null, null);
INSERT INTO `bbuyrow` VALUES ('189', '3', null, '简易采购物品2', '1', '342.00', '2.00', '684.00', null, null, null, null, null);
INSERT INTO `bbuyrow` VALUES ('190', '3', null, '简易采购物品3', '2', '12.00', '32.00', '384.00', null, null, null, null, null);
INSERT INTO `bbuyrow` VALUES ('207', '8', '5', '物资B12', '2', '44.00', '60.00', '2640.00', '8', '供应商B', '供应商B', '00000', null);
INSERT INTO `bbuyrow` VALUES ('208', '8', '1', '物资A11', '1', '0.22', '2200.00', '484.00', '4', '供应商A', '周少华', '11111111', null);

-- ----------------------------
-- Table structure for `bpay`
-- ----------------------------
DROP TABLE IF EXISTS `bpay`;
CREATE TABLE `bpay` (
  `payid` int(9) NOT NULL AUTO_INCREMENT COMMENT '单据ID',
  `btype` varchar(16) NOT NULL COMMENT '单据类型',
  `maker` varchar(32) DEFAULT NULL COMMENT '制单人',
  `paydate` varchar(10) DEFAULT NULL COMMENT '付款日期/收款日期',
  `relateno` varchar(16) DEFAULT NULL COMMENT '采购单号/销售单号',
  `relatemoney` double(12,2) DEFAULT '0.00' COMMENT '关联金额',
  `currflow` varchar(32) NOT NULL COMMENT '当前流程',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建时间',
  `operatetime` varchar(19) DEFAULT NULL COMMENT '结束时间',
  `operater` varchar(64) DEFAULT NULL COMMENT '操作人ID',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='付款单/收款单';

-- ----------------------------
-- Records of bpay
-- ----------------------------
INSERT INTO `bpay` VALUES ('24', 'SKD', 'ZHOUJD', '2013-03-06', 'XSD-2013-0001', '36.60', '结束', '2013-03-06 19:41:56', null, null, '');
INSERT INTO `bpay` VALUES ('25', 'YFD', 'ZHOUJD', '2013-03-06', 'XSD-2013-0001', '36.60', '结束', '2013-03-06 19:41:56', null, null, '');
INSERT INTO `bpay` VALUES ('30', 'GZD', 'ZHOUJD', '2013-03-07', 'GZD-2013-0001', '5300.34', '结束', '2013-03-11 16:29:47', null, null, '');
INSERT INTO `bpay` VALUES ('31', 'FKD', 'ZHOUJD', '2014-06-01', 'CGD-2014-0003', '11398.86', '结束', '2014-07-12 13:58:07', null, null, '');
INSERT INTO `bpay` VALUES ('32', 'SKD', 'ZHOUJD', '2014-03-12', 'XSD-2014-0006', '8170.00', '结束', '2014-07-13 16:17:30', null, null, '');
INSERT INTO `bpay` VALUES ('33', 'YFD', 'ZHOUJD', '2014-03-12', 'XSD-2014-0006', '8170.00', '结束', '2014-07-13 16:17:30', null, null, '');
INSERT INTO `bpay` VALUES ('34', 'SKD', 'ZHOUJD', '2014-04-02', 'XSD-2014-0005', '10260.00', '结束', '2014-07-13 16:17:35', null, null, '');
INSERT INTO `bpay` VALUES ('35', 'YFD', 'ZHOUJD', '2014-04-02', 'XSD-2014-0005', '10260.00', '结束', '2014-07-13 16:17:35', null, null, '');
INSERT INTO `bpay` VALUES ('36', 'SKD', 'ZHOUJD', '2014-06-12', 'XSD-2014-0004', '8594.60', '结束', '2014-07-13 16:17:40', null, null, '');
INSERT INTO `bpay` VALUES ('37', 'YFD', 'ZHOUJD', '2014-06-12', 'XSD-2014-0004', '8594.60', '结束', '2014-07-13 16:17:40', null, null, '');
INSERT INTO `bpay` VALUES ('38', 'SKD', 'ZHOUJD', '2014-06-02', 'XSD-2014-0003', '9440.80', '结束', '2014-07-13 16:17:47', null, null, '');
INSERT INTO `bpay` VALUES ('39', 'YFD', 'ZHOUJD', '2014-06-02', 'XSD-2014-0003', '9440.80', '结束', '2014-07-13 16:17:47', null, null, '');
INSERT INTO `bpay` VALUES ('40', 'SKD', 'ZHOUJD', '2014-07-01', 'XSD-2014-0002', '24318.80', '结束', '2014-07-13 16:17:52', null, null, '');
INSERT INTO `bpay` VALUES ('41', 'YFD', 'ZHOUJD', '2014-07-01', 'XSD-2014-0002', '24318.80', '结束', '2014-07-13 16:17:52', null, null, '');
INSERT INTO `bpay` VALUES ('42', 'SKD', 'ZHOUJD', '2014-07-13', 'XSD-2014-0001', '12106.60', '结束', '2014-07-13 16:17:58', null, null, '');
INSERT INTO `bpay` VALUES ('43', 'YFD', 'ZHOUJD', '2014-07-13', 'XSD-2014-0001', '12106.60', '结束', '2014-07-13 16:17:58', null, null, '');
INSERT INTO `bpay` VALUES ('44', 'GZD', 'ZHOUJD', '2013-02-28', 'GZD-2013-0002', '7000.30', '结束', '2014-07-14 20:10:23', null, null, '');
INSERT INTO `bpay` VALUES ('45', 'FKD', 'ZHOUJD', '2014-07-04', 'CGD-2014-0002', '5487.02', '结束', '2014-07-14 20:21:22', null, null, '');
INSERT INTO `bpay` VALUES ('46', 'FKD', 'ZHOUJD', '2014-07-04', 'CGD-2014-0001', '5394.40', '结束', '2014-07-14 20:21:28', null, null, '');
INSERT INTO `bpay` VALUES ('47', 'FKD', 'ZHOUJD', '2014-05-01', 'JYD-2013-0001', '4511.26', '结束', '2014-07-14 20:22:30', null, null, '');
INSERT INTO `bpay` VALUES ('48', 'FKD', 'ZHOUJD', '2014-07-19', 'CGD-2014-0004', '48.84', '结束', '2014-07-28 20:49:14', null, null, '');
INSERT INTO `bpay` VALUES ('49', 'SKD', 'ZHOUJD', '2014-07-18', 'XSD-2014-0007', '950.40', '结束', '2014-07-28 20:49:54', null, null, '');
INSERT INTO `bpay` VALUES ('50', 'YFD', 'ZHOUJD', '2014-07-18', 'XSD-2014-0007', '950.40', '结束', '2014-07-28 20:49:54', null, null, '');
INSERT INTO `bpay` VALUES ('51', 'GZD', 'ZHOUJD', '2014-06', 'GZD-20140728-001', '3480.00', '结束', '2014-07-28 21:07:01', null, null, '');
INSERT INTO `bpay` VALUES ('52', 'GZD', 'ZHOUJD', '2014-06', 'GZD-20140728-002', '3248.00', '结束', '2014-07-28 22:38:17', '2014-07-28 21:21:24', null, '');

-- ----------------------------
-- Table structure for `bpayrow`
-- ----------------------------
DROP TABLE IF EXISTS `bpayrow`;
CREATE TABLE `bpayrow` (
  `payrowid` int(9) NOT NULL AUTO_INCREMENT COMMENT '行项ID',
  `payid` int(9) NOT NULL COMMENT '单据ID',
  `bankcardno` varchar(32) DEFAULT NULL COMMENT '银行卡卡号',
  `manuid` int(9) DEFAULT NULL COMMENT '供应商ID',
  `manubankname` varchar(64) DEFAULT NULL COMMENT '供应商开户银行',
  `manubankcardno` varchar(32) DEFAULT NULL COMMENT '供应商银行卡卡号',
  `manuaccountname` varchar(64) DEFAULT NULL COMMENT '供应商账户名称',
  `plansum` double(12,2) DEFAULT '0.00' COMMENT '应付金额',
  `realsum` double(12,2) DEFAULT '0.00' COMMENT '实付金额',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`payrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bpayrow
-- ----------------------------
INSERT INTO `bpayrow` VALUES ('4', '4', '6227001823550093014', '4', '建设银行泉州分行', '1111111111', '周少华', '1111.00', '11111.00', '111111');
INSERT INTO `bpayrow` VALUES ('14', '11', '00000', null, null, null, null, '6.00', '6.00', null);
INSERT INTO `bpayrow` VALUES ('15', '11', '6227001823550093014', '4', '建设银行泉州分行', '1111111111', '周少华', '67.26', '67.26', null);
INSERT INTO `bpayrow` VALUES ('16', '11', '6227001823550093014', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '0.00', '1.00', null);
INSERT INTO `bpayrow` VALUES ('20', '15', '00000', '5', '中国银行泉州分行', '22222222', '刘星', '36.60', '36.60', null);
INSERT INTO `bpayrow` VALUES ('28', '20', '00000', null, null, null, null, '0.00', '30.60', '运费');
INSERT INTO `bpayrow` VALUES ('72', '30', '00000', null, '建设银行南安支行', '11111111', '员工一', '2100.12', '2100.12', null);
INSERT INTO `bpayrow` VALUES ('73', '30', '00000', null, '建设银行南安支行', '22222222', '员工二', '2200.22', '2200.22', null);
INSERT INTO `bpayrow` VALUES ('74', '30', '00000', null, '建设银行南安支行', '33333333', '员工三', '1000.00', '1000.00', null);
INSERT INTO `bpayrow` VALUES ('80', '31', '6227001823550092014', '4', '建设银行泉州分行', '1111111111', '周少华', '1560.46', '1560.46', null);
INSERT INTO `bpayrow` VALUES ('81', '31', '6227001823550092014', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '9838.40', '9838.40', null);
INSERT INTO `bpayrow` VALUES ('96', '42', '622909116836651310', '9', '中国银行泉州分行', '2222222', '客户B', '12106.60', '12106.60', null);
INSERT INTO `bpayrow` VALUES ('97', '43', '622909116836651310', '7', '工商银行泉州分行', '33333333', '林长城', '321.00', '321.00', null);
INSERT INTO `bpayrow` VALUES ('98', '40', '622909116836651310', '5', '中国银行泉州分行', '22222222', '刘星', '24318.80', '24318.80', null);
INSERT INTO `bpayrow` VALUES ('100', '41', '622909116836651310', '10', '建设银行南安支行', '66666666', '物流B', '304.40', '304.40', null);
INSERT INTO `bpayrow` VALUES ('101', '38', '622909116836651310', '5', '中国银行泉州分行', '22222222', '刘星', '9440.80', '9440.80', null);
INSERT INTO `bpayrow` VALUES ('102', '39', '00000', '10', '建设银行南安支行', '66666666', '物流B', '322.00', '322.00', null);
INSERT INTO `bpayrow` VALUES ('103', '36', '00000', '9', null, null, null, '8594.60', '8594.60', null);
INSERT INTO `bpayrow` VALUES ('104', '37', '00000', '7', '工商银行泉州分行', '33333333', '林长城', '543.00', '543.00', null);
INSERT INTO `bpayrow` VALUES ('105', '34', '622909116836651310', '5', '中国银行泉州分行', '22222222', '刘星', '10260.00', '10260.00', null);
INSERT INTO `bpayrow` VALUES ('106', '32', '622909116836651310', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '8170.00', '8170.00', null);
INSERT INTO `bpayrow` VALUES ('107', '24', '00000', '5', '中国银行泉州分行', '22222222', '刘星', '36.60', '36.60', null);
INSERT INTO `bpayrow` VALUES ('108', '35', '00000', '7', '工商银行泉州分行', '33333333', '林长城', '233.00', '233.00', null);
INSERT INTO `bpayrow` VALUES ('109', '33', '00000', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '322.00', '322.00', null);
INSERT INTO `bpayrow` VALUES ('110', '25', '00000', '10', '建设银行南安支行', '66666666', '物流B', '32.00', '32.00', null);
INSERT INTO `bpayrow` VALUES ('121', '44', '622909116836651310', null, '建设银行南安支行', '11111111', '员工一', '3000.10', '3000.10', null);
INSERT INTO `bpayrow` VALUES ('122', '44', '622909116836651310', null, '建设银行南安支行', '22222222', '员工二', '4000.20', '4000.20', null);
INSERT INTO `bpayrow` VALUES ('124', '47', '00000', null, null, null, null, '2700.00', '2700.00', null);
INSERT INTO `bpayrow` VALUES ('125', '46', '622909116836651310', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '5394.40', '5394.40', null);
INSERT INTO `bpayrow` VALUES ('126', '45', '622909116836651310', '4', '建设银行泉州分行', '1111111111', '周少华', '92.62', '92.62', null);
INSERT INTO `bpayrow` VALUES ('127', '45', '622909116836651310', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '5394.40', '5394.40', null);
INSERT INTO `bpayrow` VALUES ('136', '48', '622909116836651310', '4', '建设银行泉州分行', '1111111111', '周少华', '484.00', '484.00', null);
INSERT INTO `bpayrow` VALUES ('137', '48', '622909116836651310', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '2640.00', '2640.00', null);
INSERT INTO `bpayrow` VALUES ('139', '49', '622909116836651310', '5', '中国银行泉州分行', '22222222', '刘星', '22446.00', '22446.00', null);
INSERT INTO `bpayrow` VALUES ('140', '50', '622909116836651310', '7', '工商银行泉州分行', '33333333', '林长城', '465.00', '465.00', null);
INSERT INTO `bpayrow` VALUES ('141', '51', '622909116836651310', null, '建设银行南安支行', '11111111', '员工一', '1590.00', '1590.00', null);
INSERT INTO `bpayrow` VALUES ('142', '51', '622909116836651310', null, '建设银行南安支行', '22222222', '员工二', '1890.00', '1890.00', null);
INSERT INTO `bpayrow` VALUES ('148', '52', '622909116836651310', null, '建设银行南安支行', '11111111', '员工一', '1484.00', '1484.00', null);
INSERT INTO `bpayrow` VALUES ('149', '52', '622909116836651310', null, '建设银行南安支行', '22222222', '员工二', '1764.00', '1764.00', null);

-- ----------------------------
-- Table structure for `breceandpay`
-- ----------------------------
DROP TABLE IF EXISTS `breceandpay`;
CREATE TABLE `breceandpay` (
  `receandpay` int(9) NOT NULL AUTO_INCREMENT COMMENT '其它收支ID',
  `happendate` varchar(10) DEFAULT NULL COMMENT '发生日期',
  `bankcardid` int(9) NOT NULL COMMENT '银行卡ID',
  `receandpaytype` int(1) NOT NULL COMMENT '收支类型',
  `money` double(12,2) NOT NULL COMMENT '金额',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`receandpay`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='其它收支表';

-- ----------------------------
-- Records of breceandpay
-- ----------------------------
INSERT INTO `breceandpay` VALUES ('1', '2013-02-18', '2', '1', '50.50', '今天收入50.5元', '2013-02-18 16:28:40');
INSERT INTO `breceandpay` VALUES ('2', '2013-02-18', '1', '2', '10.50', '钱包支出10.5', '2013-02-18 16:31:01');
INSERT INTO `breceandpay` VALUES ('3', '2013-02-18', '2', '2', '50.50', '支出50.5', '2013-02-18 16:44:32');
INSERT INTO `breceandpay` VALUES ('4', '2013-07-01', '2', '1', '120000.00', '初始资金', '2014-07-12 14:01:11');

-- ----------------------------
-- Table structure for `bsalary`
-- ----------------------------
DROP TABLE IF EXISTS `bsalary`;
CREATE TABLE `bsalary` (
  `salaryid` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `salarytype` int(1) DEFAULT NULL COMMENT '单据类型',
  `salaryname` varchar(64) DEFAULT NULL COMMENT '工资单名称',
  `salaryno` varchar(16) NOT NULL COMMENT '工资编号',
  `salarydate` varchar(10) DEFAULT NULL COMMENT '日期',
  `currflow` varchar(32) DEFAULT NULL COMMENT '当前流程',
  `maker` varchar(32) DEFAULT NULL COMMENT '制单人',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建日期',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`salaryid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsalary
-- ----------------------------
INSERT INTO `bsalary` VALUES ('1', '1', '2013.02工资', 'GZD-2013-0001', '2013-03', '结束', 'ZHOUJD', '2013-03-11 16:04:32', '无');
INSERT INTO `bsalary` VALUES ('2', '3', '2012年终奖', 'GZD-2013-0002', '2013-02', '结束', 'ZHOUJD', '2013-03-11 16:41:27', '');
INSERT INTO `bsalary` VALUES ('7', '1', '2014年06月份工资单', 'GZD-20140728-001', '2014-06', '结束', 'ZHOUJD', '2014-07-28 21:06:51', '');
INSERT INTO `bsalary` VALUES ('8', '1', '2014年06月份工资单', 'GZD-20140728-002', '2014-06', '结束', 'ZHOUJD', '2014-07-28 22:38:07', '');

-- ----------------------------
-- Table structure for `bsalaryrow`
-- ----------------------------
DROP TABLE IF EXISTS `bsalaryrow`;
CREATE TABLE `bsalaryrow` (
  `salaryrowid` int(9) NOT NULL AUTO_INCREMENT COMMENT '行项ID',
  `salaryid` int(9) DEFAULT NULL COMMENT '主表ID',
  `staffid` int(9) DEFAULT NULL COMMENT '员工',
  `planmoney` double(12,2) DEFAULT NULL COMMENT '应付款',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`salaryrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsalaryrow
-- ----------------------------
INSERT INTO `bsalaryrow` VALUES ('28', '1', '2', '2100.12', '员工一工资');
INSERT INTO `bsalaryrow` VALUES ('29', '1', '3', '2200.22', '员工二工资');
INSERT INTO `bsalaryrow` VALUES ('30', '1', '4', '1000.00', '员工三工资');
INSERT INTO `bsalaryrow` VALUES ('40', '2', '2', '3000.10', null);
INSERT INTO `bsalaryrow` VALUES ('41', '2', '3', '4000.20', null);
INSERT INTO `bsalaryrow` VALUES ('52', '5', '2', '0.00', null);
INSERT INTO `bsalaryrow` VALUES ('53', '5', '3', '63.00', null);
INSERT INTO `bsalaryrow` VALUES ('68', '7', '2', '1590.00', null);
INSERT INTO `bsalaryrow` VALUES ('69', '7', '3', '1890.00', null);
INSERT INTO `bsalaryrow` VALUES ('72', '8', '2', '1484.00', null);
INSERT INTO `bsalaryrow` VALUES ('73', '8', '3', '1764.00', null);

-- ----------------------------
-- Table structure for `bsell`
-- ----------------------------
DROP TABLE IF EXISTS `bsell`;
CREATE TABLE `bsell` (
  `sellid` int(7) NOT NULL AUTO_INCREMENT COMMENT '销售单ID',
  `sellno` varchar(16) NOT NULL COMMENT '销售单编号',
  `selldate` varchar(10) DEFAULT NULL COMMENT '销售日期',
  `manuid` int(9) NOT NULL COMMENT '客户ID',
  `currflow` varchar(32) DEFAULT NULL COMMENT '当前流程',
  `maker` varchar(32) DEFAULT NULL COMMENT '制单人',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`sellid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='销售表';

-- ----------------------------
-- Records of bsell
-- ----------------------------
INSERT INTO `bsell` VALUES ('2', 'XSD-2013-0001', '2013-03-06', '5', '结束', 'ZHOUJD', '2013-03-06 17:32:44', '备注');
INSERT INTO `bsell` VALUES ('3', 'XSD-2014-0001', '2014-07-13', '9', '结束', 'ZHOUJD', '2014-07-13 16:13:58', '');
INSERT INTO `bsell` VALUES ('4', 'XSD-2014-0002', '2014-07-01', '5', '结束', 'ZHOUJD', '2014-07-13 16:14:35', '');
INSERT INTO `bsell` VALUES ('5', 'XSD-2014-0003', '2014-06-02', '5', '结束', 'ZHOUJD', '2014-07-13 16:15:17', '');
INSERT INTO `bsell` VALUES ('6', 'XSD-2014-0004', '2014-06-12', '9', '结束', 'ZHOUJD', '2014-07-13 16:16:21', '');
INSERT INTO `bsell` VALUES ('7', 'XSD-2014-0005', '2014-04-02', '5', '结束', 'ZHOUJD', '2014-07-13 16:16:52', '');
INSERT INTO `bsell` VALUES ('8', 'XSD-2014-0006', '2014-03-12', '5', '结束', 'ZHOUJD', '2014-07-13 16:17:13', '');
INSERT INTO `bsell` VALUES ('10', 'XSD-2014-0007', '2014-07-18', '5', '结束', 'ZHOUJD', '2014-07-18 19:08:31', '');

-- ----------------------------
-- Table structure for `bsellrow`
-- ----------------------------
DROP TABLE IF EXISTS `bsellrow`;
CREATE TABLE `bsellrow` (
  `sellrowid` int(7) NOT NULL AUTO_INCREMENT COMMENT '销售行项ID',
  `sellid` int(7) NOT NULL COMMENT '销售单ID',
  `productid` int(5) DEFAULT NULL COMMENT '产品编码',
  `productname` varchar(64) NOT NULL COMMENT '产品名称',
  `unit` int(3) DEFAULT NULL COMMENT '计量单位',
  `planprice` double(12,2) DEFAULT '0.00' COMMENT '预算单价',
  `realprice` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '实际单价',
  `num` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '销售数量',
  `realsum` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '实际总价',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`sellrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='销售行项表';

-- ----------------------------
-- Records of bsellrow
-- ----------------------------
INSERT INTO `bsellrow` VALUES ('18', '2', '1', '产品1', '2', '12.20', '12.20', '1.00', '12.20', null);
INSERT INTO `bsellrow` VALUES ('19', '2', '1', '产品1', '2', '12.20', '12.20', '2.00', '24.40', null);
INSERT INTO `bsellrow` VALUES ('33', '8', '2', '产品2', '1', '190.00', '190.00', '43.00', '8170.00', null);
INSERT INTO `bsellrow` VALUES ('34', '7', '2', '产品2', '1', '190.00', '190.00', '54.00', '10260.00', null);
INSERT INTO `bsellrow` VALUES ('35', '6', '2', '产品2', '1', '190.00', '190.00', '21.00', '3990.00', null);
INSERT INTO `bsellrow` VALUES ('36', '6', '3', '产品3', '1', '200.20', '200.20', '23.00', '4604.60', null);
INSERT INTO `bsellrow` VALUES ('37', '5', '1', '产品1', '2', '120.00', '120.00', '53.00', '6360.00', null);
INSERT INTO `bsellrow` VALUES ('38', '5', '2', '产品2', '1', '190.00', '190.00', '12.00', '2280.00', null);
INSERT INTO `bsellrow` VALUES ('39', '5', '3', '产品3', '1', '200.20', '200.20', '4.00', '800.80', null);
INSERT INTO `bsellrow` VALUES ('40', '4', '2', '产品2', '1', '190.00', '190.00', '33.00', '6270.00', null);
INSERT INTO `bsellrow` VALUES ('41', '4', '3', '产品3', '1', '200.20', '200.20', '44.00', '8808.80', null);
INSERT INTO `bsellrow` VALUES ('42', '4', '1', '产品1', '2', '120.00', '120.00', '77.00', '9240.00', null);
INSERT INTO `bsellrow` VALUES ('43', '3', '1', '产品1', '2', '120.00', '120.00', '11.00', '1320.00', null);
INSERT INTO `bsellrow` VALUES ('44', '3', '2', '产品2', '1', '190.00', '190.00', '22.00', '4180.00', null);
INSERT INTO `bsellrow` VALUES ('45', '3', '3', '产品3', '1', '200.20', '200.20', '33.00', '6606.60', null);
INSERT INTO `bsellrow` VALUES ('123', '10', '2', '产品2', '1', '190.00', '190.00', '60.00', '11400.00', null);
INSERT INTO `bsellrow` VALUES ('124', '10', '3', '产品3', '1', '200.20', '200.20', '30.00', '6006.00', null);
INSERT INTO `bsellrow` VALUES ('125', '10', '1', '产品1', '2', '120.00', '120.00', '42.00', '5040.00', null);

-- ----------------------------
-- Table structure for `btransferaccount`
-- ----------------------------
DROP TABLE IF EXISTS `btransferaccount`;
CREATE TABLE `btransferaccount` (
  `transferaccountid` int(9) NOT NULL AUTO_INCREMENT COMMENT '内部转账ID',
  `bankcardid` int(9) DEFAULT NULL COMMENT '银行卡ID',
  `transferbankcardid` int(9) DEFAULT NULL COMMENT '转入账号',
  `transfermoney` double(12,2) DEFAULT NULL COMMENT '转入金额',
  `transferremark` varchar(512) DEFAULT NULL COMMENT '转入备注',
  `createtime` varchar(19) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`transferaccountid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='内部转账表';

-- ----------------------------
-- Records of btransferaccount
-- ----------------------------
INSERT INTO `btransferaccount` VALUES ('6', '2', '1', '20.50', '转入钱包', '2013-02-17 16:19:44');
INSERT INTO `btransferaccount` VALUES ('7', '2', '1', '21.50', null, '2013-02-17 17:00:39');
INSERT INTO `btransferaccount` VALUES ('8', '2', '1', '8.00', '转入钱包', '2013-02-17 17:02:56');

-- ----------------------------
-- Table structure for `bwork`
-- ----------------------------
DROP TABLE IF EXISTS `bwork`;
CREATE TABLE `bwork` (
  `workid` int(9) NOT NULL AUTO_INCREMENT,
  `workmonth` varchar(7) NOT NULL COMMENT '月份',
  `staffid` int(9) DEFAULT NULL COMMENT '员工ID',
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bwork
-- ----------------------------
INSERT INTO `bwork` VALUES ('1', '2014-07', '2');
INSERT INTO `bwork` VALUES ('2', '2014-07', '3');
INSERT INTO `bwork` VALUES ('3', '2014-06', '2');
INSERT INTO `bwork` VALUES ('4', '2014-06', '3');
INSERT INTO `bwork` VALUES ('8', '2014-08', '2');
INSERT INTO `bwork` VALUES ('9', '2014-08', '3');

-- ----------------------------
-- Table structure for `bworkrow`
-- ----------------------------
DROP TABLE IF EXISTS `bworkrow`;
CREATE TABLE `bworkrow` (
  `workrowid` int(9) NOT NULL AUTO_INCREMENT COMMENT '考勤从表ID',
  `workid` int(9) NOT NULL COMMENT '考勤主表ID',
  `workdate` varchar(10) NOT NULL COMMENT '考勤日期',
  `starttime` varchar(19) DEFAULT NULL COMMENT '上班时间',
  `endtime` varchar(19) DEFAULT NULL COMMENT '下班时间',
  `workstatus` int(2) DEFAULT NULL COMMENT '考勤状态',
  `salary` double(12,2) DEFAULT NULL COMMENT '增减工资',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`workrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=75790 DEFAULT CHARSET=utf8 COMMENT='考勤表';

-- ----------------------------
-- Records of bworkrow
-- ----------------------------
INSERT INTO `bworkrow` VALUES ('74988', '2', '2014-07-01', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74989', '2', '2014-07-02', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74990', '2', '2014-07-03', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74991', '2', '2014-07-04', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74992', '2', '2014-07-05', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74993', '2', '2014-07-06', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74994', '2', '2014-07-07', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74995', '2', '2014-07-08', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74996', '2', '2014-07-09', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74997', '2', '2014-07-10', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74998', '2', '2014-07-11', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('74999', '2', '2014-07-12', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75000', '2', '2014-07-13', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75001', '2', '2014-07-14', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75002', '2', '2014-07-15', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75003', '2', '2014-07-16', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75004', '2', '2014-07-17', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75005', '2', '2014-07-18', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75006', '2', '2014-07-19', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75007', '2', '2014-07-20', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75008', '2', '2014-07-21', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75009', '2', '2014-07-22', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75010', '2', '2014-07-23', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75011', '2', '2014-07-24', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75012', '2', '2014-07-25', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75013', '2', '2014-07-26', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75014', '2', '2014-07-27', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75015', '2', '2014-07-28', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75016', '2', '2014-07-29', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75017', '2', '2014-07-30', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75018', '2', '2014-07-31', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75141', '3', '2014-06-01', null, null, null, '0.00', null);
INSERT INTO `bworkrow` VALUES ('75142', '3', '2014-06-02', null, null, null, '0.00', null);
INSERT INTO `bworkrow` VALUES ('75143', '3', '2014-06-03', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75144', '3', '2014-06-04', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75145', '3', '2014-06-05', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75146', '3', '2014-06-06', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75147', '3', '2014-06-07', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75148', '3', '2014-06-08', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75149', '3', '2014-06-09', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75150', '3', '2014-06-10', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75151', '3', '2014-06-11', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75152', '3', '2014-06-12', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75153', '3', '2014-06-13', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75154', '3', '2014-06-14', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75155', '3', '2014-06-15', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75156', '3', '2014-06-16', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75157', '3', '2014-06-17', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75158', '3', '2014-06-18', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75159', '3', '2014-06-19', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75160', '3', '2014-06-20', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75161', '3', '2014-06-21', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75162', '3', '2014-06-22', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75163', '3', '2014-06-23', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75164', '3', '2014-06-24', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75165', '3', '2014-06-25', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75166', '3', '2014-06-26', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75167', '3', '2014-06-27', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75168', '3', '2014-06-28', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75169', '3', '2014-06-29', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75170', '3', '2014-06-30', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75171', '4', '2014-06-01', null, null, null, '0.00', null);
INSERT INTO `bworkrow` VALUES ('75172', '4', '2014-06-02', null, null, null, '0.00', null);
INSERT INTO `bworkrow` VALUES ('75173', '4', '2014-06-03', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75174', '4', '2014-06-04', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75175', '4', '2014-06-05', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75176', '4', '2014-06-06', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75177', '4', '2014-06-07', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75178', '4', '2014-06-08', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75179', '4', '2014-06-09', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75180', '4', '2014-06-10', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75181', '4', '2014-06-11', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75182', '4', '2014-06-12', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75183', '4', '2014-06-13', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75184', '4', '2014-06-14', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75185', '4', '2014-06-15', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75186', '4', '2014-06-16', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75187', '4', '2014-06-17', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75188', '4', '2014-06-18', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75189', '4', '2014-06-19', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75190', '4', '2014-06-20', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75191', '4', '2014-06-21', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75192', '4', '2014-06-22', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75193', '4', '2014-06-23', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75194', '4', '2014-06-24', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75195', '4', '2014-06-25', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75196', '4', '2014-06-26', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75197', '4', '2014-06-27', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75198', '4', '2014-06-28', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75199', '4', '2014-06-29', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75200', '4', '2014-06-30', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75201', '1', '2014-07-01', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75202', '1', '2014-07-02', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75203', '1', '2014-07-03', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75204', '1', '2014-07-04', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75205', '1', '2014-07-05', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75206', '1', '2014-07-06', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75207', '1', '2014-07-07', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75208', '1', '2014-07-08', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75209', '1', '2014-07-09', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75210', '1', '2014-07-10', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75211', '1', '2014-07-11', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75212', '1', '2014-07-12', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75213', '1', '2014-07-13', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75214', '1', '2014-07-14', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75215', '1', '2014-07-15', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75216', '1', '2014-07-16', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75217', '1', '2014-07-17', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75218', '1', '2014-07-18', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75219', '1', '2014-07-19', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75220', '1', '2014-07-20', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75221', '1', '2014-07-21', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75222', '1', '2014-07-22', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75223', '1', '2014-07-23', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75224', '1', '2014-07-24', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75225', '1', '2014-07-25', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75226', '1', '2014-07-26', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75227', '1', '2014-07-27', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75228', '1', '2014-07-28', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75229', '1', '2014-07-29', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75230', '1', '2014-07-30', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75231', '1', '2014-07-31', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75325', '9', '2014-08-01', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75326', '9', '2014-08-02', null, null, null, null, null);
INSERT INTO `bworkrow` VALUES ('75327', '9', '2014-08-03', null, null, null, null, null);
INSERT INTO `bworkrow` VALUES ('75328', '9', '2014-08-04', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75329', '9', '2014-08-05', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75330', '9', '2014-08-06', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75331', '9', '2014-08-07', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75332', '9', '2014-08-08', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75333', '9', '2014-08-09', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75334', '9', '2014-08-10', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75335', '9', '2014-08-11', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75336', '9', '2014-08-12', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75337', '9', '2014-08-13', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75338', '9', '2014-08-14', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75339', '9', '2014-08-15', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75340', '9', '2014-08-16', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75341', '9', '2014-08-17', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75342', '9', '2014-08-18', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75343', '9', '2014-08-19', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75344', '9', '2014-08-20', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75345', '9', '2014-08-21', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75346', '9', '2014-08-22', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75347', '9', '2014-08-23', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75348', '9', '2014-08-24', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75349', '9', '2014-08-25', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75350', '9', '2014-08-26', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75351', '9', '2014-08-27', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75352', '9', '2014-08-28', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75353', '9', '2014-08-29', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75354', '9', '2014-08-30', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75355', '9', '2014-08-31', null, null, null, '63.00', null);
INSERT INTO `bworkrow` VALUES ('75759', '8', '2014-08-01', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75760', '8', '2014-08-02', null, null, null, null, null);
INSERT INTO `bworkrow` VALUES ('75761', '8', '2014-08-03', null, null, null, null, null);
INSERT INTO `bworkrow` VALUES ('75762', '8', '2014-08-04', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75763', '8', '2014-08-05', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75764', '8', '2014-08-06', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75765', '8', '2014-08-07', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75766', '8', '2014-08-08', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75767', '8', '2014-08-09', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75768', '8', '2014-08-10', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75769', '8', '2014-08-11', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75770', '8', '2014-08-12', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75771', '8', '2014-08-13', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75772', '8', '2014-08-14', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75773', '8', '2014-08-15', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75774', '8', '2014-08-16', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75775', '8', '2014-08-17', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75776', '8', '2014-08-18', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75777', '8', '2014-08-19', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75778', '8', '2014-08-20', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75779', '8', '2014-08-21', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75780', '8', '2014-08-22', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75781', '8', '2014-08-23', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75782', '8', '2014-08-24', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75783', '8', '2014-08-25', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75784', '8', '2014-08-26', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75785', '8', '2014-08-27', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75786', '8', '2014-08-28', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75787', '8', '2014-08-29', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75788', '8', '2014-08-30', null, null, null, '53.00', null);
INSERT INTO `bworkrow` VALUES ('75789', '8', '2014-08-31', null, null, null, '53.00', null);

-- ----------------------------
-- Table structure for `cbanktype`
-- ----------------------------
DROP TABLE IF EXISTS `cbanktype`;
CREATE TABLE `cbanktype` (
  `banktypeid` int(2) NOT NULL COMMENT '银行编号',
  `banktypename` varchar(32) DEFAULT NULL COMMENT '银行名称',
  PRIMARY KEY (`banktypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行表';

-- ----------------------------
-- Records of cbanktype
-- ----------------------------
INSERT INTO `cbanktype` VALUES ('1', '中国工商银行');
INSERT INTO `cbanktype` VALUES ('2', '中国建设银行');
INSERT INTO `cbanktype` VALUES ('3', '中国银行');
INSERT INTO `cbanktype` VALUES ('4', '中国农业银行');
INSERT INTO `cbanktype` VALUES ('5', '招商银行');
INSERT INTO `cbanktype` VALUES ('6', '兴业银行');
INSERT INTO `cbanktype` VALUES ('99', '其它');

-- ----------------------------
-- Table structure for `cmanutype`
-- ----------------------------
DROP TABLE IF EXISTS `cmanutype`;
CREATE TABLE `cmanutype` (
  `manutypeid` int(3) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `manutypename` varchar(64) NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`manutypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='供应商类别表';

-- ----------------------------
-- Records of cmanutype
-- ----------------------------
INSERT INTO `cmanutype` VALUES ('1', '供应商');
INSERT INTO `cmanutype` VALUES ('2', '客户');
INSERT INTO `cmanutype` VALUES ('3', '物流');

-- ----------------------------
-- Table structure for `creceandpaytype`
-- ----------------------------
DROP TABLE IF EXISTS `creceandpaytype`;
CREATE TABLE `creceandpaytype` (
  `receandpaytypeid` int(1) NOT NULL COMMENT '收支类型ID',
  `receandpaytypename` varchar(32) DEFAULT NULL COMMENT '收支类型名称',
  PRIMARY KEY (`receandpaytypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收支类型表';

-- ----------------------------
-- Records of creceandpaytype
-- ----------------------------
INSERT INTO `creceandpaytype` VALUES ('1', '收入');
INSERT INTO `creceandpaytype` VALUES ('2', '支出');

-- ----------------------------
-- Table structure for `csalarytype`
-- ----------------------------
DROP TABLE IF EXISTS `csalarytype`;
CREATE TABLE `csalarytype` (
  `salarytype` int(1) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `salarytypename` varchar(32) DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`salarytype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工工资类型表';

-- ----------------------------
-- Records of csalarytype
-- ----------------------------
INSERT INTO `csalarytype` VALUES ('1', '工资');
INSERT INTO `csalarytype` VALUES ('2', '过节费');
INSERT INTO `csalarytype` VALUES ('3', '年终奖');

-- ----------------------------
-- Table structure for `cstaffstatus`
-- ----------------------------
DROP TABLE IF EXISTS `cstaffstatus`;
CREATE TABLE `cstaffstatus` (
  `staffstatusid` int(1) NOT NULL COMMENT '员工状态ID',
  `staffstatusname` varchar(16) DEFAULT NULL COMMENT '员工状态名称',
  PRIMARY KEY (`staffstatusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工状态表';

-- ----------------------------
-- Records of cstaffstatus
-- ----------------------------
INSERT INTO `cstaffstatus` VALUES ('1', '在职');
INSERT INTO `cstaffstatus` VALUES ('2', '离职');

-- ----------------------------
-- Table structure for `cstafftype`
-- ----------------------------
DROP TABLE IF EXISTS `cstafftype`;
CREATE TABLE `cstafftype` (
  `stafftypeid` int(1) NOT NULL COMMENT '员工类别ID',
  `stafftypename` varchar(16) DEFAULT NULL COMMENT '员工类别名称',
  PRIMARY KEY (`stafftypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工类别表';

-- ----------------------------
-- Records of cstafftype
-- ----------------------------
INSERT INTO `cstafftype` VALUES ('1', '正式员工');
INSERT INTO `cstafftype` VALUES ('2', '临时员工');

-- ----------------------------
-- Table structure for `cstatus`
-- ----------------------------
DROP TABLE IF EXISTS `cstatus`;
CREATE TABLE `cstatus` (
  `statusid` int(1) NOT NULL COMMENT '状态编号',
  `statusname` varchar(8) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态表';

-- ----------------------------
-- Records of cstatus
-- ----------------------------
INSERT INTO `cstatus` VALUES ('0', '禁用');
INSERT INTO `cstatus` VALUES ('1', '可用');

-- ----------------------------
-- Table structure for `cunit`
-- ----------------------------
DROP TABLE IF EXISTS `cunit`;
CREATE TABLE `cunit` (
  `unitid` int(3) NOT NULL AUTO_INCREMENT COMMENT '计量单位ID',
  `unitname` varchar(32) NOT NULL COMMENT '计量单位名称',
  `priority` int(2) DEFAULT '99' COMMENT '优先级（数值越小，优先级越高）',
  PRIMARY KEY (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='计量单位表';

-- ----------------------------
-- Records of cunit
-- ----------------------------
INSERT INTO `cunit` VALUES ('1', '只', '1');
INSERT INTO `cunit` VALUES ('2', '台', '2');
INSERT INTO `cunit` VALUES ('3', '个', '3');
INSERT INTO `cunit` VALUES ('4', '箱', '4');
INSERT INTO `cunit` VALUES ('5', '件', '5');

-- ----------------------------
-- Table structure for `cworkstatus`
-- ----------------------------
DROP TABLE IF EXISTS `cworkstatus`;
CREATE TABLE `cworkstatus` (
  `workstatus` int(9) NOT NULL AUTO_INCREMENT COMMENT '考勤状态ID',
  `workstatusname` varchar(16) DEFAULT NULL COMMENT '考勤状态名称',
  PRIMARY KEY (`workstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cworkstatus
-- ----------------------------
INSERT INTO `cworkstatus` VALUES ('1', '正常');
INSERT INTO `cworkstatus` VALUES ('2', '迟到');
INSERT INTO `cworkstatus` VALUES ('3', '早退');
INSERT INTO `cworkstatus` VALUES ('4', '旷工');
INSERT INTO `cworkstatus` VALUES ('5', '请假');
INSERT INTO `cworkstatus` VALUES ('6', '放假');

-- ----------------------------
-- Table structure for `cyesorno`
-- ----------------------------
DROP TABLE IF EXISTS `cyesorno`;
CREATE TABLE `cyesorno` (
  `code` int(1) NOT NULL COMMENT '代码',
  `name` varchar(32) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='是、否';

-- ----------------------------
-- Records of cyesorno
-- ----------------------------
INSERT INTO `cyesorno` VALUES ('0', '否');
INSERT INTO `cyesorno` VALUES ('1', '是');

-- ----------------------------
-- Table structure for `sbankcard`
-- ----------------------------
DROP TABLE IF EXISTS `sbankcard`;
CREATE TABLE `sbankcard` (
  `bankcardid` int(9) NOT NULL AUTO_INCREMENT COMMENT '银行卡ID',
  `bankcardno` varchar(32) NOT NULL COMMENT '银行卡卡号',
  `bankname` varchar(64) DEFAULT NULL COMMENT '开户银行名称',
  `banktype` int(2) DEFAULT NULL COMMENT '银行类型',
  `accountname` varchar(64) DEFAULT NULL COMMENT '账户名称',
  `money` double(12,2) DEFAULT NULL COMMENT '金额',
  `status` int(1) DEFAULT NULL COMMENT '是否可用',
  `remark` varchar(512) NOT NULL COMMENT '备注',
  PRIMARY KEY (`bankcardid`,`bankcardno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='银行卡管理表';

-- ----------------------------
-- Records of sbankcard
-- ----------------------------
INSERT INTO `sbankcard` VALUES ('1', '00000', '无', '99', '钱包', '9579.54', '1', '此为钱包');
INSERT INTO `sbankcard` VALUES ('2', '6227001823550092014', '建设银行福州支行', '2', '林珊珊', '108732.88', '1', '');
INSERT INTO `sbankcard` VALUES ('3', '622909116836651310', '兴业银行福州支行', '6', '王建辉', '58118.08', '1', '');

-- ----------------------------
-- Table structure for `sbtype`
-- ----------------------------
DROP TABLE IF EXISTS `sbtype`;
CREATE TABLE `sbtype` (
  `btype` varchar(16) NOT NULL COMMENT '单据类型',
  `btypename` varchar(16) DEFAULT NULL COMMENT '单据类型名称',
  `relatetabname` varchar(64) DEFAULT NULL COMMENT '关联表',
  PRIMARY KEY (`btype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单据类型表';

-- ----------------------------
-- Records of sbtype
-- ----------------------------
INSERT INTO `sbtype` VALUES ('CGD', '采购单', 'bbuy,bbuyrow');
INSERT INTO `sbtype` VALUES ('CPD', '产品单', 'sproduct,sproductrow');
INSERT INTO `sbtype` VALUES ('FKD', '付款单', 'bpay,bpayrow');
INSERT INTO `sbtype` VALUES ('GZD', '工资单', 'bsalary,bsalaryrow');
INSERT INTO `sbtype` VALUES ('JYD', '简易采购单', 'bbuy,bbuyrow');
INSERT INTO `sbtype` VALUES ('SKD', '收款单', 'bpay,bpayrow');
INSERT INTO `sbtype` VALUES ('WZD', '物资单', 'smaterial,smaterialrow');
INSERT INTO `sbtype` VALUES ('XSD', '销售单', 'bsell,bsellrow');
INSERT INTO `sbtype` VALUES ('YFD', '运费单', 'bpay,bpayrow');

-- ----------------------------
-- Table structure for `scolumns`
-- ----------------------------
DROP TABLE IF EXISTS `scolumns`;
CREATE TABLE `scolumns` (
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_DEFAULT` longtext,
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scolumns
-- ----------------------------
INSERT INTO `scolumns` VALUES ('CHARACTER_SETS', 'CHARACTER_SET_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('CHARACTER_SETS', 'DESCRIPTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('CHARACTER_SETS', 'MAXLEN', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'COLLATION_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'CHARACTER_SET_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'IS_DEFAULT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'IS_COMPILED', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLLATIONS', 'SORTLEN', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLUMN_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'ORDINAL_POSITION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLUMN_DEFAULT', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'IS_NULLABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'DATA_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'CHARACTER_OCTET_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'NUMERIC_PRECISION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'NUMERIC_SCALE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'CHARACTER_SET_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLLATION_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLUMN_TYPE', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLUMN_KEY', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'EXTRA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'PRIVILEGES', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMNS', 'COLUMN_COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'GRANTEE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'COLUMN_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('COLUMN_PRIVILEGES', 'IS_GRANTABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'ENGINE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'SUPPORT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'TRANSACTIONS', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'XA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ENGINES', 'SAVEPOINTS', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'DEFINER', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'TIME_ZONE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_BODY', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_DEFINITION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EXECUTE_AT', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'INTERVAL_VALUE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'INTERVAL_FIELD', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'SQL_MODE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'STARTS', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'ENDS', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'STATUS', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'ON_COMPLETION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'CREATED', '0000-00-00 00:00:00', 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'LAST_ALTERED', '0000-00-00 00:00:00', 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'LAST_EXECUTED', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'EVENT_COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'ORIGINATOR', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'CHARACTER_SET_CLIENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'COLLATION_CONNECTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('EVENTS', 'DATABASE_COLLATION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'FILE_ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'FILE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'FILE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TABLESPACE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TABLE_SCHEMA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TABLE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'LOGFILE_GROUP_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'LOGFILE_GROUP_NUMBER', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'ENGINE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'FULLTEXT_KEYS', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'DELETED_ROWS', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'UPDATE_COUNT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'FREE_EXTENTS', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TOTAL_EXTENTS', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'EXTENT_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'INITIAL_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'MAXIMUM_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'AUTOEXTEND_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'CREATION_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'LAST_UPDATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'LAST_ACCESS_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'RECOVER_TIME', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TRANSACTION_COUNTER', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'VERSION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'ROW_FORMAT', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'TABLE_ROWS', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'AVG_ROW_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'DATA_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'MAX_DATA_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'INDEX_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'DATA_FREE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'CREATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'UPDATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'CHECK_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('FILES', 'CHECKSUM', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('FILES', 'STATUS', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('FILES', 'EXTRA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('GLOBAL_STATUS', 'VARIABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('GLOBAL_STATUS', 'VARIABLE_VALUE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('GLOBAL_VARIABLES', 'VARIABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('GLOBAL_VARIABLES', 'VARIABLE_VALUE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'COLUMN_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'ORDINAL_POSITION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'SPECIFIC_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'SPECIFIC_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'SPECIFIC_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'ORDINAL_POSITION', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'PARAMETER_MODE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'PARAMETER_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'DATA_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'CHARACTER_MAXIMUM_LENGTH', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'CHARACTER_OCTET_LENGTH', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'NUMERIC_PRECISION', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'NUMERIC_SCALE', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'CHARACTER_SET_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'COLLATION_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'DTD_IDENTIFIER', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PARAMETERS', 'ROUTINE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'SUBPARTITION_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_ORDINAL_POSITION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_METHOD', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'SUBPARTITION_METHOD', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_EXPRESSION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'SUBPARTITION_EXPRESSION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_DESCRIPTION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'TABLE_ROWS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'AVG_ROW_LENGTH', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'DATA_LENGTH', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'MAX_DATA_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'INDEX_LENGTH', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'DATA_FREE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'CREATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'UPDATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'CHECK_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'CHECKSUM', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'PARTITION_COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'NODEGROUP', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PARTITIONS', 'TABLESPACE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_VERSION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_STATUS', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_TYPE_VERSION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_LIBRARY', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_LIBRARY_VERSION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_AUTHOR', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_DESCRIPTION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'PLUGIN_LICENSE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PLUGINS', 'LOAD_OPTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'USER', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'HOST', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'DB', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'COMMAND', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'TIME', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'STATE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROCESSLIST', 'INFO', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'QUERY_ID', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'SEQ', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'STATE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'DURATION', '0.000000', 'decimal', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'CPU_USER', null, 'decimal', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'CPU_SYSTEM', null, 'decimal', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'CONTEXT_VOLUNTARY', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'CONTEXT_INVOLUNTARY', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'BLOCK_OPS_IN', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'BLOCK_OPS_OUT', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'MESSAGES_SENT', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'MESSAGES_RECEIVED', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'PAGE_FAULTS_MAJOR', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'PAGE_FAULTS_MINOR', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'SWAPS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'SOURCE_FUNCTION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'SOURCE_FILE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('PROFILING', 'SOURCE_LINE', null, 'int', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'SPECIFIC_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'DATA_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'CHARACTER_MAXIMUM_LENGTH', null, 'int', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'CHARACTER_OCTET_LENGTH', null, 'int', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'NUMERIC_PRECISION', null, 'int', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'NUMERIC_SCALE', null, 'int', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'CHARACTER_SET_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'COLLATION_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'DTD_IDENTIFIER', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_BODY', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_DEFINITION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'EXTERNAL_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'EXTERNAL_LANGUAGE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'PARAMETER_STYLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'IS_DETERMINISTIC', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'SQL_DATA_ACCESS', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'SQL_PATH', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'SECURITY_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'CREATED', '0000-00-00 00:00:00', 'datetime', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'LAST_ALTERED', '0000-00-00 00:00:00', 'datetime', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'SQL_MODE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'ROUTINE_COMMENT', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'DEFINER', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'CHARACTER_SET_CLIENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'COLLATION_CONNECTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('ROUTINES', 'DATABASE_COLLATION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMATA', 'CATALOG_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMATA', 'SCHEMA_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMATA', 'DEFAULT_COLLATION_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMATA', 'SQL_PATH', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMA_PRIVILEGES', 'GRANTEE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMA_PRIVILEGES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SCHEMA_PRIVILEGES', 'IS_GRANTABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SESSION_STATUS', 'VARIABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SESSION_STATUS', 'VARIABLE_VALUE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('SESSION_VARIABLES', 'VARIABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('SESSION_VARIABLES', 'VARIABLE_VALUE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'NON_UNIQUE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'INDEX_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'INDEX_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'SEQ_IN_INDEX', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'COLUMN_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'COLLATION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'CARDINALITY', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'SUB_PART', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'PACKED', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'NULLABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'INDEX_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'COMMENT', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('STATISTICS', 'INDEX_COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'ENGINE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'VERSION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'ROW_FORMAT', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_ROWS', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'AVG_ROW_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'DATA_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'MAX_DATA_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'INDEX_LENGTH', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'DATA_FREE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'AUTO_INCREMENT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'CREATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'UPDATE_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'CHECK_TIME', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_COLLATION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'CHECKSUM', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'CREATE_OPTIONS', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLES', 'TABLE_COMMENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'TABLESPACE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'ENGINE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'TABLESPACE_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'LOGFILE_GROUP_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'EXTENT_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'AUTOEXTEND_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'MAXIMUM_SIZE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'NODEGROUP_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('TABLESPACES', 'TABLESPACE_COMMENT', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'GRANTEE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TABLE_PRIVILEGES', 'IS_GRANTABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'TRIGGER_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'TRIGGER_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'TRIGGER_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'EVENT_MANIPULATION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'EVENT_OBJECT_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'EVENT_OBJECT_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'EVENT_OBJECT_TABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_ORDER', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_CONDITION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_STATEMENT', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_ORIENTATION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_TIMING', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'CREATED', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'SQL_MODE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'DEFINER', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'CHARACTER_SET_CLIENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'COLLATION_CONNECTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('TRIGGERS', 'DATABASE_COLLATION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('USER_PRIVILEGES', 'GRANTEE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('USER_PRIVILEGES', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('USER_PRIVILEGES', 'PRIVILEGE_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('USER_PRIVILEGES', 'IS_GRANTABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'TABLE_CATALOG', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'TABLE_SCHEMA', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'TABLE_NAME', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'VIEW_DEFINITION', null, 'longtext', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'CHECK_OPTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'IS_UPDATABLE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'DEFINER', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'SECURITY_TYPE', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'CHARACTER_SET_CLIENT', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('VIEWS', 'COLLATION_CONNECTION', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'POOL_ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'BLOCK_ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'SPACE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'PAGE_NUMBER', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'PAGE_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'FLUSH_TYPE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'FIX_COUNT', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'IS_HASHED', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'NEWEST_MODIFICATION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'OLDEST_MODIFICATION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'ACCESS_TIME', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'TABLE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'INDEX_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'NUMBER_RECORDS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'DATA_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'COMPRESSED_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'PAGE_STATE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'IO_FIX', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'IS_OLD', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE', 'FREE_PAGE_CLOCK', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_state', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_started', '0000-00-00 00:00:00', 'datetime', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_requested_lock_id', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_wait_started', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_weight', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_mysql_thread_id', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_query', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_operation_state', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_tables_in_use', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_tables_locked', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_lock_structs', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_lock_memory_bytes', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_rows_locked', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_rows_modified', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_concurrency_tickets', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_isolation_level', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_unique_checks', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_foreign_key_checks', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_last_foreign_key_error', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_adaptive_hash_latched', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_TRX', 'trx_adaptive_hash_timeout', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'POOL_ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'POOL_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'FREE_BUFFERS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'DATABASE_PAGES', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'OLD_DATABASE_PAGES', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'MODIFIED_DATABASE_PAGES', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PENDING_DECOMPRESS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PENDING_READS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LRU', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LIST', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_NOT_MADE_YOUNG', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_NOT_YOUNG_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_CREATED', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_WRITTEN', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_READ_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_CREATE_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'PAGES_WRITTEN_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_GET', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'HIT_RATE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'YOUNG_MAKE_PER_THOUSAND_GETS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NOT_YOUNG_MAKE_PER_THOUSAND_GETS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ_AHEAD', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'NUMBER_READ_AHEAD_EVICTED', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_EVICTED_RATE', '0', 'double', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'LRU_IO_TOTAL', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'LRU_IO_CURRENT', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_TOTAL', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_CURRENT', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCK_WAITS', 'requesting_trx_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCK_WAITS', 'requested_lock_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCK_WAITS', 'blocking_trx_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCK_WAITS', 'blocking_lock_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'page_size', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'buffer_pool_instance', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'pages_used', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'pages_free', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'relocation_ops', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM', 'relocation_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'page_size', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'compress_ops', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'compress_ops_ok', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'compress_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'uncompress_ops', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP', 'uncompress_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_trx_id', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_mode', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_type', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_table', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_index', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_space', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_page', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_rec', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_LOCKS', 'lock_data', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'page_size', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'buffer_pool_instance', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'pages_used', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'pages_free', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'relocation_ops', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMPMEM_RESET', 'relocation_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'page_size', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'compress_ops', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'compress_ops_ok', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'compress_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'uncompress_ops', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_CMP_RESET', 'uncompress_time', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'POOL_ID', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'LRU_POSITION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'SPACE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'PAGE_NUMBER', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'PAGE_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'FLUSH_TYPE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'FIX_COUNT', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'IS_HASHED', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'NEWEST_MODIFICATION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'OLDEST_MODIFICATION', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'ACCESS_TIME', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'TABLE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'INDEX_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'NUMBER_RECORDS', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'DATA_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'COMPRESSED_SIZE', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'COMPRESSED', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'IO_FIX', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'IS_OLD', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('INNODB_BUFFER_PAGE_LRU', 'FREE_PAGE_CLOCK', '0', 'bigint', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Table_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Column_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Timestamp', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('columns_priv', 'Column_priv', '', 'set', '');
INSERT INTO `scolumns` VALUES ('db', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('db', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('db', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('db', 'Select_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Insert_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Update_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Delete_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Create_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Drop_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Grant_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'References_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Index_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Alter_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Create_tmp_table_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Lock_tables_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Create_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Show_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Create_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Alter_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Execute_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Event_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('db', 'Trigger_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('event', 'db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'body', null, 'longblob', '');
INSERT INTO `scolumns` VALUES ('event', 'definer', '', 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'execute_at', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('event', 'interval_value', null, 'int', '');
INSERT INTO `scolumns` VALUES ('event', 'interval_field', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('event', 'created', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('event', 'modified', '0000-00-00 00:00:00', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('event', 'last_executed', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('event', 'starts', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('event', 'ends', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('event', 'status', 'ENABLED', 'enum', '');
INSERT INTO `scolumns` VALUES ('event', 'on_completion', 'DROP', 'enum', '');
INSERT INTO `scolumns` VALUES ('event', 'sql_mode', '', 'set', '');
INSERT INTO `scolumns` VALUES ('event', 'comment', '', 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'originator', null, 'int', '');
INSERT INTO `scolumns` VALUES ('event', 'time_zone', 'SYSTEM', 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'character_set_client', null, 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'collation_connection', null, 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'db_collation', null, 'char', '');
INSERT INTO `scolumns` VALUES ('event', 'body_utf8', null, 'longblob', '');
INSERT INTO `scolumns` VALUES ('func', 'name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('func', 'ret', '0', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('func', 'dl', '', 'char', '');
INSERT INTO `scolumns` VALUES ('func', 'type', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('general_log', 'event_time', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('general_log', 'user_host', null, 'mediumtext', '');
INSERT INTO `scolumns` VALUES ('general_log', 'thread_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('general_log', 'server_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('general_log', 'command_type', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('general_log', 'argument', null, 'mediumtext', '');
INSERT INTO `scolumns` VALUES ('help_category', 'help_category_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('help_category', 'name', null, 'char', '');
INSERT INTO `scolumns` VALUES ('help_category', 'parent_category_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('help_category', 'url', null, 'char', '');
INSERT INTO `scolumns` VALUES ('help_keyword', 'help_keyword_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('help_keyword', 'name', null, 'char', '');
INSERT INTO `scolumns` VALUES ('help_relation', 'help_topic_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('help_relation', 'help_keyword_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'help_topic_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'name', null, 'char', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'help_category_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'description', null, 'text', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'example', null, 'text', '');
INSERT INTO `scolumns` VALUES ('help_topic', 'url', null, 'char', '');
INSERT INTO `scolumns` VALUES ('host', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('host', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('host', 'Select_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Insert_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Update_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Delete_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Create_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Drop_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Grant_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'References_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Index_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Alter_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Create_tmp_table_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Lock_tables_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Create_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Show_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Create_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Alter_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Execute_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('host', 'Trigger_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'Position', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'File', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'epoch', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'inserts', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'updates', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'deletes', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('ndb_binlog_index', 'schemaops', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('plugin', 'name', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('plugin', 'dl', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('proc', 'db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'type', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('proc', 'specific_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'language', 'SQL', 'enum', '');
INSERT INTO `scolumns` VALUES ('proc', 'sql_data_access', 'CONTAINS_SQL', 'enum', '');
INSERT INTO `scolumns` VALUES ('proc', 'is_deterministic', 'NO', 'enum', '');
INSERT INTO `scolumns` VALUES ('proc', 'security_type', 'DEFINER', 'enum', '');
INSERT INTO `scolumns` VALUES ('proc', 'param_list', null, 'blob', '');
INSERT INTO `scolumns` VALUES ('proc', 'returns', null, 'longblob', '');
INSERT INTO `scolumns` VALUES ('proc', 'body', null, 'longblob', '');
INSERT INTO `scolumns` VALUES ('proc', 'definer', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'created', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('proc', 'modified', '0000-00-00 00:00:00', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('proc', 'sql_mode', '', 'set', '');
INSERT INTO `scolumns` VALUES ('proc', 'comment', null, 'text', '');
INSERT INTO `scolumns` VALUES ('proc', 'character_set_client', null, 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'collation_connection', null, 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'db_collation', null, 'char', '');
INSERT INTO `scolumns` VALUES ('proc', 'body_utf8', null, 'longblob', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Routine_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Routine_type', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Grantor', '', 'char', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Proc_priv', '', 'set', '');
INSERT INTO `scolumns` VALUES ('procs_priv', 'Timestamp', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'Proxied_host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'Proxied_user', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'With_grant', '0', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'Grantor', '', 'char', '');
INSERT INTO `scolumns` VALUES ('proxies_priv', 'Timestamp', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('servers', 'Server_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Username', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Password', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Port', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('servers', 'Socket', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Wrapper', '', 'char', '');
INSERT INTO `scolumns` VALUES ('servers', 'Owner', '', 'char', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'start_time', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'user_host', null, 'mediumtext', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'query_time', null, 'time', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'lock_time', null, 'time', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'rows_sent', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'rows_examined', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'db', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'last_insert_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'insert_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'server_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slow_log', 'sql_text', null, 'mediumtext', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Db', '', 'char', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Table_name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Grantor', '', 'char', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Timestamp', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Table_priv', '', 'set', '');
INSERT INTO `scolumns` VALUES ('tables_priv', 'Column_priv', '', 'set', '');
INSERT INTO `scolumns` VALUES ('time_zone', 'Time_zone_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone', 'Use_leap_seconds', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('time_zone_leap_second', 'Transition_time', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('time_zone_leap_second', 'Correction', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_name', 'Name', null, 'char', '');
INSERT INTO `scolumns` VALUES ('time_zone_name', 'Time_zone_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition', 'Time_zone_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition', 'Transition_time', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition', 'Transition_type_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition_type', 'Time_zone_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition_type', 'Transition_type_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition_type', 'Offset', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition_type', 'Is_DST', '0', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('time_zone_transition_type', 'Abbreviation', '', 'char', '');
INSERT INTO `scolumns` VALUES ('user', 'Host', '', 'char', '');
INSERT INTO `scolumns` VALUES ('user', 'User', '', 'char', '');
INSERT INTO `scolumns` VALUES ('user', 'Password', '', 'char', '');
INSERT INTO `scolumns` VALUES ('user', 'Select_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Insert_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Update_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Delete_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Drop_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Reload_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Shutdown_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Process_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'File_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Grant_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'References_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Index_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Alter_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Show_db_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Super_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_tmp_table_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Lock_tables_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Execute_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Repl_slave_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Repl_client_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Show_view_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Alter_routine_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_user_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Event_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Trigger_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'Create_tablespace_priv', 'N', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'ssl_type', '', 'enum', '');
INSERT INTO `scolumns` VALUES ('user', 'ssl_cipher', null, 'blob', '');
INSERT INTO `scolumns` VALUES ('user', 'x509_issuer', null, 'blob', '');
INSERT INTO `scolumns` VALUES ('user', 'x509_subject', null, 'blob', '');
INSERT INTO `scolumns` VALUES ('user', 'max_questions', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('user', 'max_updates', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('user', 'max_connections', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('user', 'max_user_connections', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('user', 'plugin', '', 'char', '');
INSERT INTO `scolumns` VALUES ('user', 'authentication_string', null, 'text', '');
INSERT INTO `scolumns` VALUES ('cond_instances', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('cond_instances', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'SOURCE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'TIMER_START', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'TIMER_END', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'SPINS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'OBJECT_SCHEMA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'OBJECT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'OBJECT_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'NESTING_EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'OPERATION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'NUMBER_OF_BYTES', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_current', 'FLAGS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'SOURCE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'TIMER_START', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'TIMER_END', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'SPINS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'OBJECT_SCHEMA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'OBJECT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'OBJECT_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'NESTING_EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'OPERATION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'NUMBER_OF_BYTES', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history', 'FLAGS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'SOURCE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'TIMER_START', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'TIMER_END', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'SPINS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'OBJECT_SCHEMA', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'OBJECT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'OBJECT_TYPE', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'NESTING_EVENT_ID', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'OPERATION', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'NUMBER_OF_BYTES', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_history_long', 'FLAGS', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'COUNT_STAR', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'SUM_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'MIN_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'AVG_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_instance', 'MAX_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'COUNT_STAR', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'SUM_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'MIN_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'AVG_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_by_thread_by_event_name', 'MAX_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'COUNT_STAR', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'SUM_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'MIN_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'AVG_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('events_waits_summary_global_by_event_name', 'MAX_TIMER_WAIT', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_instances', 'FILE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('file_instances', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('file_instances', 'OPEN_COUNT', null, 'int', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_event_name', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_event_name', 'COUNT_READ', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_event_name', 'COUNT_WRITE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_event_name', 'SUM_NUMBER_OF_BYTES_READ', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_event_name', 'SUM_NUMBER_OF_BYTES_WRITE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'FILE_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'EVENT_NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'COUNT_READ', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'COUNT_WRITE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'SUM_NUMBER_OF_BYTES_READ', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('file_summary_by_instance', 'SUM_NUMBER_OF_BYTES_WRITE', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('mutex_instances', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('mutex_instances', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('mutex_instances', 'LOCKED_BY_THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('performance_timers', 'TIMER_NAME', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('performance_timers', 'TIMER_FREQUENCY', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('performance_timers', 'TIMER_RESOLUTION', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('performance_timers', 'TIMER_OVERHEAD', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('rwlock_instances', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('rwlock_instances', 'OBJECT_INSTANCE_BEGIN', null, 'bigint', '');
INSERT INTO `scolumns` VALUES ('rwlock_instances', 'WRITE_LOCKED_BY_THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('rwlock_instances', 'READ_LOCKED_BY_COUNT', null, 'int', '');
INSERT INTO `scolumns` VALUES ('setup_consumers', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('setup_consumers', 'ENABLED', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('setup_instruments', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('setup_instruments', 'ENABLED', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('setup_instruments', 'TIMED', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('setup_timers', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('setup_timers', 'TIMER_NAME', null, 'enum', '');
INSERT INTO `scolumns` VALUES ('threads', 'THREAD_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('threads', 'PROCESSLIST_ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('threads', 'NAME', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('bbuy', 'buyid', null, 'int', '采购ID');
INSERT INTO `scolumns` VALUES ('bbuy', 'btype', null, 'varchar', '单据类型');
INSERT INTO `scolumns` VALUES ('bbuy', 'buyname', null, 'varchar', '采购名称');
INSERT INTO `scolumns` VALUES ('bbuy', 'buyno', null, 'varchar', '采购编号');
INSERT INTO `scolumns` VALUES ('bbuy', 'buydate', null, 'varchar', '采购日期');
INSERT INTO `scolumns` VALUES ('bbuy', 'currflow', null, 'varchar', '当前流程');
INSERT INTO `scolumns` VALUES ('bbuy', 'maker', null, 'varchar', '制单人');
INSERT INTO `scolumns` VALUES ('bbuy', 'createtime', null, 'varchar', '创建时间');
INSERT INTO `scolumns` VALUES ('bbuy', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'buyrowid', null, 'int', '采购行项ID');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'buyid', null, 'int', '采购单ID');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'materialid', null, 'int', '物资ID');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'materialname', null, 'varchar', '物资名称');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'unit', null, 'int', '计量单位');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'price', '0.00', 'double', '预算单价');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'num', '0.00', 'double', '采购数量');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'sum', '0.00', 'double', '总价');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'manuid', null, 'int', '供应商ID');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'manuname', null, 'varchar', '供应商名称');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'manucontact', null, 'varchar', '联系人');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'manutel', null, 'varchar', '联系电话');
INSERT INTO `scolumns` VALUES ('bbuyrow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bpay', 'payid', null, 'int', '单据ID');
INSERT INTO `scolumns` VALUES ('bpay', 'btype', null, 'varchar', '单据类型');
INSERT INTO `scolumns` VALUES ('bpay', 'maker', null, 'varchar', '制单人');
INSERT INTO `scolumns` VALUES ('bpay', 'paydate', null, 'varchar', '付款日期/收款日期');
INSERT INTO `scolumns` VALUES ('bpay', 'relateno', null, 'varchar', '采购单号/销售单号');
INSERT INTO `scolumns` VALUES ('bpay', 'relatemoney', '0.00', 'double', '关联金额');
INSERT INTO `scolumns` VALUES ('bpay', 'currflow', null, 'varchar', '当前流程');
INSERT INTO `scolumns` VALUES ('bpay', 'createtime', null, 'varchar', '创建时间');
INSERT INTO `scolumns` VALUES ('bpay', 'operatetime', null, 'varchar', '结束时间');
INSERT INTO `scolumns` VALUES ('bpay', 'operater', null, 'varchar', '操作人ID');
INSERT INTO `scolumns` VALUES ('bpay', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bpayrow', 'payrowid', null, 'int', '行项ID');
INSERT INTO `scolumns` VALUES ('bpayrow', 'payid', null, 'int', '单据ID');
INSERT INTO `scolumns` VALUES ('bpayrow', 'bankcardno', null, 'varchar', '银行卡卡号');
INSERT INTO `scolumns` VALUES ('bpayrow', 'manuid', null, 'int', '供应商ID');
INSERT INTO `scolumns` VALUES ('bpayrow', 'manubankname', null, 'varchar', '供应商开户银行');
INSERT INTO `scolumns` VALUES ('bpayrow', 'manubankcardno', null, 'varchar', '供应商银行卡卡号');
INSERT INTO `scolumns` VALUES ('bpayrow', 'manuaccountname', null, 'varchar', '供应商账户名称');
INSERT INTO `scolumns` VALUES ('bpayrow', 'plansum', '0.00', 'double', '应付金额');
INSERT INTO `scolumns` VALUES ('bpayrow', 'realsum', '0.00', 'double', '实付金额');
INSERT INTO `scolumns` VALUES ('bpayrow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('breceandpay', 'receandpay', null, 'int', '其它收支ID');
INSERT INTO `scolumns` VALUES ('breceandpay', 'happendate', null, 'varchar', '发生日期');
INSERT INTO `scolumns` VALUES ('breceandpay', 'bankcardid', null, 'int', '银行卡ID');
INSERT INTO `scolumns` VALUES ('breceandpay', 'receandpaytype', null, 'int', '收支类型');
INSERT INTO `scolumns` VALUES ('breceandpay', 'money', null, 'double', '金额');
INSERT INTO `scolumns` VALUES ('breceandpay', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('breceandpay', 'createtime', null, 'varchar', '创建时间');
INSERT INTO `scolumns` VALUES ('bsalary', 'salaryid', null, 'int', 'ID');
INSERT INTO `scolumns` VALUES ('bsalary', 'salarytype', null, 'int', '单据类型');
INSERT INTO `scolumns` VALUES ('bsalary', 'salaryname', null, 'varchar', '工资单名称');
INSERT INTO `scolumns` VALUES ('bsalary', 'salaryno', null, 'varchar', '工资编号');
INSERT INTO `scolumns` VALUES ('bsalary', 'salarydate', null, 'varchar', '日期');
INSERT INTO `scolumns` VALUES ('bsalary', 'currflow', null, 'varchar', '当前流程');
INSERT INTO `scolumns` VALUES ('bsalary', 'maker', null, 'varchar', '制单人');
INSERT INTO `scolumns` VALUES ('bsalary', 'createtime', null, 'varchar', '创建日期');
INSERT INTO `scolumns` VALUES ('bsalary', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bsalaryrow', 'salaryrowid', null, 'int', '行项ID');
INSERT INTO `scolumns` VALUES ('bsalaryrow', 'salaryid', null, 'int', '主表ID');
INSERT INTO `scolumns` VALUES ('bsalaryrow', 'staffid', null, 'int', '员工');
INSERT INTO `scolumns` VALUES ('bsalaryrow', 'planmoney', null, 'double', '应付款');
INSERT INTO `scolumns` VALUES ('bsalaryrow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bsell', 'sellid', null, 'int', '销售单ID');
INSERT INTO `scolumns` VALUES ('bsell', 'sellno', null, 'varchar', '销售单编号');
INSERT INTO `scolumns` VALUES ('bsell', 'selldate', null, 'varchar', '销售日期');
INSERT INTO `scolumns` VALUES ('bsell', 'manuid', null, 'int', '客户ID');
INSERT INTO `scolumns` VALUES ('bsell', 'currflow', null, 'varchar', '当前流程');
INSERT INTO `scolumns` VALUES ('bsell', 'maker', null, 'varchar', '制单人');
INSERT INTO `scolumns` VALUES ('bsell', 'createtime', null, 'varchar', '创建时间');
INSERT INTO `scolumns` VALUES ('bsell', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('bsellrow', 'sellrowid', null, 'int', '销售行项ID');
INSERT INTO `scolumns` VALUES ('bsellrow', 'sellid', null, 'int', '销售单ID');
INSERT INTO `scolumns` VALUES ('bsellrow', 'productid', null, 'int', '产品编码');
INSERT INTO `scolumns` VALUES ('bsellrow', 'productname', null, 'varchar', '产品名称');
INSERT INTO `scolumns` VALUES ('bsellrow', 'unit', null, 'int', '计量单位');
INSERT INTO `scolumns` VALUES ('bsellrow', 'planprice', '0.00', 'double', '预算单价');
INSERT INTO `scolumns` VALUES ('bsellrow', 'realprice', '0.00', 'double', '实际单价');
INSERT INTO `scolumns` VALUES ('bsellrow', 'num', '0.00', 'double', '销售数量');
INSERT INTO `scolumns` VALUES ('bsellrow', 'realsum', '0.00', 'double', '实际总价');
INSERT INTO `scolumns` VALUES ('bsellrow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'transferaccountid', null, 'int', '内部转账ID');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'bankcardid', null, 'int', '银行卡ID');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'transferbankcardid', null, 'int', '转入账号');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'transfermoney', null, 'double', '转入金额');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'transferremark', null, 'varchar', '转入备注');
INSERT INTO `scolumns` VALUES ('btransferaccount', 'createtime', null, 'varchar', '创建时间');
INSERT INTO `scolumns` VALUES ('bwork', 'workid', null, 'int', '');
INSERT INTO `scolumns` VALUES ('bwork', 'workmonth', null, 'varchar', '月份');
INSERT INTO `scolumns` VALUES ('bwork', 'staffid', null, 'int', '员工ID');
INSERT INTO `scolumns` VALUES ('bworkrow', 'workrowid', null, 'int', '考勤从表ID');
INSERT INTO `scolumns` VALUES ('bworkrow', 'workid', null, 'int', '考勤主表ID');
INSERT INTO `scolumns` VALUES ('bworkrow', 'workdate', null, 'varchar', '考勤日期');
INSERT INTO `scolumns` VALUES ('bworkrow', 'starttime', null, 'varchar', '上班时间');
INSERT INTO `scolumns` VALUES ('bworkrow', 'endtime', null, 'varchar', '下班时间');
INSERT INTO `scolumns` VALUES ('bworkrow', 'workstatus', null, 'int', '考勤状态');
INSERT INTO `scolumns` VALUES ('bworkrow', 'salary', null, 'double', '增减工资');
INSERT INTO `scolumns` VALUES ('bworkrow', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('cbanktype', 'banktypeid', null, 'int', '银行编号');
INSERT INTO `scolumns` VALUES ('cbanktype', 'banktypename', null, 'varchar', '银行名称');
INSERT INTO `scolumns` VALUES ('cmanutype', 'manutypeid', null, 'int', '类别ID');
INSERT INTO `scolumns` VALUES ('cmanutype', 'manutypename', null, 'varchar', '类别名称');
INSERT INTO `scolumns` VALUES ('creceandpaytype', 'receandpaytypeid', null, 'int', '收支类型ID');
INSERT INTO `scolumns` VALUES ('creceandpaytype', 'receandpaytypename', null, 'varchar', '收支类型名称');
INSERT INTO `scolumns` VALUES ('csalarytype', 'salarytype', null, 'int', '类型编号');
INSERT INTO `scolumns` VALUES ('csalarytype', 'salarytypename', null, 'varchar', '类型名称');
INSERT INTO `scolumns` VALUES ('cstaffstatus', 'staffstatusid', null, 'int', '员工状态ID');
INSERT INTO `scolumns` VALUES ('cstaffstatus', 'staffstatusname', null, 'varchar', '员工状态名称');
INSERT INTO `scolumns` VALUES ('cstafftype', 'stafftypeid', null, 'int', '员工类别ID');
INSERT INTO `scolumns` VALUES ('cstafftype', 'stafftypename', null, 'varchar', '员工类别名称');
INSERT INTO `scolumns` VALUES ('cstatus', 'statusid', null, 'int', '状态编号');
INSERT INTO `scolumns` VALUES ('cstatus', 'statusname', null, 'varchar', '状态名称');
INSERT INTO `scolumns` VALUES ('cunit', 'unitid', null, 'int', '计量单位ID');
INSERT INTO `scolumns` VALUES ('cunit', 'unitname', null, 'varchar', '计量单位名称');
INSERT INTO `scolumns` VALUES ('cunit', 'priority', '99', 'int', '优先级（数值越小，优先级越高）');
INSERT INTO `scolumns` VALUES ('cworkstatus', 'workstatus', null, 'int', '考勤状态ID');
INSERT INTO `scolumns` VALUES ('cworkstatus', 'workstatusname', null, 'varchar', '考勤状态名称');
INSERT INTO `scolumns` VALUES ('cyesorno', 'code', null, 'int', '代码');
INSERT INTO `scolumns` VALUES ('cyesorno', 'name', null, 'varchar', '名称');
INSERT INTO `scolumns` VALUES ('sbankcard', 'bankcardid', null, 'int', '银行卡ID');
INSERT INTO `scolumns` VALUES ('sbankcard', 'bankcardno', null, 'varchar', '银行卡卡号');
INSERT INTO `scolumns` VALUES ('sbankcard', 'bankname', null, 'varchar', '开户银行名称');
INSERT INTO `scolumns` VALUES ('sbankcard', 'banktype', null, 'int', '银行类型');
INSERT INTO `scolumns` VALUES ('sbankcard', 'accountname', null, 'varchar', '账户名称');
INSERT INTO `scolumns` VALUES ('sbankcard', 'money', null, 'double', '金额');
INSERT INTO `scolumns` VALUES ('sbankcard', 'status', null, 'int', '是否可用');
INSERT INTO `scolumns` VALUES ('sbankcard', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('sbtype', 'btype', null, 'varchar', '单据类型');
INSERT INTO `scolumns` VALUES ('sbtype', 'btypename', null, 'varchar', '单据类型名称');
INSERT INTO `scolumns` VALUES ('sbtype', 'relatetabname', null, 'varchar', '关联表');
INSERT INTO `scolumns` VALUES ('scompany', 'companyid', null, 'int', '公司编号');
INSERT INTO `scolumns` VALUES ('scompany', 'companyname', null, 'varchar', '公司名称');
INSERT INTO `scolumns` VALUES ('scompany', 'contact', null, 'varchar', '联系人');
INSERT INTO `scolumns` VALUES ('scompany', 'address', null, 'varchar', '地址');
INSERT INTO `scolumns` VALUES ('scompany', 'fax', null, 'varchar', '传真');
INSERT INTO `scolumns` VALUES ('scompany', 'tel', null, 'varchar', '联系电话');
INSERT INTO `scolumns` VALUES ('scompany', 'zip', null, 'varchar', '邮政编码');
INSERT INTO `scolumns` VALUES ('scompany', 'email', null, 'varchar', '电子邮箱');
INSERT INTO `scolumns` VALUES ('scompany', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('sflow', 'flowid', null, 'int', '');
INSERT INTO `scolumns` VALUES ('sflow', 'flowname', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('sflow', 'btype', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('sflow', 'priority', null, 'int', '');
INSERT INTO `scolumns` VALUES ('slog', 'logid', null, 'int', '日志ID');
INSERT INTO `scolumns` VALUES ('slog', 'logtype', null, 'varchar', '操作类型');
INSERT INTO `scolumns` VALUES ('slog', 'operater', null, 'varchar', '操作人ID');
INSERT INTO `scolumns` VALUES ('slog', 'operatetime', null, 'varchar', '操作时间');
INSERT INTO `scolumns` VALUES ('slog', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('smanu', 'manuid', null, 'int', '供应商ID');
INSERT INTO `scolumns` VALUES ('smanu', 'manuname', null, 'varchar', '供应商名称');
INSERT INTO `scolumns` VALUES ('smanu', 'manutypeid', null, 'int', '供应商类别');
INSERT INTO `scolumns` VALUES ('smanu', 'statusid', null, 'int', '供应商状态');
INSERT INTO `scolumns` VALUES ('smanu', 'createdate', null, 'varchar', '创建日期');
INSERT INTO `scolumns` VALUES ('smanu', 'manucontact', null, 'varchar', '联系人');
INSERT INTO `scolumns` VALUES ('smanu', 'manutel', null, 'varchar', '联系电话');
INSERT INTO `scolumns` VALUES ('smanu', 'manuemail', null, 'varchar', 'EMAIL');
INSERT INTO `scolumns` VALUES ('smanu', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('smanurow', 'manurowid', null, 'int', '供应商账号ID');
INSERT INTO `scolumns` VALUES ('smanurow', 'manuid', null, 'int', '供应商ID');
INSERT INTO `scolumns` VALUES ('smanurow', 'bankrow', null, 'varchar', '开户银行');
INSERT INTO `scolumns` VALUES ('smanurow', 'accountnorow', null, 'varchar', '公司银行账号');
INSERT INTO `scolumns` VALUES ('smanurow', 'accountnamerow', null, 'varchar', '帐户名称');
INSERT INTO `scolumns` VALUES ('smanurow', 'priorityrow', null, 'int', '优先级');
INSERT INTO `scolumns` VALUES ('smanurow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('smaterial', 'materialid', null, 'int', '物资ID');
INSERT INTO `scolumns` VALUES ('smaterial', 'materialno', null, 'varchar', '物资编码');
INSERT INTO `scolumns` VALUES ('smaterial', 'materialname', null, 'varchar', '物资名称');
INSERT INTO `scolumns` VALUES ('smaterial', 'materialtype', null, 'int', '物资类型');
INSERT INTO `scolumns` VALUES ('smaterial', 'unit', null, 'int', '计量单位');
INSERT INTO `scolumns` VALUES ('smaterial', 'price', null, 'double', '单价');
INSERT INTO `scolumns` VALUES ('smaterial', 'manuid', null, 'int', '供应商');
INSERT INTO `scolumns` VALUES ('smaterial', 'createdate', null, 'varchar', '新增日期');
INSERT INTO `scolumns` VALUES ('smaterial', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'materialtype', null, 'int', '物资类型主键');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'materialtypeno', null, 'varchar', '物资类型编码');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'materialtypename', null, 'varchar', '物资类型名称');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'priority', null, 'int', '优先级');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'parent', null, 'varchar', '父级编号');
INSERT INTO `scolumns` VALUES ('smaterialtype', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('smodule', 'moduleid', null, 'int', '模块ID');
INSERT INTO `scolumns` VALUES ('smodule', 'modulename', null, 'varchar', '模块名称');
INSERT INTO `scolumns` VALUES ('smodule', 'description', null, 'varchar', '描述');
INSERT INTO `scolumns` VALUES ('smodule', 'priority', '99', 'int', '优先级（数值越小，优先级越高）');
INSERT INTO `scolumns` VALUES ('smodule', 'url', null, 'varchar', '模块地址 ');
INSERT INTO `scolumns` VALUES ('smodule', 'parentid', null, 'int', '父级ID');
INSERT INTO `scolumns` VALUES ('smodule', 'sn', null, 'varchar', '授权名称');
INSERT INTO `scolumns` VALUES ('smodule', 'rel', null, 'varchar', '页面标识');
INSERT INTO `scolumns` VALUES ('spermission', 'roleid', null, 'int', '角色ID');
INSERT INTO `scolumns` VALUES ('spermission', 'permission', null, 'varchar', '资源代码');
INSERT INTO `scolumns` VALUES ('sproduct', 'productid', null, 'int', '产品ID');
INSERT INTO `scolumns` VALUES ('sproduct', 'productno', null, 'varchar', '产品编码');
INSERT INTO `scolumns` VALUES ('sproduct', 'productname', null, 'varchar', '产品名称');
INSERT INTO `scolumns` VALUES ('sproduct', 'producttype', null, 'int', '产品类型');
INSERT INTO `scolumns` VALUES ('sproduct', 'unit', null, 'int', '计量单位');
INSERT INTO `scolumns` VALUES ('sproduct', 'realprice', null, 'double', '实际单价');
INSERT INTO `scolumns` VALUES ('sproduct', 'createdate', null, 'varchar', '新增日期');
INSERT INTO `scolumns` VALUES ('sproduct', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('sproductrow', 'productrowid', null, 'int', '行项ID');
INSERT INTO `scolumns` VALUES ('sproductrow', 'productid', null, 'int', '产品ID');
INSERT INTO `scolumns` VALUES ('sproductrow', 'materialno', null, 'varchar', '物资编号');
INSERT INTO `scolumns` VALUES ('sproductrow', 'materialname', null, 'varchar', '物资名称');
INSERT INTO `scolumns` VALUES ('sproductrow', 'materialprice', '0.00', 'double', '物资单价');
INSERT INTO `scolumns` VALUES ('sproductrow', 'materialnum', '0.00', 'double', '物资数量');
INSERT INTO `scolumns` VALUES ('sproductrow', 'materialsum', '0.00', 'double', '物资总价');
INSERT INTO `scolumns` VALUES ('sproductrow', 'remarkrow', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('sproducttype', 'producttype', null, 'int', '产品类别主键');
INSERT INTO `scolumns` VALUES ('sproducttype', 'producttypeno', null, 'varchar', '产品类别编号');
INSERT INTO `scolumns` VALUES ('sproducttype', 'producttypename', null, 'varchar', '产品类别名称');
INSERT INTO `scolumns` VALUES ('sproducttype', 'priority', null, 'int', '优先级');
INSERT INTO `scolumns` VALUES ('sproducttype', 'parent', null, 'varchar', '父级编号');
INSERT INTO `scolumns` VALUES ('sproducttype', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('srole', 'roleid', null, 'int', '角色编号');
INSERT INTO `scolumns` VALUES ('srole', 'rolename', null, 'varchar', '角色名称');
INSERT INTO `scolumns` VALUES ('srole', 'priority', '99', 'int', '优先级（数据越小，优先级越高）');
INSERT INTO `scolumns` VALUES ('sstaff', 'staffid', null, 'int', '员工编号');
INSERT INTO `scolumns` VALUES ('sstaff', 'staffname', null, 'varchar', '员工姓名');
INSERT INTO `scolumns` VALUES ('sstaff', 'stafftype', null, 'int', '员工类别（默认：正式员工）');
INSERT INTO `scolumns` VALUES ('sstaff', 'staffstatus', null, 'int', '员工状态（默认：在职）');
INSERT INTO `scolumns` VALUES ('sstaff', 'tel', null, 'varchar', '联系电话');
INSERT INTO `scolumns` VALUES ('sstaff', 'bank', null, 'varchar', '工资开户银行');
INSERT INTO `scolumns` VALUES ('sstaff', 'accountno', null, 'varchar', '工资银行账号');
INSERT INTO `scolumns` VALUES ('sstaff', 'accountname', null, 'varchar', '工资帐户名称');
INSERT INTO `scolumns` VALUES ('sstaff', 'remark', null, 'varchar', '备注');
INSERT INTO `scolumns` VALUES ('sstaff', 'salary', null, 'double', '工资');
INSERT INTO `scolumns` VALUES ('sstaff', 'photo', null, 'varchar', '照片路径');
INSERT INTO `scolumns` VALUES ('suser', 'userid', null, 'varchar', '用户账号');
INSERT INTO `scolumns` VALUES ('suser', 'username', null, 'varchar', '用户名称');
INSERT INTO `scolumns` VALUES ('suser', 'passwd', null, 'varchar', '用户密码');
INSERT INTO `scolumns` VALUES ('suser', 'tele', null, 'varchar', '手机号码');
INSERT INTO `scolumns` VALUES ('suser', 'valid', '1', 'varchar', '是否有效（1：是，其它：否）');
INSERT INTO `scolumns` VALUES ('suser', 'birthday', null, 'varchar', '出生日期');
INSERT INTO `scolumns` VALUES ('suser_role', 'userid', '', 'varchar', '用户账号');
INSERT INTO `scolumns` VALUES ('suser_role', 'roleid', null, 'int', '角色编号');
INSERT INTO `scolumns` VALUES ('actor', 'actor_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('actor', 'first_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('actor', 'last_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('actor', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('actor_info', 'actor_id', '0', 'smallint', '');
INSERT INTO `scolumns` VALUES ('actor_info', 'first_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('actor_info', 'last_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('actor_info', 'film_info', null, 'text', '');
INSERT INTO `scolumns` VALUES ('address', 'address_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('address', 'address', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('address', 'address2', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('address', 'district', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('address', 'city_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('address', 'postal_code', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('address', 'phone', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('address', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('category', 'category_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('category', 'name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('category', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('city', 'city_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('city', 'city', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('city', 'country_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('city', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('country', 'country_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('country', 'country', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('country', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('customer', 'customer_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('customer', 'store_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('customer', 'first_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer', 'last_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer', 'email', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer', 'address_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('customer', 'active', '1', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('customer', 'create_date', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('customer', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'ID', '0', 'smallint', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'address', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'zip code', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'phone', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'city', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'country', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'notes', '', 'varchar', '');
INSERT INTO `scolumns` VALUES ('customer_list', 'SID', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('film', 'film_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film', 'title', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('film', 'description', null, 'text', '');
INSERT INTO `scolumns` VALUES ('film', 'release_year', null, 'year', '');
INSERT INTO `scolumns` VALUES ('film', 'language_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('film', 'original_language_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('film', 'rental_duration', '3', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('film', 'rental_rate', '4.99', 'decimal', '');
INSERT INTO `scolumns` VALUES ('film', 'length', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film', 'replacement_cost', '19.99', 'decimal', '');
INSERT INTO `scolumns` VALUES ('film', 'rating', 'G', 'enum', '');
INSERT INTO `scolumns` VALUES ('film', 'special_features', null, 'set', '');
INSERT INTO `scolumns` VALUES ('film', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('film_actor', 'actor_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_actor', 'film_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_actor', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('film_category', 'film_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_category', 'category_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('film_category', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('film_list', 'FID', '0', 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_list', 'title', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('film_list', 'description', null, 'text', '');
INSERT INTO `scolumns` VALUES ('film_list', 'category', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('film_list', 'price', '4.99', 'decimal', '');
INSERT INTO `scolumns` VALUES ('film_list', 'length', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_list', 'rating', 'G', 'enum', '');
INSERT INTO `scolumns` VALUES ('film_list', 'actors', null, 'text', '');
INSERT INTO `scolumns` VALUES ('film_text', 'film_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('film_text', 'title', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('film_text', 'description', null, 'text', '');
INSERT INTO `scolumns` VALUES ('inventory', 'inventory_id', null, 'mediumint', '');
INSERT INTO `scolumns` VALUES ('inventory', 'film_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('inventory', 'store_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('inventory', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('language', 'language_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('language', 'name', null, 'char', '');
INSERT INTO `scolumns` VALUES ('language', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'FID', '0', 'smallint', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'title', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'description', null, 'text', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'category', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'price', '4.99', 'decimal', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'length', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'rating', 'G', 'enum', '');
INSERT INTO `scolumns` VALUES ('nicer_but_slower_film_list', 'actors', null, 'text', '');
INSERT INTO `scolumns` VALUES ('payment', 'payment_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('payment', 'customer_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('payment', 'staff_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('payment', 'rental_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('payment', 'amount', null, 'decimal', '');
INSERT INTO `scolumns` VALUES ('payment', 'payment_date', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('payment', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('rental', 'rental_id', null, 'int', '');
INSERT INTO `scolumns` VALUES ('rental', 'rental_date', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('rental', 'inventory_id', null, 'mediumint', '');
INSERT INTO `scolumns` VALUES ('rental', 'customer_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('rental', 'return_date', null, 'datetime', '');
INSERT INTO `scolumns` VALUES ('rental', 'staff_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('rental', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('sales_by_film_category', 'category', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('sales_by_film_category', 'total_sales', null, 'decimal', '');
INSERT INTO `scolumns` VALUES ('sales_by_store', 'store', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('sales_by_store', 'manager', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('sales_by_store', 'total_sales', null, 'decimal', '');
INSERT INTO `scolumns` VALUES ('staff', 'staff_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('staff', 'first_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff', 'last_name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff', 'address_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('staff', 'picture', null, 'blob', '');
INSERT INTO `scolumns` VALUES ('staff', 'email', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff', 'store_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('staff', 'active', '1', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('staff', 'username', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff', 'password', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'ID', '0', 'tinyint', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'name', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'address', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'zip code', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'phone', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'city', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'country', null, 'varchar', '');
INSERT INTO `scolumns` VALUES ('staff_list', 'SID', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('store', 'store_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('store', 'manager_staff_id', null, 'tinyint', '');
INSERT INTO `scolumns` VALUES ('store', 'address_id', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('store', 'last_update', 'CURRENT_TIMESTAMP', 'timestamp', '');
INSERT INTO `scolumns` VALUES ('city', 'ID', null, 'int', '');
INSERT INTO `scolumns` VALUES ('city', 'Name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('city', 'CountryCode', '', 'char', '');
INSERT INTO `scolumns` VALUES ('city', 'District', '', 'char', '');
INSERT INTO `scolumns` VALUES ('city', 'Population', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('country', 'Code', '', 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'Name', '', 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'Continent', 'Asia', 'enum', '');
INSERT INTO `scolumns` VALUES ('country', 'Region', '', 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'SurfaceArea', '0.00', 'float', '');
INSERT INTO `scolumns` VALUES ('country', 'IndepYear', null, 'smallint', '');
INSERT INTO `scolumns` VALUES ('country', 'Population', '0', 'int', '');
INSERT INTO `scolumns` VALUES ('country', 'LifeExpectancy', null, 'float', '');
INSERT INTO `scolumns` VALUES ('country', 'GNP', null, 'float', '');
INSERT INTO `scolumns` VALUES ('country', 'GNPOld', null, 'float', '');
INSERT INTO `scolumns` VALUES ('country', 'LocalName', '', 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'GovernmentForm', '', 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'HeadOfState', null, 'char', '');
INSERT INTO `scolumns` VALUES ('country', 'Capital', null, 'int', '');
INSERT INTO `scolumns` VALUES ('country', 'Code2', '', 'char', '');
INSERT INTO `scolumns` VALUES ('countrylanguage', 'CountryCode', '', 'char', '');
INSERT INTO `scolumns` VALUES ('countrylanguage', 'Language', '', 'char', '');
INSERT INTO `scolumns` VALUES ('countrylanguage', 'IsOfficial', 'F', 'enum', '');
INSERT INTO `scolumns` VALUES ('countrylanguage', 'Percentage', '0.0', 'float', '');

-- ----------------------------
-- Table structure for `scompany`
-- ----------------------------
DROP TABLE IF EXISTS `scompany`;
CREATE TABLE `scompany` (
  `companyid` int(2) NOT NULL AUTO_INCREMENT COMMENT '公司编号',
  `companyname` varchar(64) DEFAULT NULL COMMENT '公司名称',
  `contact` varchar(32) DEFAULT NULL COMMENT '联系人',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `zip` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司信息';

-- ----------------------------
-- Records of scompany
-- ----------------------------
INSERT INTO `scompany` VALUES ('1', '岐盛', '周坚定', '福建南安', '059586211111', '059586211111', '362300', 'zjdxxxx@163.com', '这是一家好公司');

-- ----------------------------
-- Table structure for `sflow`
-- ----------------------------
DROP TABLE IF EXISTS `sflow`;
CREATE TABLE `sflow` (
  `flowid` int(9) NOT NULL AUTO_INCREMENT,
  `flowname` varchar(64) NOT NULL DEFAULT '',
  `btype` varchar(16) NOT NULL DEFAULT '',
  `priority` int(3) DEFAULT NULL,
  PRIMARY KEY (`flowid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sflow
-- ----------------------------
INSERT INTO `sflow` VALUES ('1', '申请', 'XXX', null);
INSERT INTO `sflow` VALUES ('2', '结束', 'XXX', null);

-- ----------------------------
-- Table structure for `slog`
-- ----------------------------
DROP TABLE IF EXISTS `slog`;
CREATE TABLE `slog` (
  `logid` int(9) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `logtype` varchar(20) NOT NULL COMMENT '操作类型',
  `operater` varchar(64) NOT NULL COMMENT '操作人ID',
  `operatetime` varchar(20) NOT NULL COMMENT '操作时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of slog
-- ----------------------------
INSERT INTO `slog` VALUES ('1', '登录', 'ZHOUJD', '2014-07-29 17:25:37', null);
INSERT INTO `slog` VALUES ('2', '登录', 'ZHOUJD', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('3', '登录', 'LINCC', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('4', '登录', 'ZHOUJD', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('5', '登录', 'ZH112014', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('6', '登录', 'ZHOUJD', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('7', '登录', 'ZH112014', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('8', '登录', 'ZHOUJD', '2014-07-29 18:58:59', null);
INSERT INTO `slog` VALUES ('9', '登录', 'ZHOUJD', '2014-07-30 10:51:09', null);
INSERT INTO `slog` VALUES ('10', '登录', 'ZHOUJD', '2014-07-30 11:42:53', null);
INSERT INTO `slog` VALUES ('11', '登录', 'ZHOUJD', '2014-07-30 12:33:09', null);
INSERT INTO `slog` VALUES ('12', '登录', 'ZHOUJD', '2014-07-31 09:39:46', null);
INSERT INTO `slog` VALUES ('13', '登录', 'ZHOUJD', '2014-07-31 09:39:46', null);
INSERT INTO `slog` VALUES ('14', '登录', 'ZHOUJD', '2014-07-31 09:39:46', null);
INSERT INTO `slog` VALUES ('15', '登录', 'ZHOUJD', '2014-07-31 09:39:46', null);
INSERT INTO `slog` VALUES ('16', '登录', 'ZHOUJD', '2014-07-31 18:03:22', null);
INSERT INTO `slog` VALUES ('17', '登录', 'ZHOUJD', '2014-07-31 18:36:27', null);
INSERT INTO `slog` VALUES ('18', '登录', 'ZHOUJD', '2014-08-01 10:42:08', null);
INSERT INTO `slog` VALUES ('19', '登录', 'ZHOUJD', '2014-08-01 11:58:19', null);
INSERT INTO `slog` VALUES ('20', '登录', 'ZHOUJD', '2014-08-01 11:58:19', null);
INSERT INTO `slog` VALUES ('21', '登录', 'ZHOUJD', '2014-08-01 12:54:00', null);
INSERT INTO `slog` VALUES ('22', '登录', 'ZHOUJD', '2014-08-01 12:54:00', null);
INSERT INTO `slog` VALUES ('23', '登录', 'ZHOUJD', '2014-08-01 12:54:00', null);
INSERT INTO `slog` VALUES ('24', '登录', 'ZHOUJD', '2014-08-01 15:03:08', null);
INSERT INTO `slog` VALUES ('25', '登录', 'ZHOUJD', '2014-08-01 15:05:00', null);
INSERT INTO `slog` VALUES ('26', '登录', 'ZHOUJD', '2014-08-01 15:05:00', null);
INSERT INTO `slog` VALUES ('27', '登录', 'ZHOUJD', '2014-08-01 15:05:00', null);
INSERT INTO `slog` VALUES ('28', '登录', 'ZHOUJD', '2014-08-01 15:05:00', null);

-- ----------------------------
-- Table structure for `smanu`
-- ----------------------------
DROP TABLE IF EXISTS `smanu`;
CREATE TABLE `smanu` (
  `manuid` int(4) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `manuname` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `manutypeid` int(2) DEFAULT NULL COMMENT '供应商类别',
  `statusid` int(1) DEFAULT NULL COMMENT '供应商状态',
  `createdate` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `manucontact` varchar(64) DEFAULT NULL COMMENT '联系人',
  `manutel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `manuemail` varchar(64) DEFAULT NULL COMMENT 'EMAIL',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`manuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='供应商表';

-- ----------------------------
-- Records of smanu
-- ----------------------------
INSERT INTO `smanu` VALUES ('4', '供应商A', '1', '1', '2013-02-05', '周少华', '11111111', '', '备注a');
INSERT INTO `smanu` VALUES ('5', '客户A', '2', '1', '2013-02-21', '刘星', '22222222', 'b@yecoo.com', '备注B');
INSERT INTO `smanu` VALUES ('7', '物流A', '3', '1', '2013-02-21', '林长城', '33333333', '', '');
INSERT INTO `smanu` VALUES ('8', '供应商B', '1', '1', '2013-02-25', '供应商B', '00000', '', '');
INSERT INTO `smanu` VALUES ('9', '客户B', '2', '1', '2013-02-25', '无', '00000', '', '');
INSERT INTO `smanu` VALUES ('10', '物流B', '3', '1', '2013-02-25', '无', '00000', '', '');

-- ----------------------------
-- Table structure for `smanurow`
-- ----------------------------
DROP TABLE IF EXISTS `smanurow`;
CREATE TABLE `smanurow` (
  `manurowid` int(4) NOT NULL AUTO_INCREMENT COMMENT '供应商账号ID',
  `manuid` int(4) NOT NULL COMMENT '供应商ID',
  `bankrow` varchar(64) DEFAULT NULL COMMENT '开户银行',
  `accountnorow` varchar(32) DEFAULT NULL COMMENT '公司银行账号',
  `accountnamerow` varchar(64) DEFAULT NULL COMMENT '帐户名称',
  `priorityrow` int(2) DEFAULT NULL COMMENT '优先级',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`manurowid`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='供应商账号表';

-- ----------------------------
-- Records of smanurow
-- ----------------------------
INSERT INTO `smanurow` VALUES ('182', '7', '工商银行泉州分行', '33333333', '林长城', '9', null);
INSERT INTO `smanurow` VALUES ('184', '8', '中国农业银行福建支行', '444444', '供应商B账户名称', '9', null);
INSERT INTO `smanurow` VALUES ('185', '10', '建设银行南安支行', '66666666', '物流B', '9', null);
INSERT INTO `smanurow` VALUES ('187', '9', '中国银行泉州分行', '2222222', '客户B', '1', null);
INSERT INTO `smanurow` VALUES ('189', '4', '建设银行泉州分行', '1111111111', '周少华', '1', null);
INSERT INTO `smanurow` VALUES ('190', '5', '中国银行泉州分行', '22222222', '刘星', '9', null);

-- ----------------------------
-- Table structure for `smaterial`
-- ----------------------------
DROP TABLE IF EXISTS `smaterial`;
CREATE TABLE `smaterial` (
  `materialid` int(5) NOT NULL AUTO_INCREMENT COMMENT '物资ID',
  `materialno` varchar(11) NOT NULL COMMENT '物资编码',
  `materialname` varchar(64) DEFAULT NULL COMMENT '物资名称',
  `materialtype` int(5) NOT NULL COMMENT '物资类型',
  `unit` int(3) DEFAULT NULL COMMENT '计量单位',
  `price` double(12,2) DEFAULT NULL COMMENT '单价',
  `manuid` int(9) DEFAULT NULL COMMENT '供应商',
  `createdate` varchar(10) DEFAULT NULL COMMENT '新增日期',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`materialid`),
  UNIQUE KEY `uni_smaterial_no` (`materialno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smaterial
-- ----------------------------
INSERT INTO `smaterial` VALUES ('1', '1010101', '物资A11', '5', '1', '0.22', '4', '2013-02-24', '物资A1一备注');
INSERT INTO `smaterial` VALUES ('4', '1020101', '物资B11', '8', '1', '33.30', '4', '2013-03-04', '');
INSERT INTO `smaterial` VALUES ('5', '1020102', '物资B12', '8', '2', '44.00', '8', '2013-03-04', '');
INSERT INTO `smaterial` VALUES ('6', '1010201', '物资A21', '6', '3', '43.20', '8', '2014-07-04', '');

-- ----------------------------
-- Table structure for `smaterialtype`
-- ----------------------------
DROP TABLE IF EXISTS `smaterialtype`;
CREATE TABLE `smaterialtype` (
  `materialtype` int(5) NOT NULL COMMENT '物资类型主键',
  `materialtypeno` varchar(9) DEFAULT NULL COMMENT '物资类型编码',
  `materialtypename` varchar(64) NOT NULL COMMENT '物资类型名称',
  `priority` int(3) DEFAULT NULL COMMENT '优先级',
  `parent` varchar(8) DEFAULT NULL COMMENT '父级编号',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`materialtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smaterialtype
-- ----------------------------
INSERT INTO `smaterialtype` VALUES ('1', '1', '根节点', '1', null, null);
INSERT INTO `smaterialtype` VALUES ('2', '101', '物资类型A', '1', '1', '物资类型A备注');
INSERT INTO `smaterialtype` VALUES ('3', '102', '物资类型B', '2', '1', '物资类型B备注');
INSERT INTO `smaterialtype` VALUES ('4', '103', '物资类型C', '99', '1', '');
INSERT INTO `smaterialtype` VALUES ('5', '10101', '物资类型A-1', '1', '2', '物资类型A-1备注');
INSERT INTO `smaterialtype` VALUES ('6', '10102', '物资类型A-2', '2', '2', '');
INSERT INTO `smaterialtype` VALUES ('7', '10103', '物资类型A-3', '99', '2', '');
INSERT INTO `smaterialtype` VALUES ('8', '10201', '物资类型B-1', '1', '3', '');
INSERT INTO `smaterialtype` VALUES ('9', '10202', '物资类型B-2', '99', '3', '');
INSERT INTO `smaterialtype` VALUES ('10', '10301', '物资类型C-1', '99', '4', '');

-- ----------------------------
-- Table structure for `smodule`
-- ----------------------------
DROP TABLE IF EXISTS `smodule`;
CREATE TABLE `smodule` (
  `moduleid` int(10) NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `modulename` varchar(64) NOT NULL COMMENT '模块名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `priority` int(3) DEFAULT '99' COMMENT '优先级（数值越小，优先级越高）',
  `url` varchar(128) DEFAULT NULL COMMENT '模块地址 ',
  `parentid` int(10) DEFAULT NULL COMMENT '父级ID',
  `sn` varchar(32) DEFAULT NULL COMMENT '授权名称',
  `rel` varchar(32) DEFAULT NULL COMMENT '页面标识',
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB AUTO_INCREMENT=10132 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of smodule
-- ----------------------------
INSERT INTO `smodule` VALUES ('1', '根模块', '所有模块的根节点，不能删除', '1', '#', null, null, null);
INSERT INTO `smodule` VALUES ('101', '系统管理', '系统管理-描述', '2', '', '1', 'Configs', '');
INSERT INTO `smodule` VALUES ('103', '其它管理', '其它管理-描述', '99', '', '1', 'Others', '');
INSERT INTO `smodule` VALUES ('10101', '用户管理', '用户管理-描述', '1', '/user/list', '101', 'User', 'user_list');
INSERT INTO `smodule` VALUES ('10102', '角色管理', '角色管理-描述', '2', '/role/list', '101', 'Role', 'role_list');
INSERT INTO `smodule` VALUES ('10105', '模块管理', '模块管理-描述', '3', '/module/tree', '101', 'Module', 'module_tree');
INSERT INTO `smodule` VALUES ('10106', '资料管理', '资料管理-描述', '3', '', '1', 'Datas', '');
INSERT INTO `smodule` VALUES ('10107', '计量单位管理', '计量单位管理', '99', '/unit/list', '10106', 'Unit', 'unit_list');
INSERT INTO `smodule` VALUES ('10108', '公司信息管理', '公司信息管理', '99', '/company/edi/1', '10106', 'Company', 'company_edi');
INSERT INTO `smodule` VALUES ('10109', '供应商管理', '供应商管理', '99', '/manu/list?first=true', '10106', 'Manu', 'manu_list');
INSERT INTO `smodule` VALUES ('10110', '员工管理', '员工管理', '99', '/staff/list?first=true', '10106', 'Staff', 'staff_list');
INSERT INTO `smodule` VALUES ('10111', '财务管理', '财务管理', '4', '', '1', 'Finances', '');
INSERT INTO `smodule` VALUES ('10112', '银行卡管理', '银行卡管理', '99', '/bankcard/list?first=true', '10111', 'Bankcard', 'bankcard_list');
INSERT INTO `smodule` VALUES ('10113', '单据管理', '', '99', '/pay/list?first=true', '10111', 'Pay', 'pay_list');
INSERT INTO `smodule` VALUES ('10114', '物资管理', '', '5', '', '1', 'Materials', '');
INSERT INTO `smodule` VALUES ('10115', '物资类型管理', '', '1', '/materialtype/tree', '10114', 'Materialtype', 'materialtype_tree');
INSERT INTO `smodule` VALUES ('10116', '物资管理', '', '2', '/material/tree', '10114', 'Material', 'material_tree');
INSERT INTO `smodule` VALUES ('10117', '采购管理', '', '99', '/buy/list?first=true', '10114', 'Buy', 'buy_list');
INSERT INTO `smodule` VALUES ('10118', '产品管理', '', '6', '', '1', 'Products', '');
INSERT INTO `smodule` VALUES ('10119', '产品类别管理', '', '1', '/producttype/tree', '10118', 'Producttype', 'producttype_tree');
INSERT INTO `smodule` VALUES ('10120', '产品管理', '', '2', '/product/tree', '10118', 'Product', 'product_tree');
INSERT INTO `smodule` VALUES ('10121', '销售管理', '', '3', '/sell/list?first=true', '10118', 'Sell', 'sell_list');
INSERT INTO `smodule` VALUES ('10122', '工资管理', '', '99', '/salary/list?first=true', '10111', 'Salary', 'salary_list');
INSERT INTO `smodule` VALUES ('10123', '报表管理', '', '7', '', '1', 'Reports', '');
INSERT INTO `smodule` VALUES ('10124', '月度供应商报表', '', '1', '/report/reportBuy', '10123', 'ReportBuy', 'buy_report');
INSERT INTO `smodule` VALUES ('10125', '月度客户报表', '', '2', '/report/reportSell', '10123', 'ReportSell', 'sell_report');
INSERT INTO `smodule` VALUES ('10126', '月度综合报表', '', '3', '/report/reportColligate', '10123', 'ReportColligate', 'colligate_report');
INSERT INTO `smodule` VALUES ('10127', '综合统计报表', '', '8', '/report/reportStatistics', '10123', 'ReportStatistics', 'statistics_report');
INSERT INTO `smodule` VALUES ('10128', '综合产品报表', '', '5', '/report/reportProduct', '10123', 'ReportProduct', 'product_report');
INSERT INTO `smodule` VALUES ('10129', '综合物资报表', '', '4', '/report/reportMaterial', '10123', 'ReportMaterial', 'material_report');
INSERT INTO `smodule` VALUES ('10130', '综合供应商报表', '', '6', '/report/reportManu', '10123', 'ReportManu', 'manu_report');
INSERT INTO `smodule` VALUES ('10131', '综合客户报表', '', '7', '/report/reportClient', '10123', 'ReportClient', 'client_report');

-- ----------------------------
-- Table structure for `spermission`
-- ----------------------------
DROP TABLE IF EXISTS `spermission`;
CREATE TABLE `spermission` (
  `roleid` int(10) NOT NULL COMMENT '角色ID',
  `permission` varchar(255) NOT NULL COMMENT '资源代码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of spermission
-- ----------------------------
INSERT INTO `spermission` VALUES ('1', 'Configs:view');
INSERT INTO `spermission` VALUES ('1', 'User:view');
INSERT INTO `spermission` VALUES ('1', 'User:add');
INSERT INTO `spermission` VALUES ('1', 'User:edi');
INSERT INTO `spermission` VALUES ('1', 'User:delete');
INSERT INTO `spermission` VALUES ('1', 'Role:view');
INSERT INTO `spermission` VALUES ('1', 'Role:add');
INSERT INTO `spermission` VALUES ('1', 'Role:edi');
INSERT INTO `spermission` VALUES ('1', 'Role:delete');
INSERT INTO `spermission` VALUES ('1', 'Module:view');
INSERT INTO `spermission` VALUES ('1', 'Module:add');
INSERT INTO `spermission` VALUES ('1', 'Module:edi');
INSERT INTO `spermission` VALUES ('1', 'Module:delete');
INSERT INTO `spermission` VALUES ('1', 'Datas:view');
INSERT INTO `spermission` VALUES ('1', 'Unit:view');
INSERT INTO `spermission` VALUES ('1', 'Unit:add');
INSERT INTO `spermission` VALUES ('1', 'Unit:edi');
INSERT INTO `spermission` VALUES ('1', 'Unit:delete');
INSERT INTO `spermission` VALUES ('1', 'Company:view');
INSERT INTO `spermission` VALUES ('1', 'Company:add');
INSERT INTO `spermission` VALUES ('1', 'Company:edi');
INSERT INTO `spermission` VALUES ('1', 'Company:delete');
INSERT INTO `spermission` VALUES ('1', 'Manu:view');
INSERT INTO `spermission` VALUES ('1', 'Manu:add');
INSERT INTO `spermission` VALUES ('1', 'Manu:edi');
INSERT INTO `spermission` VALUES ('1', 'Manu:delete');
INSERT INTO `spermission` VALUES ('1', 'Staff:view');
INSERT INTO `spermission` VALUES ('1', 'Staff:add');
INSERT INTO `spermission` VALUES ('1', 'Staff:edi');
INSERT INTO `spermission` VALUES ('1', 'Staff:delete');
INSERT INTO `spermission` VALUES ('1', 'Finances:view');
INSERT INTO `spermission` VALUES ('1', 'Bankcard:view');
INSERT INTO `spermission` VALUES ('1', 'Bankcard:add');
INSERT INTO `spermission` VALUES ('1', 'Bankcard:edi');
INSERT INTO `spermission` VALUES ('1', 'Bankcard:other');
INSERT INTO `spermission` VALUES ('1', 'Pay:view');
INSERT INTO `spermission` VALUES ('1', 'Pay:add');
INSERT INTO `spermission` VALUES ('1', 'Pay:edi');
INSERT INTO `spermission` VALUES ('1', 'Pay:delete');
INSERT INTO `spermission` VALUES ('1', 'Pay:other');
INSERT INTO `spermission` VALUES ('1', 'Salary:view');
INSERT INTO `spermission` VALUES ('1', 'Salary:add');
INSERT INTO `spermission` VALUES ('1', 'Salary:edi');
INSERT INTO `spermission` VALUES ('1', 'Salary:delete');
INSERT INTO `spermission` VALUES ('1', 'Materials:view');
INSERT INTO `spermission` VALUES ('1', 'Materialtype:view');
INSERT INTO `spermission` VALUES ('1', 'Materialtype:add');
INSERT INTO `spermission` VALUES ('1', 'Materialtype:edi');
INSERT INTO `spermission` VALUES ('1', 'Materialtype:delete');
INSERT INTO `spermission` VALUES ('1', 'Material:view');
INSERT INTO `spermission` VALUES ('1', 'Material:add');
INSERT INTO `spermission` VALUES ('1', 'Material:edi');
INSERT INTO `spermission` VALUES ('1', 'Material:delete');
INSERT INTO `spermission` VALUES ('1', 'Buy:view');
INSERT INTO `spermission` VALUES ('1', 'Buy:add');
INSERT INTO `spermission` VALUES ('1', 'Buy:edi');
INSERT INTO `spermission` VALUES ('1', 'Buy:delete');
INSERT INTO `spermission` VALUES ('1', 'Products:view');
INSERT INTO `spermission` VALUES ('1', 'Producttype:view');
INSERT INTO `spermission` VALUES ('1', 'Producttype:add');
INSERT INTO `spermission` VALUES ('1', 'Producttype:edi');
INSERT INTO `spermission` VALUES ('1', 'Producttype:delete');
INSERT INTO `spermission` VALUES ('1', 'Product:view');
INSERT INTO `spermission` VALUES ('1', 'Product:add');
INSERT INTO `spermission` VALUES ('1', 'Product:edi');
INSERT INTO `spermission` VALUES ('1', 'Product:delete');
INSERT INTO `spermission` VALUES ('1', 'Sell:view');
INSERT INTO `spermission` VALUES ('1', 'Sell:add');
INSERT INTO `spermission` VALUES ('1', 'Sell:edi');
INSERT INTO `spermission` VALUES ('1', 'Sell:delete');
INSERT INTO `spermission` VALUES ('1', 'Reports:view');
INSERT INTO `spermission` VALUES ('1', 'ReportBuy:view');
INSERT INTO `spermission` VALUES ('1', 'ReportSell:view');
INSERT INTO `spermission` VALUES ('1', 'ReportColligate:view');
INSERT INTO `spermission` VALUES ('1', 'ReportMaterial:view');
INSERT INTO `spermission` VALUES ('1', 'ReportProduct:view');
INSERT INTO `spermission` VALUES ('1', 'ReportManu:view');
INSERT INTO `spermission` VALUES ('1', 'ReportClient:view');
INSERT INTO `spermission` VALUES ('1', 'ReportStatistics:view');
INSERT INTO `spermission` VALUES ('1', 'Others:view');
INSERT INTO `spermission` VALUES ('3', 'Finances:view');
INSERT INTO `spermission` VALUES ('3', 'Salary:view');
INSERT INTO `spermission` VALUES ('3', 'Materials:view');
INSERT INTO `spermission` VALUES ('3', 'Buy:view');
INSERT INTO `spermission` VALUES ('3', 'Products:view');
INSERT INTO `spermission` VALUES ('3', 'Sell:view');
INSERT INTO `spermission` VALUES ('3', 'Reports:view');
INSERT INTO `spermission` VALUES ('3', 'ReportBuy:view');
INSERT INTO `spermission` VALUES ('3', 'ReportSell:view');
INSERT INTO `spermission` VALUES ('3', 'ReportColligate:view');
INSERT INTO `spermission` VALUES ('3', 'ReportMaterial:view');
INSERT INTO `spermission` VALUES ('3', 'ReportProduct:view');
INSERT INTO `spermission` VALUES ('3', 'ReportManu:view');
INSERT INTO `spermission` VALUES ('3', 'ReportClient:view');
INSERT INTO `spermission` VALUES ('3', 'ReportStatistics:view');
INSERT INTO `spermission` VALUES ('2', 'Datas:view');
INSERT INTO `spermission` VALUES ('2', 'Unit:view');
INSERT INTO `spermission` VALUES ('2', 'Unit:add');
INSERT INTO `spermission` VALUES ('2', 'Unit:edi');
INSERT INTO `spermission` VALUES ('2', 'Manu:view');
INSERT INTO `spermission` VALUES ('2', 'Manu:add');
INSERT INTO `spermission` VALUES ('2', 'Manu:edi');
INSERT INTO `spermission` VALUES ('2', 'Staff:view');
INSERT INTO `spermission` VALUES ('2', 'Staff:add');
INSERT INTO `spermission` VALUES ('2', 'Staff:edi');
INSERT INTO `spermission` VALUES ('2', 'Finances:view');
INSERT INTO `spermission` VALUES ('2', 'Pay:view');
INSERT INTO `spermission` VALUES ('2', 'Pay:add');
INSERT INTO `spermission` VALUES ('2', 'Pay:edi');
INSERT INTO `spermission` VALUES ('2', 'Salary:view');
INSERT INTO `spermission` VALUES ('2', 'Salary:add');
INSERT INTO `spermission` VALUES ('2', 'Salary:edi');
INSERT INTO `spermission` VALUES ('2', 'Materials:view');
INSERT INTO `spermission` VALUES ('2', 'Materialtype:view');
INSERT INTO `spermission` VALUES ('2', 'Materialtype:add');
INSERT INTO `spermission` VALUES ('2', 'Materialtype:edi');
INSERT INTO `spermission` VALUES ('2', 'Material:view');
INSERT INTO `spermission` VALUES ('2', 'Material:add');
INSERT INTO `spermission` VALUES ('2', 'Material:edi');
INSERT INTO `spermission` VALUES ('2', 'Buy:view');
INSERT INTO `spermission` VALUES ('2', 'Buy:add');
INSERT INTO `spermission` VALUES ('2', 'Buy:edi');
INSERT INTO `spermission` VALUES ('2', 'Products:view');
INSERT INTO `spermission` VALUES ('2', 'Producttype:view');
INSERT INTO `spermission` VALUES ('2', 'Producttype:add');
INSERT INTO `spermission` VALUES ('2', 'Producttype:edi');
INSERT INTO `spermission` VALUES ('2', 'Product:view');
INSERT INTO `spermission` VALUES ('2', 'Product:add');
INSERT INTO `spermission` VALUES ('2', 'Product:edi');
INSERT INTO `spermission` VALUES ('2', 'Sell:view');
INSERT INTO `spermission` VALUES ('2', 'Sell:add');
INSERT INTO `spermission` VALUES ('2', 'Sell:edi');
INSERT INTO `spermission` VALUES ('2', 'Reports:view');
INSERT INTO `spermission` VALUES ('2', 'ReportBuy:view');
INSERT INTO `spermission` VALUES ('2', 'ReportSell:view');
INSERT INTO `spermission` VALUES ('2', 'ReportColligate:view');
INSERT INTO `spermission` VALUES ('2', 'ReportMaterial:view');
INSERT INTO `spermission` VALUES ('2', 'ReportProduct:view');
INSERT INTO `spermission` VALUES ('2', 'ReportManu:view');
INSERT INTO `spermission` VALUES ('2', 'ReportClient:view');
INSERT INTO `spermission` VALUES ('2', 'ReportStatistics:view');

-- ----------------------------
-- Table structure for `sproduct`
-- ----------------------------
DROP TABLE IF EXISTS `sproduct`;
CREATE TABLE `sproduct` (
  `productid` int(9) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `productno` varchar(11) NOT NULL COMMENT '产品编码',
  `productname` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `producttype` int(5) DEFAULT NULL COMMENT '产品类型',
  `unit` int(3) DEFAULT NULL COMMENT '计量单位',
  `realprice` double(12,2) NOT NULL COMMENT '实际单价',
  `createdate` varchar(10) DEFAULT NULL COMMENT '新增日期',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of sproduct
-- ----------------------------
INSERT INTO `sproduct` VALUES ('1', '2010101', '产品1', '14', '2', '120.00', '2013-03-06', '产品一备注');
INSERT INTO `sproduct` VALUES ('2', '2010102', '产品2', '14', '1', '190.00', '2014-07-12', '');
INSERT INTO `sproduct` VALUES ('3', '2010103', '产品3', '14', '1', '200.20', '2014-07-12', '');

-- ----------------------------
-- Table structure for `sproductrow`
-- ----------------------------
DROP TABLE IF EXISTS `sproductrow`;
CREATE TABLE `sproductrow` (
  `productrowid` int(9) NOT NULL AUTO_INCREMENT COMMENT '行项ID',
  `productid` int(9) DEFAULT NULL COMMENT '产品ID',
  `materialno` varchar(13) DEFAULT NULL COMMENT '物资编号',
  `materialname` varchar(64) DEFAULT NULL COMMENT '物资名称',
  `materialprice` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '物资单价',
  `materialnum` double(9,2) NOT NULL DEFAULT '0.00' COMMENT '物资数量',
  `materialsum` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '物资总价',
  `remarkrow` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`productrowid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='产品行项表';

-- ----------------------------
-- Records of sproductrow
-- ----------------------------
INSERT INTO `sproductrow` VALUES ('62', '2', 'WZD-2013-0001', '物资A11', '0.22', '22.00', '4.84', null);
INSERT INTO `sproductrow` VALUES ('63', '2', 'WZD-2013-0003', '物资B11', '33.30', '2.00', '66.60', null);
INSERT INTO `sproductrow` VALUES ('64', '2', 'WZD-2013-0004', '物资B12', '44.00', '1.00', '44.00', null);
INSERT INTO `sproductrow` VALUES ('65', '2', null, '运输成本', '22.00', '1.00', '22.00', null);
INSERT INTO `sproductrow` VALUES ('66', '2', null, '人力成本', '33.00', '1.00', '33.00', null);
INSERT INTO `sproductrow` VALUES ('67', '2', null, '利润', '21.00', '1.00', '21.00', null);
INSERT INTO `sproductrow` VALUES ('68', '3', 'WZD-2014-0001', '物资A21', '43.20', '2.00', '86.40', null);
INSERT INTO `sproductrow` VALUES ('69', '3', 'WZD-2013-0004', '物资B12', '44.00', '1.00', '44.00', null);
INSERT INTO `sproductrow` VALUES ('70', '3', null, '运输成本', '11.00', '1.00', '11.00', null);
INSERT INTO `sproductrow` VALUES ('71', '3', null, '人力成本', '22.00', '1.00', '22.00', null);
INSERT INTO `sproductrow` VALUES ('72', '3', null, '利润', '33.00', '1.00', '33.00', null);
INSERT INTO `sproductrow` VALUES ('83', '1', 'WZD-2013-0004', '物资四', '44.00', '1.00', '44.00', null);
INSERT INTO `sproductrow` VALUES ('84', '1', 'WZD-2013-0003', '物资三', '33.30', '2.00', '66.60', null);
INSERT INTO `sproductrow` VALUES ('85', '1', null, '运输成本', '1.00', '1.00', '1.00', null);
INSERT INTO `sproductrow` VALUES ('86', '1', null, '人力成本', '2.00', '1.00', '2.00', null);
INSERT INTO `sproductrow` VALUES ('87', '1', null, '利润', '3.00', '1.00', '3.00', null);

-- ----------------------------
-- Table structure for `sproducttype`
-- ----------------------------
DROP TABLE IF EXISTS `sproducttype`;
CREATE TABLE `sproducttype` (
  `producttype` int(5) NOT NULL AUTO_INCREMENT COMMENT '产品类别主键',
  `producttypeno` varchar(9) DEFAULT NULL COMMENT '产品类别编号',
  `producttypename` varchar(64) NOT NULL COMMENT '产品类别名称',
  `priority` int(3) DEFAULT NULL COMMENT '优先级',
  `parent` varchar(8) DEFAULT NULL COMMENT '父级编号',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`producttype`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sproducttype
-- ----------------------------
INSERT INTO `sproducttype` VALUES ('1', '2', '根节点', '1', null, null);
INSERT INTO `sproducttype` VALUES ('11', '201', '产品类别一', '1', '1', '');
INSERT INTO `sproducttype` VALUES ('12', '202', '产品类别二', '2', '1', '产品类别二');
INSERT INTO `sproducttype` VALUES ('13', '203', '产品类别三', '3', '1', '产品类别三');
INSERT INTO `sproducttype` VALUES ('14', '20101', '产品类别一1', '1', '11', '产品类别一1');
INSERT INTO `sproducttype` VALUES ('15', '20102', '产品类别一2', '2', '11', '产品类别一2');
INSERT INTO `sproducttype` VALUES ('16', '20201', '产品类别二1', '1', '12', '产品类别二1');
INSERT INTO `sproducttype` VALUES ('17', '20202', '产品类别二2', '2', '12', '');

-- ----------------------------
-- Table structure for `srole`
-- ----------------------------
DROP TABLE IF EXISTS `srole`;
CREATE TABLE `srole` (
  `roleid` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rolename` varchar(128) NOT NULL COMMENT '角色名称',
  `priority` int(4) DEFAULT '99' COMMENT '优先级（数据越小，优先级越高）',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of srole
-- ----------------------------
INSERT INTO `srole` VALUES ('1', '管理员', '2');
INSERT INTO `srole` VALUES ('2', '普通用户', '3');
INSERT INTO `srole` VALUES ('3', '游客', '4');

-- ----------------------------
-- Table structure for `sscolumns`
-- ----------------------------
DROP TABLE IF EXISTS `sscolumns`;
CREATE TABLE `sscolumns` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sscolumns
-- ----------------------------
INSERT INTO `sscolumns` VALUES ('def', 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', '1', '', 'NO', 'varchar', '32', '96', null, null, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `sscolumns` VALUES ('def', 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', '2', '', 'NO', 'varchar', '32', '96', null, null, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `sscolumns` VALUES ('def', 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', '3', '', 'NO', 'varchar', '60', '180', null, null, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', '');
INSERT INTO `sscolumns` VALUES ('def', 'information_schema', 'CHARACTER_SETS', 'MAXLEN', '4', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(3)', '', '', 'select', '');
INSERT INTO `sscolumns` VALUES ('def', 'information_schema', 'COLLATIONS', 'COLLATION_NAME', '1', '', 'NO', 'varchar', '32', '96', null, null, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');

-- ----------------------------
-- Table structure for `sstaff`
-- ----------------------------
DROP TABLE IF EXISTS `sstaff`;
CREATE TABLE `sstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `staffname` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `stafftype` int(1) DEFAULT NULL COMMENT '员工类别（默认：正式员工）',
  `staffstatus` int(1) DEFAULT NULL COMMENT '员工状态（默认：在职）',
  `tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `bank` varchar(64) DEFAULT NULL COMMENT '工资开户银行',
  `accountno` varchar(32) DEFAULT NULL COMMENT '工资银行账号',
  `accountname` varchar(64) DEFAULT NULL COMMENT '工资帐户名称',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `salary` double(12,2) DEFAULT NULL COMMENT '工资',
  `photo` varchar(64) DEFAULT NULL COMMENT '照片路径',
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of sstaff
-- ----------------------------
INSERT INTO `sstaff` VALUES ('2', '员工一', '1', '1', '11111111', '建设银行南安支行', '11111111', '员工一', '备注1', '53.00', null);
INSERT INTO `sstaff` VALUES ('3', '员工二', '1', '1', '22222222', '建设银行南安支行', '22222222', '员工二', '备注2', '63.00', null);
INSERT INTO `sstaff` VALUES ('4', '员工三', '1', '2', '33333333', '建设银行南安支行', '33333333', '员工三', '', null, null);

-- ----------------------------
-- Table structure for `suser`
-- ----------------------------
DROP TABLE IF EXISTS `suser`;
CREATE TABLE `suser` (
  `userid` varchar(64) NOT NULL COMMENT '用户账号',
  `username` varchar(128) NOT NULL COMMENT '用户名称',
  `passwd` varchar(128) NOT NULL COMMENT '用户密码',
  `tele` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `valid` varchar(1) DEFAULT '1' COMMENT '是否有效（1：是，其它：否）',
  `birthday` varchar(10) DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of suser
-- ----------------------------
INSERT INTO `suser` VALUES ('LINCC', '林长城', '21218cca77804d2ba1922c33e0151105', '18979578121', '1', '2013-01-01');
INSERT INTO `suser` VALUES ('ZH112014', '张红', '21218cca77804d2ba1922c33e0151105', '18979172171', '1', '2013-01-01');
INSERT INTO `suser` VALUES ('ZH112208', '张宏', '21218cca77804d2ba1922c33e0151105', '18979576017', '1', '2012-12-06');
INSERT INTO `suser` VALUES ('ZHD103272', '朱宏东', '21218cca77804d2ba1922c33e0151105', '18979372566', '0', null);
INSERT INTO `suser` VALUES ('ZHD105069', '邹海东', '21218cca77804d2ba1922c33e0151105', '18979275921', '1', '');
INSERT INTO `suser` VALUES ('ZHF103099', '章海峰', '21218cca77804d2ba1922c33e0151105', '18979376001', '1', null);
INSERT INTO `suser` VALUES ('ZHJ301206', '邹惠娟', '21218cca77804d2ba1922c33e0151105', '18979172594', '1', null);
INSERT INTO `suser` VALUES ('ZHM103839', '祝敏慧', '21218cca77804d2ba1922c33e0151105', '18979371121', '1', null);
INSERT INTO `suser` VALUES ('ZHM110447', '郑宏梅', '21218cca77804d2ba1922c33e0151105', '18979472833', '1', null);
INSERT INTO `suser` VALUES ('ZHOUJD', '周坚定', '21218cca77804d2ba1922c33e0151105', '059122222222', '1', '1986-09-19');
INSERT INTO `suser` VALUES ('ZHQ110244', '郑华清', '21218cca77804d2ba1922c33e0151105', '18979470368', '1', null);
INSERT INTO `suser` VALUES ('ZHS103676', '张海生', '21218cca77804d2ba1922c33e0151105', '18979376181', '1', null);
INSERT INTO `suser` VALUES ('ZHS104149', '朱洪水', '21218cca77804d2ba1922c33e0151105', '18979273113', '1', null);
INSERT INTO `suser` VALUES ('ZHS112987', '邹焕松', '21218cca77804d2ba1922c33e0151105', '18979170119', '1', null);
INSERT INTO `suser` VALUES ('ZW113015', '张伟', '21218cca77804d2ba1922c33e0151105', '18979172586', '1', null);
INSERT INTO `suser` VALUES ('ZWB103784', '占卫斌', '21218cca77804d2ba1922c33e0151105', '18979371927', '1', null);
INSERT INTO `suser` VALUES ('ZWD123117', '曾文迪', '21218cca77804d2ba1922c33e0151105', '18979172001', '1', null);
INSERT INTO `suser` VALUES ('ZWF103071', '周文锋', '21218cca77804d2ba1922c33e0151105', '18979376218', '1', null);
INSERT INTO `suser` VALUES ('ZWJ110683', '周文建', '21218cca77804d2ba1922c33e0151105', '18979578401', '1', null);
INSERT INTO `suser` VALUES ('ZWP103093', '赵维平', '21218cca77804d2ba1922c33e0151105', '18979376155', '1', null);
INSERT INTO `suser` VALUES ('ZWQ105325', '周文启', '21218cca77804d2ba1922c33e0151105', '18979274169', '1', null);
INSERT INTO `suser` VALUES ('ZWQ112737', '曾卫强', '21218cca77804d2ba1922c33e0151105', '18979172022', '1', null);
INSERT INTO `suser` VALUES ('ZWZ111693', '周文政', '21218cca77804d2ba1922c33e0151105', '18979578541', '1', null);
INSERT INTO `suser` VALUES ('ZX100099', '张鑫', '21218cca77804d2ba1922c33e0151105', '18979278998', '1', null);

-- ----------------------------
-- Table structure for `suser_role`
-- ----------------------------
DROP TABLE IF EXISTS `suser_role`;
CREATE TABLE `suser_role` (
  `userid` varchar(64) NOT NULL DEFAULT '' COMMENT '用户账号',
  `roleid` int(10) NOT NULL COMMENT '角色编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of suser_role
-- ----------------------------
INSERT INTO `suser_role` VALUES ('ZHOUJD', '1');
INSERT INTO `suser_role` VALUES ('LINCC', '2');
INSERT INTO `suser_role` VALUES ('ZH112014', '3');
