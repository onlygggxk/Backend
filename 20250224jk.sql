/*
 Navicat Premium Data Transfer

 Source Server         : azhou
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : 20250224jk

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/02/2025 14:56:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for healthy
-- ----------------------------
DROP TABLE IF EXISTS `healthy`;
CREATE TABLE `healthy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '数据编号',
  `stu_id` bigint(20) NULL DEFAULT NULL COMMENT '学生编号',
  `height` double NULL DEFAULT NULL COMMENT '身高',
  `weight` double NULL DEFAULT NULL COMMENT '体重',
  `eyesight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视力',
  `ulse_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '脉率',
  `blood_pressure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '血压',
  `heart_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '心率',
  `breath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '呼吸',
  `blood_sugar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '血糖',
  `blood_lipid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '血脂',
  `month_day` date NULL DEFAULT NULL COMMENT '月份',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ai建议',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健康数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of healthy
-- ----------------------------
INSERT INTO `healthy` VALUES (49, 6, 170.5, 65, '5.0,5.0', '72', '120/80', '75', '16', '5', '4.5', '2024-01-01', '2024-01-01 10:00:00', '根据您提供的健康数据，您的年龄为21岁，性别为男。以下是对您的健康状况的分析以及相应的健康建议：\n\n1. **身高体重分析**：\n   - 您的身高为170.5cm，体重为65kg，属于正常范围。\n   - 身高和体重的比值（BMI）为21.3，属于正常范围。\n   - 您的体质指数（BMI）在正常范围内，说明您的体重与身高的比例是健康的。\n\n2. **视力分析**：\n   - 您的左眼视力为5.0，右眼视力也为5.0，均在正常范围内。\n   - 良好的视力有助于保护眼睛健康，减少眼部疾病的风险。\n\n3. **血压心率分析**：\n   - 您的收缩压为120mmHg，舒张压为80mmHg，属于正常范围。\n   - 心率为75次/分钟，也在正常范围内。\n   - 正常的血压和心率表明您的心血管系统功能良好，没有明显的高血压或低血压问题。\n\n4. **血糖血脂分析**：\n   - 您的血糖值为5mmol/L，血脂值为4.5mmol/L，均在正常范围内。\n   - 正常的血糖和血脂水平有助于预防糖尿病和心血管疾病的发生。\n\n综上所述，您的健康状况总体良好，各项指标都在正常范围内。然而，考虑到男性健康问题的日益严重性，尤其是勃起功能障碍（ED）发生率极高，建议您关注以下几点：\n\n1. 保持健康的生活方式，包括均衡饮食、适量运动和充足睡眠。\n2. 定期进行体检，特别是关注血压、血糖和血脂等指标的变化。\n3. 如有需要，可以咨询专业医生，了解如何改善性功能问题。\n4. 注意心理健康，保持良好的心态，避免过度焦虑和压力。\n\n总之，您的健康状况总体良好，但仍需关注性功能问题。通过保持健康的生活方式、定期体检和必要时寻求专业帮助，您可以维护自己的健康并预防潜在的健康风险。');
INSERT INTO `healthy` VALUES (50, 6, 170.5, 65.5, '5.0,5.0', '73', '121/81', '76', '16', '5.1', '4.6', '2024-02-01', '2024-02-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (51, 6, 170.5, 66, '5.0,5.0', '74', '122/82', '77', '16', '5.2', '4.7', '2024-03-01', '2024-03-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (52, 6, 170.5, 66.5, '5.0,5.0', '75', '123/83', '78', '16', '5.3', '4.8', '2024-04-01', '2024-04-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (53, 6, 170.5, 67, '5.0,5.0', '76', '124/84', '79', '16', '5.4', '4.9', '2024-05-01', '2024-05-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (54, 6, 170.5, 67.5, '5.0,5.0', '77', '125/85', '80', '16', '5.5', '5.0', '2024-06-01', '2024-06-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (55, 6, 170.5, 68, '5.0,5.0', '78', '126/86', '81', '16', '5.6', '5.1', '2024-07-01', '2024-07-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (56, 6, 170.5, 68.5, '5.0,5.0', '79', '127/87', '82', '16', '5.7', '5.2', '2024-08-01', '2024-08-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (57, 6, 170.5, 69, '5.0,5.0', '80', '128/88', '83', '16', '5.8', '5.3', '2024-09-01', '2024-09-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (58, 6, 170.5, 69.5, '5.0,5.0', '81', '129/89', '84', '16', '5.9', '5.4', '2024-10-01', '2024-10-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (59, 6, 170.5, 70, '5.0,5.0', '82', '130/90', '85', '16', '6.0', '5.5', '2024-11-01', '2024-11-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (60, 6, 170.5, 70.5, '5.0,5.0', '83', '131/91', '86', '16', '6.1', '5.6', '2024-12-01', '2024-12-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (61, 7, 165, 55, '4.9,4.9', '70', '110/70', '72', '15', '4.8', '4.0', '2024-01-01', '2024-01-01 10:00:00', '根据您提供的健康数据，您的年龄为21岁，性别为男。以下是对您的健康状况的分析以及给出合适的健康方面的意见：\n\n1. **身高体重分析**：您的身高为165cm，体重为55kg，属于正常范围。身高和体重的比例（BMI）为18.7，属于正常范围。这意味着您的身体质量指数处于健康状态。\n\n2. **视力分析**：您的视力为4.9，4.9，属于正常范围。良好的视力有助于保护眼睛健康，预防近视等眼部疾病。\n\n3. **心率血压分析**：您的脉率为70次/分钟，血压为110/70mmHg，均处于正常范围内。这表明您的心脏功能和血液循环状况良好。\n\n4. **血糖血脂分析**：您的血糖为4.8mmol/L，血脂为4.0mmol/L，均处于正常范围内。良好的血糖和血脂水平有助于预防糖尿病和心血管疾病。\n\n5. **呼吸分析**：您的呼吸频率为15次/分钟，处于正常范围内。正常的呼吸频率有助于维持身体的氧气供应和二氧化碳排出。\n\n综上所述，您的健康状况总体良好，没有明显的健康问题。然而，考虑到您是男性，以下是一些建议：\n\n1. **保持健康饮食**：均衡饮食，多吃蔬菜、水果和全谷类食物，减少高糖、高脂肪和高盐食物的摄入。\n2. **定期锻炼**：每周至少进行150分钟的中等强度有氧运动，如快走、慢跑或游泳。\n3. **保持良好的作息**：保证充足的睡眠时间，避免熬夜和过度劳累。\n4. **定期体检**：按照医生的建议进行定期体检，以便及时发现并处理潜在的健康问题。\n5. **关注心理健康**：保持良好的心理状态，学会应对压力和情绪波动。\n\n总之，您的健康状况良好，但仍需注意保持健康的生活方式和定期体检。如有需要，请随时咨询专业医生以获得更详细的建议。');
INSERT INTO `healthy` VALUES (62, 7, 165, 55.5, '4.9,4.9', '71', '111/71', '73', '15', '4.9', '4.1', '2024-02-01', '2024-02-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (63, 7, 165, 56, '4.9,4.9', '72', '112/72', '74', '15', '5.0', '4.2', '2024-03-01', '2024-03-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (64, 7, 165, 56.5, '4.9,4.9', '73', '113/73', '75', '15', '5.1', '4.3', '2024-04-01', '2024-04-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (65, 7, 165, 57, '4.9,4.9', '74', '114/74', '76', '15', '5.2', '4.4', '2024-05-01', '2024-05-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (66, 7, 165, 57.5, '4.9,4.9', '75', '115/75', '77', '15', '5.3', '4.5', '2024-06-01', '2024-06-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (67, 7, 165, 58, '4.9,4.9', '76', '116/76', '78', '15', '5.4', '4.6', '2024-07-01', '2024-07-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (68, 7, 165, 58.5, '4.9,4.9', '77', '117/77', '79', '15', '5.5', '4.7', '2024-08-01', '2024-08-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (69, 7, 165, 59, '4.9,4.9', '78', '118/78', '80', '15', '5.6', '4.8', '2024-09-01', '2024-09-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (70, 7, 165, 59.5, '4.9,4.9', '79', '119/79', '81', '15', '5.7', '4.9', '2024-10-01', '2024-10-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (71, 7, 165, 60, '4.9,4.9', '80', '120/80', '82', '15', '5.8', '5.0', '2024-11-01', '2024-11-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (72, 7, 165, 60.5, '4.9,4.9', '81', '121/81', '83', '15', '5.9', '5.1', '2024-12-01', '2024-12-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (73, 8, 175, 70, '5.1,5.1', '75', '130/85', '80', '18', '5.5', '5.0', '2024-01-01', '2024-01-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (74, 8, 175, 70.5, '5.1,5.1', '76', '131/86', '81', '18', '5.6', '5.1', '2024-02-01', '2024-02-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (75, 8, 175, 71, '5.1,5.1', '77', '132/87', '82', '18', '5.7', '5.2', '2024-03-01', '2024-03-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (76, 8, 175, 71.5, '5.1,5.1', '78', '133/88', '83', '18', '5.8', '5.3', '2024-04-01', '2024-04-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (77, 8, 175, 72, '5.1,5.1', '79', '134/89', '84', '18', '5.9', '5.4', '2024-05-01', '2024-05-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (78, 8, 175, 72.5, '5.1,5.1', '80', '135/90', '85', '18', '6.0', '5.5', '2024-06-01', '2024-06-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (79, 8, 175, 73, '5.1,5.1', '81', '136/91', '86', '18', '6.1', '5.6', '2024-07-01', '2024-07-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (80, 8, 175, 73.5, '5.1,5.1', '82', '137/92', '87', '18', '6.2', '5.7', '2024-08-01', '2024-08-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (81, 8, 175, 74, '5.1,5.1', '83', '138/93', '88', '18', '6.3', '5.8', '2024-09-01', '2024-09-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (82, 8, 175, 74.5, '5.1,5.1', '84', '139/94', '89', '18', '6.4', '5.9', '2024-10-01', '2024-10-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (83, 8, 175, 75, '5.1,5.1', '85', '140/95', '90', '18', '6.5', '6.0', '2024-11-01', '2024-11-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (84, 8, 175, 75.5, '5.1,5.1', '86', '141/96', '91', '18', '6.6', '6.1', '2024-12-01', '2024-12-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (85, 9, 160, 50, '4.8,4.8', '65', '100/60', '70', '14', '4.5', '3.8', '2024-01-01', '2024-01-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (86, 9, 160, 50.5, '4.8,4.8', '66', '101/61', '71', '14', '4.6', '3.9', '2024-02-01', '2024-02-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (87, 9, 160, 51, '4.8,4.8', '67', '102/62', '72', '14', '4.7', '4.0', '2024-03-01', '2024-03-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (88, 9, 160, 51.5, '4.8,4.8', '68', '103/63', '73', '14', '4.8', '4.1', '2024-04-01', '2024-04-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (89, 9, 160, 52, '4.8,4.8', '69', '104/64', '74', '14', '4.9', '4.2', '2024-05-01', '2024-05-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (90, 9, 160, 52.5, '4.8,4.8', '70', '105/65', '75', '14', '5.0', '4.3', '2024-06-01', '2024-06-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (91, 9, 160, 53, '4.8,4.8', '71', '106/66', '76', '14', '5.1', '4.4', '2024-07-01', '2024-07-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (92, 9, 160, 53.5, '4.8,4.8', '72', '107/67', '77', '14', '5.2', '4.5', '2024-08-01', '2024-08-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (93, 9, 160, 54, '4.8,4.8', '73', '108/68', '78', '14', '5.3', '4.6', '2024-09-01', '2024-09-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (94, 9, 160, 54.5, '4.8,4.8', '74', '109/69', '79', '14', '5.4', '4.7', '2024-10-01', '2024-10-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (95, 9, 160, 55, '4.8,4.8', '75', '110/70', '80', '14', '5.5', '4.8', '2024-11-01', '2024-11-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (96, 9, 160, 55.5, '4.8,4.8', '76', '111/71', '81', '14', '5.6', '4.9', '2024-12-01', '2024-12-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (97, 10, 180, 80, '5.2,5.2', '80', '140/90', '85', '20', '6.0', '5.5', '2024-01-01', '2024-01-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (98, 10, 180, 80.5, '5.2,5.2', '81', '141/91', '86', '20', '6.1', '5.6', '2024-02-01', '2024-02-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (99, 10, 180, 81, '5.2,5.2', '82', '142/92', '87', '20', '6.2', '5.7', '2024-03-01', '2024-03-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (100, 10, 180, 81.5, '5.2,5.2', '83', '143/93', '88', '20', '6.3', '5.8', '2024-04-01', '2024-04-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (101, 10, 180, 82, '5.2,5.2', '84', '144/94', '89', '20', '6.4', '5.9', '2024-05-01', '2024-05-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (102, 10, 180, 82.5, '5.2,5.2', '85', '145/95', '90', '20', '6.5', '6.0', '2024-06-01', '2024-06-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (103, 10, 180, 83, '5.2,5.2', '86', '146/96', '91', '20', '6.6', '6.1', '2024-07-01', '2024-07-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (104, 10, 180, 83.5, '5.2,5.2', '87', '147/97', '92', '20', '6.7', '6.2', '2024-08-01', '2024-08-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (105, 10, 180, 84, '5.2,5.2', '88', '148/98', '93', '20', '6.8', '6.3', '2024-09-01', '2024-09-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (106, 10, 180, 84.5, '5.2,5.2', '89', '149/99', '94', '20', '6.9', '6.4', '2024-10-01', '2024-10-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (107, 10, 180, 85, '5.2,5.2', '90', '150/100', '95', '20', '7.0', '6.5', '2024-11-01', '2024-11-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (108, 10, 180, 85.5, '5.2,5.2', '91', '151/101', '96', '20', '7.1', '6.6', '2024-12-01', '2024-12-01 10:00:00', NULL);
INSERT INTO `healthy` VALUES (109, 6, 178, 72, '4.2,4.5', '89', '131/91', '15', '23', '58', '69', '2025-01-01', '2025-02-26 18:19:09', NULL);

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '科普知识编号',
  `banner_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `type_id` bigint(20) NULL DEFAULT NULL COMMENT '所属分类',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科普知识管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES (112, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 1, '(六三九）感冒时多喝水，可以加快康复……是真是假？｜谣言终结站', '(六三九）感冒时多喝水，可以加快康复……是真是假？｜谣言终结站', '2023-10-04 16:00:00', '(六三九）感冒时多喝水，可以加快康复……是真是假？｜谣言终结站');
INSERT INTO `knowledge` VALUES (113, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 2, '\n\n\n中医所讲的“冬藏”，其实是顺应冬季自然界闭藏之规律。那具体“藏”什么呢？一是藏精，中医认为肾主藏精纳气，冬季养肾固精，可使人体精气内聚，为来年的生机勃发奠定基础。冬天人体的阳气内收，我们要减少不必要的体力消耗，把能量储存起来。二是藏神，冬季应宁神静志，避免情绪过激，以防阳气外泄太过。\n\n在饮食方面，可适当进食核桃、黑芝麻、当归、桂圆、羊肉等温热食物以补肾助阳，可适当搭配萝卜、白菜等食材，避免滋补过度而生内热。在起居方面，尽量早睡晚起，早睡可以养阳气，晚起能固护阴气。\n\n此外，一些中医传统养生保健方法如艾灸、穴位按摩也适合在此时节开展，例如可艾灸腹部的神阙、关元等穴位，按摩下肢的足三里等穴位，能够温通经络、调和气血、扶正祛邪，增强机体抵抗力。', '中医所讲的“冬藏”，其实是顺应冬季自然界闭藏之规律。那具体“藏”什么呢？一是藏精，中医认为肾主藏精纳气，冬季养肾固精，可使人体精气内聚，为来年的生机勃发奠定基础。冬天人体的阳气内收，我们要减少不必要的体力消耗，把能量储存起来。二是藏神，冬季应宁神静志，避免情绪过激，以防阳气外泄太过。\n', '2023-10-05 18:00:00', '什么叫“冬藏”？大家又该藏什么呢？| 时令节气与健康');
INSERT INTO `knowledge` VALUES (114, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 3, '天冷后，为何有的人会出现情绪、睡眠方面的障碍？\n\n出现这种情况主要有三个方面的原因：一是天气变冷，二是光照变少，三是万物萧瑟。这三个变化会引起人的情绪和睡眠产生变化。\n\n光照减少之后，有的人会有一些情绪波动，比如感觉自己没有阳光灿烂的时候那么高兴。在北欧的一些国家，每当到了冬季，白昼时间较短，夜间时间较长，抑郁的人就比较多。当地医生把这种病命名为季节性情感障碍。\n\n此外，原本夏季枝叶繁茂的景象，到了冬季万物萧条，触景生情，人的情绪也会有一些低落，甚至一些抑郁症患者在此时会出现病情的反复。\n\n冬季气温下降，尤其我国南方地区没有供暖系统，屋里比较凉，会影响人们的睡眠，特别是会影响入睡。与此同时，情绪的变化也会影响睡眠。睡眠是否受到了影响，可从以下几点进行判断：入睡时间是否变长（超过半小时），睡眠质量有没有降低，是否会过早醒来（比平时早醒半小时）。\n\n当大家感觉到睡眠质量下降、情绪时常低落，且持续时间达到两周以上时，要及时就诊。\n\n遇到上述情况，大家该如何调节？\n\n当情绪变化影响睡眠时，可以多晒晒太阳。早晨起床时把窗帘拉开，即使是阴天，也有光线进来，人的心情会好一些。\n\n保持规律作息非常重要，大家要尽量保持一个相对固定的入睡和起床时间。有的人会说“天冷了，我想在被窝再待一会”。的确，天气冷了，起床变得有些困难。但是，生物节律的变化会影响情绪和睡眠。为了好心情，还是要努力克服困难，按时起床。\n\n适当的运动对于改善情绪和提高睡眠质量很有帮助。虽然冬季可以进行的运动项目不如夏天多，但即使只是去户外散散步，或者在室内跑步机上跑跑步，对改善情绪和睡眠也是有帮助的。\n\n此外，这一时节，正在服用抗抑郁药的患者要主动咨询医生，在用药方面是否需要进行一些适当调整。', '光照减少之后，有的人会有一些情绪波动，比如感觉自己没有阳光灿烂的时候那么高兴。在北欧的一些国家，每当到了冬季，白昼时间较短，夜间时间较长，抑郁的人就比较多。当地医生把这种病命名为季节性情感障碍。', '2023-10-06 20:00:00', '为何冬季容易出现情绪和睡眠障碍？应该怎么办？');
INSERT INTO `knowledge` VALUES (115, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 1, '值此新春佳节来临之际，为助力大家度过一个身心康泰、喜乐融融的春节，“学习强国”山西学习平台联合山西省卫生健康委员会、山西省卫生健康委发展研究中心，特邀深耕于饮食养生、运动保健、心理调适等多元领域的21位专家，以专业的视角，为大家精心奉上一系列实用的健康提示。同时，各位专家向大家送上最诚挚的新春祝福。愿所有人在这喜庆祥和的新春佳节里，既能沉醉于阖家团聚的温馨欢乐之中，又能收获健康的福祉，度过一个愉悦安康、令人难忘的美好春节。\n本期专家：山西省疾控中心食品安全协调办 王三桃', '值此新春佳节来临之际，为助力大家度过一个身心康泰、喜乐融融的春节，“学习强国”山西学习平台联合山西省卫生健康委员会、山西省卫生健康委发展研究中心，特邀深耕于饮食养生、运动保健、心理调适等多元领域的21位专家，以专业的视角，为大家精心奉上一系列实用的健康提示。同时，各位专家向大家送上最诚挚的新春祝福。愿所有人在这喜庆祥和的新春佳节里，既能沉醉于阖家团聚的温馨欢乐之中，又能收获健康的福祉，度过一个愉悦安康、令人难忘的美好春节。\n本期专家：山西省疾控中心食品安全协调办 王三桃', '2023-10-07 10:00:00', '春节期间如何预防病从“口”入？');
INSERT INTO `knowledge` VALUES (116, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 2, '要\n\n坚持每日通风换气\n\n根据天气情况，加强室内场所通风换气，每日对室内通风2-3次，每次不少于30分钟。室内外温差较大时，注意保暖，避免因开窗引起着凉感冒。\n\n要\n\n落实各项防控制度\n\n学校要严格落实晨午检、因病缺勤登记追踪、复课证明查验等学校传染病防控制度，做到早发现、早报告，落实“有症状不到校”要求。\n\n要\n\n加强校园卫生管理\n\n定期对教室、宿舍、食堂、图书馆、体育馆等公共场所进行清洁消毒，保持环境整洁卫生。强化食品、饮用水安全管理，预防食源性及介水传染病。\n\n图片\n\n要\n\n做好宣传教育引导\n\n通过家长会、宣传栏、校园广播、健康教育课等形式，开展学生常见呼吸道、肠道传染病防治知识宣教活动，增强学生的防病意识。\n\n要\n\n积极主动接种疫苗\n\n根据疫苗接种指引，在知情、自愿的原则上，鼓励接种流感、水痘、手足口、肺炎等疫苗，不断筑牢免疫屏障。\n\n图片\n要\n\n落实疫情报告制度\n\n一旦发现传染病疫情，学校应及时向相关部门报告，并采取有效措施控制疫情蔓延。', '2025年春季开学在即，当前正值流感、新冠、诺如病毒感染等传染病流行季节，校园人群密集，容易增加传染病的传播风险，为做好学校传染病防控工作，省卫生健康委、省疾控局温馨提示：', '2023-10-08 12:00:00', '开学季校园传染病防控“十要”');
INSERT INTO `knowledge` VALUES (117, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 3, '诺如病毒是导致急性胃肠炎的主要病原体之一，通过粪口传播，常见传播方式包括接触污染物以及摄入被污染的食物和水等。然而，气溶胶传播却常被忽略，尽管其直接引发大规模疫情的情况不常见，但在封闭、人员密集的环境中，其可能与接触传播同时发生。\n\n一、什么是诺如病毒气溶胶？\n\n诺如病毒气溶胶是指诺如病毒附着在固体或液体微粒上，形成悬浮于空气中的气态分散系统。这些气溶胶主要在感染者剧烈呕吐或冲马桶粪便时产生。\n\n二、诺如病毒气溶胶如何传播？\n\n诺如病毒气溶胶可能通过呼吸进入上呼吸道，甚至肺部。尤其是直径约为1微米的气溶胶颗粒，有10%~30%的几率附着于口腔、鼻腔和气管内，随后被吞咽进入消化道，导致敏感者患胃肠炎。若气溶胶沉降在地面或物体表面，也可能导致接触传播。\n\n三、诺如病毒气溶胶有何特点？\n\n1.传播距离远：诺如病毒气溶胶颗粒的直径通常小于10微米，能随气流传播至较远地方。其中，大于5微米颗粒的传播距离常在2~3米，而小于等于5微米颗粒能传播3~8米。\n\n2.在空气中存留时间长：在封闭环境中，5~10微米气溶胶颗粒仅悬浮几十分钟。小于5微米颗粒能悬浮更长时间，但病毒的含量会随着时间快速降低。\n\n3.污染周围物体：在密闭且人群密集的场所，气溶胶会随着空气扩散，除被人群吸入外，还可能附着在一定范围内的物体表面，如衣物等。\n\n四、如何预防诺如病毒\n\n气溶胶传播？\n\n1.加强通风换气：在密闭或半密闭环境，尤其是公共卫生间（厕所），应定时通风。\n\n2.保持安全距离：在人员密集场所，保持社交距离。\n\n3.保持个人卫生：远离吐泻物以及污染物；接触到吐泻物或疑似污染物后，立即使用洗手液或肥皂洗手至少20秒，并用流水冲洗。\n\n4.正确处理吐泻物和污染物：\n\n处理方法\n\n①地面或物体表面的吐泻物：用5000~10000 mg/L含氯消毒液（如1：10稀释的84消毒液）浸透的吸水材料覆盖吐泻物，包裹后密封处理，并对周围3~8米范围内喷洒足量的1000mg/L含氯消毒液（如1：50稀释的84消毒液），作用30分钟。\n\n②马桶或容器内的吐泻物：倒入10000mg/L~20000mg/L含氯消毒液（如1：5稀释的84消毒液），作用1小时后冲走。\n\n③衣物、被褥等织物：消毒处理并移除污染物，用500mg/L含氯消毒剂（如1：100稀释的84消毒液）浸泡消毒30分钟，也可用流通蒸汽或煮沸消毒30分钟。\n\n5.及时就医和居家隔离：若出现诺如病毒感染症状（如呕吐、腹泻等），应及时就医；确诊患者尽量居家隔离，避免接触他人。\n\n6.保持健康生活方式：诺如病毒气溶胶传播仅限特殊环境，无需过度紧张。保持均衡饮食与适度运动，可减少感染风险。', '诺如病毒是导致急性胃肠炎的主要病原体之一，通过粪口传播，常见传播方式包括接触污染物以及摄入被污染的食物和水等。然而，气溶胶传播却常被忽略，尽管其直接引发大规模疫情的情况不常见，但在封闭、人员密集的环境中，其可能与接触传播同时发生。', '2023-10-09 14:00:00', '预防诺如病毒感染，这种“隐秘”传播需留意');
INSERT INTO `knowledge` VALUES (118, 'http://localhost:8092/file/4b278db3-e825-4222-89bf-c0c2204f17c9.png', 1, '春季是流感的高发季节，流感作为一种由流感病毒引起的急性呼吸道传染病，传播速度快、影响范围广，给人们的健康带来威胁。以下是一些有效预防流感的方法：\n\n1. **接种流感疫苗**：这是预防流感最有效的手段之一，可降低接种者罹患流感和发生严重并发症的风险。建议所有≥6月龄且无接种禁忌的人都应接种流感疫苗，优先推荐医务人员、60岁及以上的老年人、罹患一种或多种慢性病人群、养老机构等人群聚集场所脆弱人群及员工、孕妇、6～59月龄儿童、6月龄以下婴儿的家庭成员和看护人员、托幼机构、中小学校、监管场所等重点场所人群及时接种[^1^][^4^][^5^]。\n\n2. **保持良好的个人卫生习惯**\n   - **勤洗手**：使用肥皂和流动水彻底清洁双手，时间不少于20秒，特别是在触摸公共物品或双手接触呼吸道分泌物后（如打喷嚏后）。咳嗽或打喷嚏后也应及时洗手，尽量避免触摸眼睛、鼻或口[^1^][^2^][^3^][^4^][^5^]。\n   - **保持呼吸道卫生**：打喷嚏或咳嗽时应用手帕或纸巾掩住口鼻做好遮挡，避免飞沫污染他人。遇到他人咳嗽或打喷嚏时，注意保持1米以上距离或处在上风向[^1^][^2^][^3^][^4^][^5^]。\n   - **规律生活，增强体质**：均衡饮食，保证摄入足够的营养，多吃蔬菜水果、粗粮等富含维生素、蛋白质和膳食纤维的食物。适量运动，充足睡眠，增强自身免疫力。小学生每天保证10小时至12小时的睡眠时间，中学生保证8小时至10小时的睡眠时间[^2^][^3^]。\n\n3. **避免在人群密集场所停留**：在流感高发季节，尽可能避免前往人群密集或空气不流通的密闭公共场所。如果必须前往，建议佩戴口罩[^1^][^2^][^3^][^4^][^5^]。\n\n4. **环境科学通风**：教室、居家等场所每日开窗通风至少两次，每次半小时以上，保持室内空气流通，科学通风，避免通风不当导致受寒生病。课间打开窗户，让新鲜空气“灌”进来，吹散病毒的“小阴谋”[^2^][^3^]。\n\n5. **药物预防**：药物预防不能代替疫苗接种。建议对有重型或危重型流感高危因素的密切接触者（且未接种疫苗或接种疫苗后尚未获得免疫力）进行暴露后药物预防，不迟于暴露后48小时用药[^1^][^4^][^5^]。\n\n总之，春季预防流感需要从多个方面入手，综合采取接种疫苗、保持良好卫生习惯、避免人群密集场所、保证环境通风以及必要时进行药物预防等措施，以有效降低感染风险，保护自己和他人的健康。', '春季是流感的高发季节，流感作为一种由流感病毒引起的急性呼吸道传染病，传播速度快、影响范围广，给人们的健康带来威胁。以下是一些有效预防流感的方法：\n', '2023-10-10 16:00:00', '春季流感高发，如何有效预防？');

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pass_word` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `photo_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (2, 'azhou', 'azhou', 'http://localhost:8092/file/4d2ae522-bd7f-469a-bde6-873894482842.jpg', 'azhou');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `notice_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态[0:隐藏,1:正常]',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (109, '健康小程序平台维护通知', 'http://localhost:8092/file/0a5a2559-74e1-465b-97d6-f45ac09791b1.jpg', '尊敬的用户：\n\n您好！\n\n为了给您提供更优质、高效、稳定的垃圾回收服务，我们将于[具体维护日期]对垃圾回收平台进行全面维护升级。在此期间，平台的各项功能将暂时无法正常使用，由此给您带来的不便，我们深表歉意。\n\n![zs.png](http://localhost:8092/ljhs/3fca7b62-4d8e-4147-8562-f784af8faa6b.png)\n\n此次维护主要涉及平台的系统优化、数据更新以及安全性能提升等方面。我们将对平台的数据库进行深度清理和整理，确保数据的准确性和完整性，同时修复已知的一些系统漏洞，增强平台的稳定性和安全性，保障您的信息安全和交易安全。\n\n在维护期间，您将无法通过平台提交垃圾回收订单、查询回收进度以及进行相关的账户操作等。请您提前做好安排，如有紧急的垃圾回收需求，可拨打我们的客服热线[电话号码]，我们将尽力为您提供线下协助解决方案。\n\n预计维护时间将持续[X]小时，我们将尽最大努力缩短维护时长，争取尽快完成维护工作并恢复平台的正常运行。维护完成后，平台将以全新的面貌为您服务，届时您将享受到更加流畅、便捷的操作体验，以及更丰富、精准的垃圾回收信息和服务。\n\n感谢您一直以来对垃圾回收平台的支持与理解，我们会持续努力，不断优化平台功能，为环保事业贡献更多力量，也期待在维护完成后继续为您提供优质的垃圾回收服务。\n\n[垃圾回收平台名称]\n\n[通知发布日期]', '系统维护公告', 1, '2025-02-17 08:10:30');
INSERT INTO `notice` VALUES (111, '健康活动活动报名', 'http://localhost:8092/file/4a72513e-2e4a-4dfe-8362-5fcdc80a007f.png', '公司将于2023年11月5日至11月10日举办环保公益活动。欢迎大家报名参加，共同为环境保护贡献力量。', '环保活动报名', 1, '2025-02-17 08:10:30');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '题目编号',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '题目标题',
  `option_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选项A',
  `option_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选项B',
  `option_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选项C',
  `option_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选项D',
  `grade_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '答案A分数',
  `grade_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '答案B分数',
  `teacher_id` bigint(20) NULL DEFAULT NULL COMMENT '老师编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `grade_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '答案C分数',
  `grade_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '答案D分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 502 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '题目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (2, '（） in the company for three years, Mark has become experienced in business negotiations.', 'Having worked', 'Have been working', 'Have worked', 'Worked', '5', '4', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (3, '（） some students are able to find employment after graduation, others will have to return to school and earn an advanced degree.', 'Since', 'While', 'Because', 'If', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (4, '（） the weather improves, we will suffer a huge loss in the tourist industry.', 'As', 'While', 'Since', 'Unless', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (5, '()is not yet known.', 'When will we begin the program', 'When we will begin the program', 'When beginning the program', 'When begin the program', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (6, '()leaves the room last should close the door.', 'He', 'She', 'Whoever', 'It', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (7, 'As you have seen, the value of a nation’s currency is a () of its economy.', 'reaction', 'reflection', 'response', 'relation', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (8, 'By the time I get to the airport, the plane （） for Shanghai.', 'will leave', 'leaves', 'will have left', 'left', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (9, 'Children’s garments are () in the big window of the store.', 'spread', 'exposed', 'located', 'displayed', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (10, 'Coke is still the ()soft drink today.', 'lead', 'leader', 'led', 'leading', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (11, 'Floods cause billons of dollars worth of property damage() .', 'relatively', 'actually', 'annually', 'comparatively', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (12, 'For years，doctors （）millions of patients’ lives with .', 'have saved', 'are saving', 'will save', 'were saving', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (13, 'Hardly （） the house when it began to rain.', 'I had left', 'had I left', 'I have left', 'have I left', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (14, 'Have you had any () experience, or is this kind of work new to you?', 'former', 'previous', 'prior', 'early', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (15, 'He （） on winter mornings, but now he doesn’t.', 'used to swimming', 'is used to swim', 'used to swim', 'is used to swimming', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (16, 'He () the house to me for ￥150 a month.', 'sold', 'repaid', 'paid', 'rented', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (17, 'He insists that he （）it by himself.', 'manages', 'will manage', 'manage', 'managed', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (18, 'Her () hat made her conspicuous.', 'eyeball', 'eyeglass', 'eye-catching', 'eyelash', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (19, 'I () his offer and said ,“Thank you all the same.”', 'refuted', 'declined', 'refused', 'rejected', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (20, 'I （）traveling by air and only on one occasion have I ever felt frightened.', 'used to', 'am used to', 'use to', 'are use to', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (21, 'I couldn’t ()whether I had seen him before.', 'recall', 'reflect', 'ponder', 'consider', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (22, 'I don’t regret （） her what I thought about her proposal, even if it upset her.', 'tell', 'to tell', 'told', 'telling', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (23, 'I never imagined that Peter（）such a good student.', 'got', 'would get', 'gets', 'will have gotten', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (24, 'I seldom play computer games.()do I.', 'So', 'Neither', 'Either', 'As', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (25, 'I shall be back in an ().', 'instant', 'instantly', 'the instant', 'instantaneously', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (26, 'I was almost asleep last night when I suddenly heard someone （）_at the door.', 'be knocking', 'knocking', 'to knock', 'having knocked', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (27, 'I’ll begin the dictation when you （） ready.', 'shall be', 'will be', 'are', 'have been', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (28, 'If it （）rain tomorrow, we will have a picnic.', 'won’t', 'doesn’t', 'will', 'wouldn’t', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (29, 'If we （） more time and money, we could have visited many more places.', 'have', 'had had', 'have had', 'could have', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (30, 'If you don’t ()your invention, someone might steal the idea.', 'apply', 'create', 'patent', 'exclude', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (31, 'If you give up a plan, ().', 'so will they', 'so they do', 'they will so', 'so did they', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (32, 'If you give up your plan, （）.', 'so they do', 'they will so', 'so did they', 'so will they', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (33, 'Immigrants have to adapt themselves culturally and physically to the new surroundings （） they have move.', 'on which', 'by which', 'into which', 'from which', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (34, 'In most markets you can buy fresh fruit in().', 'bulk', 'box', 'basket', 'cardboard', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (35, 'In the past 10 years I （） all mountains in China.', 'have traveled', 'traveld', 'had traveled', 'was traveling', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (36, 'Instant messaging can be ()as IM.', 'abbreviation', 'abbreviate', 'abbreviated', 'abbreviates', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (37, 'It （） two years（） I had been here.', 'is; that', 'was; that', 'is; since', 'was; since', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (38, 'It is 8 o，clock now. The plane （） in half an hour.', 'will leave', 'is leaving', 'leaves', 'is to leave', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (39, 'It is important that we （） the task ahead of time.', 'will fish', 'finished', 'finish', 'shall finish', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (40, 'It is quite necessary for a qualified teacher to have good manners and () knowledge.', 'extensive', 'expansive', 'intensive', 'expensive', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (41, 'It is reasonable for people to pursue a career in fields related （） their favorite hobbies.', 'on', 'for', 'at', 'to', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (42, 'It is recommended that the project () until all the preparations have been made.', 'will not be stated', 'was not started', 'is not started', 'not be started', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (43, 'It was because of his good performance at the interview （） he got the job with the big company.', 'so', 'what', 'that', 'while', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (44, 'It was the first time I （） the Great Wall.', 'will visit', 'had visited', 'have visited', 'visit', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (45, 'It’s highly ()that a new leader be appointed for this company.', 'desirable', 'likely', 'acceptable', 'critical', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (46, 'It’s my great honor （）to give a speech at the opening ceremony.', 'to invite', 'inviting', 'having invited', 'to be invited', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (47, 'John had never been abroad before, （） he found the business trip very exciting.', 'because', 'though', 'so', 'while', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (48, 'Making a public speech can be ()to some people.', 'embarrass', 'ebarrassing', 'embarrassed', 'embarrassment', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (49, 'Most of the retired people are happy （） their quiet life in the country- side.', 'to', 'of', 'with', 'on', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (50, 'My brother reference books, but （） of them was of any use for my report.', 'neither', 'none', 'either', 'all', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (51, 'Not until I returned home （） that my wallet（）.', 'I found;was stolen', 'had found;had stolen', 'did I find;had been stolen', 'had I found;has been stolen', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (52, 'Not until she arrived at the meeting room （） she had forgotten to bring the document.', 'she realized', 'did she realize', 'she did realize', 'does she realize', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (53, 'Not until yesterday （） project that will be completed soon.', 'did I learn', 'have I learnt', 'I learnt', 'that I learnt', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (54, 'Not until yesterday （）anything about the project that will be completed soon.', 'did I learn', 'have I learnt', 'I learnt', 'that I learnt', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (55, 'On no account （） to feed the animals.', 'visitors allow', 'visitors are allowed', 'do visitors allow', 'are visitors allowed', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (56, 'Once more I have to leave Beijing，（）I have been living for eight years.', 'that', 'where', 'which', 'as', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (57, 'Only when we had finished all the work （） that it was too late to take a bus home.', 'did we realize', 'will we realize', 'we did realize', 'we will realize', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (58, 'Our company’s visitors decided to stay in our city for （） two days as they wanted to have a look aroun', 'other', 'the other', 'another', 'other’S', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (59, 'Roads in the cities should be () for traffic.', 'adequate', 'available', 'applicable', 'automatic', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (60, 'Scientists should be kept （） of the latest developments in their research areas.', 'inform', 'informing', 'informed', 'to inform', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (61, 'She didn’t go to the party last night，（）she had to finish her term paper.', 'if', 'though', 'till', 'because', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (62, 'She didn’t know （） to express her ideas in English clearly in public.', 'which', 'why', 'what', 'how', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (63, 'She had to() several times a night when her baby was ill.', 'call out', 'get ahead', 'wake up', 'come to', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (64, 'Students are expected to pay the loan back （） they are earning enough.', 'so far as', 'now that', 'even if', 'as soon as', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (65, 'That supper was the most delicious dinner I（）.', 'would have', 'have ever had', 'had never had', 'had ever had', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (66, 'The () of this container is 1,000,000 cubic meters.', 'volume', 'square', 'depth', 'length', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (67, 'The ()author created a new suspense novel.', 'imaginary', 'imaginable', 'imaginative', 'imagining', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (68, 'The conference （）in Beijing next week is bound to be a great success.', 'holding', 'being held', 'to hold', 'to be held', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (69, 'The drug proved ().', 'highly effectively', 'highly effective', 'to be highly effectively', 'be highly effectively', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (70, 'The manager is () my suggestions.', 'considertaion', 'consider', 'considering', 'considerate', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (71, 'The new drug will not be put on the market （） it has proved safe on humans.', 'if', 'until', 'since', 'when', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (72, 'The policeman entered the building, （） upstairs.', 'looking around and to hurry', 'looked about and hurrying', 'looking about and hurrying', 'to look around and hurried', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (73, 'The president made a () speech at the opening ceremony of the sport meeting, which encouraged the sportsmen greatly.', 'tedious', 'flat', 'vigorous', 'harsh', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (74, 'The problems we have today are similar to () we had in the 1980s.', 'these', 'this', 'those', 'that', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (75, 'The proposal （） at the meeting now is of great importance to our department.', 'being discussed', 'to be discussing', 'having discussed', 'discussing', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (76, 'The stock market crash() many people.', 'destroyed', 'ruined', 'damaged', 'injured', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (77, 'The train for Beijing （） at 9:10 P.m.from Monday to Friday.', 'was leaving', 'is leaving', 'leaves', 'has left', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (78, 'The youth () his head with romantic ideas.', 'fulfills', 'contains', 'stuffs', 'loads', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (79, 'There () an apple, an orange, and a banana on the table.', 'is', 'are', 'were', 'being', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (80, 'There () great changes in my hometown since 2008.', 'have been', 'are', 'were', 'could be', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (81, 'There () water left in the bottle.', 'aren’t any', 'aren’t some', 'isn’;t any', 'isn’t some', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (82, 'There are two maps on the wall：one is a map of China，and （） is a map of the world.', 'other', 'another', 'the other', 'the others', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (83, 'There is no evidence （） he was on the site of the murder.', 'where', 'that', 'which', 'how', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (84, 'They will not start the project until the board chairman （） back from South Africa.', 'will come', 'is coming', 'came', 'comes', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (85, 'This news report () fact.', 'based entirely on', 'is based entirely on', 'based entirely to', 'is based to entirely', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (86, 'This problem is （）his ability and I don’t think he Call solve it.', 'to', 'in', 'beyond', 'under', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (87, 'Tim felt () when he found he couldn’t solve most of the math problems.', 'proud', 'frightened', 'cross', 'frustrated', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (88, 'Tom （）into the house when no one （）.', 'slipped; was looking him', 'had slipped; looked him', 'slipped; had looked him', 'was slipping; looked him', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (89, 'Water consumption() during the winter.', 'decreased', 'diminished', 'lessened', 'reduced', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (90, 'We （） a walk when it started to rain.', 'take', 'took', 'are taking', 'were taking', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (91, 'We are happy at the good news （） Mr. Black has been awarded the Best Manager.', 'that', 'which', 'what', 'whether', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (92, 'We must ()the feelings of other people.', 'prevent', 'consider', 'think', 'see', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (93, 'We must find a way to cut prices （） reducing our profits too much.', 'without', 'despite', 'with', 'for', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (94, 'We promise that we’ll meet again after we（）our college education in 3 years time.', 'finish', 'will finish', 'have gone', 'goes', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (95, 'We were all surprised when he made it clear that he（） office soon.', 'would leave', 'leaves', 'left', 'had left', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (96, 'We would like you to know that we greatly （） your timely help.', 'appreciate', 'thank', 'accept', 'admire', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (97, 'When people become unemployed, it is () that is often worse than lack of wages.', 'pride', 'poverty', 'bias', 'idleness', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (98, 'Would you please pass me the book （） cover is black?', 'which', 'whose', 'that', 'its', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (99, '() students often find it difficult to live in China at first.', 'Outside', 'Overseas', 'National', 'Abroad', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (100, '() the number in full-time employment fell by 2 million, the number of people in part-time work doubled to over 4 million.', 'Unless', 'Until', 'While', 'Since', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (101, '（） up at the clock on the wall, the secretary found it was already midnight.', 'looking', 'Look', 'To look', 'Looked', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (102, '(), Ray is the most popular writer today.', 'Because his books were sold ten millions', 'Because of ten millions of his books were sold', 'Selling ten millions of his books', 'Having sold ten million copies of his books', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (103, '（）he said is true.', 'Whether', 'That', 'Which', 'What', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (104, 'A completely new situation is likely to () when the age for leaving school is raised to 16.', 'affect', 'rise', 'arise', 'happen', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (105, 'A new cinema （） here. They hope to finish it next week.', 'will be built', 'is built', 'has been built', 'is being built', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (106, 'A person who is(    )typically has anxious thoughts and difficulty concentrating or remembering.', 'stressing', 'stressed', 'stresses', 'stress', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (107, 'A small child has to learn to keep its () before it can walk far.', 'feet', 'balance', 'arms', 'legs', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (108, 'Aesthetics(美学) is a branch of philosophy concerned with the essence and ()of beauty and ugliness.', 'perception', 'perceptive', 'percepting', 'percepts', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (109, 'After investigating the behavior of(    ),Galileo was able to use them as time measurement devices in many of his experiments.', 'pendulums', 'establishments', 'pendulum', 'establishment', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (110, 'Although we welcome the proposal, we shall () detailed examination in the committee.', 'subject it to', 'subject to', 'subject to it', 'subject it', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (111, 'By assuming full-screen use,designers can(    )all the space available to clearly present the navigational tools and way-finding cues to keep users oriented.', 'advantage of', 'take advantageous of', 'take advantage of', 'take advantages of', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (112, 'Companies compete to stay(    )research and development.', 'come into the forefront of', 'forefront of', 'at the forefront of', 'over the forefront of', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (113, 'David （）to pass the examination but he failed.', 'has hoped', 'hopes', 'would hope', 'had hoped', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (114, 'Doctor Joan （）in the hospital since she（）from a university.', 'has worked; graduated', 'had worked; graduated', 'was working; graduated', 'worked; graduated', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (115, 'Either Marry or I() to blame.', 'to be', 'am', 'are', 'is', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (116, 'Every Monday morning when I am in my small office, I wish I （） in a multinational company.', 'were working', 'have worked', 'am to work', 'work', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (117, 'Fear () the difficulties of life.', 'multiplies', 'multiplied', 'multiply', 'multiplying', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (118, 'He began to( )because every means ( ) tried already.', 'lose heart; has been', 'lose heart; had been', 'lose his heart; was', 'lose his heart; had', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (119, 'He came home after midnight, and ( ), he was drunk. That made his parents very angry.', 'What is more', 'On the other hand', 'In my opinion', 'In another word', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (120, 'He did better in the exam not only than( ) in her own class but also than ( ) in mine.', 'any other student…any student', 'anybody…anybody', 'anybody…anybody else', 'the other…others', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (121, 'He looked tired and sat(    )his eyes.', 'rubbing', 'rubb', 'rubbed', 'rubs', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (122, 'He promised to climb the mountain with us, but he(    )at the last moment.', 'funk it', 'funked it', 'afraid it', 'afraided it', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (123, 'He’ll work as a freelance consultant, unless he finds a better job(    ).', 'somewhere', 'anywhere', 'elsewhere', 'wherever', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (124, 'He(    )the book The Secret Garden.', 'entitled', 'was entitled', 'entitled as', 'entitled to', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (125, 'His long service with the company was()with a good reward.', 'admitted', 'attributed', 'acknowledged', 'accepted', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (126, 'I hate people who () the end of a film that you haven’t seen before.', 'reveal', 'rewrite', 'revise', 'reverse', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (127, 'I never imaged that peter （） such a good student.', 'got', 'would get', 'gets', 'will have gotten', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (128, 'I preferred （） at home to （） such a party.', 'stay;join', 'staying;joining', 'to stay;joining', 'staying;join', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (129, 'I preferred to （） at home rather than（）.', 'stay;camp', 'staying;camping', 'stay;to camp', 'staying;to camping', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (130, 'I will have begun to do the work ( ) 3 o’clock this afternoon.', 'by', 'at', 'after', 'before', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (131, 'I’m going to have my radio （）.', 'fixed', 'to fix', 'fix', 'fixing', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (132, 'If you have difficulty() a particular book, please ask one of the librarians for assistance.', 'to locate', 'locate', 'locating', 'of locating', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (133, 'If you(    )several words, we can put the whole story on one page.', 'delete', 'erase', 'cancel', 'undock', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (134, 'In () to her lively sister,she is quiet and shy.', 'comparison', 'contrary', 'distinguishing', 'contrast', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (135, 'In 1959 the combined value of U.S. imports and exports(    )less than 9 percent of the country’s gross domestic products.', 'amounting with', 'amounting to', 'amounted with', 'amounted to', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (136, 'In a sense,we are(    )the(    )of national boarders in many areas of economic activity in the world today.', 'witness;vanishing', 'witnessing;vanish', 'witness;vanish', 'witnessing;vanishing', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (137, 'It is through learning that the individual () many habitual ways of reacting to situations.', 'snatches', 'achieves', 'acquires', 'retains', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (138, 'It is unthinkable that you ()the wedding uninvited.', 'went in', 'should go to', 'should go', 'go before', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (139, 'It seems neuroscience is threatening to(    )physics as the queen of the sciences.', 'aspire', 'strenghthen', 'displace', 'vanish', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (140, 'It was in 1991 （） Changjiang River flooded.', 'that', 'in which', 'when', 'in that', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (141, 'It was your recommendation () enabled me to be an engineer in this world –famous company.', 'when', 'who', 'what', 'that', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (142, 'Itis reported that a project to build the third longest bridge in the ountry is(    ) these days.', 'on the way', 'in  this way', 'under way', 'get in the way ;', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (143, 'Many football fans(    )the stadium to have a look at their favorite football players.', 'poured out', 'poured with', 'poured into', 'poured down', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (144, 'Many thousands of children had never even seen,(    )owned a pair of shoes.', 'rather than', 'let alone', 'prefer to', 'would rather', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (145, 'Most milk consists of(    )the major nutrients needed by the body for  good health.', 'abundant of', 'an abundant of', 'abundance of', 'an abundance of', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (146, 'My daughter always wastes her money on().', 'trifled', 'trifling', 'trifle', 'trifles', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (147, 'Nancy is(    )the problems she is having with Steve.', 'candid over', 'candid of', 'candid about', 'canding about', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (148, 'Nuclear science should be developed to benefit the people () harm them.', 'more than', 'better than', 'rather than', 'instead', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (149, 'One of my brother’s many faults is that he never () anything very long.', 'decides on', 'goes over', 'sticks to', 'makes up', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (150, 'Only the world work together （） peacefully.', 'people were able to live', 'were able to people live', 'were people able to live', 'live people were able', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (151, 'Our firm has helped many companies to cut costs by(    )their business.', 'globalized', 'globalizing', 'globalization', 'globalize', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (152, 'People who want the typist’s job will be judged () how accurate and fast they are.', 'in favor of', 'in terms of', 'in ways of', 'in spite of', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (153, 'People would think the seven-year-old couldn’t even reach the pedals,(    )drive the car. Nevertheless,he made it.', 'however', 'while', 'let alone', 'though', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (154, 'Rather than () everything to the last minute, he always prefers to start early.', 'to leave', 'leave', 'to leaving', 'leaving', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (155, 'Seldom （）such a big diamond.', 'will be see', 'was I looking', 'have I seen', 'can I see', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (156, 'She () Christian when she was only a junior middle school student.', 'started', 'joined', 'became', 'happened', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (157, 'She has to be very () because she hasn’t much money.', 'economic', 'economical', 'economics', 'economy', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (158, 'She told me that she （） there in two hours.', 'will be', 'would be', 'was', 'has been', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (159, 'So thick （） that you couldn’t stand on.', 'is the ice', 'the ice is', 'the ice was', 'was the ice', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (160, 'Some animals hunt by(    ).', 'instincting', 'instincts', 'instinct', 'instincted', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (161, 'Some famous private schools are theoretically open to the public, but(    )are attended by those who can afford the fees.', 'under reality', 'at reality', 'in real', 'in reality', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (162, 'Students will be criticized or punished if their behavior is not(    )school regulations.', 'according with', 'in accordance with', 'accords to', 'accords with', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (163, 'The audience(    )enthusiastically as the singer stepped on to the stage.', 'clapping', 'clapped', 'clapping up', 'clapped up', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (164, 'The child came back ( )from a dangerous situation.', 'safely and sound', 'safely and soundly', 'safe and sound', 'soundly and safe', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (165, 'The child will ()by making relatively few distinctions in the language.', 'start out', 'start in', 'start for', 'start on', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (166, 'The clothes （） Ricky paid 100 dollars was very beautiful.', 'that', 'which', 'for which', 'to which', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (167, 'The clothes a person wears may express his () or social position.', 'status', 'curiosity', 'significance', 'determination', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (168, 'The company has(    )in the accounts department.', 'a vacant', 'a vacancy', 'vacants', 'vacancy', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (169, 'The editors() this article.', 'objected', 'injected', 'rejected', 'ejected', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (170, 'The general ordered his troops to move quickly towards a(n)(    )position.', 'advantage', 'advantageous', 'advantaged', 'advantaging', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (171, 'The girl has made up her mind to go abroad with her boyfriend despite her parents’ ().', 'agreement', 'allowing', 'letting', 'objection', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (172, 'The government decision to raise taxes was(    ） their policies on inflation.', 'at odds', 'at odds with', 'at odds over', 'odds', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (173, 'The key to staying healthy and strong when backpacking(挑运) is to eat(    )of energy-rich foods.', 'large quantities', 'large quantity', 'great quantities', 'large quantity', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (174, 'The large wings of that bird () it to fly high and fast.', 'make', 'enable', 'force', 'realize', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (175, 'The minister makes a general()of the present situation.', 'view', 'survey', 'assess', 'measure', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (176, 'The new design was supposed to have consumers(    )to their door.', 'beat a path to', 'deated a path to', 'beats a path to', 'beating a path to', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (177, 'The newly launched website(    )to creat a virtual community of common interest via exchange of view on the future of the Internet.', 'aspire', 'aspires', 'aspiring', 'aspired', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (178, 'The old ()to be respected, and the young() to be well looked after.', 'are are', 'are is', 'is is', 'is are', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (179, 'The Olympic Games() an international sports competition.', 'was', 'are', 'is', 'being', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (180, 'The starter gave the()for the race to begin.', 'advice', 'signal', 'glow', 'attention', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (181, 'The stronger the coffee is, ().', 'the more like', 'the better I like it', 'I like it better', 'I like it more', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (182, 'The theory he had stuck( ) to be true.', 'proved', 'to proving', 'to prove', 'to proved', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (183, 'The tower built at the turn of the century became a(    )of the city.', 'mark', 'landmark', 'remarkable', 'remark', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (184, 'The train’s about to leave. All ()!', 'aboard', 'on', 'off', 'abroad', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (185, 'There have been many () in their marriage but they still love each other.', 'ups and downs', 'from  head to toe', 'time and again', 'over and over', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (186, 'There is still(    )about the number of casualties.', 'confusion', 'confusions', 'confused', 'confusing', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (187, 'They arrived at the farmhouse, in front of which( ).', 'is sitting a boy', 'sat a boy', 'a boy sat', 'a boy is sitting', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (188, 'They then fan the water so that it(    )and in doing so lowers the temperature.', 'disappears', 'evaporats', 'vanishes', 'goes away', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (189, 'Things now taking place in China are beyond doubt going to （） its future.', 'assert', 'prove', 'affirm', 'shape', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (190, 'Thinking someone is stupid is a far () from saying so.', 'cry', 'sound', 'voice', 'trace', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (191, 'This is the first draft of the book. Please feel perfectly free to() it.', 'cope with', 'work out', 'comment on', 'deal with', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (192, 'We demand a（    ）answer.', 'definite', 'definitive', 'define', 'defined', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (193, 'We should make a clear () between the two scientific terms for the purpose of our discussion.', 'separation', 'discrimination', 'deviation', 'distinction', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (194, 'We used to have great times () together.', 'talking', 'talk', 'in talking', 'to talk', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (195, 'What Ann advocates just shows how(    )from reality she has become.', 'contradiction', 'divorced', 'patriotic', 'divorcing', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (196, 'Will you(    )a song?', 'oblige', 'oblige for', 'oblige with', 'oblige of', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (197, 'You can arrive in Beijing earlier for the meeting,( ) you don’t mind taking the night train.', 'provided', 'unless', 'though', 'until', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (198, 'You can often read(    )stories about film stars in the local newspapers.', 'spicing', 'spiced', 'spicy', 'spice', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (199, 'You can’t catch up with your classmates unless you （） hard.', 'work', 'are to work', 'will work', 'is going to work', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (200, 'You lose your head when you get upset and lose () of your actions.', 'owning', 'control', 'objection', 'eyesight', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (201, 'You must keep the news a secret and don’t put it ( ) anybody else.', 'in possession of', 'in the possession of', 'in charge of', 'in the charge of', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (202, 'You’d rather watch TV this evening, （）？', 'isn’t it?', 'hadn’t you', 'wouldn’t you', 'won’t you', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (203, 'Young （） he is, he has proved to be an able salesman.', 'that', 'who', 'as', 'which', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (204, ' ____the sports C3meeting might be put off.          Yes, it all depends on the weather.', 'I’ve been told', 'I’ve told', 'I’m told', 'I told', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (205, '() by the failure of the project，the manager could hardly say a word.', 'To be shocked', 'Shocked', 'Be shocked', 'Shocking', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (206, '() I admit that the problems are difficult, I don’t agree that they can’t be solved.', 'For fear that', 'Because', 'While', 'Until', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (207, '() in the company for three years, Mark has become experienced in business negotiations.', 'Having worked', 'Have been working', 'Have worked', 'Worked', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (208, '() is reported in the newspapers that the talks between the two companies have not made any progress.', 'That', 'What', 'It', 'As', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (209, '() some students are able to find employment after graduation, others will have to return to school and earn an advanced degree.', 'Since', 'While', 'Because', 'If', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (210, '() that I wasn’t going to get much chance for promotion, I soon became bored with my work.', 'To realize', 'Realizing', 'Being realized', 'Realized', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (211, '() the weather improves, we will suffer a huge loss in the tourist industry.', 'As', 'Since', 'While', 'Unless', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (212, 'After working for twenty hours without any rest, the doctors were ().', 'exhausted', 'mounted', 'wrapped', 'restored', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (213, 'All the memories of his childhood had () from his mind by the time he was 65.', 'faded', 'illustrated', 'confined', 'concerned', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (214, 'Allan is looking forward to ()  the trade fair.', 'meet', 'meeting', 'be meeting', 'having met', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (215, 'Although the traffic is not busy, he likes to drive at a ()speed.', 'pare', 'fast', 'moderate', 'moral', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (216, 'As a teacher, you should not () the students from asking questions in class.', 'ruin', 'restrain', 'import', 'impose', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (217, 'At the sight of her husband getting off the train, the woman walked forward and embraced him and gently(    )his white hair.', 'stroking', 'stroked', 'stroke', 'strokes', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (218, 'Both sugar and salt can ()in water.', 'desert', 'absorb', 'dissolve', 'involve', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (219, 'By the end of this year Mr. Smith () in our company for exactly three years.', 'is working', 'has worked', 'will work', 'will have worked', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (220, 'By the end of this year Mr. Smith ;()in our ;company for exactly three years.', 'is working', 'has worked', 'willwork', 'will have worked', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (221, 'By the next month, I () my term paper.', 'have completed', 'complete', 'am completing', 'will have completed', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (222, 'Carelessness made him fall in his job ().', 'interview', 'intention', 'stomach', 'stocking', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (223, 'Don’t you know him?()', 'Yes, I do.', 'Yes, Idon’t.', 'No, I do.', 'Yes, Idon’t.', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (224, 'Enclosed you () an application form that you are asked to fill out.', 'will find', 'find', 'found', 'are finding', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (225, 'Female socialization places importance on getting along with others, () male socialization places importance on becoming independent.', 'when', 'while', 'instead', 'therefore', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (226, 'He () to study harder in the future so that he could have more opportunities to find a better job.', 'resolved', 'resorted', 'requested', 'reserved', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (227, 'He always has a lot of() ideas in his mind , and sometimes we do not even know what he is thinking about.', 'novel', 'spoil', 'acceptable', 'additional', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (228, 'He didn’t(    )until the end of the examination.', 'turning up', 'turn up', 'turned up', 'turned', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (229, 'He was attending a meeting, () he would have come to your party yesterday.', 'unless', 'when', 'but', 'or', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (230, 'He was(    )when a woman answered the phone.', 'taking away', 'taken away', 'taken aback', 'taking aback', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (231, 'He works in our university as a visiting (), not as a formal faculty member.', 'traditional', 'scholar', 'nurse', 'pilot', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (232, 'His parents encouraged him to go to Harvard, but he did not  ()  .', 'want so', 'what to', 'want todo', 'want them', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (233, 'I agree with you(    ), but there are still some areas on which I can’t see eye to eye with you.', 'in some ways', 'in many way', 'in the way', 'in a way', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (234, 'I don’t regret () her what I thought about her proposal, even if it upset her.', 'tell', 'to tell', 'told', 'telling', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (235, 'I got a little () when I learned that the appointment with the general manager was changed to another time.', 'concerning', 'horrible', 'upset', 'awful', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (236, 'I have not heard anything from him since his().', 'departure', 'fault', 'foundation', 'acciptance', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (237, 'I lost your telephone number. ()I would have rung you up long before.', 'And', 'But', 'Otherwise', 'Unless', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (238, 'I think that the Great Wall is worth () hundreds of miles to visit.', 'to travel', 'traveling', 'traveled', 'travel', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (239, 'I think that the Great Wall is worth()hundreds of miles to visit.', 'to ;travel', 'traveling', 'traveled', 'travel', 'B', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (240, 'If you have any problems during your study here, please do not () to call me for help', 'hesitate', 'despair', 'urge', 'request', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (241, 'In order to increase our output, we need to import more production ().', 'facilities', 'hens', 'votes', 'artists', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (242, 'In spite of the surgery he is still(    ).', 'in bad condition', 'under bad condition', 'with bad undition', 'of bad condition', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (243, 'In the Qing dynasty men(    )the front of the head and wore the hair at the back tied in a queue or pigtail.', 'shave up', 'shaves', 'shaven', 'shaved', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (244, 'In the United States, the foreign policy is decided by the () government, not by each state.', 'federal', 'figure', 'scientific', 'service', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (245, 'It is a common practice () a battery when it still has some life in it.', 'to charge', 'charge', 'charged', 'having charged', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (246, 'It is advised that the announcement () made known to everyone.', 'would be', 'is', 'will be', 'should be', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (247, 'It is important that we () the task ahead of time.', 'will fish', 'finished', 'finish', 'shall finish', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (248, 'It is important to provide an environment () people are encouraged to make suggestions at all levels of the company.', 'from which', 'on which', 'in which', 'for which', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (249, 'It is not () for me to return all the books to the library now  because I still need some of them for my research.', 'continuous', 'difficult', 'convenient', 'sufficient', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (250, '—Jim, can you work this Sunday?  —()? I’ve been working for two weeks on ends.', 'So what', 'Why me', 'Why not', 'What if', 'D', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (251, 'John () to be a polite man. But in fact he is very rude.', 'pretends', 'assures', 'affords', 'melts', 'A', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (252, 'John asked me ()to visit his uncle’s far with him.', 'How would I like', 'If or not would I like', 'Whether I would like', 'Which I would like', 'C', '5', 4, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (253, 'John had never been abroad before, () he found the business trip very exciting.', 'because', 'though', 'so', 'while', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (254, 'Many kinds of animals are believed to have () from the earth.', 'withdrawn', 'vanished', 'found', 'hung', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (255, 'Many multinational companies(    )during the financial crisis, not to speak of small businesses.', 'went broke', 'went down', 'went away', 'went in', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (256, 'Much of the news provided by this newspaper is (), not foreign.', 'domestic', 'strain', 'purchase', 'murder', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (257, 'Much time () sitting at  a desk, office workers are generally troubled by health problems.', 'being spend', 'having spent', 'spent', 'spending', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (258, 'None of the people in the purchasing (购买) department office will () that they have made the wrong decision in buying that stuff at such a high price; they want to continue telling people they are perfect.', 'accept', 'adopt', 'neglect', 'admit', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (259, 'Not until she arrived at the meeting room () she had forgotten to bring the document.', 'she realized', 'did she realize', 'she did realize', 'does she realize', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (260, 'Not until that day () the importance of good manners in a job interview.', 'did I realize', 'I did realize', 'I have realized', 'have I realized', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (261, 'Pine trees are usually believed to() cold weather.', 'guard', 'accomplish', 'roar', 'endure', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (262, 'Please be serious. I am not (). You should consider it carefully.', 'sorting', 'joking', 'counting', 'comparing', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (263, 'Professor Smith is also the ()of the international program office. If you have any problem when you study here, you may go to him for help.', 'detective', 'president', 'manager', 'director', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (264, 'Schools should be lively places where individuals are encouraged to () to their greatest potential.', 'accelerate', 'develop', 'improve', 'perform', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (265, 'Several loudspeakers are () from the ceiling and we can hear the speaker very clearly.', 'connected', 'sustained', 'associated', 'suspended', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (266, 'She didn’t try to do anything for her daughter, and ()it’s too late now.', 'in case', 'in any case', 'at this case', 'in case of', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (267, 'She is already 16years ol But she ()as if she were still a little girl.', 'believes', 'absorbs', 'accesses', 'behaves', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (268, 'Shirley()a book about china last year but I don’t know whether she has finished it.', 'has written', 'wrote', 'had written', 'was writing', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (269, 'Some  schools will have to make () in agreement with the national soccer reform.', 'judgments', 'adjustments', 'comments', 'achievements', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (270, 'Some lazy men would rather () than work.', 'indicate', 'declare', 'solve', 'starve', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (271, 'Some states in the United States () people to carry guns.', 'apply', 'charm', 'ignore', 'forbid', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (272, 'Sometimes it is very difficult to () some of the English words. Even the native speaker can not help.', 'decrease', 'create', 'define', 'delight', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (273, 'Students will be evaluated by class performance as () to class attendance (出席).', 'against', 'opposed', 'opposite', 'opposing', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (274, 'Students with () problems may apply for student loans.', 'economic', 'financial', 'male', 'economical', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (275, 'The () is nearly dead , so I can not start the car again.', 'bean', 'beam', 'bake', 'battery', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (276, 'The () work continued for more than a week but there was still  no sign of the missing boy.', 'research', 'rescue', 'vessel', 'vast', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (277, 'The advertising company recently hired a designer () had once won a prize in a national contest.', 'whose', 'which', 'whom', 'who', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (278, 'The auto industry spends large amounts of money on marketing campaigns () young adult customers.', 'attract', 'attracted', 'to attract', 'attracts', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (279, 'The college students in China are ()from smoking on campus because this will do them no good.', 'discouraged', 'vanished', 'obeyed', 'obtained', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (280, 'The engineers in this lab spent several weeks () their plans for the new bicycle.', 'counting', 'stripping', 'elaborating', 'casting', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (281, 'The Government is () to health service in order to make sure that everyone in need of treatment receives it.', 'expanded', 'committed', 'commented', 'communicated', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (282, 'The man was suspected of(    )murder.', 'commits', 'committed', 'committing', 'committed to', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (283, 'The market economy is quickly changing people’s idea on () is accepted.', 'that', 'which', 'what', 'how', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (284, 'The message () Mr. Black was elected chairman of the committee arrived just in time.', 'which', 'what', 'that', 'how', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (285, 'The new staff didn’t know how to use the system ( ) I explained it to him yesterday.', 'until', 'because', 'if', 'since', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (286, 'The old man(    )jogging every morning although he was eighty years old.', 'stuck to', 'stick to', 'stuck with', 'stick with', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (287, 'The police officers decided to conduct a thorough and ()review of the case.', 'comprehensive', 'complicated', 'Conscious', 'crucial', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (288, 'The sales manager had his secretary () a press conference for their new products.', 'arrange', 'to arrange', 'have arranged', 'arranged', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (289, 'The scientists wanted to keep people () about the breakthrough in their experiment.', 'inform', 'informed', 'informing', 'to inform', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (290, 'The teacher didn’t mention the word “cheating” but I knew what he was(    ).', 'drives at', 'drove at', 'drive at', 'driving at', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (291, 'The university started some new language programs to() the ;country’s Silk  Road Economic Belt.', 'apply to', 'hunt for', 'cater for', 'apeal to', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (292, 'They had talked only for a few minutes () they found they were of different opinions.', 'unless', 'while', 'before', 'once', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (293, 'This boy was () for what he had done in the class.', 'scolded', 'overcome', 'inclined', 'displayed', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (294, 'This morning in the class, our teacher lost his() at last because he could not stand any more.', 'temper', 'terror', 'verse', 'contain', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (295, 'This river forms a natural ()between China and Korean.', 'boundary', 'string', 'spot', 'zone', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (296, 'This river is so big that it is impossible to build a () under it without modern technology.', 'canal', 'tunnel', 'channel', 'cable', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (297, 'Under normal conditions, the ocean(    )of the tropical Pacific travel from east to west.', 'currents', 'current', 'currently', 'currenting', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (298, 'We are () at the rapid progress Mark has made in this semester.', 'distinguished', 'annoyed', 'astonished', 'scored', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (299, 'We are happy at the good news () Mr. Black has been awarded the Best Manager.', 'that', 'which', 'what', 'whether', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (300, 'We can not trust him any more because he often () his duty.', 'owes', 'spoils', 'deserts', 'neglects', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (301, 'We can not() all the magazines together.', 'route', 'draw', 'thread', 'bind', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (302, 'We have to investigate as ()   customers as possible in order to make sure of the potential of the market.', 'many', 'much', 'more', 'most', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (303, 'We made plans for a visit but () difficulites with the car prevented it.', 'subordinated', 'subsequent', 'afterward', 'next', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (304, 'We must  find a way to cut prices () reducing our profits too much.', 'without', 'despite', 'With', 'for', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (305, 'We must find a way to cut prices () reducing our profits too much.', 'without', 'despite', 'with', 'for', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (306, 'We understand you need easy access () up-to-date information about your accounts in many cities.', 'in', 'to', 'for', 'with', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (307, 'We won’t allow any foreign country to() in our internal affairs.', 'devote', 'district', 'interfere', 'wander', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (308, 'What he said in the meeting ()everybody present.', 'disgusted', 'dismissed', 'disposed', 'eliminated', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (309, 'When a spacecraft travels, one of the major problems is reentry into the Earth’s ().', 'surface', 'atmosphere', 'attitude', 'bent', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (310, 'When I first arrived in Japan, I was surprised () the way people greeted each other.', 'of', 'at', 'with', 'to', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (311, 'When making modern cameras , people began to() plastics for metal.', 'surround', 'substance', 'stretch', 'substitute', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (312, 'When traveling alone in the mountains, you’d better take a () with you in case you get lost.', 'compass', 'compress', 'camera', 'campus', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (313, 'When you fill in the application form, please use your () address so that we can contact you easily later.', 'policy', 'plain', 'permanent', 'principal', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (314, 'Why was Fred so upset?He isn’t used () criticize.', 'be', 'to be', 'to being', 'having been', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (315, 'Winds are ()but moving air.', 'anything', 'nothing', 'everything', 'all', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (316, 'With the help of the government , a large number of people ()after the flood in 1991.', 'survived', 'suspended', 'suffered', 'subjected', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (317, 'With the()of Mary, all the girl students are eager to go to the party.', 'exhibition', 'exception', 'except', 'reception', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (318, 'Without a proper education, people could () all kinds of crimes.', 'conduct', 'stoop', 'commit', 'sweat', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (319, 'Would you please pass me the book () cover is black?', 'which', 'whose', 'that', 'its', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (320, 'You don’t need to describe her. I()her several times.', 'had met', 'have met', 'met', 'meet', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (321, 'I phoned my first teacher time and again when I heard that he was ill, yet couldn’t( ).', 'get through', 'get along', 'get over', 'get hold of', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (322, 'It was she that ( )a sharp whistle, which makes possible for us to catch the thief.', 'gave off; this', 'gave out; that', 'gave; it', 'sent out; them', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (323, 'My brother was still studying( ) into the night while I was ( ) asleep.', 'late; sound', 'lately; wide', 'deeply; far', 'far; far', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (324, 'Shelly had prepared carefully for her English examination so that she could be sure of passing it on her first ( ).', 'intention', 'attempt', 'purpose', 'desire', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (325, '— Can you come to a party on Saturday, Peter?  　　— Oh,()I’m already going out.', 'what a pity!', 'don’t ask!', 'how come?', 'so what?', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (326, '() full preparations, Tony was quite confident about the coming interview.', 'Make', 'To make', 'To make', 'Having made', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (327, '() he is enthusiastic and qualified for the job, I see no reason to remove him from office.', 'Provided that', 'Even though', 'Unless', 'As if', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (328, '（） John （） Mary knew anything about it.', 'Both;and', 'Either; or', 'Neither; nor', '/; and', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (329, '() scientists have learned a lot about the universe, there is much we still don’t know.', 'Once', 'Since', 'Though', 'Unless', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (330, 'Andy is content with the toy. It is() he has ever got.', 'a better', 'the better', 'a best', 'a best', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (331, '—Are you going to the concert next week?  　　—I’d like to, but I () an exam then.', 'take', 'took', 'was taking', 'will be taking', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (332, 'As you go through this book, you () that each of the millions of people who lived through World War II had a different experience.', 'will find', 'found', 'had found', 'have found', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (333, 'At last, excited and surprised, he found a （） treasure in the cave.', 'priced', 'low-priced', 'priceless', 'price', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (334, 'Brian is gifted in writing music; he is very likely to be(   ) Beethoven.', 'a', 'an', 'the', '不填', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (335, 'He asked （） for the iPad.', 'I paid how much', 'how much did I pay', 'did I pay how much', 'how much I paid', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (336, 'He asked （） with me.', 'what was the matter', 'what the matter was', 'what the matter is', 'what’s the matter', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (337, 'His explanation is （） from satisfactory.', 'away', 'hardly', 'far', 'nearly', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (338, '—How did you make contact with the travel agent, Susan?  　　—Oh, that’s easy. I surfed the Internet and then called one () the telephone number is provide', 'that', 'in which', 'of which', 'whose', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (339, '—I am worn out now. I stayed up last night to finish the report.  　　—Oh? You (). The professor asked us to hand it in next week.', 'needn’t have', 'wouldn’t have', 'couldn’t have', 'can’t have', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (340, '—I didn’t know you play the piano. It sounds wonderful!  　　—Thank you! I() it when I worked in UK.', 'learned', 'had learned', 'have learned', 'learn', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (341, 'I have a lot of friends, and （） of them smokes.', 'not', 'none', 'neither', 'nor', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (342, 'I just heard()bank where Dora works was robbed by() gunman wearing a mask.', 'the; /', 'a; /', 'the; a', 'a; the', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (343, 'I’d like Jane,  ( )Joan, to go to the farewell party on behalf of (代表) our class.', 'more than', 'less than', 'rather than', 'or other', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (344, 'I’ve （） him to run faster than that.', 'know', 'known', 'knowing', 'knew', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (345, 'If better use is( ) of your spare time, you’ll make great progress in it.', 'spent', 'made', 'taken', 'thought', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (346, 'If we( ) , we can realize the progress we have made in space research.', 'turn back', 'look back', 'answer back', 'move back', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (347, 'If you come to visit China, you will () a culture of amazing depth and variety.', 'develop', 'create', 'substitute', 'experience', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (348, 'If you miss this chance, it may be years() you get another one.', 'As', 'before', 'since', 'after', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (349, '—Is the project difficult for the students?  　　—No. Most of the relevant information () to them.', 'has been provided', 'had provided', 'had been provided', 'has provided', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (350, 'It is so cold that you can’t go outside () fully covered in thick clothes.', 'if', 'unless', 'once', 'when', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (351, 'It was not what Tom said but what he wrote in the letter () touched his mother.', 'what', 'which', 'that', 'who', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (352, 'It was when we were returning home () I realized what a good feeling it was to have helped someone in trouble.', 'which', 'that', 'where', 'how', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (353, 'It’s an art to be parents. With children, if you say “no”, you have to mean().', 'that', 'this', 'it', 'one', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (354, 'Jenny, my closest friend, often （） her      secrets with me.', 'reports', 'speaks', 'shares', 'tells', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (355, 'Little Tom sat watching the( ) monkey dancing in front of him.', 'amaze', 'amazing', 'amazed', 'to amaze', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (356, 'More expressways in Sichuan(   ) soon to promote the local economy.', 'are being built', 'will be built', 'have been built', 'had been built', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (357, 'Most people who enjoy travelling believe that travel () not only our bodies but also our minds.', 'benefited', 'would benefit', 'has benefited', 'benefits', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (358, 'My parents don’t （） of smoking cigarettes.', 'approving', 'approval', 'approved', 'approve', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (359, 'Niki is always full of ideas, but(  )  is useful to my knowledge.', 'nothing', 'no one', 'neither', 'none', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (360, 'Once (), the book will surely attract readers’ attention since it is related to people’s health.', 'publishing', 'having published', 'published', 'to publish', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (361, 'She wanted to know whose child （）  was at the door.', 'she', 'he', 'it', 'that', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (362, 'Students show great interest in ()Professor Edwards presents to them in his class.', 'wherever', 'whichever', 'whatever', 'however', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (363, 'That child is （） good health.', 'on', 'in', 'of', 'out', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (364, 'That restaurant is extremely popular, () you may have to wait to get a seat.', 'for', 'so', 'or', 'yet', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (365, 'The （） team pitched on the mountain.', 'survey', 'surveying', 'assess', 'investigate', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (366, 'The books on the desk (  ) covers are shiny, are prizes for us.', 'which', 'what', 'whose', 'that', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (367, 'The exhibition (  )tells us we should do something to stop air pollution.', 'where', 'why', 'what', 'which', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (368, 'The first time I () Todd, he () to some students at the English corner.', 'had seen; was talked', 'saw; talked', 'had seen; talked', 'saw; was talking', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (369, 'The job position in the advertisement requires that the applicant () at least 8 years of working experience.', 'had', 'have', 'will have', 'has', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (370, 'The whole class applauded wildly at the end of the speech, () greatly encouraged Bob.', 'what', 'where', 'which', 'when', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (371, 'There is only one more day to go(   ) your favorite music group play live.', 'since', 'until', 'when', 'before', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (372, 'This river is （） that one.', 'three times long than', 'three times as long as', 'as three times long as', 'three times as longer as', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (373, 'We are going to the theater tomorrow () all the tickets are sold out.', 'when', 'unless', 'whether', 'because', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (374, 'Winds are （） but moving air.', 'anything', 'nothing', 'everything', 'all', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (375, 'Working as a manager, Rebecca found it hard ()between work and her family.', 'balancing', 'to balance', 'to have balanced', 'having balanced', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (376, 'You ()be careful with the camer It costs!', 'must', 'may', 'can', 'will', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (377, '( ) you may be right , I can’t agree completely.', 'While', 'As', 'If', 'Since', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (378, 'It was not until she had arrived home( ) her appointment with the doctor.', 'did she remember', 'that she remembered', 'when she remembered', 'had she remembered', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (379, 'My brother is very tall. The little bed won’t( ) for him.', 'prepare', 'match', 'fit', 'do', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (380, 'Shall we( )our discussion and have some tea or coffee, please?', 'break off', 'break down', 'break into', 'break out', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (381, 'Some of the students have already learned enough English to  ( ) a conversation with a native English speaker.', 'hold on', 'keep on', 'go on', 'carry on', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (382, 'You have made a few spelling mistakes in your composition, but ( ), it is fairly good.', 'on the whole', 'generally speaking', 'above all', 'on one hand', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (383, '( ) teachers are looked down upon.', 'Went away are the days when', 'Away went the days which', 'Gone are the days when', 'Went are the days that', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (384, '（） that I wasn’t going to get much chance for promotion, I soon became bored with my work.', 'To realize', 'Realizing', 'Being realized', 'Realized', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (385, '(), Henry Lee went on leave from the Army in 1782.', 'His health failing', 'His health is failing', 'His health was failed', 'His health is failed', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (386, 'A good swimmer should learn to()the movements of his arms and legs.', 'combine', 'connect', 'cooperate', 'coordinate', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (387, 'A ship in harbor is safe, but that’s not()ships are built for.', 'what', 'whom', 'why', 'when', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (388, 'After a long period of regular exercise, I now () much less than I used to.', 'weigh', 'like', 'grow', 'increase', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (389, 'All flights () because of the storm, they decided to take the train.', 'having canceled', 'having been canceled', 'were canceled', 'have been canceled', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (390, 'All this shows that tax (税) on food has become a real ().', 'possibility', 'chance', 'approach', 'way', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (391, 'As a reward () passing the exams, she got a new bike from her parents.', 'in', 'for', 'by', 'on', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (392, 'Carter is in charge of the office while I’m ().', 'leaving', 'on leaving', 'on leave', 'on relief', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (393, 'chools should be lively places where individuals are encouraged to () to their greatest potential.', 'accelerate', 'improve', 'perform', 'perform', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (394, 'During the interview I was the first to ask him () questions that put the Bonn government in an awkward position.', 'instructing', 'intimidating', 'rewarding', 'embarrassing', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (395, 'From a (), he could see the tall chimneys of the factory.', 'sight', 'view', 'distance', 'range', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (396, 'Given the general() of his health, it may take him a while to recover from the operation.', 'function', 'situation', 'manner', 'state', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (397, 'Greatly moved by what she did,( ).', 'tears came to my eyes', 'my heart was full of gratefulness', 'my eyes were filled with tears', 'I could hardly hold back my tears', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (398, 'Have (), my dear. Some things take time.', 'credibility', 'perfection', 'guidance', 'patience', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (399, 'He can’t afford the ordinary comforts of life, () luxuries.', 'let alone', 'not speak of', 'to say nothing', 'let it alone', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (400, 'He has surely () his government to continuing down the path of economic reform.', 'commented', 'communicate', 'guaranteed', 'committed', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (401, 'I think I was at school,( )I was staying with a friend during the vacation when I heard the news.', 'even so', 'and then', 'so that', 'or else', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (402, 'I tried to get out of the business （） I found impossible to carry on.', 'why', 'which', 'what', 'where', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (403, 'I’ll call the hotel. I’ll tell them we’ll() tomorrow morning and stay there for two nights.', 'check in', 'check out', 'check off', 'check over', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (404, 'I’m sorry () your meeting, but may I speak with Michael for a moment?', 'interrupting', 'to interrupt', 'in interrupting', 'have interrupted', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (405, 'In her last days the poet expressed () for her father; she finally had to admit that she was worried about him.', 'concern', 'distrust', 'anger', 'humor', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (406, 'Is there anything you want from the town? I am going to get ().', 'these letters mail', 'these letters mailed', 'mailed these letters', 'to mail these letters', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (407, 'It is considered inappropriate for a former president to () in commerce.', 'occupy', 'adjust', 'conduct', 'engage', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (408, 'It was hard work but we all felt () at the end of the project.', 'embarrassed', 'frustrated', 'rewarded', 'challenged', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (409, 'It would be best to deal with these issues at once, before problems ().', 'arise', 'reflect', 'expand', 'challenge', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (410, 'Jack would rather spend time complaining than （） the problem by himself.', 'solve', 'solved', 'solves', 'to solve', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (411, 'Jim rode along ().', 'his dog is running and barking after him', 'with his dog’s running and barking after him', 'with his dog running and barking after him', 'his dog being running and barking after him', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (412, 'Joe was () the school wall, smoking a cigarette.', 'leaned against', 'leaned to', 'leaning to', 'leaning against', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (413, 'Just as I got to the school gate, I realised I () my bank in the cafe.', 'have left', 'had left', 'would leave', 'was leaving', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (414, 'Measures had to be taken in face of the housing problem that ()in the city.', 'founded', 'raised', 'arose', 'produced', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (415, 'Motoring organizations have started a（n）() for safer roads in the area.', 'action', 'measure', 'campaign', 'achievement', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (416, 'My father didn’t go to New York; the doctor suggested that he() there.', 'not to go', 'won’t', 'not go', 'not to go to', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (417, 'Nobody knows () how many people are to be blamed for the coalmine accident, so the government is trying to find out the whole truth.', 'inwardly', 'before', 'cleverly', 'precisely', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (418, 'Only when Lily walked into the office() that she had left the contract at home.', 'she realized', 'has she realized', 'she has realized', 'did she realize', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (419, 'Please note that Boston next week, （） you want to call me and discuss things.', 'in case', 'unless', 'until', 'so that', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (420, 'Riding a bike helps develop a child’s sense of ().', 'direction', 'movement', 'balance', 'coordination', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (421, 'She () him to find answers to her problems.', 'learned from', 'came into', 'leaned on', 'subjected to', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (422, 'She has been known to become upset at the () of blood.', 'sight', 'view', 'show', 'range', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (423, 'Some previous study of music or performance experience is desirable though not a formal () for students wishing to take the course.', 'requirement', 'commitment', 'management', 'assignment', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (424, 'Some see themselves as the provider of ideas, () others view their role as essentially managerial.', 'when', 'therefore', 'while', 'otherwise', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (425, '—Sorry, Liz. I think I was a bit rude to you.  　　—(), but don’t do that again!', 'Go ahead', 'Forget it', 'It depends', 'With pleasure', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (426, 'The combination of virtual and traditional learning will () the scope of every lesson and increase the students’ interest.', 'reflect', 'instruct', 'hinder', 'expand', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (427, 'The headmaster was strict. He requested that we()television on week nights.', 'not watch', 'must not watch', 'not be watching', 'haven’t watched', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (428, 'The number of smokers, () is reported, has dropped by 17 percent in just one year.', 'it', 'which', 'what', 'as', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (429, 'The quality of education in this small school is better than () in some larger schools.', 'that', 'one', 'it', 'this', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (430, 'The small town became a tourist attraction and its only restaurant became so crowded that the () had to eat at home every night.', 'locals', 'citizens', 'migrants', 'emigrants', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (431, 'They didn’t know what exactly happened; they only heard what () a huge blast.', 'looked like', 'felt like', 'seemed like', 'sounded like', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (432, 'What a () smell! Open the window and air out the room.', 'disgusting', 'pleasing', 'wonderful', 'disturbed', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (433, 'When someone (), they gradually change from being a child into being an adult.', 'grows on', 'grows out', 'grows further', 'grows up', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (434, 'When you’re in Paris you can’t help being () of the way the streets are kept clean.', 'effective', 'relaxed', 'conscious', 'obvious', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (435, '()  left before the deadline, it doesn’t seem likely that John will finish the jo', 'Although such a short time', 'With time so short', 'It is such a short time', 'With such a short time', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (436, '(), it cannot be windy.', 'The moon having not atmosphere', 'For the moon to have no atmosphere', 'The moon has no atmosphere', 'The moon having no atmosphere', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (437, '()at the price list, he’d have known what would happen in the en', 'Had Mr. Robinson looked', 'For Mr. Robinson looked', 'Have Mr. Robinson looked', 'Before Mr. Robinson looked', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (438, '()speech is the most obvious form of communication, we do use other forms to communicate.', 'Since', 'When', 'While', 'As', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (439, '()what others say, I think he’s a very kind and friendly young man.', 'Although', 'Though', 'Despite', 'In spite', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (440, 'A fire started in the plane, and the pilot was forced to make an () landing.', 'emergence', 'merging', 'emerging', 'emergency', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (441, 'After Stephen’s sudden () during the meeting, he was rushed to hospital.', 'collapse', 'stress', 'cripple', 'bang', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (442, 'As a result, we do not see ourselves as capable of giving any useful opinion on the possible() that a trial might have on his health.', 'effects', 'affects', 'adopts', 'adjusts', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (443, 'Being with his family for a few days, I gained one or two insights () the reason he behaves the way he does.', 'on', 'of', 'into', 'off', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (444, 'Disease () during the journey and many passengers had to be rushed to hospital for treatment.', 'broke out', 'broke down', 'started off', 'started out', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (445, 'Edwina’s office faced south and had a(n). () of the lake.', 'sight', 'look', 'impression', 'view', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (446, 'For most people in China, the bicycle is still their main () of transport.', 'means', 'impression', 'attraction', 'course', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (447, 'Having studied your report carefully, I am convinced that neither of your solutions().', 'are correct', 'were correct', 'are corrected', 'is correct', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (448, 'Having two jobs, the correspondent and writer () very busy lately.', 'are', 'is', 'has been', 'have been', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (449, 'He was a good worker who was () to his family as well as to his work.', 'consistent', 'committed', 'content', 'engaged', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (450, 'His facial()told me that he didn’t want to discuss the issue.', 'expression', 'feeling', 'meaning', 'show', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (451, 'His policies, especially in the first two years of his presidency, have often been () and contradictory.', 'confuse', 'confusing', 'demanded', 'demanding', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (452, 'His thoughts were()from the subject by the arrival of his friends.', 'attracted', 'suffered', 'distracted', 'related', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (453, 'I am going to the passport office ().', 'to stamp my passport', 'to have stamped my passport', 'for stamping my passport', 'to have my passport stamped', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (454, 'I’d offer to give you a lift if I () my car here.', 'have', 'am having', 'do have', 'had', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (455, '—I’m planning to go to Kingdom of Cambodia this summer vacation. I think the trip will be exciting.  　　—(), as it’s the rainy season then.', 'Yes, it will', 'Of course not', 'You can say so', 'It’s hard to say', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (456, 'If he () the policeman honestly, he would not have been arreste', 'answeranswer,c:should answer,d:had answered', 'answeranswer', 'should answer', 'had answered', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (457, 'It is said that () to the plan so far have been positive.', 'opinions', 'views', 'ideas', 'reactions', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (458, 'It is very difficult, for the time being, to () how much money is neede', 'account', 'sign', 'range', 'estimate', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (459, 'It should of course be given back. There is no ()about that.', 'argument', 'reason', 'view', 'point', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (460, 'Jane said to her husband,don’t worry. There is no cause for () about our daughter’s ability to manage herself.', 'care', 'concern', 'attention', 'love', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (461, 'Just imagine Mary () in her favorite chair back home.', 'to sit', 'sit', 'sitting', 'has been sat', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (462, 'Listening, speaking, reading, and then writing () the basic order in language learning.', 'assists', 'constitutes', 'establishes', 'founds', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (463, 'Mary was so () in her job that she didn’t hear anybody knocking at the door.', 'attracted', 'excited', 'absorbed', 'drawn', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (464, 'Mother dropped the glass ()she was standing up from her seat.', 'for', 'but', 'so', 'as', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (465, 'My parents encouraged me to be a doctor, but I () until they changed my mind.', 'don’t want', 'didn’t want', 'didn’t want to', 'don’t want to be', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (466, 'On yesterday interview, he didn’t make a( )at all; what’s the matter with him?', 'apology', 'appearance', 'difference', 'change', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (467, 'Our television set is out of order. Could you come and () it for us?', 'see through', 'see out', 'see to', 'see over', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (468, 'Snap judgments, if (), have usually been considered signs of immaturity or lack of common sense.', 'taking seriously', 'taken seriously', 'take seriously', 'to be taken seriously', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (469, 'The () child was helped to his feet.', 'falling', 'fallen', 'fall', 'fell', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (470, 'The advice my father gave me is work hard and you’ll ().', 'get across', 'get ahead', 'get around', 'get about', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (471, 'The age ()of the study population will greatly influence the final result.', 'barrier', 'position', 'distance', 'range', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (472, 'The book offers some advice about how to make a good () at job interviews.', 'attitude', 'reaction', 'effect', 'impression', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (473, 'The girl said she hated () he smiled at her.', 'that way', 'this way', 'the way', 'all the way', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (474, 'The movement and noise of the machines () him completely.', 'reacted', 'hold', 'noticed', 'absorbed', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (475, 'The tap won’t (), and there is water all over the floor.', 'turn off', 'turn down', 'turn on', 'turn up', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (476, 'The train was () slow that I was almost two hours late.', 'so', 'such', 'very', 'that', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (477, 'The university has already cut its budget as much as possible without () its quality and reputation.', 'correcting', 'adopting', 'risking', 'effecting', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (478, 'This has tended to foster (养成) a very negative() toward this company and its staff.', 'sense', 'belief', 'attitude', 'reason', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (479, 'To secure our future, we need a(n)() economic strategy.', 'consistent', 'obvious', 'interested', 'huge', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (480, 'Twenty years ago it was common to see people () from hunger on the streets in that poor nation, but clearly the situation has improved greatly since then.', 'calling', 'preventing', 'resulting', 'collapsing', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (481, 'We also use other forms of communication() we may be aware or unaware.', 'to which', 'of which', 'which', 'that', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (482, 'We must () our attention on the question of reducing our cost.', 'pay', 'focus', 'absorb', 'promote', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (483, '–-Why are you so crazy about music?  　　–- Because I can always find in music _____ peace that is missing in _____ world full of challenges.', 'the; a', 'the;/', '/; a', '/; the', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (484, 'With a lot of mathematical problems(), Jack was free to go to the cinema for a change in scenery.', 'to be solved', 'solved', 'solving', 'to solve', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (485, 'Would you like some more to eat?No, thanks. If I have any more I’ll()!', 'break', 'cut', 'burst', 'tear', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (486, 'I went to bed very late last night, ( ), early the next morning.', 'or rather', 'at least', 'at most', 'in a word', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (487, 'Is Mr. Wang good at drawing his students into ( )discussion?', 'lovely', 'lively', 'warmly', 'seriously', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (488, 'Some famous singers live on the ( ) from their record sales.', 'salary', 'value', 'bill', 'income', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (489, 'The picture of the park( )memories of our class’s trip last year, when Mr. Smith began to take charge of our class.', 'called up', 'reminded', 'turned up', 'came up', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (490, 'We Chinese can work wonders, that is, we can make ( ).', 'impossible possible', 'the impossible possible', 'impossibly possible', 'the impossible possibly', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (491, '—What should we pay more attention to if we go north in winter, Mum?—Nothing much. Take warm clothes( )the weather is cold.', 'as long as', 'now that', 'if', 'in case', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (492, '( ) I had done it I knew I had made a mistake.', 'Hardly', 'Directly', 'Mostly', 'Nearly', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (493, 'I didn’t like the story,( ), it’s too long, also it was written by a writer I don’t know', 'for one thing', 'for a thing', 'although', 'in one hand', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (494, 'In my opinion, what he told us just now about the affair simply doesn’t make any ( ) .', 'idea', 'meaning', 'sense', 'point', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (495, 'Lei Feng is always ready to help others when they are in trouble and he never ( ) their request.', 'turns up', 'turns over', 'turns in', 'turns down', 'D', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (496, '—Mary told me she would( )computer studies.—Really? I’ll try my best to ask her to( )such foolish ideas.', 'pick up; give up', 'put away; give up', 'give up; put away', 'give up; pick up', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (497, 'On the contrary, I think it is Truman,( )you,( )to blame.', 'more than; are', 'less than; who are', 'rather than; that is', 'rather than; is', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (498, 'Smallpox, a kind of disease, has now died( ).', 'out', 'away', 'off', 'down', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (499, 'This product is ( )to change without notice.', 'despite', 'evil', 'subject', 'crust', 'C', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (500, '() international pressure, progress has slowed in the peace talks.', 'In despite of', 'Despite', 'Despite of', 'In spite', 'B', '5', 5, '2025-02-26 18:12:30', '3', '2');
INSERT INTO `questions` VALUES (501, '() you, but could you help me one more time with the copier?', 'Sorry to bother', 'Sorry bothering', 'Sorry I bother', 'Sorry for the bother', 'A', '5', 5, '2025-02-26 18:12:30', '3', '2');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '档案编号',
  `stu_id` bigint(20) NULL DEFAULT NULL COMMENT '学生编号',
  `test_id` bigint(20) NULL DEFAULT NULL COMMENT '试卷编号',
  `tea_id` bigint(20) NULL DEFAULT NULL COMMENT '教师编号',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '考试分数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '建档信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES (10, 6, 1, 4, '10', '2025-02-26 18:12:30', NULL);
INSERT INTO `records` VALUES (11, 6, 2, 4, '0', '2025-02-26 18:12:30', NULL);
INSERT INTO `records` VALUES (12, 6, 1, 4, '0', '2025-02-26 18:12:30', NULL);
INSERT INTO `records` VALUES (13, 6, 1, 4, NULL, '2025-02-26 18:12:30', NULL);
INSERT INTO `records` VALUES (14, 6, 1, 4, '20', '2025-02-26 18:12:30', NULL);
INSERT INTO `records` VALUES (15, 6, 1, 4, '35', '2025-02-26 18:12:30', '您的得分为：35;心理老师给您的反馈为：一般一般');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `stu_age` int(20) NULL DEFAULT NULL COMMENT '年龄',
  `stu_sex` int(20) NULL DEFAULT NULL COMMENT '性别[0:男,1:女]',
  `stu_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `stu_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `stu_class_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属班级',
  `stu_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态[0:待审核,1:可用,2:停用]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (6, '张三', 21, 0, '10086', '湖南长沙1', '1001班', 'http://localhost:8092/file/61da9999-a980-478c-b0ef-d105ae62963a.jpg', 'azhou', 1);
INSERT INTO `student` VALUES (7, '李四', 21, 0, '123456', '湖南长沙1', '1001班', 'http://localhost:8092/file/61da9999-a980-478c-b0ef-d105ae62963a.jpg', '111', 1);
INSERT INTO `student` VALUES (8, '王五', 21, 0, 'zhangsan', '湖南长沙1', '1001班', 'http://localhost:8092/file/61da9999-a980-478c-b0ef-d105ae62963a.jpg', '123456', 1);
INSERT INTO `student` VALUES (9, '赵六', 21, 1, '1008611', '湖南长沙1', '1001班', 'http://localhost:8092/file/61da9999-a980-478c-b0ef-d105ae62963a.jpg', '123', 0);
INSERT INTO `student` VALUES (10, '老六', 33, 1, '10235', '湖南长沙1', '1001班', 'http://localhost:8092/file/61da9999-a980-478c-b0ef-d105ae62963a.jpg', '123', 1);

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `tea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tea_age` int(20) NULL DEFAULT NULL COMMENT '年龄',
  `tea_sex` int(20) NULL DEFAULT NULL COMMENT '性别',
  `tea_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `tea_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `tea_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态[0:待审核,1:可用,2:停用]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '老师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES (4, 'tea', 'tea', '胡歌', 30, 1, '著名心里老师', '10010', 'http://localhost:8092/file/2bc9019e-eb97-4b2e-8f8b-113de1684f4b.jpg', '2025-02-26 18:12:30', '1192704429@qq.com', 1);
INSERT INTO `teachers` VALUES (5, 'zs', 'zs', '张三', 28, 0, '张三老师的简介', '1001011', 'http://localhost:8092/file/fe00ec64-1684-4c9f-92a1-060330b8814d.jpg', '2025-02-26 18:12:30', NULL, 1);

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '试卷编号',
  `tea_id` bigint(20) NULL DEFAULT NULL COMMENT '所属老师',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '试卷标题',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `total_grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总分',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '试卷简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试卷管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES (1, 4, '明尼苏达多相人格测验（MMPI）', 'http://localhost:8092/file/469b8c06-a856-478d-883d-58ee5362bd17.jpg', '2025-02-26 18:12:30', '30', '由明尼苏达大学哈特卫（S.R.Hathaway）和麦金利（J.C.McKinley）于20世纪40年代编制。它包括多个量表，用于检测各种人格异常或心理病理情况，如疑病、抑郁、癔症、精神病态等。通过被试者对一系列问题的回答，采用“是”或“否”的方式，来评估其人格特征和心理状态。');
INSERT INTO `test_paper` VALUES (2, 4, '卡特尔16种人格因素测验（16PF）', 'http://localhost:8092/file/469b8c06-a856-478d-883d-58ee5362bd17.jpg', '2025-02-26 18:12:30', '10', '由美国伊利诺州立大学人格及能力测验研究所（Institute for Personality and Ability Testing）的卡特尔教授（Raymond B. Cattell）经过几十年系统观察、科学实验，以及因素分析统计法慎重确定和编制而成。该测验共有16个相对独立的人格因素量表，能够测量个体在乐群性、聪慧性、稳定性等多个维度上的人格特质。');
INSERT INTO `test_paper` VALUES (3, 5, '大五人格测试（NEO - PI - R）', 'http://localhost:8092/file/469b8c06-a856-478d-883d-58ee5362bd17.jpg', '2025-02-26 18:12:30', '25', '建立在大五人格模型基础上，该模型认为人格包含开放性、责任心、外倾性、宜人性和神经质五个核心维度。NEO - PI - R通过一系列精心设计的问题，让被试者进行自我报告，从而在这五个维度上对其人格进行量化评估。');
INSERT INTO `test_paper` VALUES (4, 5, '韦氏成人智力测验（WAIS）', 'http://localhost:8092/file/469b8c06-a856-478d-883d-58ee5362bd17.jpg', '2025-02-26 18:12:30', '100', '由美国心理学家韦克斯勒（David Wechsler）编制，是目前国际上通用的智力评估工具之一。它涵盖了言语智商（VIQ）和操作智商（PIQ）两个部分，通过数字广度、相似性、图片排列、积木图案等一系列分测验，综合考察个体的认知能力、思维能力、记忆');

-- ----------------------------
-- Table structure for test_questions
-- ----------------------------
DROP TABLE IF EXISTS `test_questions`;
CREATE TABLE `test_questions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `test_id` bigint(20) NULL DEFAULT NULL COMMENT '所属试卷',
  `question_id` bigint(20) NULL DEFAULT NULL COMMENT '题目编号',
  `tea_id` bigint(20) NULL DEFAULT NULL COMMENT '老师编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试卷题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_questions
-- ----------------------------
INSERT INTO `test_questions` VALUES (1, 1, 2, 4);
INSERT INTO `test_questions` VALUES (2, 1, 11, 4);
INSERT INTO `test_questions` VALUES (3, 1, 8, 4);
INSERT INTO `test_questions` VALUES (4, 1, 27, 4);
INSERT INTO `test_questions` VALUES (5, 1, 39, 4);
INSERT INTO `test_questions` VALUES (6, 1, 28, 4);
INSERT INTO `test_questions` VALUES (7, 2, 6, 4);
INSERT INTO `test_questions` VALUES (8, 2, 18, 4);
INSERT INTO `test_questions` VALUES (9, 1, 3, 4);

-- ----------------------------
-- Table structure for test_rules
-- ----------------------------
DROP TABLE IF EXISTS `test_rules`;
CREATE TABLE `test_rules`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `test_id` bigint(20) NULL DEFAULT NULL COMMENT '试卷编号',
  `min_grade` int(10) NULL DEFAULT NULL COMMENT '最低分数',
  `max_grade` int(10) NULL DEFAULT NULL COMMENT '最高分数',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应结果',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `tea_id` bigint(20) NULL DEFAULT NULL COMMENT '老师编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试卷规则管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_rules
-- ----------------------------
INSERT INTO `test_rules` VALUES (1, 1, 0, 30, '有大问题', '2025-02-26 18:12:30', 4);
INSERT INTO `test_rules` VALUES (2, 1, 31, 60, '一般一般', '2025-02-26 18:12:30', 4);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科普知识分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '知识分类一', '2025-02-17 15:52:48');
INSERT INTO `types` VALUES (2, '知识分类二', '2025-02-17 15:52:58');
INSERT INTO `types` VALUES (3, '知识分类三', '2025-02-17 15:53:02');
INSERT INTO `types` VALUES (4, '知识分类四', '2025-02-17 15:53:07');
INSERT INTO `types` VALUES (5, '知识分类五', '2025-02-17 15:53:14');
INSERT INTO `types` VALUES (6, '知识分类六', '2025-02-17 15:53:23');

SET FOREIGN_KEY_CHECKS = 1;
