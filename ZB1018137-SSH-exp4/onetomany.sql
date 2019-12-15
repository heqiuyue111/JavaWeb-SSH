/*
Navicat MySQL Data Transfer

Source Server         : ex
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : onetomany

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-15 11:45:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `CNAME` char(20) DEFAULT NULL,
  `BANK` varchar(40) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('2', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('3', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('4', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('5', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('6', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('7', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('8', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('9', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('10', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO `customer` VALUES ('11', '清华大学出版社', '9559501012356789', '010-62772015');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ORDERNO` varchar(20) DEFAULT NULL,
  `MONEY` double(10,2) DEFAULT NULL,
  `CUSTOMER_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1352616636265', '1146.22', '1');
INSERT INTO `orders` VALUES ('2', '1352616636343', '3395.08', '1');
INSERT INTO `orders` VALUES ('3', '1352616636406', '4436.91', '1');
INSERT INTO `orders` VALUES ('4', '1350827980312', '7712.85', '1');
INSERT INTO `orders` VALUES ('5', '1350827980328', '5835.16', '1');
INSERT INTO `orders` VALUES ('6', '1350827980343', '691.22', '1');
INSERT INTO `orders` VALUES ('7', '1515208381443', '1402.09', '1');
INSERT INTO `orders` VALUES ('8', '1515208381587', '8921.71', '1');
INSERT INTO `orders` VALUES ('9', '1515208381689', '961.40', '1');
INSERT INTO `orders` VALUES ('10', '1515208683097', '9760.75', '1');
INSERT INTO `orders` VALUES ('11', '1515208683168', '2936.74', '1');
INSERT INTO `orders` VALUES ('12', '1515208683214', '9758.54', '1');
INSERT INTO `orders` VALUES ('13', '1515219925885', '441.97', '1');
INSERT INTO `orders` VALUES ('14', '1515219925952', '1544.57', '1');
INSERT INTO `orders` VALUES ('15', '1515219925993', '1140.59', '1');
INSERT INTO `orders` VALUES ('16', '1515578046597', '9328.35', '1');
INSERT INTO `orders` VALUES ('17', '1515578046665', '4548.61', '1');
INSERT INTO `orders` VALUES ('18', '1515578046715', '9595.12', '1');
INSERT INTO `orders` VALUES ('19', '1515578489162', '7648.23', '1');
INSERT INTO `orders` VALUES ('20', '1515578489283', '9475.87', '1');
INSERT INTO `orders` VALUES ('21', '1515578489329', '1825.85', '1');
INSERT INTO `orders` VALUES ('22', '1515578599785', '8925.00', '1');
INSERT INTO `orders` VALUES ('23', '1515578599876', '5597.58', '1');
INSERT INTO `orders` VALUES ('24', '1515578599914', '7573.03', '1');
INSERT INTO `orders` VALUES ('25', '1515579053180', '3554.85', '1');
INSERT INTO `orders` VALUES ('26', '1515579053266', '8014.73', '1');
INSERT INTO `orders` VALUES ('27', '1515579053297', '7622.25', '1');
INSERT INTO `orders` VALUES ('28', '1576380670673', '1511.35', '1');
INSERT INTO `orders` VALUES ('29', '1576380670688', '3066.77', '1');
INSERT INTO `orders` VALUES ('30', '1576380670704', '4817.44', '1');
