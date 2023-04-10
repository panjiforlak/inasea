/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : dbcovid

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 17/06/2021 15:04:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cabang
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang`  (
  `id_cabang` int NOT NULL,
  `nama_cabang` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_cabang` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_cabang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cabang
-- ----------------------------

-- ----------------------------
-- Table structure for hasil
-- ----------------------------
DROP TABLE IF EXISTS `hasil`;
CREATE TABLE `hasil`  (
  `id_jawaban` int NOT NULL,
  `visitor_id` int NULL DEFAULT NULL,
  `visitor_no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hasil` int NULL DEFAULT NULL COMMENT 'hasil pemantauan dari quisioner',
  `hasil_date` datetime NULL DEFAULT NULL COMMENT 'jika merah dimulai dari tgl ini',
  `finish_date` datetime NULL DEFAULT NULL COMMENT 'tgl finish 14 hari dari hasil date',
  PRIMARY KEY (`id_jawaban`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hasil
-- ----------------------------

-- ----------------------------
-- Table structure for kuisioner
-- ----------------------------
DROP TABLE IF EXISTS `kuisioner`;
CREATE TABLE `kuisioner`  (
  `id_question` int NOT NULL,
  `qustion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `bobot` int NULL DEFAULT NULL,
  `is_used` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_question`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuisioner
-- ----------------------------

-- ----------------------------
-- Table structure for qrcode
-- ----------------------------
DROP TABLE IF EXISTS `qrcode`;
CREATE TABLE `qrcode`  (
  `id_qr` int NOT NULL,
  `img_qr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `url_qr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_qr`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for user_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu`  (
  `id_user_access` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `view` int NOT NULL DEFAULT 0,
  `create` int NOT NULL DEFAULT 0,
  `edit` int NOT NULL DEFAULT 0,
  `delete` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user_access`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_access_menu
-- ----------------------------
INSERT INTO `user_access_menu` VALUES (1, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_access_menu` VALUES (2, 1, 2, 1, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (3, 1, 3, 0, 1, 1, 1);
INSERT INTO `user_access_menu` VALUES (4, 1, 4, 1, 1, 1, 1);
INSERT INTO `user_access_menu` VALUES (5, 2, 2, 0, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (6, 1, 5, 1, 1, 1, 0);
INSERT INTO `user_access_menu` VALUES (7, 1, 6, 1, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (8, 1, 7, 1, 1, 0, 0);
INSERT INTO `user_access_menu` VALUES (9, 1, 8, 1, 1, 0, 0);
INSERT INTO `user_access_menu` VALUES (10, 1, 9, 0, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (11, 2, 3, 0, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (12, 2, 4, 0, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (13, 2, 5, 1, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (14, 2, 7, 0, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (15, 2, 1, 1, 0, 0, 0);
INSERT INTO `user_access_menu` VALUES (16, 2, 6, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu`  (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_parent` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_parent` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES (1, 'dashboard', 0, 'dashboard', 'fas fa-fw fa-tachometer-alt', 0, 1);
INSERT INTO `user_menu` VALUES (2, 'master', 0, NULL, 'fas fa-fw fa-cogs', 1, 1);
INSERT INTO `user_menu` VALUES (3, 'menu management', 2, 'master/menu', NULL, 0, 1);
INSERT INTO `user_menu` VALUES (4, 'role management', 2, 'master/role', NULL, 0, 1);
INSERT INTO `user_menu` VALUES (5, 'user management', 2, 'master/user', '', 0, 1);
INSERT INTO `user_menu` VALUES (6, 'user', 0, '', 'fas fa-fw fa-user', 1, 1);
INSERT INTO `user_menu` VALUES (7, 'profile', 6, 'user/profile', '', 0, 1);
INSERT INTO `user_menu` VALUES (8, 'change password', 6, 'user/change_password', '', 0, 1);
INSERT INTO `user_menu` VALUES (9, 'verified', 2, 'master/verified', '', 0, 1);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 'Administrator');
INSERT INTO `user_role` VALUES (2, 'Admin Internal');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT 0,
  `is_active` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'panjiforlak@gmail.com', '$2y$10$GApYJErrS0AeagIGdDLTwOQkaf.X3Zif.J4Z4nl.UBvBF3gtSYyNm', 'Panji Nugroho', 1, 1, '2021-05-23 01:28:38');

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor`  (
  `id_visitor` int NOT NULL,
  `jenis_visitor` int NULL DEFAULT NULL COMMENT 'pekerja/tamu',
  `cabang_id` int NULL DEFAULT NULL,
  `nama_visitor` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'nomor hp yang digunakan untuk scan',
  `tujuan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date_in` datetime NULL DEFAULT NULL,
  `date_out` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_visitor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitor
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
