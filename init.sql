/*
Navicat MySQL Data Transfer

Source Server         : 【更新可能(RW)】ローカルDB(末尾200)
Source Server Version : 50727
Source Host           : 192.168.33.200:3306
Source Database       : work

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-09-19 12:50:21
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('6', '2', '6', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('7', '3', '7', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('8', '3', '8', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('9', '3', '9', 'comment1', '2019-08-30 00:09:21', '2019-08-30 00:09:21');
INSERT INTO `comment` VALUES ('10', '5', '10', 'comment1', '2019-08-30 00:09:21', '2019-08-31 10:22:10');
INSERT INTO `comment` VALUES ('11', '2', '1', '来日前に聴き込んでおきます！', '2019-08-31 12:22:42', '2019-08-31 12:22:42');
INSERT INTO `comment` VALUES ('16', '2', '1', '2枚めのアルバムが良いです', '2019-09-15 10:42:49', '2019-09-15 10:42:49');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '投稿ID',
  `user_id` bigint(11) NOT NULL COMMENT 'ユーザーID',
  `title` varchar(255) NOT NULL COMMENT '投稿タイトル',
  `url` varchar(255) NOT NULL COMMENT 'Youtube URL',
  `message` text NOT NULL COMMENT 'メッセージ',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '1', 'Jamie Culum 「Mind Trick」', 'https://www.youtube.com/watch?v=7EdcRHpoU2s', '天気の良い休日にぴったり、掃除中はいつもこれ流してます！', '2019-08-30 00:04:36', '2019-09-15 15:08:14');
INSERT INTO `post` VALUES ('2', '1', 'WORLD FAMOUS「Sunlight Player」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'よくBGMで流しっぱなしにしてます', '2019-08-30 00:05:21', '2019-09-15 14:58:18');
INSERT INTO `post` VALUES ('4', '1', '宇多田ヒカル「Time will tell」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'シングルでも珠玉の１曲です！', '2019-08-30 00:05:41', '2019-09-15 14:59:31');
INSERT INTO `post` VALUES ('6', '2', 'Suchmos「MINT」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '夏フェス予習用', '2019-08-30 00:06:38', '2019-09-15 15:10:06');
INSERT INTO `post` VALUES ('7', '2', '水曜日のカンパネラ 「Medusa」', 'https://www.youtube.com/watch?v=V5fO-WXd9W8', 'MVもよかったら見てみて下さい！', '2019-08-30 00:06:38', '2019-09-15 15:34:19');
INSERT INTO `post` VALUES ('8', '2', 'MIKA 「Stuck In The Middle」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '2016のライブ行けなかった、、、次こそは！', '2019-08-30 00:06:38', '2019-09-15 15:08:29');
INSERT INTO `post` VALUES ('9', '3', 'Television 「Marquee Moon」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'ボーカルが独特だけどクセになります', '2019-08-30 00:08:24', '2019-09-15 15:00:53');
INSERT INTO `post` VALUES ('116', '4', 'Beatles「Blackbird」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '通勤中ホワイトアルバム リピートしてます！', '2019-09-08 17:57:30', '2019-09-15 15:18:30');
INSERT INTO `post` VALUES ('119', '5', 'cero 「Summer Soul」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'テストメッセージ', '2019-09-11 00:45:49', '2019-09-15 15:18:33');
INSERT INTO `post` VALUES ('123', '6', 'Yesterdays New Quitet 「I am Singing」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '寝る前に聴きたい癒やし系ミュージック', '2019-09-15 14:56:17', '2019-09-15 15:18:34');
INSERT INTO `post` VALUES ('124', '1', 'YUKI 「坂道のメロディ」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', 'ドライブ中に良く聴いてます！', '2019-09-15 15:21:52', '2019-09-15 15:21:52');
INSERT INTO `post` VALUES ('125', '1', 'Rage Against the Machine 「Bomb track」', 'https://www.youtube.com/watch?v=gbx55BK-6_4', '目覚め最悪ですが絶対起きられます！', '2019-09-15 15:28:13', '2019-09-15 15:40:32');

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
  `post_id` bigint(20) NOT NULL COMMENT '投稿ID',
  `tag_id` bigint(20) NOT NULL COMMENT 'タグID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
INSERT INTO `post_tag` VALUES ('2', '3');
INSERT INTO `post_tag` VALUES ('2', '2');
INSERT INTO `post_tag` VALUES ('4', '2');
INSERT INTO `post_tag` VALUES ('6', '4');
INSERT INTO `post_tag` VALUES ('7', '3');
INSERT INTO `post_tag` VALUES ('8', '163');
INSERT INTO `post_tag` VALUES ('9', '172');
INSERT INTO `post_tag` VALUES ('2', '5');
INSERT INTO `post_tag` VALUES ('8', '171');
INSERT INTO `post_tag` VALUES ('116', '150');
INSERT INTO `post_tag` VALUES ('116', '151');
INSERT INTO `post_tag` VALUES ('116', '152');
INSERT INTO `post_tag` VALUES ('116', '153');
INSERT INTO `post_tag` VALUES ('8', '151');
INSERT INTO `post_tag` VALUES ('9', '151');
INSERT INTO `post_tag` VALUES ('2', '165');
INSERT INTO `post_tag` VALUES ('6', '5');
INSERT INTO `post_tag` VALUES ('2', '4');
INSERT INTO `post_tag` VALUES ('116', '4');
INSERT INTO `post_tag` VALUES ('119', '161');
INSERT INTO `post_tag` VALUES ('119', '162');
INSERT INTO `post_tag` VALUES ('123', '7');
INSERT INTO `post_tag` VALUES ('124', '5');
INSERT INTO `post_tag` VALUES ('124', '151');
INSERT INTO `post_tag` VALUES ('124', '166');
INSERT INTO `post_tag` VALUES ('1', '151');
INSERT INTO `post_tag` VALUES ('1', '163');
INSERT INTO `post_tag` VALUES ('1', '2');
INSERT INTO `post_tag` VALUES ('125', '151');
INSERT INTO `post_tag` VALUES ('125', '164');
INSERT INTO `post_tag` VALUES ('4', '7');
INSERT INTO `post_tag` VALUES ('6', '151');
INSERT INTO `post_tag` VALUES ('7', '151');
INSERT INTO `post_tag` VALUES ('4', '168');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '2019', '2019-08-30 00:09:41', '2019-09-15 14:49:50');
INSERT INTO `tag` VALUES ('2', '癒やし系', '2019-08-30 00:09:42', '2019-09-15 14:50:16');
INSERT INTO `tag` VALUES ('3', 'Electro', '2019-08-30 00:09:44', '2019-09-15 14:50:25');
INSERT INTO `tag` VALUES ('4', '作業用BGM', '2019-08-30 00:09:46', '2019-09-09 08:14:08');
INSERT INTO `tag` VALUES ('5', '夏に聴きたい', '2019-08-31 12:54:35', '2019-09-15 14:51:11');
INSERT INTO `tag` VALUES ('7', '夜に聴きたい', '2019-08-31 12:55:24', '2019-09-15 14:50:43');
INSERT INTO `tag` VALUES ('14', 'Winter', '2019-09-01 07:37:04', '2019-09-09 08:11:50');
INSERT INTO `tag` VALUES ('150', 'Beatles', '2019-09-08 17:57:30', '2019-09-08 17:57:30');
INSERT INTO `tag` VALUES ('151', 'Rock', '2019-09-08 17:57:30', '2019-09-08 17:57:30');
INSERT INTO `tag` VALUES ('152', 'Classic', '2019-09-08 17:57:30', '2019-09-08 17:57:30');
INSERT INTO `tag` VALUES ('153', '1960年代', '2019-09-08 17:57:30', '2019-09-08 17:57:30');
INSERT INTO `tag` VALUES ('161', '2015', '2019-09-11 00:45:49', '2019-09-12 09:17:10');
INSERT INTO `tag` VALUES ('162', 'HipHop', '2019-09-11 00:45:49', '2019-09-12 09:17:15');
INSERT INTO `tag` VALUES ('163', '春に聴きたい', '2019-09-15 09:29:16', '2019-09-15 15:34:00');
INSERT INTO `tag` VALUES ('164', '絶対起きられる', '2019-09-15 09:29:16', '2019-09-15 14:51:35');
INSERT INTO `tag` VALUES ('165', 'Techno', '2019-09-15 09:29:16', '2019-09-15 14:51:42');
INSERT INTO `tag` VALUES ('166', 'アニソン', '2019-09-15 12:24:31', '2019-09-15 14:51:55');
INSERT INTO `tag` VALUES ('167', '秋に聴きたい', '2019-09-15 12:24:31', '2019-09-15 14:52:08');
INSERT INTO `tag` VALUES ('168', '結婚式に使いたい', '2019-09-15 12:24:31', '2019-09-15 14:52:31');
INSERT INTO `tag` VALUES ('171', 'Pop', '2019-09-15 15:36:31', '2019-09-15 15:36:31');
INSERT INTO `tag` VALUES ('172', '1970年代', '2019-09-15 15:37:58', '2019-09-15 15:37:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'John', '2019-08-30 00:03:08', '2019-09-15 14:53:19');
INSERT INTO `user` VALUES ('2', 'Paul', '2019-08-30 00:03:09', '2019-08-30 00:03:09');
INSERT INTO `user` VALUES ('3', 'Ringo', '2019-08-30 00:03:25', '2019-08-30 00:03:25');
INSERT INTO `user` VALUES ('4', 'George', '2019-08-30 00:03:32', '2019-08-30 00:03:32');
INSERT INTO `user` VALUES ('5', 'Yoko', '2019-08-31 08:21:16', '2019-08-31 08:21:16');
INSERT INTO `user` VALUES ('16', 'oshou', '2019-09-01 07:40:58', '2019-09-15 14:53:25');
