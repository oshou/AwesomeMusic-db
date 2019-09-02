/*
Navicat MySQL Data Transfer

Source Server         : 【更新可能(RW)】ローカルDB(末尾200)
Source Server Version : 50727
Source Host           : 192.168.33.200:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-09-03 00:36:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'コメントID',
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL COMMENT '投稿ID',
  `comment` text NOT NULL COMMENT 'コメント',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '1', 'comment1', '2019-08-30 00:08:39', '2019-08-30 00:08:39');
INSERT INTO `comment` VALUES ('2', '1', '1', 'comment1', '2019-08-30 00:08:45', '2019-08-30 00:08:45');
INSERT INTO `comment` VALUES ('3', '1', '1', 'comment1', '2019-08-30 00:08:46', '2019-08-30 00:08:46');
INSERT INTO `comment` VALUES ('4', '2', '4', 'comment1', '2019-08-30 00:08:47', '2019-08-30 00:08:47');
INSERT INTO `comment` VALUES ('5', '2', '5', 'comment1', '2019-08-30 00:08:47', '2019-08-30 00:08:47');
INSERT INTO `comment` VALUES ('6', '2', '6', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('7', '3', '7', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('8', '3', '8', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('9', '3', '9', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('10', '5', '10', 'comment1', '2019-08-30 00:09:21', '2019-08-31 10:22:10');
INSERT INTO `comment` VALUES ('11', '2', '1', '来日前に聴き込んでおきます！', '2019-08-31 12:22:42', '2019-08-31 12:22:42');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '投稿ID',
  `user_id` bigint(11) NOT NULL COMMENT 'ユーザーID',
  `url` varchar(255) NOT NULL,
  `message` text NOT NULL COMMENT 'メッセージ',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Johnが夏に聞きたい1曲です', '2019-08-30 00:04:36', '2019-09-01 13:48:43');
INSERT INTO `post` VALUES ('2', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Johnが秋に聞きたい1曲です', '2019-08-30 00:05:21', '2019-09-01 13:48:40');
INSERT INTO `post` VALUES ('3', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Johnが冬に聞きたい1曲です', '2019-08-30 00:05:39', '2019-09-01 13:48:38');
INSERT INTO `post` VALUES ('4', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Johnが春に聞きたい1曲です', '2019-08-30 00:05:41', '2019-09-01 13:48:47');
INSERT INTO `post` VALUES ('6', '2', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Paulが秋に聞きたい1曲です', '2019-08-30 00:06:38', '2019-09-01 13:48:49');
INSERT INTO `post` VALUES ('7', '2', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Paulが冬に聞きたい1曲です', '2019-08-30 00:06:38', '2019-09-01 13:48:51');
INSERT INTO `post` VALUES ('8', '2', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Paulが春に聞きたい1曲です', '2019-08-30 00:06:38', '2019-09-01 13:48:53');
INSERT INTO `post` VALUES ('9', '3', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Ringoが夏に聞きたい1曲です', '2019-08-30 00:08:24', '2019-09-01 13:48:58');
INSERT INTO `post` VALUES ('10', '3', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Ringoが秋に聞きたい1曲です', '2019-08-30 00:08:24', '2019-09-01 13:49:00');
INSERT INTO `post` VALUES ('11', '4', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Georgeが冬に聞きたい1曲です', '2019-08-30 00:08:25', '2019-09-01 13:49:02');
INSERT INTO `post` VALUES ('12', '4', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'Georgeが春に聞きたい1曲です', '2019-08-30 00:08:25', '2019-09-01 13:49:06');
INSERT INTO `post` VALUES ('13', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 09:12:33', '2019-08-31 09:12:33');
INSERT INTO `post` VALUES ('14', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 09:13:35', '2019-08-31 09:13:35');
INSERT INTO `post` VALUES ('15', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 10:27:50', '2019-08-31 10:27:50');
INSERT INTO `post` VALUES ('16', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 10:33:38', '2019-08-31 10:33:38');
INSERT INTO `post` VALUES ('20', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 12:05:02', '2019-08-31 12:05:02');
INSERT INTO `post` VALUES ('21', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 12:05:25', '2019-08-31 12:05:25');
INSERT INTO `post` VALUES ('22', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 22:31:24', '2019-08-31 22:31:24');
INSERT INTO `post` VALUES ('23', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 22:31:27', '2019-08-31 22:31:27');
INSERT INTO `post` VALUES ('24', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-31 22:31:28', '2019-08-31 22:31:28');
INSERT INTO `post` VALUES ('25', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-09-01 14:22:27', '2019-09-01 14:22:27');
INSERT INTO `post` VALUES ('26', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-09-01 14:50:40', '2019-09-01 14:50:40');
INSERT INTO `post` VALUES ('27', '1', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-09-01 14:51:03', '2019-09-01 14:51:03');
INSERT INTO `post` VALUES ('34', '2', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-09-01 17:54:35', '2019-09-01 17:54:35');
INSERT INTO `post` VALUES ('35', '1', 'aaaaaaaa', 'bbbbbbbb', '2019-09-01 17:57:39', '2019-09-01 17:57:39');
INSERT INTO `post` VALUES ('36', '1', 'aaaaaaaa', 'bbbbbbbb', '2019-09-01 18:02:59', '2019-09-01 18:02:59');
INSERT INTO `post` VALUES ('37', '1', 'aaaaaaa', 'bbbbbbbbbbbbb', '2019-09-01 18:10:40', '2019-09-01 18:10:40');
INSERT INTO `post` VALUES ('38', '1', 'あああああああ', 'いいいいいいいい', '2019-09-01 18:31:01', '2019-09-01 18:31:01');
INSERT INTO `post` VALUES ('39', '1', 'うううううう', 'えええええええ', '2019-09-01 18:35:19', '2019-09-01 18:35:19');
INSERT INTO `post` VALUES ('40', '1', 'おおおおお', 'っっっっｋ', '2019-09-01 18:38:30', '2019-09-01 18:38:30');
INSERT INTO `post` VALUES ('41', '1', 'っっっっっっｋ', 'けけけけけけ', '2019-09-01 18:40:42', '2019-09-01 18:40:42');
INSERT INTO `post` VALUES ('42', '1', 'erewoiu', 'rewoiureq', '2019-09-01 18:57:22', '2019-09-01 18:57:22');
INSERT INTO `post` VALUES ('43', '1', 'eqreiourqwerwoiu', 'jbxcfddddddddd', '2019-09-01 19:01:19', '2019-09-01 19:01:19');
INSERT INTO `post` VALUES ('44', '1', 'http://exmaple.com', 'これはよいものだ', '2019-09-01 19:01:39', '2019-09-01 19:01:39');
INSERT INTO `post` VALUES ('46', '1', 'テストデータ４', 'テストデータ５', '2019-09-01 19:15:09', '2019-09-01 19:15:09');
INSERT INTO `post` VALUES ('47', '1', 'http://youtube.com/xxxxaa', 'test', '2019-09-02 01:31:52', '2019-09-02 01:31:52');

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
  `post_id` bigint(20) NOT NULL COMMENT '投稿ID',
  `tag_id` bigint(20) NOT NULL COMMENT 'タグID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
INSERT INTO `post_tag` VALUES ('1', '1');
INSERT INTO `post_tag` VALUES ('1', '2');
INSERT INTO `post_tag` VALUES ('2', '1');
INSERT INTO `post_tag` VALUES ('2', '2');
INSERT INTO `post_tag` VALUES ('3', '1');
INSERT INTO `post_tag` VALUES ('4', '3');
INSERT INTO `post_tag` VALUES ('5', '4');
INSERT INTO `post_tag` VALUES ('6', '4');
INSERT INTO `post_tag` VALUES ('7', '3');
INSERT INTO `post_tag` VALUES ('8', '3');
INSERT INTO `post_tag` VALUES ('9', '7');
INSERT INTO `post_tag` VALUES ('10', '2');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投稿ID',
  `name` varchar(255) NOT NULL COMMENT 'タグ一覧',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'tag1', '2019-08-30 00:09:41', '2019-08-30 00:09:41');
INSERT INTO `tag` VALUES ('2', 'tag2', '2019-08-30 00:09:42', '2019-08-30 00:09:42');
INSERT INTO `tag` VALUES ('3', 'tag3', '2019-08-30 00:09:44', '2019-08-30 00:09:44');
INSERT INTO `tag` VALUES ('4', 'tag4', '2019-08-30 00:09:46', '2019-08-30 00:09:46');
INSERT INTO `tag` VALUES ('5', 'summer', '2019-08-31 12:54:35', '2019-08-31 12:54:35');
INSERT INTO `tag` VALUES ('6', '2019', '2019-08-31 12:55:01', '2019-08-31 12:55:01');
INSERT INTO `tag` VALUES ('7', '夏に聴きたい曲', '2019-08-31 12:55:24', '2019-08-31 12:55:24');
INSERT INTO `tag` VALUES ('14', 'winter', '2019-09-01 07:37:04', '2019-09-01 07:37:04');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ユーザーID',
  `name` varchar(255) NOT NULL COMMENT 'ユーザー名',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'John', '2019-08-30 00:03:08', '2019-08-30 00:03:08');
INSERT INTO `user` VALUES ('2', 'Paul', '2019-08-30 00:03:09', '2019-08-30 00:03:09');
INSERT INTO `user` VALUES ('3', 'Ringo', '2019-08-30 00:03:25', '2019-08-30 00:03:25');
INSERT INTO `user` VALUES ('4', 'George', '2019-08-30 00:03:32', '2019-08-30 00:03:32');
INSERT INTO `user` VALUES ('5', 'Yoko', '2019-08-31 08:21:16', '2019-08-31 08:21:16');
INSERT INTO `user` VALUES ('16', 'saito', '2019-09-01 07:40:58', '2019-09-01 07:40:58');
