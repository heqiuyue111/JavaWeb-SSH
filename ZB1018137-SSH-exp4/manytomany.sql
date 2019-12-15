/*
Navicat MySQL Data Transfer

Source Server         : ex
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : manytomany

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-15 11:44:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ITEMNO` varchar(20) DEFAULT NULL,
  `ITEMNAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '001', 'A商品');
INSERT INTO `items` VALUES ('2', '002', 'B商品');
INSERT INTO `items` VALUES ('3', '003', 'C商品');
INSERT INTO `items` VALUES ('4', '001', 'A商品');
INSERT INTO `items` VALUES ('5', '002', 'B商品');
INSERT INTO `items` VALUES ('6', '003', 'C商品');
INSERT INTO `items` VALUES ('7', '001', 'A商品');
INSERT INTO `items` VALUES ('8', '002', 'B商品');
INSERT INTO `items` VALUES ('9', '003', 'C商品');
INSERT INTO `items` VALUES ('10', '001', 'A商品');
INSERT INTO `items` VALUES ('11', '002', 'B商品');
INSERT INTO `items` VALUES ('12', '003', 'C商品');
INSERT INTO `items` VALUES ('13', '001', 'A商品');
INSERT INTO `items` VALUES ('14', '002', 'B商品');
INSERT INTO `items` VALUES ('15', '003', 'C商品');
INSERT INTO `items` VALUES ('16', '001', 'A商品');
INSERT INTO `items` VALUES ('17', '002', 'B商品');
INSERT INTO `items` VALUES ('18', '003', 'C商品');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ORDERNO` varchar(20) DEFAULT NULL,
  `MONEY` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'A00001', '2100.50');
INSERT INTO `orders` VALUES ('2', 'A00002', '3680.00');

-- ----------------------------
-- Table structure for `selecteditems`
-- ----------------------------
DROP TABLE IF EXISTS `selecteditems`;
CREATE TABLE `selecteditems` (
  `ORDERID` int(4) NOT NULL DEFAULT '0',
  `ITEMID` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ORDERID`,`ITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selecteditems
-- ----------------------------
INSERT INTO `selecteditems` VALUES ('1', '1');
INSERT INTO `selecteditems` VALUES ('1', '2');
INSERT INTO `selecteditems` VALUES ('2', '2');
INSERT INTO `selecteditems` VALUES ('2', '3');
