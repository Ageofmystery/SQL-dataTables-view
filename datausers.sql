/*
Navicat MySQL Data Transfer

Source Server         : New
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : datausers

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-07 20:56:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_datainfo`
-- ----------------------------
DROP TABLE IF EXISTS `user_datainfo`;
CREATE TABLE `user_datainfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `birthplace` varchar(255) NOT NULL DEFAULT '',
  `profession` varchar(255) NOT NULL DEFAULT '',
  `phonenumber` varchar(25) NOT NULL DEFAULT '',
  `datetime` varchar(255) NOT NULL DEFAULT '00.00.0000 00:00:00',
  `actions` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_datainfo
-- ----------------------------
INSERT INTO `user_datainfo` VALUES ('1', 'John ', 'smith', 'london', 'System Architect', '090000', '14.04.2016 14:32:00', null);
INSERT INTO `user_datainfo` VALUES ('2', 'John ', 'Johnns', 'washington', 'Accountant', '092238', '24.04.2016 14:32:09', null);
INSERT INTO `user_datainfo` VALUES ('3', 'Tiger', 'Nixon', 'Edinburgh', 'Junior Technical Author', '092311', '16.04.2016 14:32:12', null);
INSERT INTO `user_datainfo` VALUES ('4', 'Cedric', 'Kelly', 'Senior Javascript Developer', 'Senior Javascript Developer', '099233', '14.04.2016 14:32:17', null);
INSERT INTO `user_datainfo` VALUES ('5', 'Airi ', 'Satou', 'Tokyo', 'Accountant', '800006', '21.04.2016 14:32:20', null);
INSERT INTO `user_datainfo` VALUES ('6', 'Lenny', 'Groth', 'Sile', 'Regional Director', '788304', '22.04.2016 20:09:24', null);
INSERT INTO `user_datainfo` VALUES ('7', 'Angelica', 'Ramos', 'London', 'Chief Executive Officer', '453543', '11.04.2016 14:32:34', null);
INSERT INTO `user_datainfo` VALUES ('8', 'Ashton', 'Cox', 'San Francisco', 'Junior Technical Author', '982313', '03.04.2016 14:32:40', null);
INSERT INTO `user_datainfo` VALUES ('9', 'Brenden', 'Wagner', 'San Francisco', 'Software Engineer', '546645', '04.04.2016 14:32:45', null);
INSERT INTO `user_datainfo` VALUES ('10', 'Brielle', 'Williamson', 'New York', 'Integration Specialist', '676767', '24.04.2016 14:32:53', null);
INSERT INTO `user_datainfo` VALUES ('11', 'Bruno', 'Nash', 'London', 'Software Engineer', '456456', '09.04.2016 14:32:57', null);
INSERT INTO `user_datainfo` VALUES ('12', 'Caesar', 'Vance', 'New York', 'Pre-Sales Support', '546475', '11.04.2016 14:33:03', null);
INSERT INTO `user_datainfo` VALUES ('13', 'Cara', 'Stevens', 'New York', 'Sales Assistant', '567574', '12.04.2016 14:33:06', null);
INSERT INTO `user_datainfo` VALUES ('14', 'Kelly', 'Nash', 'Moscow', 'Integration Specialist', '344534', '13.04.2016 14:33:09', null);
INSERT INTO `user_datainfo` VALUES ('15', 'Rhona', 'Davidson', 'Tokyo', 'Integration Specialist', '456456', '15.04.2016 14:33:13', null);
INSERT INTO `user_datainfo` VALUES ('16', 'Colleen', 'Hurst', 'San Francisco', 'Javascript Developer', '567575', '07.04.2016 14:33:17', null);
INSERT INTO `user_datainfo` VALUES ('17', 'Sonya', 'Frost', 'Edinburgh', 'Software Engineer', '657578', '08.04.2016 14:33:21', null);
INSERT INTO `user_datainfo` VALUES ('18', 'Jena', 'Gaines', 'London', 'Office Manager', '678779', '16.04.2016 14:33:25', null);
INSERT INTO `user_datainfo` VALUES ('19', 'Charde ', 'Marshall', 'San Francisco', 'Regional Director', '644789', '16.04.2016 14:33:33', null);
INSERT INTO `user_datainfo` VALUES ('20', 'Tatyana', 'Fitzpatrick', 'London', 'Regional Director', '863365', '17.04.2016 14:33:40', null);
INSERT INTO `user_datainfo` VALUES ('21', 'Ian', 'McArres', 'Irdev', 'Admin', '876232', '08.04.2016 20:13:10', null);
