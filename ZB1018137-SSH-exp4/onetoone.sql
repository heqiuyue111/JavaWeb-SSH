/*
Navicat MySQL Data Transfer

Source Server         : ex
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : onetoone

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-15 11:45:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(40) DEFAULT NULL,
  `CITY` varchar(40) DEFAULT NULL,
  `STREET` varchar(100) DEFAULT NULL,
  `ZIPCODE` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('2', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('3', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('4', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('5', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('6', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('7', '北京市', '北京市', '清华园', '100084');
INSERT INTO `address` VALUES ('8', '北京市', '北京市', '清华园', '100084');

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `CLIENTNAME` char(20) DEFAULT NULL,
  `PHONE` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', '李想', '010-56565566', 'lixiang@163.com', '1');
INSERT INTO `client` VALUES ('2', '李想', '010-56565566', 'lixiang@163.com', '2');
INSERT INTO `client` VALUES ('3', '李想', '010-56565566', 'lixiang@163.com', '3');
INSERT INTO `client` VALUES ('4', '李想', '010-56565566', 'lixiang@163.com', '4');
INSERT INTO `client` VALUES ('5', '李想', '010-56565566', 'lixiang@163.com', '5');
INSERT INTO `client` VALUES ('6', '李想', '010-56565566', 'lixiang@163.com', '6');
INSERT INTO `client` VALUES ('7', '李想', '010-56565566', 'lixiang@163.com', '7');
INSERT INTO `client` VALUES ('8', '李想', '010-56565566', 'lixiang@163.com', '8');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `COMPANYNAME` varchar(100) DEFAULT NULL,
  `LINKMAN` char(20) DEFAULT NULL,
  `TELEPHONE` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('2', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('3', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('4', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('5', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('6', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('7', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO `company` VALUES ('8', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `LOGINNAME` char(20) DEFAULT NULL,
  `LOGINPWD` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'QQ', '123');
INSERT INTO `login` VALUES ('2', 'QQ', '123');
INSERT INTO `login` VALUES ('3', 'QQ', '123');
INSERT INTO `login` VALUES ('4', 'QQ', '123');
INSERT INTO `login` VALUES ('5', 'QQ', '123');
INSERT INTO `login` VALUES ('6', 'QQ', '123');
INSERT INTO `login` VALUES ('7', 'QQ', '123');
INSERT INTO `login` VALUES ('8', 'QQ', '123');
