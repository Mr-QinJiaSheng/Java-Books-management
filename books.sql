/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/07/2020 20:01:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 1,
  `lend_num` int(11) NULL DEFAULT NULL,
  `max_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (8, 'user', '普通用户1', 'user', '44rr', '12333334568', 1, 30, 577);
INSERT INTO `admin` VALUES (7, 'admin', 'admin', 'admin', '444', '13333334567', 0, 30, 5);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `num` int(11) NOT NULL,
  `press` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `ISBN`(`card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (18, 'sdf', 'dscds', 'saf', 345, 'saf', '小说类');
INSERT INTO `book` VALUES (15, '鹿鼎记', '001', '公众号：C you again', 5, '\"C you again\"出版社', '武侠类');
INSERT INTO `book` VALUES (17, 'sadfsaf', 'sfdsff', 'sadfdsa', 34, 'safsda', '小说类');
INSERT INTO `book` VALUES (14, '普通用户', 'dgsdg', '5', 5, 'sadf', '53');
INSERT INTO `book` VALUES (19, 'dgsd', 'sdef', 'fdgfdg', 455, 'dfgd', '小说类');
INSERT INTO `book` VALUES (20, 'sdgs', 'dsg', 'fdgfdg', 5, 'sadf', '文学类');
INSERT INTO `book` VALUES (21, '3252', '3453', 'fdgfdg', 50, 'sadf', '小说类');
INSERT INTO `book` VALUES (22, '235', '3245', 'fdgfdg', 54, 'sadf', '武侠类');
INSERT INTO `book` VALUES (23, 'ewt', 'ert', 'fdgfdg', 67, 'sadf', '文学类');
INSERT INTO `book` VALUES (24, '普通用户', 'sss', 'fdgfdg', 56, 'sadf', '小说类');
INSERT INTO `book` VALUES (25, 'afsf', 'safsdf4', 'fdgfdg', 50, 'sadf', '小说类');
INSERT INTO `book` VALUES (26, '235', '3256r', 'dfgdsg', 65, 'dsgsd', '小说类');
INSERT INTO `book` VALUES (27, '43643', '45643', 'ertwerte', 67, 'wetwet', '武侠类');
INSERT INTO `book` VALUES (28, '4536', 'wetdfgregt', 'fdgfdg', 56, 'dfgd', '武侠类');
INSERT INTO `book` VALUES (29, '普通用户', 'dgsdg5', 'dsf', 67, 'sadf', '武侠类');
INSERT INTO `book` VALUES (30, '宝莲灯', '图书号1', 'C you again', 888, 'C you again出版社', '武侠类');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (11, '文学类');
INSERT INTO `booktype` VALUES (10, '小说类');
INSERT INTO `booktype` VALUES (6, '武侠类');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL,
  `bid` int(11) NULL DEFAULT NULL,
  `card` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (47, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-11', '2020-6-11', 0);
INSERT INTO `history` VALUES (46, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-10', '2020-7-10', 1);
INSERT INTO `history` VALUES (45, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-9', '2020-7-9', 1);
INSERT INTO `history` VALUES (44, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-9', '2020-7-9', 1);
INSERT INTO `history` VALUES (43, 8, 14, 'dgsdg', '普通用户', 'user', '普通用户', '2020-6-3', '2020-6-9', 0);
INSERT INTO `history` VALUES (42, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-3', '2020-7-3', 1);
INSERT INTO `history` VALUES (41, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (40, 8, 14, 'dgsdg', '普通用户', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (39, 8, 16, 'sss', 's', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (38, 8, 15, '001', '张', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (37, 8, 16, 'sss', 's', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (36, 8, 15, '001', '张', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (35, 0, 14, 'dgsdg', '普通用户', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (34, 0, 15, '001', '张', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (33, 0, 15, '001', '张', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (32, 7, 15, '001', '张', 'admin', 'admin', '2020-6-3', '2020-6-3', 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `nId` int(11) NOT NULL AUTO_INCREMENT,
  `nTime` date NULL DEFAULT NULL,
  `nPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nContext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (22, '2020-07-03', 'admin', '请关注个人公众号：C you again 免费获取源码，其它技术文章请浏览<a style=\'display:inline-block;\' href=\'https://blog.csdn.net/qq_40625778\'>个人博客</a>');
INSERT INTO `notice` VALUES (23, '2020-07-03', 'admin', '因本人技术有限，难免出现一些错误，欢迎指正');
INSERT INTO `notice` VALUES (24, '2020-07-03', 'admin', '版权说明：你若要使用请注明原地址');

SET FOREIGN_KEY_CHECKS = 1;
