/*
Navicat MySQL Data Transfer

Source Server         : 118.31.2.210_3306
Source Server Version : 50723
Source Host           : 118.31.2.210:3306
Source Database       : shequ

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-08-31 20:38:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_farm
-- ----------------------------
DROP TABLE IF EXISTS `sys_farm`;
CREATE TABLE `sys_farm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '农场名称',
  `pictures` varchar(500) DEFAULT NULL COMMENT '农场图片',
  `address` varchar(500) DEFAULT NULL COMMENT '农场地址',
  `remarks` varchar(1000) DEFAULT NULL COMMENT '农场详情',
  `linkphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `user_id` int(11) DEFAULT NULL COMMENT '注册人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常 1.冻结)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='农场表';

-- ----------------------------
-- Records of sys_farm
-- ----------------------------
INSERT INTO `sys_farm` VALUES ('1', '王府家庭农场', 'http://test.ly520.ren/file/20180828/20180828142859492702333.jpg,http://test.ly520.ren/file/20180828/20180828142901825272345.jpg,http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '(昌平北七家)王府街10号', '王府家庭农场，为98年一农业项目，性质为农业大棚项目，其98，99年原始构架为一毛皮构架房，及一个大棚。后发展为纯居住项目。现今，当初原始构架已发展成独栋别墅，大棚被改造为温室花房或健身房。整个王府家庭农场占地750亩，原来是700亩居住用地加50亩最东面的配套设施用地。后50亩配套用地也建设成为居住用地。纳入王府家庭农场赋丽园的一部分。社区已同管道天然气，网线，市政水已与2010年开春开通。', '18585458541', '王五', '5', '0', '2018-08-28 14:29:54');
INSERT INTO `sys_farm` VALUES ('3', '南口农场', 'http://test.ly520.ren/file/20180828/20180828143403413805512.jpg,http://test.ly520.ren/file/20180828/20180828143403751760721.jpg,http://test.ly520.ren/file/20180828/20180828143404010047800.jpg,http://test.ly520.ren/file/20180828/20180828143404422564706.jpg', '北京市昌平区昌流路 ', '北京市南口农场始建于1958年，隶属北京首都农业集团有限公司，占地面积1.6万亩，作为农业部最早命名的绿色食品生产基地之一，在不断建设发展中，农场已形成空气清新、天蓝地绿、瓜果满园、四季花香的良好生态环境。', '12586325785', '钱司', '6', '0', '2018-08-28 14:34:45');

-- ----------------------------
-- Table structure for sys_farm_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_farm_order`;
CREATE TABLE `sys_farm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `farm_id` int(11) DEFAULT NULL COMMENT '农场id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.待发货 1.已发货 2.交易完成 3.交易取消)',
  `user_id` int(11) DEFAULT NULL COMMENT '下单人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='农场订单表';

-- ----------------------------
-- Records of sys_farm_order
-- ----------------------------
INSERT INTO `sys_farm_order` VALUES ('1', '1', '3', '1', '2018-08-29 12:27:33');
INSERT INTO `sys_farm_order` VALUES ('2', '1', '3', '1', '2018-08-29 12:31:46');
INSERT INTO `sys_farm_order` VALUES ('3', '1', '0', '2', '2018-08-29 16:41:43');
INSERT INTO `sys_farm_order` VALUES ('4', '3', '1', '2', '2018-08-29 16:49:01');

-- ----------------------------
-- Table structure for sys_farm_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_farm_product`;
CREATE TABLE `sys_farm_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `farm_id` int(11) DEFAULT NULL COMMENT '农场id',
  `pictures` varchar(500) DEFAULT NULL COMMENT '蔬菜图片',
  `title` varchar(255) DEFAULT NULL COMMENT '蔬菜标题',
  `price` decimal(12,2) DEFAULT NULL COMMENT '蔬菜单价',
  `user_id` int(11) DEFAULT NULL COMMENT '发布人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常, 1.下架)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='农场商品表';

-- ----------------------------
-- Records of sys_farm_product
-- ----------------------------
INSERT INTO `sys_farm_product` VALUES ('1', '1', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '空心菜', '5.40', '1', '0', '2018-08-29 09:00:32');
INSERT INTO `sys_farm_product` VALUES ('2', '1', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '小白菜', '10.50', '1', '0', '2018-08-29 09:00:32');
INSERT INTO `sys_farm_product` VALUES ('3', '1', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '白萝卜', '5.20', '1', '0', '2018-08-29 09:00:32');
INSERT INTO `sys_farm_product` VALUES ('4', '1', 'http://test.ly520.ren/file/20180829/20180829154856424160568.jpg', '紫菜', '12.50', '5', '0', '2018-08-29 15:49:13');
INSERT INTO `sys_farm_product` VALUES ('5', '3', 'http://test.ly520.ren/file/20180829/20180829164556477484046.jpg', '毛豆', '14.40', '6', '0', '2018-08-29 16:46:10');
INSERT INTO `sys_farm_product` VALUES ('6', '3', 'http://test.ly520.ren/file/20180829/20180829164636952011714.jpg', '黄瓜', '21.00', '6', '0', '2018-08-29 16:46:52');
INSERT INTO `sys_farm_product` VALUES ('7', '3', 'http://test.ly520.ren/file/20180829/20180829164711604232604.jpg', '丝瓜', '18.90', '6', '0', '2018-08-29 16:47:21');
INSERT INTO `sys_farm_product` VALUES ('8', '3', 'http://test.ly520.ren/file/20180829/20180829164734752318026.jpg', '大蒜', '25.00', '6', '0', '2018-08-29 16:47:50');

-- ----------------------------
-- Table structure for sys_house_lease
-- ----------------------------
DROP TABLE IF EXISTS `sys_house_lease`;
CREATE TABLE `sys_house_lease` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(255) DEFAULT NULL COMMENT '房屋主题',
  `remarks` varchar(1000) DEFAULT NULL COMMENT '房屋详情',
  `pictures` varchar(500) DEFAULT NULL COMMENT '房屋图片',
  `count_room` int(11) DEFAULT NULL COMMENT '卧室数量',
  `count_toilet` int(11) DEFAULT NULL COMMENT '卫生间数量',
  `count_hall` int(11) DEFAULT NULL COMMENT '厅数量',
  `price` decimal(12,2) DEFAULT NULL COMMENT '房屋出租价格',
  `acreage` decimal(12,2) DEFAULT NULL COMMENT '房屋面积',
  `address` varchar(500) DEFAULT NULL COMMENT '房屋地址',
  `linkphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `linkqq` varchar(100) DEFAULT NULL COMMENT '联系qq',
  `user_id` int(11) DEFAULT NULL COMMENT '发布人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常, 1.已过期)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='出租房表';

-- ----------------------------
-- Records of sys_house_lease
-- ----------------------------
INSERT INTO `sys_house_lease` VALUES ('1', '东关南里3居 干净整洁 拎包入住 近石油大学 近地铁 有钥匙', '房子是是由大学附近的3居室，楼层高，采光特别好。装修干净整洁。拎包入住。小区近亢山公园，出行购物便利。小区安静，停车位充足，停车免费，近地铁，靠谱出租，看房我有钥匙。', 'http://test.ly520.ren/file/20180824/20180824161018706548701.jpg', '3', '1', '1', '5000.00', '90.00', '南环里东区15号楼0701', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 16:10:47');

-- ----------------------------
-- Table structure for sys_house_new
-- ----------------------------
DROP TABLE IF EXISTS `sys_house_new`;
CREATE TABLE `sys_house_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(255) DEFAULT NULL COMMENT '房屋主题',
  `remarks` varchar(1000) DEFAULT NULL COMMENT '房屋详情',
  `pictures` varchar(500) DEFAULT NULL COMMENT '房屋图片',
  `count_room` int(11) DEFAULT NULL COMMENT '卧室数量',
  `count_toilet` int(11) DEFAULT NULL COMMENT '卫生间数量',
  `count_hall` int(11) DEFAULT NULL COMMENT '厅数量',
  `decoration` varchar(255) DEFAULT NULL COMMENT '装修情况(1.未装修 2.普通装修 3.精装修)',
  `acreage` decimal(12,2) DEFAULT NULL COMMENT '房屋面积',
  `price` decimal(12,2) DEFAULT NULL COMMENT '房屋预计单价',
  `purpose` varchar(100) DEFAULT NULL COMMENT '房屋用途(1.普通住宅 2.店铺)',
  `address` varchar(500) DEFAULT NULL COMMENT '房屋地址',
  `linkphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `linkqq` varchar(100) DEFAULT NULL COMMENT '联系qq',
  `user_id` int(11) DEFAULT NULL COMMENT '发布人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常, 1.已过期)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新房表';

-- ----------------------------
-- Records of sys_house_new
-- ----------------------------
INSERT INTO `sys_house_new` VALUES ('1', '冬日之冷 看昌平别墅之作珠江紫宸山', '整个户型总的来说，户型比较方正，可利用空间面积较大，三层的设计保证了个人的隐私，同时房间设备较为齐全，可以很好的保证两代人在一起生活，并且南北通透性，采光充足，自带花园，环境较为优雅，小编个人觉得很适合居住。', 'http://test.ly520.ren/file/20180820/e57016a1732a483caf40418cbbe1228f.png,http://test.ly520.ren/file/20180820/e57016a1732a483caf40418cbbe1228f.png', '1', '1', '1', '精装修', '84.93', '19428.00', '普通住宅', '南环里东区11号楼0801', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 08:34:38');
INSERT INTO `sys_house_new` VALUES ('2', '冬日之冷 看昌平别墅之作珠江紫宸山', '整个户型总的来说，户型比较方正，可利用空间面积较大，三层的设计保证了个人的隐私，同时房间设备较为齐全，可以很好的保证两代人在一起生活，并且南北通透性，采光充足，自带花园，环境较为优雅，小编个人觉得很适合居住。', 'http://test.ly520.ren/file/20180824/20180824142342559724358.jpg', '2', '1', '1', '普通装修', '100.00', '20000.00', '普通住宅', '南环里东区12号楼0401', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 14:32:37');
INSERT INTO `sys_house_new` VALUES ('3', '北京怡园', '整个户型总的来说，户型比较方正，可利用空间面积较大，三层的设计保证了个人的隐私，同时房间设备较为齐全，可以很好的保证两代人在一起生活，并且南北通透性，采光充足，自带花园，环境较为优雅，小编个人觉得很适合居住。', 'http://test.ly520.ren/file/20180824/20180824143813543667320.jpg,http://test.ly520.ren/file/20180824/20180824143813771435607.jpg,http://test.ly520.ren/file/20180824/20180824143813898036733.jpg,http://test.ly520.ren/file/20180824/20180824143814006038104.jpg,http://test.ly520.ren/file/20180824/20180824143814125061652.jpg', '3', '2', '1', '精装修', '150.00', '89510.00', '普通住宅', '南环里东区13号楼0701', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 14:38:19');
INSERT INTO `sys_house_new` VALUES ('4', '首城汇景墅', '整个户型总的来说，户型比较方正，可利用空间面积较大，三层的设计保证了个人的隐私，同时房间设备较为齐全，可以很好的保证两代人在一起生活，并且南北通透性，采光充足，自带花园，环境较为优雅，小编个人觉得很适合居住。', 'http://test.ly520.ren/file/20180824/20180824154857222626753.jpg', '1', '1', '2', '普通装修', '50.00', '20.00', '普通住宅', '南环里东区14号楼0901', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 15:49:16');
INSERT INTO `sys_house_new` VALUES ('5', '金隅观澜时代', '整个户型总的来说，户型比较方正，可利用空间面积较大，三层的设计保证了个人的隐私，同时房间设备较为齐全，可以很好的保证两代人在一起生活，并且南北通透性，采光充足，自带花园，环境较为优雅，小编个人觉得很适合居住。', 'http://test.ly520.ren/file/20180829/20180830211148928064541.jpeg', '2', '2', '2', '普通装修', '123.00', '1236.00', '普通住宅', '南环里东区15号楼0301', '15028458961', '李四', '379472262', '1', '1', '2018-08-30 21:13:02');

-- ----------------------------
-- Table structure for sys_house_old
-- ----------------------------
DROP TABLE IF EXISTS `sys_house_old`;
CREATE TABLE `sys_house_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(255) DEFAULT NULL COMMENT '房屋主题',
  `remarks` varchar(1000) DEFAULT NULL COMMENT '房屋详情',
  `pictures` varchar(500) DEFAULT NULL COMMENT '房屋图片',
  `count_room` int(11) DEFAULT NULL COMMENT '卧室数量',
  `count_toilet` int(11) DEFAULT NULL COMMENT '卫生间数量',
  `count_hall` int(11) DEFAULT NULL COMMENT '厅数量',
  `decoration` varchar(255) DEFAULT NULL COMMENT '装修情况(1.未装修 2.普通装修 3.精装修)',
  `price` decimal(12,2) DEFAULT NULL COMMENT '房屋预计总价',
  `acreage` decimal(12,2) DEFAULT NULL COMMENT '房屋面积',
  `build` varchar(100) DEFAULT NULL COMMENT '房子建造年份',
  `address` varchar(500) DEFAULT NULL COMMENT '房屋地址',
  `linkphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `linkqq` varchar(100) DEFAULT NULL COMMENT '联系qq',
  `user_id` int(11) DEFAULT NULL COMMENT '发布人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常, 1.已过期)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='二手房表';

-- ----------------------------
-- Records of sys_house_old
-- ----------------------------
INSERT INTO `sys_house_old` VALUES ('1', '东关南里 一二层复式 豪华装修 无公摊面积带自建 停车免费。', '1.此房是南北通透的格局，一层全客厅朝南，卫生间大概7平米，厨房朝北，二层双卧朝南，中厅大概有20平米，次卧朝北；\r\n2.室内豪华装修，二层全木地板，整体欧派橱柜，二层红木实地板，背景墙一副实画，全环保壁纸，保持的好，\r\n3.小区的中间位置，不临街不把边，前面大操场，采光无遮挡，房子基本上没有公摊面积，一梯两户', 'http://test.ly520.ren/file/20180824/20180824155923925667201.jpg', '2', '1', '1', '未装修', '100.00', '82.00', '2018', '南环里东区17号楼0805', '15028458961', '李四', '379472262', '1', '0', '2018-08-24 16:00:15');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COMMENT='登录记录表';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('1', '的说法的事1', '192.168.1.1', '1', '2018-08-10 16:30:46');
INSERT INTO `sys_login_log` VALUES ('2', '的说法的事2', '192.168.1.1', '1', '2018-08-10 16:30:46');
INSERT INTO `sys_login_log` VALUES ('3', '的说法的事3', '192.168.1.1', '1', '2018-08-10 16:30:46');
INSERT INTO `sys_login_log` VALUES ('4', '123456', '192.168.1.1', '1', '2018-08-10 17:13:18');
INSERT INTO `sys_login_log` VALUES ('5', '登录日志', '192.168.1.252', '1', '2018-08-14 11:23:10');
INSERT INTO `sys_login_log` VALUES ('6', '登录日志', '192.168.1.252', '1', '2018-08-14 14:52:58');
INSERT INTO `sys_login_log` VALUES ('7', '登录日志', '192.168.1.252', '1', '2018-08-14 14:54:30');
INSERT INTO `sys_login_log` VALUES ('8', '登录日志', '192.168.1.252', '1', '2018-08-14 14:57:27');
INSERT INTO `sys_login_log` VALUES ('9', '登录日志', '192.168.1.252', '1', '2018-08-14 15:04:30');
INSERT INTO `sys_login_log` VALUES ('10', '退出日志', '192.168.1.252', '1', '2018-08-14 16:11:51');
INSERT INTO `sys_login_log` VALUES ('11', '登录日志', '192.168.1.252', '1', '2018-08-14 17:00:35');
INSERT INTO `sys_login_log` VALUES ('12', '退出日志', '192.168.1.252', '1', '2018-08-14 17:01:52');
INSERT INTO `sys_login_log` VALUES ('13', '登录日志', '192.168.1.252', '1', '2018-08-14 17:01:58');
INSERT INTO `sys_login_log` VALUES ('14', '退出日志', '192.168.1.252', '1', '2018-08-14 17:03:09');
INSERT INTO `sys_login_log` VALUES ('15', '登录日志', '192.168.1.252', '1', '2018-08-15 08:16:13');
INSERT INTO `sys_login_log` VALUES ('16', '退出日志', '192.168.1.252', '1', '2018-08-15 09:24:07');
INSERT INTO `sys_login_log` VALUES ('17', '登录日志', '192.168.1.252', '1', '2018-08-15 09:24:28');
INSERT INTO `sys_login_log` VALUES ('18', '退出日志', '192.168.1.252', '1', '2018-08-15 09:47:56');
INSERT INTO `sys_login_log` VALUES ('19', '登录日志', '192.168.1.252', '1', '2018-08-15 09:48:08');
INSERT INTO `sys_login_log` VALUES ('20', '登录日志', '192.168.1.252', '1', '2018-08-17 15:15:02');
INSERT INTO `sys_login_log` VALUES ('21', '登录日志', '192.168.1.252', '4', '2018-08-17 15:44:33');
INSERT INTO `sys_login_log` VALUES ('22', '登录日志', '192.168.1.252', '4', '2018-08-20 09:06:30');
INSERT INTO `sys_login_log` VALUES ('23', '登录日志', '192.168.1.252', '1', '2018-08-20 09:51:17');
INSERT INTO `sys_login_log` VALUES ('24', '登录日志', '192.168.1.252', '1', '2018-08-20 10:06:41');
INSERT INTO `sys_login_log` VALUES ('25', '登录日志', '192.168.1.252', '1', '2018-08-20 10:16:17');
INSERT INTO `sys_login_log` VALUES ('26', '登录日志', '192.168.1.252', '1', '2018-08-20 10:31:56');
INSERT INTO `sys_login_log` VALUES ('27', '登录日志', '192.168.1.252', '1', '2018-08-20 10:42:45');
INSERT INTO `sys_login_log` VALUES ('28', '登录日志', '192.168.1.252', '1', '2018-08-20 10:58:48');
INSERT INTO `sys_login_log` VALUES ('29', '登录日志', '192.168.1.252', '1', '2018-08-20 11:23:20');
INSERT INTO `sys_login_log` VALUES ('30', '登录日志', '192.168.1.252', '1', '2018-08-20 11:26:52');
INSERT INTO `sys_login_log` VALUES ('31', '登录日志', '0:0:0:0:0:0:0:1', '1', '2018-08-20 11:27:54');
INSERT INTO `sys_login_log` VALUES ('32', '登录日志', '192.168.1.252', '1', '2018-08-20 12:13:49');
INSERT INTO `sys_login_log` VALUES ('33', '登录日志', '192.168.1.252', '1', '2018-08-20 12:14:13');
INSERT INTO `sys_login_log` VALUES ('34', '登录日志', '192.168.1.252', '1', '2018-08-20 12:27:18');
INSERT INTO `sys_login_log` VALUES ('35', '登录日志', '192.168.1.252', '1', '2018-08-20 13:49:09');
INSERT INTO `sys_login_log` VALUES ('36', '登录日志', '192.168.1.252', '1', '2018-08-20 14:09:29');
INSERT INTO `sys_login_log` VALUES ('37', '登录日志', '192.168.1.252', '1', '2018-08-20 14:10:51');
INSERT INTO `sys_login_log` VALUES ('38', '退出日志', '192.168.1.252', '1', '2018-08-20 14:19:36');
INSERT INTO `sys_login_log` VALUES ('39', '登录日志', '192.168.1.252', '1', '2018-08-20 14:21:29');
INSERT INTO `sys_login_log` VALUES ('40', '退出日志', '192.168.1.252', '1', '2018-08-20 14:21:34');
INSERT INTO `sys_login_log` VALUES ('41', '退出日志', '192.168.1.252', null, '2018-08-20 14:21:48');
INSERT INTO `sys_login_log` VALUES ('42', '退出日志', '192.168.1.252', null, '2018-08-20 14:22:20');
INSERT INTO `sys_login_log` VALUES ('43', '退出日志', '192.168.1.252', null, '2018-08-20 14:22:32');
INSERT INTO `sys_login_log` VALUES ('44', '退出日志', '192.168.1.252', null, '2018-08-20 14:22:39');
INSERT INTO `sys_login_log` VALUES ('45', '登录日志', '192.168.1.252', '1', '2018-08-20 14:22:54');
INSERT INTO `sys_login_log` VALUES ('46', '退出日志', '192.168.1.252', '1', '2018-08-20 14:22:57');
INSERT INTO `sys_login_log` VALUES ('47', '登录日志', '192.168.1.252', '1', '2018-08-20 14:23:23');
INSERT INTO `sys_login_log` VALUES ('48', '登录日志', '192.168.1.252', '1', '2018-08-20 14:24:56');
INSERT INTO `sys_login_log` VALUES ('49', '退出日志', '192.168.1.252', '1', '2018-08-20 14:25:09');
INSERT INTO `sys_login_log` VALUES ('50', '登录日志', '192.168.1.252', '1', '2018-08-20 14:25:17');
INSERT INTO `sys_login_log` VALUES ('51', '登录日志', '192.168.1.252', '1', '2018-08-20 14:47:46');
INSERT INTO `sys_login_log` VALUES ('52', '登录日志', '192.168.1.252', '1', '2018-08-20 14:53:55');
INSERT INTO `sys_login_log` VALUES ('53', '登录日志', '192.168.1.252', '1', '2018-08-20 14:56:22');
INSERT INTO `sys_login_log` VALUES ('54', '登录日志', '116.24.66.209', '1', '2018-08-20 14:59:23');
INSERT INTO `sys_login_log` VALUES ('55', '退出日志', '192.168.1.252', '1', '2018-08-20 15:08:58');
INSERT INTO `sys_login_log` VALUES ('56', '登录日志', '192.168.1.252', '1', '2018-08-20 15:09:49');
INSERT INTO `sys_login_log` VALUES ('57', '登录日志', '192.168.1.252', '1', '2018-08-20 15:14:31');
INSERT INTO `sys_login_log` VALUES ('58', '登录日志', '192.168.1.252', '1', '2018-08-21 11:48:52');
INSERT INTO `sys_login_log` VALUES ('59', '登录日志', '192.168.1.252', '1', '2018-08-21 13:50:31');
INSERT INTO `sys_login_log` VALUES ('60', '登录日志', '192.168.1.252', '5', '2018-08-21 15:06:14');
INSERT INTO `sys_login_log` VALUES ('61', '登录日志', '192.168.1.252', '5', '2018-08-21 15:17:33');
INSERT INTO `sys_login_log` VALUES ('62', '登录日志', '192.168.1.252', '1', '2018-08-22 17:11:39');
INSERT INTO `sys_login_log` VALUES ('63', '登录日志', '192.168.1.252', '1', '2018-08-23 12:32:33');
INSERT INTO `sys_login_log` VALUES ('64', '登录日志', '192.168.1.252', '1', '2018-08-23 12:35:39');
INSERT INTO `sys_login_log` VALUES ('65', '登录日志', '192.168.1.252', '1', '2018-08-23 15:10:04');
INSERT INTO `sys_login_log` VALUES ('66', '登录日志', '0:0:0:0:0:0:0:1', '5', '2018-08-23 15:12:37');
INSERT INTO `sys_login_log` VALUES ('67', '登录日志', '192.168.1.252', '1', '2018-08-23 15:15:59');
INSERT INTO `sys_login_log` VALUES ('68', '登录日志', '192.168.1.252', '1', '2018-08-23 15:19:01');
INSERT INTO `sys_login_log` VALUES ('69', '登录日志', '192.168.1.252', '1', '2018-08-23 15:22:16');
INSERT INTO `sys_login_log` VALUES ('70', '登录日志', '192.168.1.252', '1', '2018-08-23 15:27:18');
INSERT INTO `sys_login_log` VALUES ('71', '登录日志', '192.168.1.252', '1', '2018-08-24 08:24:57');
INSERT INTO `sys_login_log` VALUES ('72', '登录日志', '192.168.1.252', '1', '2018-08-24 09:11:51');
INSERT INTO `sys_login_log` VALUES ('73', '登录日志', '192.168.1.252', '1', '2018-08-24 12:59:45');
INSERT INTO `sys_login_log` VALUES ('74', '登录日志', '192.168.1.252', '1', '2018-08-24 13:13:21');
INSERT INTO `sys_login_log` VALUES ('75', '退出日志', '192.168.1.252', '1', '2018-08-24 13:19:18');
INSERT INTO `sys_login_log` VALUES ('76', '登录日志', '192.168.1.252', '2', '2018-08-24 13:19:31');
INSERT INTO `sys_login_log` VALUES ('77', '登录日志', '192.168.1.252', '1', '2018-08-24 13:25:49');
INSERT INTO `sys_login_log` VALUES ('78', '登录日志', '192.168.1.252', '1', '2018-08-24 13:33:31');
INSERT INTO `sys_login_log` VALUES ('79', '登录日志', '192.168.1.252', '2', '2018-08-24 16:43:22');
INSERT INTO `sys_login_log` VALUES ('80', '登录日志', '0:0:0:0:0:0:0:1', '1', '2018-08-27 09:33:48');
INSERT INTO `sys_login_log` VALUES ('81', '退出日志', '192.168.1.252', '1', '2018-08-27 10:16:11');
INSERT INTO `sys_login_log` VALUES ('82', '登录日志', '192.168.1.252', '2', '2018-08-27 10:16:18');
INSERT INTO `sys_login_log` VALUES ('83', '退出日志', '192.168.1.252', '2', '2018-08-27 10:16:33');
INSERT INTO `sys_login_log` VALUES ('84', '登录日志', '192.168.1.252', '1', '2018-08-27 10:16:53');
INSERT INTO `sys_login_log` VALUES ('85', '登录日志', '192.168.1.252', '1', '2018-08-27 10:19:21');
INSERT INTO `sys_login_log` VALUES ('86', '登录日志', '192.168.1.252', '1', '2018-08-28 08:45:38');
INSERT INTO `sys_login_log` VALUES ('87', '登录日志', '192.168.1.252', '1', '2018-08-28 09:46:26');
INSERT INTO `sys_login_log` VALUES ('88', '登录日志', '192.168.1.252', '1', '2018-08-29 08:06:31');
INSERT INTO `sys_login_log` VALUES ('89', '登录日志', '192.168.1.252', '1', '2018-08-29 09:10:16');
INSERT INTO `sys_login_log` VALUES ('90', '登录日志', '192.168.1.252', '1', '2018-08-29 11:20:12');
INSERT INTO `sys_login_log` VALUES ('91', '退出日志', '192.168.1.252', '1', '2018-08-29 14:36:00');
INSERT INTO `sys_login_log` VALUES ('92', '登录日志', '192.168.1.252', '1', '2018-08-29 14:36:35');
INSERT INTO `sys_login_log` VALUES ('93', '登录日志', '192.168.1.252', '1', '2018-08-29 14:42:21');
INSERT INTO `sys_login_log` VALUES ('94', '退出日志', '192.168.1.252', '1', '2018-08-29 14:42:35');
INSERT INTO `sys_login_log` VALUES ('95', '登录日志', '192.168.1.252', '5', '2018-08-29 14:42:47');
INSERT INTO `sys_login_log` VALUES ('96', '登录日志', '118.31.2.210', '2', '2018-08-29 16:39:48');
INSERT INTO `sys_login_log` VALUES ('97', '登录日志', '118.31.2.210', '6', '2018-08-29 16:44:08');
INSERT INTO `sys_login_log` VALUES ('98', '登录日志', '118.31.2.210', '1', '2018-08-30 09:25:50');
INSERT INTO `sys_login_log` VALUES ('99', '登录日志', '118.31.2.210', '1', '2018-08-30 19:42:24');
INSERT INTO `sys_login_log` VALUES ('100', '登录日志', '118.31.2.210', '1', '2018-08-30 19:52:30');
INSERT INTO `sys_login_log` VALUES ('101', '登录日志', '118.31.2.210', '2', '2018-08-30 20:18:35');
INSERT INTO `sys_login_log` VALUES ('102', '退出日志', '118.31.2.210', '2', '2018-08-30 20:39:08');
INSERT INTO `sys_login_log` VALUES ('103', '登录日志', '118.31.2.210', '5', '2018-08-30 20:40:05');
INSERT INTO `sys_login_log` VALUES ('104', '退出日志', '118.31.2.210', '5', '2018-08-30 20:42:35');
INSERT INTO `sys_login_log` VALUES ('105', '登录日志', '118.31.2.210', '1', '2018-08-30 20:42:49');
INSERT INTO `sys_login_log` VALUES ('106', '登录日志', '118.31.2.210', '2', '2018-08-30 21:14:46');
INSERT INTO `sys_login_log` VALUES ('107', '登录日志', '118.31.2.210', '1', '2018-08-30 21:19:34');
INSERT INTO `sys_login_log` VALUES ('108', '登录日志', '118.31.2.210', '1', '2018-08-30 21:19:40');
INSERT INTO `sys_login_log` VALUES ('109', '登录日志', '118.31.2.210', '2', '2018-08-30 21:19:52');
INSERT INTO `sys_login_log` VALUES ('110', '登录日志', '118.31.2.210', '1', '2018-08-30 21:20:03');
INSERT INTO `sys_login_log` VALUES ('111', '登录日志', '118.31.2.210', '1', '2018-08-30 21:20:47');
INSERT INTO `sys_login_log` VALUES ('112', '登录日志', '118.31.2.210', '1', '2018-08-30 21:21:42');
INSERT INTO `sys_login_log` VALUES ('113', '登录日志', '118.31.2.210', '1', '2018-08-30 21:24:36');
INSERT INTO `sys_login_log` VALUES ('114', '登录日志', '118.31.2.210', '1', '2018-08-30 21:25:11');
INSERT INTO `sys_login_log` VALUES ('115', '登录日志', '118.31.2.210', '7', '2018-08-30 21:30:15');
INSERT INTO `sys_login_log` VALUES ('116', '登录日志', '118.31.2.210', '1', '2018-08-30 21:35:42');
INSERT INTO `sys_login_log` VALUES ('117', '登录日志', '118.31.2.210', '1', '2018-08-30 21:37:23');
INSERT INTO `sys_login_log` VALUES ('118', '登录日志', '118.31.2.210', '1', '2018-08-30 21:38:44');
INSERT INTO `sys_login_log` VALUES ('119', '登录日志', '118.31.2.210', '1', '2018-08-30 21:40:32');
INSERT INTO `sys_login_log` VALUES ('120', '登录日志', '118.31.2.210', '1', '2018-08-30 21:44:14');
INSERT INTO `sys_login_log` VALUES ('121', '登录日志', '118.31.2.210', '5', '2018-08-30 21:44:50');
INSERT INTO `sys_login_log` VALUES ('122', '登录日志', '118.31.2.210', '1', '2018-08-30 21:51:49');
INSERT INTO `sys_login_log` VALUES ('123', '登录日志', '118.31.2.210', '2', '2018-08-30 21:52:28');
INSERT INTO `sys_login_log` VALUES ('124', '登录日志', '118.31.2.210', '2', '2018-08-30 21:52:45');
INSERT INTO `sys_login_log` VALUES ('125', '登录日志', '118.31.2.210', '1', '2018-08-30 21:53:58');
INSERT INTO `sys_login_log` VALUES ('126', '登录日志', '118.31.2.210', '5', '2018-08-30 21:54:40');
INSERT INTO `sys_login_log` VALUES ('127', '登录日志', '118.31.2.210', '2', '2018-08-30 21:56:04');
INSERT INTO `sys_login_log` VALUES ('128', '退出日志', '118.31.2.210', '1', '2018-08-30 21:57:58');
INSERT INTO `sys_login_log` VALUES ('129', '登录日志', '118.31.2.210', '2', '2018-08-30 21:59:03');
INSERT INTO `sys_login_log` VALUES ('130', '登录日志', '118.31.2.210', '1', '2018-08-30 21:59:36');
INSERT INTO `sys_login_log` VALUES ('131', '登录日志', '118.31.2.210', '2', '2018-08-30 22:01:26');
INSERT INTO `sys_login_log` VALUES ('132', '退出日志', '118.31.2.210', '1', '2018-08-30 22:03:04');
INSERT INTO `sys_login_log` VALUES ('133', '登录日志', '118.31.2.210', '1', '2018-08-30 22:03:12');
INSERT INTO `sys_login_log` VALUES ('134', '登录日志', '118.31.2.210', '1', '2018-08-30 22:03:51');
INSERT INTO `sys_login_log` VALUES ('135', '登录日志', '118.31.2.210', '1', '2018-08-30 22:05:36');
INSERT INTO `sys_login_log` VALUES ('136', '登录日志', '118.31.2.210', '1', '2018-08-30 22:05:45');
INSERT INTO `sys_login_log` VALUES ('137', '登录日志', '118.31.2.210', '1', '2018-08-30 22:06:56');
INSERT INTO `sys_login_log` VALUES ('138', '登录日志', '118.31.2.210', '2', '2018-08-30 22:07:24');
INSERT INTO `sys_login_log` VALUES ('139', '登录日志', '118.31.2.210', '1', '2018-08-30 22:07:36');
INSERT INTO `sys_login_log` VALUES ('140', '登录日志', '118.31.2.210', '2', '2018-08-30 22:09:33');
INSERT INTO `sys_login_log` VALUES ('141', '登录日志', '118.31.2.210', '1', '2018-08-30 22:13:32');
INSERT INTO `sys_login_log` VALUES ('142', '退出日志', '118.31.2.210', '2', '2018-08-30 22:21:16');
INSERT INTO `sys_login_log` VALUES ('143', '登录日志', '118.31.2.210', '1', '2018-08-30 22:21:27');
INSERT INTO `sys_login_log` VALUES ('144', '退出日志', '118.31.2.210', '1', '2018-08-30 22:23:21');
INSERT INTO `sys_login_log` VALUES ('145', '登录日志', '118.31.2.210', '7', '2018-08-30 22:23:34');
INSERT INTO `sys_login_log` VALUES ('146', '登录日志', '118.31.2.210', '1', '2018-08-30 22:27:31');
INSERT INTO `sys_login_log` VALUES ('147', '退出日志', '118.31.2.210', '1', '2018-08-30 22:27:46');
INSERT INTO `sys_login_log` VALUES ('148', '登录日志', '118.31.2.210', '2', '2018-08-30 22:27:55');
INSERT INTO `sys_login_log` VALUES ('149', '登录日志', '118.31.2.210', '2', '2018-08-30 22:28:10');
INSERT INTO `sys_login_log` VALUES ('150', '登录日志', '118.31.2.210', '1', '2018-08-30 22:28:26');
INSERT INTO `sys_login_log` VALUES ('151', '登录日志', '118.31.2.210', '1', '2018-08-30 22:28:49');
INSERT INTO `sys_login_log` VALUES ('152', '登录日志', '118.31.2.210', '2', '2018-08-30 22:29:14');
INSERT INTO `sys_login_log` VALUES ('153', '退出日志', '118.31.2.210', '2', '2018-08-30 22:29:39');
INSERT INTO `sys_login_log` VALUES ('154', '登录日志', '118.31.2.210', '1', '2018-08-30 22:39:07');
INSERT INTO `sys_login_log` VALUES ('155', '登录日志', '118.31.2.210', '1', '2018-08-30 22:41:39');
INSERT INTO `sys_login_log` VALUES ('156', '登录日志', '118.31.2.210', '1', '2018-08-30 22:44:56');
INSERT INTO `sys_login_log` VALUES ('157', '登录日志', '192.168.1.252', '1', '2018-08-31 07:55:00');
INSERT INTO `sys_login_log` VALUES ('158', '登录日志', '118.31.2.210', '1', '2018-08-31 08:37:38');
INSERT INTO `sys_login_log` VALUES ('159', '登录日志', '118.31.2.210', '1', '2018-08-31 08:39:19');
INSERT INTO `sys_login_log` VALUES ('160', '登录日志', '118.31.2.210', '1', '2018-08-31 10:59:47');
INSERT INTO `sys_login_log` VALUES ('161', '登录日志', '118.31.2.210', '1', '2018-08-31 11:23:37');
INSERT INTO `sys_login_log` VALUES ('162', '退出日志', '118.31.2.210', '1', '2018-08-31 13:46:12');
INSERT INTO `sys_login_log` VALUES ('163', '登录日志', '118.31.2.210', '1', '2018-08-31 18:16:56');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父结点id',
  `name` varchar(128) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(128) DEFAULT NULL COMMENT '图标地址',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序号',
  `status` int(11) DEFAULT NULL COMMENT '菜单状态(0.可用, 1.不可用)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统模块', '&#xe674;', '', '0', '0', '2018-08-14 11:13:46');
INSERT INTO `sys_menu` VALUES ('2', '1', '菜单管理', '&#xe691;', 'menu/menuManage', '0', '0', '2018-08-14 11:13:46');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', '&#xe620;', 'role/roleManage', '1', '0', '2018-08-14 11:13:46');
INSERT INTO `sys_menu` VALUES ('4', '1', '用户管理', '&#xe61c;', 'user/userManage', '2', '0', '2018-08-14 11:13:46');
INSERT INTO `sys_menu` VALUES ('5', '1', '定时器任务管理', '&#xe6c3;', 'scheduleJob/scheduleJobManage', '3', '0', '2018-08-14 11:13:46');
INSERT INTO `sys_menu` VALUES ('6', '0', '日志模块', '&#xe644;', '', '3', '0', '2018-08-15 10:00:24');
INSERT INTO `sys_menu` VALUES ('7', '6', '登录日志管理', '', '/loginLog/loginLogManage', '0', '0', '2018-08-15 10:01:19');
INSERT INTO `sys_menu` VALUES ('8', '0', '业务模块', '&#xe6ac;', '', '1', '0', '2018-08-27 09:38:32');
INSERT INTO `sys_menu` VALUES ('9', '8', '二手市场管理', '', '/second/secondManage', '0', '0', '2018-08-27 09:39:27');
INSERT INTO `sys_menu` VALUES ('10', '8', '新房管理', '', '/houseNew/houseNewManage', '1', '0', '2018-08-27 09:40:46');
INSERT INTO `sys_menu` VALUES ('11', '8', '二手房管理', '', '/houseOld/houseOldManage', '2', '0', '2018-08-27 09:40:46');
INSERT INTO `sys_menu` VALUES ('12', '8', '出租房管理', '', '/houseLease/houseLeaseManage', '3', '0', '2018-08-27 09:40:46');
INSERT INTO `sys_menu` VALUES ('13', '1', '数据监控', '&#xe6dd;', '/druid', '4', '0', '2018-08-28 08:52:20');
INSERT INTO `sys_menu` VALUES ('14', '0', '农场模块', '&#xe6e8;', '', '2', '0', '2018-08-28 09:39:25');
INSERT INTO `sys_menu` VALUES ('15', '14', '我的农场', '&#xe63a;', '/farm/myfarm', '0', '0', '2018-08-28 09:39:55');
INSERT INTO `sys_menu` VALUES ('16', '14', '农场产品', '&#xe65f;', '/farmProduct/farmProductManage', '1', '0', '2018-08-28 09:40:11');
INSERT INTO `sys_menu` VALUES ('17', '14', '农场订单', '&#xe602;', '/farmOrder/farmOrderManage', '2', '0', '2018-08-28 09:42:33');
INSERT INTO `sys_menu` VALUES ('18', '8', '农场管理', '', '/farm/farmManage', '4', '0', '2018-08-28 11:05:02');

-- ----------------------------
-- Table structure for sys_order_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_order_record`;
CREATE TABLE `sys_order_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `farm_order_id` int(11) DEFAULT NULL COMMENT '农场订单id',
  `farm_product_id` int(11) DEFAULT NULL COMMENT '农场商品id',
  `name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL COMMENT '商品价格',
  `num` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='订单记录表';

-- ----------------------------
-- Records of sys_order_record
-- ----------------------------
INSERT INTO `sys_order_record` VALUES ('1', '1', '1', '空心菜', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '5.40', '1', '2018-08-29 12:28:48');
INSERT INTO `sys_order_record` VALUES ('2', '1', '2', '小白菜', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '10.50', '2', '2018-08-29 12:28:51');
INSERT INTO `sys_order_record` VALUES ('3', '1', '3', '白萝卜', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '10.00', '3', '2018-08-29 12:28:54');
INSERT INTO `sys_order_record` VALUES ('4', '2', '2', '小白菜', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '10.50', '4', '2018-08-29 12:31:46');
INSERT INTO `sys_order_record` VALUES ('5', '3', '1', '空心菜', 'http://test.ly520.ren/file/20180828/20180828142902095714724.jpg', '5.40', '3', '2018-08-29 16:41:43');
INSERT INTO `sys_order_record` VALUES ('6', '3', '4', '紫菜', 'http://test.ly520.ren/file/20180829/20180829154856424160568.jpg', '12.50', '3', '2018-08-29 16:41:43');
INSERT INTO `sys_order_record` VALUES ('7', '4', '5', '毛豆', 'http://test.ly520.ren/file/20180829/20180829164556477484046.jpg', '14.40', '3', '2018-08-29 16:49:01');
INSERT INTO `sys_order_record` VALUES ('8', '4', '6', '黄瓜', 'http://test.ly520.ren/file/20180829/20180829164636952011714.jpg', '21.00', '5', '2018-08-29 16:49:01');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `tip` varchar(255) DEFAULT NULL COMMENT '角色提示',
  `remarks` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `status` int(11) DEFAULT NULL COMMENT '角色状态(0.可用, 1.不可用)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '超级管理员', '0', '2018-08-14 11:11:20');
INSERT INTO `sys_role` VALUES ('2', '社区管理员', 'manager', '社区管理员', '0', '2018-08-14 15:08:57');
INSERT INTO `sys_role` VALUES ('3', '农场管理员', 'farm', '农场管理员', '0', '2018-08-15 09:41:14');
INSERT INTO `sys_role` VALUES ('4', '普通居民', 'resident', '普通居民', '0', '2018-08-15 09:56:37');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('61', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('62', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('63', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('64', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('65', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('66', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('67', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('68', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('69', '1', '8');
INSERT INTO `sys_role_menu` VALUES ('70', '1', '9');
INSERT INTO `sys_role_menu` VALUES ('71', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('72', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('73', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('74', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('79', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('80', '2', '4');
INSERT INTO `sys_role_menu` VALUES ('81', '2', '6');
INSERT INTO `sys_role_menu` VALUES ('82', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('83', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('84', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('85', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('86', '2', '11');
INSERT INTO `sys_role_menu` VALUES ('87', '2', '12');
INSERT INTO `sys_role_menu` VALUES ('88', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('89', '3', '6');
INSERT INTO `sys_role_menu` VALUES ('90', '3', '7');
INSERT INTO `sys_role_menu` VALUES ('91', '3', '14');
INSERT INTO `sys_role_menu` VALUES ('92', '3', '15');
INSERT INTO `sys_role_menu` VALUES ('93', '3', '16');
INSERT INTO `sys_role_menu` VALUES ('94', '3', '17');

-- ----------------------------
-- Table structure for sys_schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_schedule_job`;
CREATE TABLE `sys_schedule_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `job_name` varchar(250) DEFAULT NULL COMMENT 'job名称',
  `job_group` varchar(250) DEFAULT NULL COMMENT 'job分组',
  `job_status` int(11) DEFAULT NULL COMMENT 'job状态',
  `cron_expression` varchar(250) DEFAULT NULL COMMENT 'cron表达式',
  `remarks` varchar(250) DEFAULT NULL COMMENT 'job描述',
  `bean_class` varchar(250) DEFAULT NULL COMMENT 'job执行类',
  `is_concurrent` varchar(250) DEFAULT NULL COMMENT '顺序执行',
  `spring_id` varchar(250) DEFAULT NULL COMMENT 'job执行ID',
  `method_name` varchar(250) DEFAULT NULL COMMENT '执行方法',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时器任务信息表';

-- ----------------------------
-- Records of sys_schedule_job
-- ----------------------------
INSERT INTO `sys_schedule_job` VALUES ('1', 'test', 'test', '0', '0/6 * * * * ? *', '测试例子', 'com.zhang.shequ.core.common.quartz.job.QuartzJob', '0', '', 'test', '2018-08-15 10:09:32');
INSERT INTO `sys_schedule_job` VALUES ('2', 'business', 'business', '1', '0 5 0 * * ? *', '业务处理', 'com.zhang.shequ.core.common.quartz.job.QuartzJob', '0', '', 'businessDeal', '2018-07-03 11:37:15');

-- ----------------------------
-- Table structure for sys_second
-- ----------------------------
DROP TABLE IF EXISTS `sys_second`;
CREATE TABLE `sys_second` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `content` varchar(255) DEFAULT NULL COMMENT '二手商品描述',
  `category` int(11) DEFAULT NULL COMMENT '二手商品类别（1.家具 2.电器 3.杂物 4.其他）',
  `pictures` varchar(500) DEFAULT NULL COMMENT '二手商品图片',
  `degree` int(11) DEFAULT NULL COMMENT '新旧程度（1.全新 2.6-9成新 3.5成新  4.5成以下）',
  `price` int(11) DEFAULT NULL COMMENT '商品价值',
  `linkphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `linkqq` varchar(100) DEFAULT NULL COMMENT '联系qq',
  `user_id` int(11) DEFAULT NULL COMMENT '发布人id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0.正常, 1.已过期)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='二手商品表';

-- ----------------------------
-- Records of sys_second
-- ----------------------------
INSERT INTO `sys_second` VALUES ('1', '三星W2015国行双卡三网金色,全套在保四个月。', '1', 'http://test.ly520.ren/file/20180820/e57016a1732a483caf40418cbbe1228f.png,http://test.ly520.ren/file/20180820/e57016a1732a483caf40418cbbe1228f.png', '1', '1', '15028458961', '李四', '379472262', '1', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('2', ' 几台爱普生九成新投影机转让，配件齐全，原装件，高亮度。', '2', 'http://test.ly520.ren/file/20180823/20180823151035000746583.jpg,http://test.ly520.ren/file/20180823/20180823151037350426718.jpg,http://test.ly520.ren/file/20180823/20180823151037469853570.jpg', '1', '1', '15028458961', '李四', '379472262', '1', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('3', '爱普生4880低价转让，EPSON 生意变动。', '4', 'http://test.ly520.ren/file/20180823/20180823151703767675456.png', '4', '7', '15028458961', '李四', '379472262', '1', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('4', '低价出售二手空调 ，品牌多，价格低，质量保证，壁挂式，柜试。', '4', 'http://test.ly520.ren/file/20180824/20180824131606503635235.jpg', '4', '5', '15028458961', '李四', '379472262', '1', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('5', '房租到期，原价100多的牛仔裤，休闲裤现在只要20-30！', '3', 'http://test.ly520.ren/file/20180824/20180824132121423560861.png', '4', '5', '18672884021', '张三', '1602145874', '2', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('6', '15.4寸大屏幕笔记本，P系列高端CPU，4G内存，低价转让。', '3', 'http://test.ly520.ren/file/20180824/20180824164352174174430.jpg,http://test.ly520.ren/file/20180824/20180824164412909752851.png,http://test.ly520.ren/file/20180824/20180824164424167175762.png,http://test.ly520.ren/file/20180824/20180824164508089242816.jpg', '4', '5', '18672884021', '张三', '1602145874', '2', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('7', ' 二手鬼火踏板摩托车，手续齐全，便宜卖。', '2', 'http://test.ly520.ren/file/20180829/20180830204051595676066.jpeg', '3', '5', '15896325851', '王五', '952587458', '5', '0', '2018-08-30 20:41:32');
INSERT INTO `sys_second` VALUES ('8', ' 个人转让闲置PR0水果平板128G', '3', 'http://test.ly520.ren/file/20180829/20180830221440306800472.jpg,http://test.ly520.ren/file/20180829/20180830221455443673356.png', '2', '6', '15028458961', '李四', '379472262', '1', '0', '2018-08-30 22:15:23');

-- ----------------------------
-- Table structure for sys_second_ask
-- ----------------------------
DROP TABLE IF EXISTS `sys_second_ask`;
CREATE TABLE `sys_second_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `second_id` int(11) DEFAULT NULL COMMENT '二手商品id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='评论记录表';

-- ----------------------------
-- Records of sys_second_ask
-- ----------------------------
INSERT INTO `sys_second_ask` VALUES ('1', '没有', '1', '1', '2018-08-22 17:04:38');
INSERT INTO `sys_second_ask` VALUES ('2', '没有', '1', '1', '2018-08-22 17:10:59');
INSERT INTO `sys_second_ask` VALUES ('3', '没有', '1', '1', '2018-08-22 17:11:48');
INSERT INTO `sys_second_ask` VALUES ('4', '没有', '1', '1', '2018-08-22 17:14:02');
INSERT INTO `sys_second_ask` VALUES ('5', '你是哪个', '1', '1', '2018-08-22 17:14:59');
INSERT INTO `sys_second_ask` VALUES ('6', '没有', '1', '1', '2018-08-22 17:15:46');
INSERT INTO `sys_second_ask` VALUES ('7', '没有', '1', '1', '2018-08-22 17:18:09');
INSERT INTO `sys_second_ask` VALUES ('8', '没有', '1', '1', '2018-08-22 17:21:07');
INSERT INTO `sys_second_ask` VALUES ('9', '呵呵', '1', '1', '2018-08-23 12:38:35');
INSERT INTO `sys_second_ask` VALUES ('10', '你啊一米五一心一意嘻嘻嘻嘻知我ing哦哦你跟你你摸给你没', '1', '1', '2018-08-23 12:38:50');
INSERT INTO `sys_second_ask` VALUES ('11', '没有', '5', '2', '2018-08-23 15:12:58');
INSERT INTO `sys_second_ask` VALUES ('12', '好了没', '1', '2', '2018-08-23 15:16:11');
INSERT INTO `sys_second_ask` VALUES ('13', '没有', '1', '2', '2018-08-24 13:14:20');
INSERT INTO `sys_second_ask` VALUES ('14', '搜狗', '2', '4', '2018-08-24 13:38:49');
INSERT INTO `sys_second_ask` VALUES ('15', 'znsjj莫莫', '2', '5', '2018-08-24 16:43:36');
INSERT INTO `sys_second_ask` VALUES ('18', '呵呵呵', '1', '6', '2018-08-27 11:38:55');
INSERT INTO `sys_second_ask` VALUES ('19', 'fddd ', '1', '1', '2018-08-28 10:34:02');
INSERT INTO `sys_second_ask` VALUES ('20', 'dsfdsfdsfdsf', '1', '3', '2018-08-28 10:38:18');
INSERT INTO `sys_second_ask` VALUES ('21', '便宜一点', '5', '7', '2018-08-30 20:42:12');
INSERT INTO `sys_second_ask` VALUES ('22', '我想买', '1', '7', '2018-08-30 21:13:34');
INSERT INTO `sys_second_ask` VALUES ('23', '买个屁', '1', '7', '2018-08-30 21:57:04');
INSERT INTO `sys_second_ask` VALUES ('24', '假货', '1', '8', '2018-08-30 22:15:45');
INSERT INTO `sys_second_ask` VALUES ('25', '自私', '1', '6', '2018-08-31 08:40:05');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(250) DEFAULT NULL COMMENT '用户名',
  `password` varchar(250) DEFAULT NULL COMMENT '密码',
  `name` varchar(166) DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(145) DEFAULT NULL COMMENT '身份证',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像图片',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `address` varchar(145) DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(145) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(145) DEFAULT NULL COMMENT '邮箱',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `status` int(11) DEFAULT NULL COMMENT '状态(0：启用  1：冻结 2：未认证）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '李四', '360600199209296435', 'http://test.ly520.ren/file/20180829/20180830222050242810558.png', '2', '南环里东区5号楼1101', '15028458961', '1609800619@qq.com', '1', '0', '2018-08-14 11:06:27');
INSERT INTO `sys_user` VALUES ('2', '10000', '827ccb0eea8a706c4c34a16891f84e7b', '张三', '360600199209296435', 'http://test.ly520.ren/file/20180824/20180824131953801307602.png', '2', '清秀园南区1102', '18672884021', 'fdsfds@qq.com', '2', '0', '2018-08-15 09:50:42');
INSERT INTO `sys_user` VALUES ('5', '10001', '827ccb0eea8a706c4c34a16891f84e7b', '王五', '360600199209296435', 'http://test.ly520.ren/file/20180824/20180824131953801307602.png', '2', '京科苑50号楼1103', '15896325851', '1585@qq.com', '3', '0', '2018-08-21 15:04:20');
INSERT INTO `sys_user` VALUES ('6', '10002', '827ccb0eea8a706c4c34a16891f84e7b', '钱司', '360600199209296435', 'http://test.ly520.ren/file/20180824/20180824131953801307602.png', '1', '昌盛园一区11号楼1701', '18585458541', '414151@qq.com', '3', '0', '2018-08-28 14:33:21');
INSERT INTO `sys_user` VALUES ('7', '10003', '827ccb0eea8a706c4c34a16891f84e7b', '赵丽', '360600199209296435', 'http://test.ly520.ren/file/20180824/20180824131953801307602.png', '1', '昌盛园一区3号楼1120', '12586325785', null, '4', '2', '2018-08-30 21:30:03');
