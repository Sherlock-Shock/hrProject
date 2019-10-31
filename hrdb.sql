/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : hrdb

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 31/10/2019 10:46:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '财务部', '无');
INSERT INTO `dept` VALUES (2, '学术部', '无');
INSERT INTO `dept` VALUES (3, '公关部', '11');
INSERT INTO `dept` VALUES (4, '教学部', '负责教学');
INSERT INTO `dept` VALUES (5, '技术部', '55');
INSERT INTO `dept` VALUES (6, '人事部', '优秀部门1');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq_num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NOT NULL DEFAULT 1,
  `party` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `race` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `speciality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_EMP_DEPT`(`dept_id`) USING BTREE,
  INDEX `FK_EMP_JOB`(`job_id`) USING BTREE,
  CONSTRAINT `FK_EMP_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_EMP_JOB` FOREIGN KEY (`job_id`) REFERENCES `job` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, 1, '段誉', '65335463222243553', '广东省深圳市龙华街道办2号', '513408', '33388876', '15919754435', '803543321', 'wuyingd@qq.com', 1, '党员', '2013-06-01 10:56:41', '汉', '本科', '计算机', '打篮球', '无', '2019-09-22 10:59:34');
INSERT INTO `employee` VALUES (2, 2, 3, '黄老邪', '65335463222243553', '广东省深圳市龙华街道办2号', '513408', '33388876', '15919754433', '803543321', '121434@qq.com', 1, 'q群众', '2019-09-17 11:09:35', '汉', '本科', '软工', '打羽毛球', '无', '2019-09-22 11:08:34');
INSERT INTO `employee` VALUES (4, 2, 2, '杨过7', '37378354345', '广东省江门市江门市', '54245354354', '45345354', '45354345', '434354354', '737837878@qq.com', 1, '群众', '2019-10-16 00:00:00', '汉', '本科', '降龙十八掌', '亢龙有悔', '飞龙在天', '2019-10-30 14:01:04');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, '工程师', '无');
INSERT INTO `job` VALUES (2, '会计师', '无');
INSERT INTO `job` VALUES (3, '普通职员', '无');
INSERT INTO `job` VALUES (4, 'Java程序员', '665');
INSERT INTO `job` VALUES (7, 'C++程序员', 'C++');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今日头条', '习近平在中央政协工作会议上的讲话金句', '金句来了！习近平在中央政协工作会议暨庆祝中国人民政治协商会议成立70周年大会上的讲话金句​​​​ ', '无');
INSERT INTO `notice` VALUES (2, '今日头条', '携手奋进新时代', '新华社评论员：画出最大同心圆，携手奋进新时代——学习\r\n习近平总书记在中央政协工作会议暨庆祝中国人民政治协商会议成立70周年大会重要讲话​​​​ ', '无');
INSERT INTO `notice` VALUES (7, '1321', '21321', '<p style=\"text-align: center;\">递四方速递</p><p><br/></p><p>.2.2</p><p>222</p>', '无');
INSERT INTO `notice` VALUES (8, 'xxx开会时间', '要开会啦', '<p>&nbsp; 时间段是你大大声道大大声道；</p><p>&nbsp; 阿萨德sad鞍山市是&nbsp; &nbsp; &nbsp;多<em><strong>撒啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</strong></em></p>', '无');
INSERT INTO `notice` VALUES (9, 'test', 'test111', '<p>时擦出时擦出cascade</p><p><br/></p><p>dasdas</p><p><br/></p><p style=\"text-align: center;\">打</p>', '无');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `yuwen` int(11) NULL DEFAULT NULL,
  `shuxue` int(11) NULL DEFAULT NULL,
  `yingyu` int(11) NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'zs', 86, 45, 62, '654321');
INSERT INTO `student` VALUES (2, 'ls', 45, 55, 66, '123456');
INSERT INTO `student` VALUES (3, 'ww', 89, 45, 31, '123456');
INSERT INTO `student` VALUES (4, 'zl', 78, 88, 98, '123456');
INSERT INTO `student` VALUES (5, 'fs', 78, 96, 45, '123456');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`number`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10001', '123', 1, '15919876657', '2019-09-22 10:22:48', '欧阳锋', '无');
INSERT INTO `user` VALUES ('10002', '666666', 1, '15919754435', '2019-09-16 10:23:44', '杨过3', '无');
INSERT INTO `user` VALUES ('10004', '123456', 3, '18867564435', '2018-02-13 10:25:09', '郭靖3', NULL);
INSERT INTO `user` VALUES ('10005', '111', 1, '19876657', '2019-08-27 10:25:43', '黄容', NULL);
INSERT INTO `user` VALUES ('100055', '111111', 3, '3534545', '2019-10-25 17:49:04', '李静1', '4654654');
INSERT INTO `user` VALUES ('10009', '123456', 1, '1306266565', '2019-10-24 10:05:23', '李撒2', '我是小四');

SET FOREIGN_KEY_CHECKS = 1;
