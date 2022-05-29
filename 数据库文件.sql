/*
 Navicat Premium Data Transfer

 Source Server         : zengkang
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : JavaEE

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 29/05/2022 16:43:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commonuser
-- ----------------------------
DROP TABLE IF EXISTS `commonuser`;
CREATE TABLE `commonuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `com_user` varchar(255) NOT NULL,
  `com_pwd` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`,`email`) USING BTREE,
  KEY `com_user` (`com_user`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of commonuser
-- ----------------------------
BEGIN;
INSERT INTO `commonuser` VALUES (1, '123@qq.com', '123456', '123@qq.com');
INSERT INTO `commonuser` VALUES (2, '1234@qq.com', '123456789', '1234@qq.com');
INSERT INTO `commonuser` VALUES (3, '12345@qq.com', '123456', '12345@qq.com');
INSERT INTO `commonuser` VALUES (16, '123456@qq.com', '123456', '123456@qq.com');
INSERT INTO `commonuser` VALUES (17, '2306732673@qq.com', '123456', '2306732673@qq.com');
INSERT INTO `commonuser` VALUES (18, 'hello', '123456', '1234567@qq.com');
INSERT INTO `commonuser` VALUES (19, '18373459487@qq.com', '123456', '18373459487@qq.com');
INSERT INTO `commonuser` VALUES (20, '12345678@qq.com', '123456', '12345678@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `companyemail` varchar(255) DEFAULT NULL,
  `companydata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `companyqualification` varchar(255) DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '待审核',
  `useremail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyname` (`companyname`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of company
-- ----------------------------
BEGIN;
INSERT INTO `company` VALUES (1, '华为', '深圳', '2306732673@qq.com', '20', '优', '审核通过', '2306732673@qq.com');
INSERT INTO `company` VALUES (2, '腾讯', '深圳', '2306732673@qq.com', '10', '优', '审核通过', '2306732673@qq.com');
INSERT INTO `company` VALUES (3, '小米', '深圳', '2306732673@qq.com', '23', '良', '审核通过', '2306732673@qq.com');
INSERT INTO `company` VALUES (4, 'oopo', '深圳', 'oppe@email.con', '32', '良', '审核通过', '18373459487@qq.com');
INSERT INTO `company` VALUES (5, 'vivo', '深圳', 'huawei@email.com', '23', '优', '审核通过', '1234@qq.com');
INSERT INTO `company` VALUES (7, '阿里巴巴', '北京', 'alibaba@email.com', '20', '优', '审核不通过', '12345@qq.com');
INSERT INTO `company` VALUES (9, '湖南理工学院', '岳阳', '14191901446@vip.hnist.edu.cn', '10', '优', '待审核', '12345@qq.com');
INSERT INTO `company` VALUES (12, 'HNLG', '岳阳', 'hnist@qq.com', '10', '优', '审核通过', '12345678@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of file
-- ----------------------------
BEGIN;
INSERT INTO `file` VALUES (6, '考研院校信息表格.xlsx', '/Users/cengqunbo/IdeaProjects/File', '2022-05-18 08:18:51');
INSERT INTO `file` VALUES (7, 'test.xlsx', '/Users/cengqunbo/IdeaProjects/File', '2022-05-18 08:21:43');
INSERT INTO `file` VALUES (8, 'button.html', '/Users/cengqunbo/IdeaProjects/File', '2022-05-18 08:21:54');
INSERT INTO `file` VALUES (9, 'readMe.txt', '/Users/cengqunbo/IdeaProjects/File', '2022-05-18 08:22:11');
INSERT INTO `file` VALUES (10, '说明.htm', '/Users/cengqunbo/IdeaProjects/File', '2022-05-23 10:48:29');
INSERT INTO `file` VALUES (11, 'find-job.html', '/Users/cengqunbo/IdeaProjects/File', '2022-05-25 08:08:07');
COMMIT;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '普通用户',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `commonuser` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES (1, 'hello', '123@qq.com', '18', '1', '深圳', 'HR');
INSERT INTO `person` VALUES (2, 'zengkang', '1234@qq.com', '18', '3', '深圳', 'HR');
INSERT INTO `person` VALUES (4, NULL, '18373459487@qq.com', NULL, NULL, NULL, 'HR');
INSERT INTO `person` VALUES (5, 'zengkang', '12345678@qq.com', '18', '3', '岳阳', 'HR');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'hello', '123456', '管理员');
INSERT INTO `user` VALUES (1, 'zengkang', '123456', '管理员');
INSERT INTO `user` VALUES (2, 'zk', '123456', '受限');
INSERT INTO `user` VALUES (3, 'javaee', 'hello', '受限');
INSERT INTO `user` VALUES (4, 'huawei', '123456', '管理员');
INSERT INTO `user` VALUES (6, 'hnist', '123456', '管理员');
INSERT INTO `user` VALUES (7, 'xiaomi', '123456', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for worklist
-- ----------------------------
DROP TABLE IF EXISTS `worklist`;
CREATE TABLE `worklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `workname` varchar(255) DEFAULT NULL,
  `worknumber` int DEFAULT NULL,
  `postcompany` varchar(255) DEFAULT NULL,
  `experince` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  `worktype` varchar(255) DEFAULT NULL,
  `workdetail` text,
  PRIMARY KEY (`id`),
  KEY `companyname` (`postcompany`),
  CONSTRAINT `companyname` FOREIGN KEY (`postcompany`) REFERENCES `company` (`companyname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of worklist
-- ----------------------------
BEGIN;
INSERT INTO `worklist` VALUES (2, '算法工程师', 20, '小米', '2', '深圳', '10000', '8', '互联网', '无');
INSERT INTO `worklist` VALUES (3, '前端工程师', 30, '腾讯', '3', '深圳', '10000', '8', '互联网', '无');
INSERT INTO `worklist` VALUES (5, '游戏开发人员', 40, '阿里巴巴', '3', '北京', '10000', '8', '互联网', '无');
INSERT INTO `worklist` VALUES (6, '芯片开发', 10, 'vivo', '3', '北京', '10000', '8', '互联网', '无');
INSERT INTO `worklist` VALUES (22, '算法工程师', 10, '华为', '3', '广东', '10000', '8', '互联网', NULL);
INSERT INTO `worklist` VALUES (23, '网页设计', 10, '华为', '3', '广东', '10000', '8', '互联网', NULL);
INSERT INTO `worklist` VALUES (26, '网页设计', 10, 'HNLG', '3', '岳阳', '10000', '8小时', '互联网', '<p>吃苦耐劳</p>');
INSERT INTO `worklist` VALUES (27, '算法工程师', 10, 'HNLG', '3', '岳阳', '10000', '8小时', '互联网', '');
INSERT INTO `worklist` VALUES (28, '网页设计', 10, 'HNLG', '3', '深圳', '10000', '自由控制', '互联网', '<p>hello</p>');
INSERT INTO `worklist` VALUES (30, '算法工程师', 10, '华为', '3', '深圳', '10000', '8小时', '互联网', '<p>吃苦耐劳</p>');
INSERT INTO `worklist` VALUES (32, '算法工程师', 10, '小米', '3', '广东', '10000', '8小时', '互联网', '<p>课设</p>');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
