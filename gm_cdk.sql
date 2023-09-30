/*
Navicat MySQL Data Transfer

Source Server         : 127
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : gm_cdk

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-09-30 20:59:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gmlog
-- ----------------------------
DROP TABLE IF EXISTS `gmlog`;
CREATE TABLE `gmlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL COMMENT '用户',
  `create_time` datetime NOT NULL COMMENT '时间',
  `name` varchar(100) DEFAULT NULL COMMENT '游戏账号',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `ip` varchar(100) NOT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdk` varchar(50) CHARACTER SET utf8 NOT NULL,
  `qu` int(11) NOT NULL DEFAULT '0',
  `statuss` varchar(100) NOT NULL DEFAULT '0',
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `user` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'vip2',
  `roleid` int(11) NOT NULL,
  `addname` varchar(200) NOT NULL DEFAULT 'admin',
  `endtime` datetime DEFAULT '9999-01-30 00:00:00',
  `pass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4;
