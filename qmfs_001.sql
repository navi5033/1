/*
Navicat MySQL Data Transfer

Source Server         : 127
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : qmfs_001

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-09-30 20:57:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??ID',
  `openid` varchar(200) DEFAULT NULL COMMENT '??? ?????openid+1???openid+2???????????????openid',
  `oriopenid` varchar(200) DEFAULT NULL COMMENT '???openid',
  `zoneid` int(10) DEFAULT NULL COMMENT '?id',
  `createtime` int(10) DEFAULT NULL COMMENT '??????',
  `createip` varchar(100) DEFAULT NULL COMMENT '????ip',
  `pf` varchar(100) DEFAULT NULL COMMENT '????(??)',
  `pd` varchar(100) DEFAULT NULL COMMENT '???',
  `hid` bigint(20) DEFAULT NULL COMMENT '????',
  `via` varchar(100) DEFAULT NULL COMMENT '???????',
  `app_custom` varchar(100) DEFAULT NULL COMMENT '???????',
  `Ismarket` int(10) DEFAULT NULL COMMENT '???????0-??1-?',
  `inCreate` int(10) DEFAULT NULL COMMENT '?????????0??1?',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '????',
  `shareOri` varchar(100) DEFAULT NULL COMMENT '????',
  `wherefrom` varchar(100) DEFAULT NULL COMMENT 'from',
  PRIMARY KEY (`id`),
  KEY `i_createtime` (`createtime`) USING BTREE,
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for achievetree
-- ----------------------------
DROP TABLE IF EXISTS `achievetree`;
CREATE TABLE `achievetree` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `floor` int(10) DEFAULT NULL COMMENT '???',
  `floorData` varchar(5000) DEFAULT NULL COMMENT '???????',
  `rewardList` varchar(300) DEFAULT NULL COMMENT '???????',
  `finishFloor` varchar(300) DEFAULT NULL COMMENT '??????',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activetreasure
-- ----------------------------
DROP TABLE IF EXISTS `activetreasure`;
CREATE TABLE `activetreasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `loginAwardState` int(10) DEFAULT NULL COMMENT '??????',
  `score` int(10) DEFAULT NULL COMMENT '??',
  `activeTaskMap` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activityinfo
-- ----------------------------
DROP TABLE IF EXISTS `activityinfo`;
CREATE TABLE `activityinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(10) DEFAULT NULL COMMENT '??',
  `bigType` int(10) DEFAULT NULL COMMENT '?????',
  `state` int(10) DEFAULT NULL COMMENT '?? 0???? 1???? 2????',
  `exdata` varchar(500) DEFAULT NULL COMMENT '????',
  `serverStart` int(10) DEFAULT NULL COMMENT '???????',
  `serverEnd` int(10) DEFAULT NULL COMMENT '???????',
  `clientStart` int(10) DEFAULT NULL COMMENT '???????',
  `clientEnd` int(10) DEFAULT NULL COMMENT '???????',
  `serverPf` varchar(100) DEFAULT NULL COMMENT '?????????????all?????????????3366,qqgame',
  `clientPf` varchar(100) DEFAULT NULL COMMENT '?????',
  `rank` int(10) DEFAULT NULL COMMENT 'UI??',
  `signNum` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activityspecial
-- ----------------------------
DROP TABLE IF EXISTS `activityspecial`;
CREATE TABLE `activityspecial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `stime` int(10) DEFAULT NULL COMMENT '??????',
  `etime` int(10) DEFAULT NULL COMMENT '??????',
  `title` varchar(200) DEFAULT NULL COMMENT '????',
  `content` varchar(1000) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `refresh` int(10) DEFAULT NULL COMMENT '?????0????1??',
  `reward` varchar(1000) DEFAULT NULL COMMENT '???????',
  `cond` varchar(200) DEFAULT NULL COMMENT '?????????',
  `state` int(10) DEFAULT NULL COMMENT '?????0???1???2???',
  `space` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activityspecialpersonal
-- ----------------------------
DROP TABLE IF EXISTS `activityspecialpersonal`;
CREATE TABLE `activityspecialpersonal` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '????',
  `shareGroupMaps` text COMMENT '??????????',
  `lastShareGroupNum` int(10) DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for allculture
-- ----------------------------
DROP TABLE IF EXISTS `allculture`;
CREATE TABLE `allculture` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for allleveling
-- ----------------------------
DROP TABLE IF EXISTS `allleveling`;
CREATE TABLE `allleveling` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for anqi
-- ----------------------------
DROP TABLE IF EXISTS `anqi`;
CREATE TABLE `anqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `toolId` int(10) DEFAULT NULL COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `currPrice` int(10) DEFAULT NULL COMMENT '????',
  `onePrice` int(10) DEFAULT NULL COMMENT '??????',
  `buyPrice` int(10) DEFAULT NULL COMMENT '???',
  `endTime` int(10) DEFAULT NULL COMMENT '????',
  `sellTime` int(10) DEFAULT NULL COMMENT '????',
  `belongHid` bigint(20) DEFAULT NULL COMMENT '??????id',
  `zoneId` int(10) DEFAULT NULL COMMENT '???Id',
  `buyList` varchar(5000) DEFAULT NULL COMMENT '??????id??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for awake
-- ----------------------------
DROP TABLE IF EXISTS `awake`;
CREATE TABLE `awake` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `awakeMap` varchar(1000) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for badhero
-- ----------------------------
DROP TABLE IF EXISTS `badhero`;
CREATE TABLE `badhero` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `moneyWarnTimes` int(10) DEFAULT NULL COMMENT '????????',
  `lastWarnTime` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bag
-- ----------------------------
DROP TABLE IF EXISTS `bag`;
CREATE TABLE `bag` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `equipData` text COMMENT '??????',
  `itemData` text COMMENT '??????',
  `tianShuData` text COMMENT '??????',
  `openGrid` int(10) DEFAULT NULL COMMENT '???????',
  `secondPsd` varchar(20) DEFAULT NULL COMMENT '????',
  `useItemMap` varchar(500) DEFAULT NULL COMMENT '??????',
  `lockList` varchar(3000) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bagua
-- ----------------------------
DROP TABLE IF EXISTS `bagua`;
CREATE TABLE `bagua` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `period` int(10) DEFAULT NULL COMMENT '??????',
  `targetMap` varchar(1000) DEFAULT NULL COMMENT '??????',
  `baGuaMap` varchar(1000) DEFAULT NULL COMMENT '????',
  `brandMap` varchar(500) DEFAULT NULL COMMENT '?????',
  `startTime` bigint(20) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for baoqi
-- ----------------------------
DROP TABLE IF EXISTS `baoqi`;
CREATE TABLE `baoqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `baoQiMap` varchar(1000) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for beauty
-- ----------------------------
DROP TABLE IF EXISTS `beauty`;
CREATE TABLE `beauty` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for binghun
-- ----------------------------
DROP TABLE IF EXISTS `binghun`;
CREATE TABLE `binghun` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` varchar(500) DEFAULT NULL COMMENT '????',
  `recastMap` varchar(500) DEFAULT NULL COMMENT '????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for boatdata
-- ----------------------------
DROP TABLE IF EXISTS `boatdata`;
CREATE TABLE `boatdata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `quality` int(10) DEFAULT NULL COMMENT '?????id',
  `endTime` int(10) DEFAULT NULL COMMENT '????',
  `robNum` int(10) DEFAULT NULL COMMENT '?????',
  `escortHid` bigint(20) DEFAULT NULL COMMENT '?????id',
  `state` int(10) DEFAULT NULL COMMENT '???0???1???',
  `weChatProfile` varchar(300) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for boatpersonal
-- ----------------------------
DROP TABLE IF EXISTS `boatpersonal`;
CREATE TABLE `boatpersonal` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `calcNum` int(10) DEFAULT NULL COMMENT '??????',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `robNum` int(10) DEFAULT NULL COMMENT '????',
  `quality` int(10) DEFAULT NULL COMMENT '????',
  `endTime` int(10) DEFAULT NULL COMMENT '??????',
  `refreshCount` int(10) DEFAULT NULL COMMENT '????',
  `robCount` int(10) DEFAULT NULL COMMENT '?????',
  `beRobList` varchar(2046) DEFAULT NULL COMMENT '???????',
  `robList` text COMMENT '?????????20????40?',
  `rewardRandom` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `singleBossData` varchar(500) DEFAULT NULL COMMENT '??boss?? key???id?value?????',
  `singleBossPassData` varchar(1000) DEFAULT NULL COMMENT '??boss?? key???id?value?1?????',
  `singleBossBuyData` varchar(500) DEFAULT NULL COMMENT '??boss?????? key????id?value??????',
  `singleBossWinTimes` int(10) DEFAULT NULL COMMENT '???????????',
  `qmBossBuyData` varchar(1000) DEFAULT NULL COMMENT '??boss?????? key????id?value??????',
  `qmbossTipsMap` varchar(500) DEFAULT NULL COMMENT '????boss????',
  `qmbossLeftTimes` int(10) DEFAULT NULL COMMENT '??boss??????',
  `qmbossRefreshTime` int(10) DEFAULT NULL COMMENT '??boss????',
  `qmbossBuyFightTimes` int(10) DEFAULT NULL COMMENT '??boss??????',
  `qmBossCount` int(10) DEFAULT NULL COMMENT '??BOSS??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bosshome
-- ----------------------------
DROP TABLE IF EXISTS `bosshome`;
CREATE TABLE `bosshome` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `belongCount` int(10) DEFAULT NULL COMMENT '????',
  `helpCount` int(10) DEFAULT NULL COMMENT '????',
  `warnList` varchar(256) DEFAULT NULL COMMENT '?????boss??',
  `callCount` int(10) DEFAULT NULL COMMENT '????',
  `reviveCount` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowactspecial
-- ----------------------------
DROP TABLE IF EXISTS `b_flowactspecial`;
CREATE TABLE `b_flowactspecial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(200) DEFAULT NULL COMMENT '????',
  `name` varchar(200) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(200) DEFAULT NULL COMMENT '??',
  `actId` int(10) DEFAULT NULL COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `loginIp` varchar(255) DEFAULT NULL COMMENT '??ip',
  `vip` int(10) DEFAULT NULL COMMENT 'vip??',
  `oper` int(10) DEFAULT NULL COMMENT '?????1???2??',
  `money` int(10) DEFAULT NULL COMMENT '????',
  `actType` int(10) DEFAULT NULL COMMENT '????',
  `num` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_actId` (`actId`) USING BTREE,
  KEY `i_oper` (`oper`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowcount
-- ----------------------------
DROP TABLE IF EXISTS `b_flowcount`;
CREATE TABLE `b_flowcount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `extId` int(10) DEFAULT NULL COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `isadd` int(10) DEFAULT NULL COMMENT '?????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  `recharge` bigint(20) DEFAULT NULL COMMENT '???',
  `strength` bigint(20) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000465 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowequip
-- ----------------------------
DROP TABLE IF EXISTS `b_flowequip`;
CREATE TABLE `b_flowequip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `job` int(10) DEFAULT NULL COMMENT '???????????????????0',
  `equipId` bigint(20) DEFAULT NULL COMMENT '????id',
  `sysId` int(10) DEFAULT NULL COMMENT '?????id',
  `state` int(10) DEFAULT NULL COMMENT '?? 1 ????  2 ??? 3 ???  4 ????/??? 5??? 6???',
  `attrAdd` int(10) DEFAULT NULL COMMENT '???????',
  `bodyIndex` int(10) DEFAULT NULL COMMENT '???????',
  `isadd` int(10) DEFAULT NULL COMMENT '?????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowfabao
-- ----------------------------
DROP TABLE IF EXISTS `b_flowfabao`;
CREATE TABLE `b_flowfabao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `fabaoid` int(10) DEFAULT NULL COMMENT '??id',
  `isadd` int(10) DEFAULT NULL COMMENT '0???1???2???3??',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_fabaoid` (`fabaoid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000065 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowheroattr
-- ----------------------------
DROP TABLE IF EXISTS `b_flowheroattr`;
CREATE TABLE `b_flowheroattr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `totalNum` bigint(20) DEFAULT NULL COMMENT '????',
  `changeNum` bigint(20) DEFAULT NULL COMMENT '??????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `addFlag` int(10) DEFAULT NULL COMMENT '0???1??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_operateTime` (`operateTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000001109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowheroexp
-- ----------------------------
DROP TABLE IF EXISTS `b_flowheroexp`;
CREATE TABLE `b_flowheroexp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `rebornlv` int(10) DEFAULT NULL COMMENT '??????',
  `exp` bigint(20) DEFAULT NULL COMMENT '?????',
  `addExp` bigint(20) DEFAULT NULL COMMENT '??????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `addFlag` int(10) DEFAULT NULL COMMENT '0???1??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_operateTime` (`operateTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000002941 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowheromoney
-- ----------------------------
DROP TABLE IF EXISTS `b_flowheromoney`;
CREATE TABLE `b_flowheromoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `rebornlv` int(10) DEFAULT NULL COMMENT '????',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `totalNum` bigint(20) DEFAULT NULL COMMENT '????',
  `changeNum` bigint(20) DEFAULT NULL COMMENT '??????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `addFlag` int(10) DEFAULT NULL COMMENT '1???2???3???????4??????',
  `vipLv` int(10) DEFAULT NULL COMMENT 'vip??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_operateTime` (`operateTime`) USING BTREE,
  KEY `i_reason` (`reason`) USING BTREE,
  KEY `i_addFlag` (`addFlag`) USING BTREE,
  KEY `i_zoneid` (`zoneid`) USING BTREE,
  KEY `i_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000007636 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowherostrength
-- ----------------------------
DROP TABLE IF EXISTS `b_flowherostrength`;
CREATE TABLE `b_flowherostrength` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `rebornlv` int(10) DEFAULT NULL COMMENT '??????',
  `oldStrength` bigint(20) DEFAULT NULL COMMENT '???????',
  `totalStrength` bigint(20) DEFAULT NULL COMMENT '???????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `attspeed` int(10) DEFAULT NULL COMMENT '?? ',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000200000006002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowjiankong
-- ----------------------------
DROP TABLE IF EXISTS `b_flowjiankong`;
CREATE TABLE `b_flowjiankong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `openid` varchar(100) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `type` int(10) DEFAULT NULL COMMENT '????????1???2???????????????',
  `goodid` int(10) DEFAULT NULL COMMENT '??id?????0',
  `num` bigint(20) DEFAULT NULL COMMENT '??',
  `chongzhi` bigint(20) DEFAULT NULL COMMENT '???',
  `lv` int(10) DEFAULT NULL COMMENT '????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowmail
-- ----------------------------
DROP TABLE IF EXISTS `b_flowmail`;
CREATE TABLE `b_flowmail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `receiverId` bigint(20) DEFAULT NULL COMMENT '???id',
  `receiver` varchar(255) DEFAULT NULL COMMENT '???',
  `isRead` int(10) DEFAULT NULL COMMENT '???????0 ?? 1 ??',
  `isGetAdj` int(10) DEFAULT NULL COMMENT '???????0????1?????2????',
  `content` varchar(2500) DEFAULT NULL COMMENT '??',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  `yuanbao` int(10) DEFAULT NULL COMMENT '????',
  `yuanbaoBind` int(10) DEFAULT NULL COMMENT '??????',
  `silver` int(10) DEFAULT NULL COMMENT '????',
  `fujian` text COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `sendTime` int(10) DEFAULT NULL COMMENT '????',
  `mailId` bigint(20) DEFAULT NULL COMMENT '????id',
  PRIMARY KEY (`id`),
  KEY `i_receiverId` (`receiverId`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_mailId` (`mailId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000089 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowmmcache
-- ----------------------------
DROP TABLE IF EXISTS `b_flowmmcache`;
CREATE TABLE `b_flowmmcache` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `cacheType` varchar(255) DEFAULT NULL COMMENT '??????',
  `cacheName` varchar(255) DEFAULT NULL COMMENT '??X???????????int',
  `operType` int(10) DEFAULT NULL COMMENT '?????1:???2:???3:???4:??',
  `caller` varchar(255) DEFAULT NULL COMMENT '???',
  `cacheType1` varchar(255) DEFAULT NULL COMMENT '???????',
  `size1` int(10) DEFAULT NULL COMMENT '???????',
  `cacheType2` varchar(255) DEFAULT NULL COMMENT '???????',
  `size2` int(10) DEFAULT NULL COMMENT '???????',
  `cacheType3` varchar(255) DEFAULT NULL COMMENT '???????',
  `size3` int(10) DEFAULT NULL COMMENT '???????',
  `cacheType4` varchar(255) DEFAULT NULL COMMENT '???????',
  `size4` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000026540 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowtianshu
-- ----------------------------
DROP TABLE IF EXISTS `b_flowtianshu`;
CREATE TABLE `b_flowtianshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `sysId` int(10) DEFAULT NULL COMMENT '????id',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `isadd` int(10) DEFAULT NULL COMMENT '?????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_sysId` (`sysId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_flowtool
-- ----------------------------
DROP TABLE IF EXISTS `b_flowtool`;
CREATE TABLE `b_flowtool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `sysId` int(10) DEFAULT NULL COMMENT '????id',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `isadd` int(10) DEFAULT NULL COMMENT '?????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `operateTime` int(10) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_sysId` (`sysId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000007355 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for catchpet
-- ----------------------------
DROP TABLE IF EXISTS `catchpet`;
CREATE TABLE `catchpet` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `mapId` int(10) DEFAULT NULL COMMENT '?????????',
  `petId` int(10) DEFAULT NULL COMMENT '???????id',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `online` int(10) DEFAULT NULL COMMENT '??????????',
  `starttime` int(10) DEFAULT NULL COMMENT '????????????',
  `failCount` int(10) DEFAULT NULL COMMENT '??????????',
  `getList` varchar(2000) DEFAULT NULL COMMENT '????????????id??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for challenger
-- ----------------------------
DROP TABLE IF EXISTS `challenger`;
CREATE TABLE `challenger` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??ID',
  `version` int(10) DEFAULT NULL COMMENT '????',
  `count` int(10) DEFAULT NULL COMMENT '???????',
  `buyCount` int(10) DEFAULT NULL COMMENT '?????????',
  `point` int(10) DEFAULT NULL COMMENT '????',
  `pointReward` varchar(200) DEFAULT NULL COMMENT '??????????',
  `currGrade` int(10) DEFAULT NULL COMMENT '???????',
  `bestGrade` int(10) DEFAULT NULL COMMENT '???????',
  `gradeReward` varchar(200) DEFAULT NULL COMMENT '??????????',
  `hisCount` int(10) DEFAULT NULL COMMENT '??????',
  `cpoint` bigint(20) DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `kefuRequestNum` int(10) DEFAULT NULL COMMENT '??????',
  `outRecList` text COMMENT '????',
  `chatNum` int(10) DEFAULT NULL COMMENT '??????',
  `selNum` int(10) DEFAULT NULL COMMENT '50?????????',
  `privateChatId` varchar(1500) DEFAULT NULL COMMENT 'vip7?????????',
  `gangChatNum` int(10) DEFAULT NULL COMMENT '??????',
  `express` varchar(500) DEFAULT NULL COMMENT '???(type,endtime)',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for children
-- ----------------------------
DROP TABLE IF EXISTS `children`;
CREATE TABLE `children` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `sex` int(10) DEFAULT NULL COMMENT '????',
  `aptitude` int(10) DEFAULT NULL COMMENT '??',
  `skinMap` varchar(1000) DEFAULT NULL COMMENT '??id',
  `activeSkill` int(10) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '????',
  `skillsWashCount` varchar(1000) DEFAULT NULL COMMENT '??????',
  `washSave` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `lv` int(10) DEFAULT NULL COMMENT '??',
  `showID` int(10) DEFAULT NULL COMMENT '??id',
  `ziZhi` int(10) DEFAULT NULL COMMENT '????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  `name` varchar(50) DEFAULT NULL COMMENT '????',
  `wxLv` int(10) DEFAULT NULL COMMENT '????',
  `wxAttr` varchar(300) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for childrenartifact
-- ----------------------------
DROP TABLE IF EXISTS `childrenartifact`;
CREATE TABLE `childrenartifact` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `artifactData` varchar(3000) DEFAULT NULL COMMENT '????',
  `activateData` varchar(3000) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for childrentoy
-- ----------------------------
DROP TABLE IF EXISTS `childrentoy`;
CREATE TABLE `childrentoy` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `toyData` varchar(3000) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for christmas
-- ----------------------------
DROP TABLE IF EXISTS `christmas`;
CREATE TABLE `christmas` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for christmaspay
-- ----------------------------
DROP TABLE IF EXISTS `christmaspay`;
CREATE TABLE `christmaspay` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '???????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumedice
-- ----------------------------
DROP TABLE IF EXISTS `consumedice`;
CREATE TABLE `consumedice` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `count` int(10) DEFAULT NULL COMMENT ' ??????',
  `totalCount` int(10) DEFAULT NULL COMMENT ' ?????',
  `totalConsume` int(10) DEFAULT NULL COMMENT '?????',
  `awardList` varchar(500) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumepoker
-- ----------------------------
DROP TABLE IF EXISTS `consumepoker`;
CREATE TABLE `consumepoker` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consumeCount` int(10) DEFAULT NULL COMMENT '????',
  `useCount` int(10) DEFAULT NULL COMMENT '?????',
  `pokerDetail` varchar(500) DEFAULT NULL COMMENT '????',
  `allCount` int(10) DEFAULT NULL COMMENT '???',
  `rewardList` varchar(500) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumerank
-- ----------------------------
DROP TABLE IF EXISTS `consumerank`;
CREATE TABLE `consumerank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalConsume` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumerankmodel
-- ----------------------------
DROP TABLE IF EXISTS `consumerankmodel`;
CREATE TABLE `consumerankmodel` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumereback
-- ----------------------------
DROP TABLE IF EXISTS `consumereback`;
CREATE TABLE `consumereback` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consume` int(10) DEFAULT NULL COMMENT '????',
  `getList` varchar(100) DEFAULT NULL COMMENT '?????id',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for consumetable
-- ----------------------------
DROP TABLE IF EXISTS `consumetable`;
CREATE TABLE `consumetable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `count` int(10) DEFAULT NULL COMMENT '?????',
  `totalConsume` int(10) DEFAULT NULL COMMENT '????',
  `receivedAwardList` varchar(500) DEFAULT NULL COMMENT '????????',
  `pc` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for continueconsume
-- ----------------------------
DROP TABLE IF EXISTS `continueconsume`;
CREATE TABLE `continueconsume` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dayConsume` int(10) DEFAULT NULL COMMENT '????',
  `finalState` int(10) DEFAULT NULL COMMENT '??????? 0.??? 1.?? 2.???',
  `dayState` int(10) DEFAULT NULL COMMENT '?????? 0.??? 1.?? 2.???',
  `day` int(10) DEFAULT NULL COMMENT '?????',
  `qs` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for continuerecharge
-- ----------------------------
DROP TABLE IF EXISTS `continuerecharge`;
CREATE TABLE `continuerecharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `rewardList` varchar(2000) DEFAULT NULL COMMENT '???????',
  `isRecharge` int(10) DEFAULT NULL COMMENT '????????? 0 ??1??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for continuerechargetwo
-- ----------------------------
DROP TABLE IF EXISTS `continuerechargetwo`;
CREATE TABLE `continuerechargetwo` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `rewardList` varchar(2000) DEFAULT NULL COMMENT '???????',
  `isRecharge` int(10) DEFAULT NULL COMMENT '????????? 0 ??1??',
  `signNum` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for couplefb
-- ----------------------------
DROP TABLE IF EXISTS `couplefb`;
CREATE TABLE `couplefb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `leftTimes` int(10) DEFAULT NULL COMMENT '??????',
  `buytimes` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for craftdata
-- ----------------------------
DROP TABLE IF EXISTS `craftdata`;
CREATE TABLE `craftdata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `season` int(10) DEFAULT NULL COMMENT '???',
  `betData` varchar(300) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for craftteam
-- ----------------------------
DROP TABLE IF EXISTS `craftteam`;
CREATE TABLE `craftteam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????ID?0?????????',
  `bangId` int(10) DEFAULT NULL COMMENT '?ID',
  `leaderHid` bigint(20) DEFAULT NULL COMMENT '????ID',
  `leaderName` varchar(100) DEFAULT NULL COMMENT '??????',
  `joinMemberHids` varchar(150) DEFAULT NULL COMMENT '??????????',
  `joinMemberStates` varchar(150) DEFAULT NULL COMMENT '?????????????ID??????0????1?????',
  `members` varchar(150) DEFAULT NULL COMMENT '??????????ID???ID?',
  `skills` varchar(150) DEFAULT NULL COMMENT '???????ID???ID?',
  `zoneId` int(10) DEFAULT NULL COMMENT '??ID????????CraftTeam??zoneId?????',
  `season` int(10) DEFAULT NULL COMMENT '???',
  `topN` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cranegame
-- ----------------------------
DROP TABLE IF EXISTS `cranegame`;
CREATE TABLE `cranegame` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for crosscount
-- ----------------------------
DROP TABLE IF EXISTS `crosscount`;
CREATE TABLE `crosscount` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `countMap` varchar(500) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for crossfishrank
-- ----------------------------
DROP TABLE IF EXISTS `crossfishrank`;
CREATE TABLE `crossfishrank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `score` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for crossrankhero
-- ----------------------------
DROP TABLE IF EXISTS `crossrankhero`;
CREATE TABLE `crossrankhero` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `bwscore` int(10) DEFAULT NULL COMMENT '????',
  `bwtime` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cultureachievement
-- ----------------------------
DROP TABLE IF EXISTS `cultureachievement`;
CREATE TABLE `cultureachievement` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `achievementAwardMap` varchar(1500) DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cultureactivity
-- ----------------------------
DROP TABLE IF EXISTS `cultureactivity`;
CREATE TABLE `cultureactivity` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rideList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `wingList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `shenbingList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `goddessList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `tonglingList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `soulList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `xianweiList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `fazhenList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `tiannvList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `xianqiList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `huanianList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `lingqiList` varchar(1000) DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for daily
-- ----------------------------
DROP TABLE IF EXISTS `daily`;
CREATE TABLE `daily` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `ghostLeave` int(10) DEFAULT NULL COMMENT '??????',
  `ghostCount` int(10) DEFAULT NULL COMMENT '????',
  `ghostStar` int(10) DEFAULT NULL COMMENT '????',
  `ghostTime` int(10) DEFAULT NULL COMMENT '????',
  `ghostGot` int(10) DEFAULT NULL COMMENT '????????',
  `teamCount` int(10) DEFAULT NULL COMMENT '??????',
  `teamGot` int(10) DEFAULT NULL COMMENT '????????',
  `round` int(10) DEFAULT NULL COMMENT '??',
  `roundGot` int(10) DEFAULT NULL COMMENT '??????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  `beishu` int(10) DEFAULT NULL COMMENT '????',
  `getTime` int(10) DEFAULT NULL COMMENT '????',
  `useBeishu` varchar(30) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dailymubiao
-- ----------------------------
DROP TABLE IF EXISTS `dailymubiao`;
CREATE TABLE `dailymubiao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `guanqia` varchar(255) DEFAULT NULL COMMENT '??',
  `wabao` varchar(255) DEFAULT NULL COMMENT '??',
  `leitai` varchar(255) DEFAULT NULL COMMENT '??',
  `tower` varchar(255) DEFAULT NULL COMMENT '???',
  `materialfb` varchar(255) DEFAULT NULL COMMENT '????',
  `wabaoStar` varchar(255) DEFAULT NULL COMMENT '????',
  `heaven` varchar(255) DEFAULT NULL COMMENT '????',
  `xianlv` varchar(255) DEFAULT NULL COMMENT '????',
  `teamfb` varchar(255) DEFAULT NULL COMMENT '????',
  `qmboss` varchar(255) DEFAULT NULL COMMENT '??boss',
  `todayMaterialfbTimes` int(10) DEFAULT NULL COMMENT '??????/??X?????',
  `todayQmbossTimes` int(10) DEFAULT NULL COMMENT '????????X?',
  `todayTeamfbTimes` int(10) DEFAULT NULL COMMENT '????X???????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dailyonline
-- ----------------------------
DROP TABLE IF EXISTS `dailyonline`;
CREATE TABLE `dailyonline` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dayLiveness` int(10) DEFAULT NULL COMMENT '???',
  `monLiveness` int(10) DEFAULT NULL COMMENT '???',
  `taskCount` varchar(500) DEFAULT NULL COMMENT '????',
  `dayReward` varchar(300) DEFAULT NULL COMMENT '?????',
  `monthReward` varchar(300) DEFAULT NULL COMMENT '?????',
  `monthTime` bigint(20) DEFAULT NULL COMMENT '?????',
  `kftsId` int(10) DEFAULT NULL COMMENT '????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dailyshare
-- ----------------------------
DROP TABLE IF EXISTS `dailyshare`;
CREATE TABLE `dailyshare` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `state` int(10) DEFAULT NULL COMMENT '????',
  `num` int(10) DEFAULT NULL COMMENT '?????',
  `rewardTime` int(10) DEFAULT NULL COMMENT '????????',
  `shareTime` int(10) DEFAULT NULL COMMENT '??????',
  `firstShare` int(10) DEFAULT NULL COMMENT '???????? 0???? 1????',
  `total` int(10) DEFAULT NULL COMMENT '??????',
  `rewardList` varchar(1000) DEFAULT NULL COMMENT '??????????',
  `shareGroupMap` text COMMENT '????????',
  `secondShare` int(10) DEFAULT NULL COMMENT '?????????  1??',
  `lastShareTime` int(10) DEFAULT NULL COMMENT '????????(????????????)',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dayfirstrecharge
-- ----------------------------
DROP TABLE IF EXISTS `dayfirstrecharge`;
CREATE TABLE `dayfirstrecharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '???????',
  `term` int(10) DEFAULT NULL COMMENT '??',
  `recordList` varchar(100) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discountshop
-- ----------------------------
DROP TABLE IF EXISTS `discountshop`;
CREATE TABLE `discountshop` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `dailyRetry` int(10) DEFAULT NULL COMMENT '???????????',
  `dailyBuyMap` varchar(150) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for doublerebate
-- ----------------------------
DROP TABLE IF EXISTS `doublerebate`;
CREATE TABLE `doublerebate` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(500) DEFAULT NULL COMMENT '???????',
  `canRewardList` varchar(500) DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dragonboatdata
-- ----------------------------
DROP TABLE IF EXISTS `dragonboatdata`;
CREATE TABLE `dragonboatdata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `period` int(10) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dragonboatrank
-- ----------------------------
DROP TABLE IF EXISTS `dragonboatrank`;
CREATE TABLE `dragonboatrank` (
  `rank` int(10) NOT NULL AUTO_INCREMENT COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `endTime` int(10) DEFAULT NULL COMMENT '????',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `sex` int(10) DEFAULT NULL COMMENT '??',
  `showModel` varchar(200) DEFAULT NULL COMMENT '?????',
  `members` varchar(200) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for element
-- ----------------------------
DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `selType` int(10) DEFAULT NULL COMMENT '????',
  `eleExp` bigint(20) DEFAULT NULL COMMENT '??',
  `eleMap` varchar(200) DEFAULT NULL COMMENT '????',
  `total` bigint(20) DEFAULT NULL COMMENT '???',
  `resetTime` int(10) DEFAULT NULL COMMENT '????',
  `practice` varchar(200) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equip
-- ----------------------------
DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `sysId` int(10) DEFAULT NULL COMMENT '?????id',
  `state` int(10) DEFAULT NULL COMMENT '?? 1 ????  2 ??? 3 ???  4 ????/??? 5????',
  `quality` int(10) DEFAULT NULL COMMENT '?? ??????',
  `attrAdd` int(10) DEFAULT NULL COMMENT '??????',
  `part` int(10) DEFAULT NULL COMMENT '????',
  `bodyIndex` int(10) DEFAULT NULL COMMENT '????????? ???0??',
  `score` int(10) DEFAULT NULL COMMENT '????',
  `createTime` int(10) DEFAULT NULL COMMENT '??????',
  `superAttStr` varchar(300) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`id`),
  KEY `i_hid_job` (`hid`,`job`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000003744 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equiprefresh
-- ----------------------------
DROP TABLE IF EXISTS `equiprefresh`;
CREATE TABLE `equiprefresh` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `muBiaoTargetList` varchar(500) DEFAULT NULL COMMENT '?????????',
  `muBiaoAwardList` varchar(1000) DEFAULT NULL COMMENT '???????? ',
  `refreshNum` int(10) DEFAULT NULL COMMENT '????',
  `lotteyNum` int(10) DEFAULT NULL COMMENT '?????',
  `leijiAwardList` varchar(1000) DEFAULT NULL COMMENT '?????????',
  `pc` int(10) DEFAULT NULL COMMENT '??????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fabao
-- ----------------------------
DROP TABLE IF EXISTS `fabao`;
CREATE TABLE `fabao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `itemlist` text COMMENT 'item??',
  `caolist` varchar(1000) DEFAULT NULL COMMENT '????',
  `colorlist` varchar(255) DEFAULT NULL COMMENT '??????',
  `perfactmakTimes` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fallen
-- ----------------------------
DROP TABLE IF EXISTS `fallen`;
CREATE TABLE `fallen` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for faqi
-- ----------------------------
DROP TABLE IF EXISTS `faqi`;
CREATE TABLE `faqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `skillId` int(10) DEFAULT NULL COMMENT '??id',
  `modelMap` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fashion
-- ----------------------------
DROP TABLE IF EXISTS `fashion`;
CREATE TABLE `fashion` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hasList` varchar(3000) DEFAULT NULL COMMENT '??????',
  `modelMap` text COMMENT '?????????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for feiqi
-- ----------------------------
DROP TABLE IF EXISTS `feiqi`;
CREATE TABLE `feiqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `feiqiMap` varchar(1000) DEFAULT NULL COMMENT '????',
  `deploy` int(10) DEFAULT NULL COMMENT '????',
  `activeState` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for feiqimubiao
-- ----------------------------
DROP TABLE IF EXISTS `feiqimubiao`;
CREATE TABLE `feiqimubiao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `levelMap` varchar(1000) DEFAULT NULL COMMENT '??????',
  `awardMap` varchar(1000) DEFAULT NULL COMMENT '?????',
  `sign` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fengshenfuli
-- ----------------------------
DROP TABLE IF EXISTS `fengshenfuli`;
CREATE TABLE `fengshenfuli` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  `exchangeData` varchar(1000) DEFAULT NULL COMMENT '????{id:num}',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fengshenway
-- ----------------------------
DROP TABLE IF EXISTS `fengshenway`;
CREATE TABLE `fengshenway` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  `rwData` varchar(1000) DEFAULT NULL COMMENT '????{rwid:num}',
  `awardData` varchar(1000) DEFAULT NULL COMMENT '??????',
  `resetTime` int(10) DEFAULT NULL COMMENT '????',
  `rechargeData` varchar(1000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fielddata
-- ----------------------------
DROP TABLE IF EXISTS `fielddata`;
CREATE TABLE `fielddata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `bossTime` int(10) DEFAULT NULL COMMENT '??boss??',
  `bossNum` int(10) DEFAULT NULL COMMENT '????boss?',
  `attTime` int(10) DEFAULT NULL COMMENT '???????',
  `attList` varchar(200) DEFAULT NULL COMMENT '?????boss',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for firstgroupbuy
-- ----------------------------
DROP TABLE IF EXISTS `firstgroupbuy`;
CREATE TABLE `firstgroupbuy` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for flytreasure
-- ----------------------------
DROP TABLE IF EXISTS `flytreasure`;
CREATE TABLE `flytreasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for forge
-- ----------------------------
DROP TABLE IF EXISTS `forge`;
CREATE TABLE `forge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `strengthen` int(10) DEFAULT NULL COMMENT '????',
  `gemLevel` int(10) DEFAULT NULL COMMENT '????',
  `refineLevel` int(10) DEFAULT NULL COMMENT '????',
  `steelLevel` int(10) DEFAULT NULL COMMENT '????',
  `strengSeat` int(10) DEFAULT NULL COMMENT '???????',
  `gemLevelSeat` int(10) DEFAULT NULL COMMENT '???????',
  `refineLevelSeat` int(10) DEFAULT NULL COMMENT '???????',
  `steelLevelSeat` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `friends` text COMMENT '??s',
  `fans` text COMMENT '???',
  `badList` text COMMENT '???',
  `sendList` varchar(2500) DEFAULT NULL COMMENT '??????',
  `fanMoney` int(10) DEFAULT NULL COMMENT '???',
  `receiveNum` int(10) DEFAULT NULL COMMENT '???',
  `crossFriends` text COMMENT '????',
  `blackList` text COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fschess
-- ----------------------------
DROP TABLE IF EXISTS `fschess`;
CREATE TABLE `fschess` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `chessMap` varchar(2000) DEFAULT NULL COMMENT '????????',
  `groupMap` varchar(500) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fsfront
-- ----------------------------
DROP TABLE IF EXISTS `fsfront`;
CREATE TABLE `fsfront` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fsreback
-- ----------------------------
DROP TABLE IF EXISTS `fsreback`;
CREATE TABLE `fsreback` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `bankId` int(10) DEFAULT NULL COMMENT '??id',
  `bankDay` int(10) DEFAULT NULL COMMENT '????',
  `lixi` int(10) DEFAULT NULL COMMENT '??',
  `draw` int(10) DEFAULT NULL COMMENT '??',
  `getDay` int(10) DEFAULT NULL COMMENT '???????',
  `recharge` int(10) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fuli
-- ----------------------------
DROP TABLE IF EXISTS `fuli`;
CREATE TABLE `fuli` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `loginAward` int(10) DEFAULT NULL COMMENT '??????????',
  `loginDay` int(10) DEFAULT NULL COMMENT '????',
  `levelAward` int(10) DEFAULT NULL COMMENT '?????????',
  `signMap` varchar(100) DEFAULT NULL COMMENT '??????',
  `cdkeyType` varchar(500) DEFAULT NULL COMMENT '???cdkey??',
  `readNoticeTime` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fulixy
-- ----------------------------
DROP TABLE IF EXISTS `fulixy`;
CREATE TABLE `fulixy` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `score` int(10) DEFAULT NULL COMMENT '????????',
  `rewardList` varchar(200) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fund
-- ----------------------------
DROP TABLE IF EXISTS `fund`;
CREATE TABLE `fund` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buy` int(10) DEFAULT NULL COMMENT '????? 1??',
  `rewards` varchar(1024) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fuwen
-- ----------------------------
DROP TABLE IF EXISTS `fuwen`;
CREATE TABLE `fuwen` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `fuWenMap` text COMMENT '????',
  `fuWenBagData` text COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gang
-- ----------------------------
DROP TABLE IF EXISTS `gang`;
CREATE TABLE `gang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `leader` bigint(20) DEFAULT NULL COMMENT '????ID',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `wealth` int(10) DEFAULT NULL COMMENT '??????',
  `notice` varchar(350) DEFAULT NULL COMMENT '????',
  `applyList` text COMMENT '??id',
  `records` text COMMENT '????',
  `rank` int(10) DEFAULT NULL COMMENT '????',
  `demand` bigint(20) DEFAULT NULL COMMENT '????-1???????????',
  `createTime` int(10) DEFAULT NULL COMMENT '????',
  `zeroTime` int(10) DEFAULT NULL COMMENT '????',
  `recruitTime` int(10) DEFAULT NULL COMMENT '???? ',
  `prayScore` int(10) DEFAULT NULL COMMENT '???? ',
  `prayNum` int(10) DEFAULT NULL COMMENT '???? ',
  `focusTime` int(10) DEFAULT NULL COMMENT '?????? ',
  `leaderTime` int(10) DEFAULT NULL COMMENT '??????',
  `memberChangeInfos` varchar(1500) DEFAULT NULL COMMENT '????',
  `orgLeader` bigint(20) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gangdata
-- ----------------------------
DROP TABLE IF EXISTS `gangdata`;
CREATE TABLE `gangdata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `contribute` int(10) DEFAULT NULL COMMENT '????',
  `applys` varchar(2000) DEFAULT NULL COMMENT '????id',
  `pray` int(10) DEFAULT NULL COMMENT '???? ',
  `prayAward` int(10) DEFAULT NULL COMMENT '??????111 ',
  `activeLv` int(10) DEFAULT NULL COMMENT '???? ',
  `activeExp` int(10) DEFAULT NULL COMMENT '???? ',
  `activeDay` int(10) DEFAULT NULL COMMENT '???? ',
  `activeAward` int(10) DEFAULT NULL COMMENT '????????',
  `taskMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `skillLv` int(10) DEFAULT NULL COMMENT '??????',
  `rewarded` varchar(500) DEFAULT NULL COMMENT '???????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gangfb
-- ----------------------------
DROP TABLE IF EXISTS `gangfb`;
CREATE TABLE `gangfb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `leftTimes` int(10) DEFAULT NULL COMMENT '??????',
  `passList` varchar(512) DEFAULT NULL COMMENT '?????? v:fbid',
  `helpNum` int(10) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gangmap
-- ----------------------------
DROP TABLE IF EXISTS `gangmap`;
CREATE TABLE `gangmap` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `convertTime` int(10) DEFAULT NULL COMMENT '??????',
  `taskMap` varchar(1000) DEFAULT NULL COMMENT '????1??2??',
  `convertMap` varchar(1000) DEFAULT NULL COMMENT '??????',
  `productMap` varchar(1000) DEFAULT NULL COMMENT '????',
  `getBossTime` int(10) DEFAULT NULL COMMENT '??boss????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gangmember
-- ----------------------------
DROP TABLE IF EXISTS `gangmember`;
CREATE TABLE `gangmember` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `gangId` bigint(20) DEFAULT NULL COMMENT '??id',
  `position` int(10) DEFAULT NULL COMMENT '??',
  `totalContribute` int(10) DEFAULT NULL COMMENT '??????',
  `dayContribute` int(10) DEFAULT NULL COMMENT '???',
  `joinTime` int(10) DEFAULT NULL COMMENT '???????',
  `logoutTime` int(10) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gangmonitor
-- ----------------------------
DROP TABLE IF EXISTS `gangmonitor`;
CREATE TABLE `gangmonitor` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `gangBootNum` int(10) DEFAULT NULL COMMENT '??????',
  `privateChatNum` int(10) DEFAULT NULL COMMENT '??????',
  `hasChatIds` text COMMENT '????????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for general
-- ----------------------------
DROP TABLE IF EXISTS `general`;
CREATE TABLE `general` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `pos` int(10) DEFAULT NULL COMMENT '??????????0??',
  `strength` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for globaldata
-- ----------------------------
DROP TABLE IF EXISTS `globaldata`;
CREATE TABLE `globaldata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `content` text COMMENT '??',
  `insertTime` int(10) DEFAULT NULL COMMENT '????',
  `invalidTime` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goddess
-- ----------------------------
DROP TABLE IF EXISTS `goddess`;
CREATE TABLE `goddess` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skinList` varchar(1000) DEFAULT NULL COMMENT '??id',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  `skinMap` varchar(6000) DEFAULT NULL COMMENT '??????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for growrefresh
-- ----------------------------
DROP TABLE IF EXISTS `growrefresh`;
CREATE TABLE `growrefresh` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardedList` varchar(1000) DEFAULT NULL COMMENT '??????',
  `refreshTimes` int(10) DEFAULT NULL COMMENT '????  ??????',
  `refreshSigNum` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guanqia
-- ----------------------------
DROP TABLE IF EXISTS `guanqia`;
CREATE TABLE `guanqia` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `curGuanqia` int(10) DEFAULT NULL COMMENT '??',
  `curMonster` int(10) DEFAULT NULL COMMENT '?????',
  `curZhang` int(10) DEFAULT NULL COMMENT '????????',
  `sceneid` int(10) DEFAULT NULL COMMENT '??id ??????',
  `ispass` int(10) DEFAULT NULL COMMENT 'boss?????????????????',
  `helpTimes` int(10) DEFAULT NULL COMMENT '???? ????',
  `askHelpTimes` int(10) DEFAULT NULL COMMENT '???? ????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for haoyuntable
-- ----------------------------
DROP TABLE IF EXISTS `haoyuntable`;
CREATE TABLE `haoyuntable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `tieCount` int(10) DEFAULT NULL COMMENT '??????',
  `countOne` int(10) DEFAULT NULL COMMENT '????1???',
  `countTen` int(10) DEFAULT NULL COMMENT '????10???',
  `firstTen` int(10) DEFAULT NULL COMMENT '??????????0??1?',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for happyegg
-- ----------------------------
DROP TABLE IF EXISTS `happyegg`;
CREATE TABLE `happyegg` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consumeMoney` int(10) DEFAULT NULL COMMENT '????',
  `allCount` int(10) DEFAULT NULL COMMENT '???????',
  `fitCount` int(10) DEFAULT NULL COMMENT '???????',
  `siteData` varchar(500) DEFAULT NULL COMMENT '??',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for heavenfb
-- ----------------------------
DROP TABLE IF EXISTS `heavenfb`;
CREATE TABLE `heavenfb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `layerdata` text COMMENT '??? key???value?[???????????]',
  `rewarddata` varchar(3000) DEFAULT NULL COMMENT '????',
  `maxLayer` int(10) DEFAULT NULL COMMENT '???',
  `curlayer` int(10) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefuactivelogin
-- ----------------------------
DROP TABLE IF EXISTS `hefuactivelogin`;
CREATE TABLE `hefuactivelogin` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `ts` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefuchongzhi
-- ----------------------------
DROP TABLE IF EXISTS `hefuchongzhi`;
CREATE TABLE `hefuchongzhi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `gotlist` varchar(255) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefucross
-- ----------------------------
DROP TABLE IF EXISTS `hefucross`;
CREATE TABLE `hefucross` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `zhengba` int(10) DEFAULT NULL COMMENT '??????1???',
  `zhengbaTime` int(10) DEFAULT NULL COMMENT '??????',
  `score` int(10) DEFAULT NULL COMMENT '????',
  `wuliMap` varchar(200) DEFAULT NULL COMMENT '??????',
  `godHavocScore` int(10) DEFAULT NULL COMMENT '????',
  `godHavocMap` varchar(200) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefuinvest
-- ----------------------------
DROP TABLE IF EXISTS `hefuinvest`;
CREATE TABLE `hefuinvest` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buy` int(10) DEFAULT NULL COMMENT '????? 1??',
  `maill` int(10) DEFAULT NULL COMMENT '?????? 1??',
  `rewards` varchar(1024) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefuleitai
-- ----------------------------
DROP TABLE IF EXISTS `hefuleitai`;
CREATE TABLE `hefuleitai` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rankAwardMap` varchar(300) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hefustore
-- ----------------------------
DROP TABLE IF EXISTS `hefustore`;
CREATE TABLE `hefustore` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `qs` int(10) DEFAULT NULL COMMENT '????',
  `limitMap` varchar(2000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `aid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openid',
  `name` varchar(100) DEFAULT NULL COMMENT '??',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `nowCreate` int(10) DEFAULT NULL COMMENT '?????1??????0',
  `job` int(10) DEFAULT NULL COMMENT '???1???2??',
  `sex` int(10) DEFAULT NULL COMMENT '???1??2?',
  `zoneid` int(10) DEFAULT NULL COMMENT '?id',
  `createTime` int(10) DEFAULT NULL COMMENT '??????',
  `createDate` int(10) DEFAULT NULL COMMENT '??????',
  `updatetime` int(10) DEFAULT NULL COMMENT '????',
  `illegalState` int(10) DEFAULT NULL COMMENT '???? 0:?? 1:??',
  `illegalTimeout` int(10) DEFAULT NULL COMMENT '?????????',
  `illegalReason` int(10) DEFAULT NULL COMMENT '????,????????',
  `forbidState` int(10) DEFAULT NULL COMMENT '???? 0:?? 1:?? 2:??????',
  `forbidTimeout` int(10) DEFAULT NULL COMMENT '?????????',
  `forbidReason` int(10) DEFAULT NULL COMMENT '????,????????',
  `pf` varchar(255) DEFAULT NULL COMMENT 'pf????',
  `pd` varchar(255) DEFAULT NULL COMMENT 'pd????',
  `loginPf` varchar(255) DEFAULT NULL COMMENT '?????pf????',
  `loginPd` varchar(255) DEFAULT NULL COMMENT '?????pd????',
  `guideGameFinish` int(10) DEFAULT NULL COMMENT '???????? 1???? 0????',
  `gameSound` int(10) DEFAULT NULL COMMENT '???? 1??? 0???',
  `autoSmelt` int(10) DEFAULT NULL COMMENT '????  0 ???  1????',
  `totalStrength` bigint(20) DEFAULT NULL COMMENT '???',
  `gangId` bigint(20) DEFAULT NULL COMMENT '??ID',
  `marryHid` bigint(20) DEFAULT NULL COMMENT '????id,0????',
  `loginTime` int(10) DEFAULT NULL COMMENT '????',
  `logoutTime` int(10) DEFAULT NULL COMMENT '????',
  `exp` bigint(20) DEFAULT NULL COMMENT '??',
  `yuanbao` bigint(20) DEFAULT NULL COMMENT '??',
  `yinYuan` bigint(20) DEFAULT NULL COMMENT '??',
  `coin` bigint(20) DEFAULT NULL COMMENT '??',
  `prestige` bigint(20) DEFAULT NULL COMMENT '??',
  `gongxun` int(10) DEFAULT NULL COMMENT '??',
  `zeroTime` int(10) DEFAULT NULL COMMENT '0?????',
  `finalFightAttr` varchar(1000) DEFAULT NULL COMMENT '??????????????',
  `totalRecharge` bigint(20) DEFAULT NULL COMMENT '??????',
  `vipLv` int(10) DEFAULT NULL COMMENT 'vip???????',
  `indoorGlod` bigint(20) DEFAULT NULL COMMENT '?????????????',
  `indoorGlodUse` bigint(20) DEFAULT NULL COMMENT '?????????????',
  `indoorGlodNotBind` bigint(20) DEFAULT NULL COMMENT '??????????????',
  `indoorGlodNotBindUse` bigint(20) DEFAULT NULL COMMENT '??????????????',
  `isIndoorAccount` int(10) DEFAULT NULL COMMENT '??????0??1?',
  `isOldPlayer` int(10) DEFAULT NULL COMMENT '???????0???1??2?',
  `firstRechargeTime` int(10) DEFAULT NULL COMMENT '??????',
  `recentlyRechargeTime` int(10) DEFAULT NULL COMMENT '????????',
  `loginIp` varchar(50) DEFAULT NULL COMMENT '??ip',
  `createIp` varchar(50) DEFAULT NULL COMMENT '??ip',
  `totalConsumeGlod` bigint(20) DEFAULT NULL COMMENT '??????????????????',
  `totalConsumeSilver` bigint(20) DEFAULT NULL COMMENT '??????????????????',
  `specialType` int(10) DEFAULT NULL COMMENT '???????0???1??????2GM',
  `oneDayConsmeNum` int(10) DEFAULT NULL COMMENT '???????(????????)???  ?????',
  `oneDayRecharge` int(10) DEFAULT NULL COMMENT '???????????  ?????',
  `adState` int(10) DEFAULT NULL COMMENT '??????0???1????????2??????3???',
  `adMonitorType` int(10) DEFAULT NULL COMMENT '????????0???1??????2???',
  `adTime` int(10) DEFAULT NULL COMMENT '???????',
  `limitRec` varchar(1000) DEFAULT NULL COMMENT '????',
  `totalOnlineTime` bigint(20) DEFAULT NULL COMMENT '??????',
  `dayOnlineTime` int(10) DEFAULT NULL COMMENT '??????',
  `smelt` varchar(100) DEFAULT NULL COMMENT '????',
  `zhenHun` int(10) DEFAULT NULL COMMENT '??',
  `chongJiAwards` varchar(100) DEFAULT NULL COMMENT '????',
  `mallJf` int(10) DEFAULT NULL COMMENT '????',
  `rankMobaiMap` varchar(150) DEFAULT NULL COMMENT '?????',
  `kaiFuBiPinAwardsID` int(10) DEFAULT NULL COMMENT '???????????ID',
  `kaiFuBiPinRankNum` int(10) DEFAULT NULL COMMENT '????????????????',
  `official` int(10) DEFAULT NULL COMMENT '??',
  `shenqi` varchar(300) DEFAULT NULL COMMENT '??',
  `heroFubenTime` int(10) DEFAULT NULL COMMENT '???????? ???????',
  `heroFubenGq` int(10) DEFAULT NULL COMMENT '????????',
  `zhanGong` int(10) DEFAULT NULL COMMENT '??',
  `hefuActDatas` varchar(1000) DEFAULT NULL COMMENT '???????? key:?????value?data',
  `weiDuanFlag` int(10) DEFAULT NULL COMMENT '????????(1??0??)',
  `activityBaseMap` text COMMENT '???????????',
  `autoFight` int(10) DEFAULT NULL COMMENT '???????0????1??',
  `equipSuitId` int(10) DEFAULT NULL COMMENT '??????id',
  `showModel` varchar(2000) DEFAULT NULL COMMENT '??????',
  `changeNameTimes` int(10) DEFAULT NULL COMMENT '????',
  `loginDay` int(10) DEFAULT NULL COMMENT '???????',
  `loginSend` int(10) DEFAULT NULL COMMENT '????????',
  `optionMap` varchar(1000) DEFAULT NULL COMMENT '????',
  `buySilverTimes` int(10) DEFAULT NULL COMMENT '??????',
  `kejuAnswerNum` int(10) DEFAULT NULL COMMENT '??????',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '????',
  `primaryScore` int(10) DEFAULT NULL COMMENT '??????',
  `inviteCode` bigint(20) DEFAULT NULL COMMENT '???',
  `inviteType` int(10) DEFAULT NULL COMMENT '????',
  `inviteGroup` varchar(100) DEFAULT NULL COMMENT '???ID  ??????',
  `kejuAnswerTime` int(10) DEFAULT NULL COMMENT '????????',
  `shareOri` varchar(100) DEFAULT NULL COMMENT '????',
  `loginGift` int(10) DEFAULT NULL COMMENT '??????',
  `craftScore` int(10) DEFAULT NULL COMMENT '??????',
  `levelTime` int(10) DEFAULT NULL COMMENT '????',
  `inviteBackId` bigint(20) DEFAULT NULL COMMENT '????????id',
  `rebackScore` int(10) DEFAULT NULL COMMENT '????',
  `rollbackTime` int(10) DEFAULT NULL COMMENT '????',
  `extraRecharge` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`) USING BTREE,
  KEY `i_zoneid` (`zoneid`) USING BTREE,
  KEY `i_zoneid_level` (`zoneid`,`level`) USING BTREE,
  KEY `i_createTime` (`createTime`) USING BTREE,
  KEY `i_createDate` (`createDate`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_updatetime` (`updatetime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hfrechargemodel
-- ----------------------------
DROP TABLE IF EXISTS `hfrechargemodel`;
CREATE TABLE `hfrechargemodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hfrechargerank
-- ----------------------------
DROP TABLE IF EXISTS `hfrechargerank`;
CREATE TABLE `hfrechargerank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalNum` int(10) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hongyunhead
-- ----------------------------
DROP TABLE IF EXISTS `hongyunhead`;
CREATE TABLE `hongyunhead` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hotswaprec
-- ----------------------------
DROP TABLE IF EXISTS `hotswaprec`;
CREATE TABLE `hotswaprec` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `zhushi` varchar(500) DEFAULT NULL COMMENT '??',
  `classinfo` varchar(2000) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `logs` varchar(2000) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for huanian
-- ----------------------------
DROP TABLE IF EXISTS `huanian`;
CREATE TABLE `huanian` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invest
-- ----------------------------
DROP TABLE IF EXISTS `invest`;
CREATE TABLE `invest` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buy` int(10) DEFAULT NULL COMMENT '????? 1??',
  `rewards` varchar(1024) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for investplan
-- ----------------------------
DROP TABLE IF EXISTS `investplan`;
CREATE TABLE `investplan` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `investTimeMap` varchar(200) DEFAULT NULL COMMENT '????',
  `awardMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `sign` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invite
-- ----------------------------
DROP TABLE IF EXISTS `invite`;
CREATE TABLE `invite` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `invitehid` bigint(20) DEFAULT NULL COMMENT '???????id',
  `inviteName` varchar(100) DEFAULT NULL COMMENT '?????????',
  `isNotice` int(10) DEFAULT NULL COMMENT '????????',
  `inviteMap` text COMMENT '????????',
  `isAward` int(10) DEFAULT NULL COMMENT '????????',
  `leijiAwards` text COMMENT '????????',
  `inviteScore` int(10) DEFAULT NULL COMMENT '??????',
  `inviteActScore` int(10) DEFAULT NULL COMMENT '????????',
  `inviteType` int(10) DEFAULT NULL COMMENT '???????',
  `inviteGroup` varchar(100) DEFAULT NULL COMMENT '???ID  ??????',
  `inviteHelpMaps` text COMMENT '????????',
  `inviteHelpScoreNum` int(10) DEFAULT NULL COMMENT '????????????',
  `synInviteHelp` int(10) DEFAULT NULL COMMENT '???????????0 ??? 1 ????',
  `monthCardReward` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invitetable
-- ----------------------------
DROP TABLE IF EXISTS `invitetable`;
CREATE TABLE `invitetable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `inviteOpenId` text COMMENT '???????openId ',
  `task` text COMMENT '???????',
  `allCount` int(10) DEFAULT NULL COMMENT '??????',
  `useCount` int(10) DEFAULT NULL COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  `rewardList` varchar(500) DEFAULT NULL COMMENT '?????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itemconvert
-- ----------------------------
DROP TABLE IF EXISTS `itemconvert`;
CREATE TABLE `itemconvert` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `signNum` varchar(500) DEFAULT NULL COMMENT '?????????',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jinyuanrebate
-- ----------------------------
DROP TABLE IF EXISTS `jinyuanrebate`;
CREATE TABLE `jinyuanrebate` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `useMap` varchar(300) DEFAULT NULL COMMENT '??????',
  `gainMap` varchar(500) DEFAULT NULL COMMENT '??????',
  `endTime` bigint(20) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kunxianbaohe
-- ----------------------------
DROP TABLE IF EXISTS `kunxianbaohe`;
CREATE TABLE `kunxianbaohe` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `awards` varchar(200) DEFAULT NULL COMMENT '????????',
  `totalConsume` int(10) DEFAULT NULL COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leichong
-- ----------------------------
DROP TABLE IF EXISTS `leichong`;
CREATE TABLE `leichong` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewards` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalmoney` int(10) DEFAULT NULL COMMENT '????',
  `term` int(10) DEFAULT NULL COMMENT '??? ??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leijichongzhi
-- ----------------------------
DROP TABLE IF EXISTS `leijichongzhi`;
CREATE TABLE `leijichongzhi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leitai
-- ----------------------------
DROP TABLE IF EXISTS `leitai`;
CREATE TABLE `leitai` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `lefttimes` int(10) DEFAULT NULL COMMENT '????',
  `buytimes` int(10) DEFAULT NULL COMMENT '????',
  `nextHuifuTimes` int(10) DEFAULT NULL COMMENT '????',
  `hismaxRank` int(10) DEFAULT NULL COMMENT '??????',
  `challengelist` varchar(2000) DEFAULT NULL COMMENT '????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leitairank
-- ----------------------------
DROP TABLE IF EXISTS `leitairank`;
CREATE TABLE `leitairank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '?? 1????2?NPC',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lifeanddeath
-- ----------------------------
DROP TABLE IF EXISTS `lifeanddeath`;
CREATE TABLE `lifeanddeath` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `historyList` text COMMENT '??????',
  `dayList` text COMMENT '??????',
  `buyBoxMap` text COMMENT '?????????key???id?value???',
  `helpNum` int(10) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lilian
-- ----------------------------
DROP TABLE IF EXISTS `lilian`;
CREATE TABLE `lilian` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `taskMap` varchar(500) DEFAULT NULL COMMENT '??',
  `reBackMap` varchar(500) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for limitlotterycard
-- ----------------------------
DROP TABLE IF EXISTS `limitlotterycard`;
CREATE TABLE `limitlotterycard` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for limitmarket
-- ----------------------------
DROP TABLE IF EXISTS `limitmarket`;
CREATE TABLE `limitmarket` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for limitonline
-- ----------------------------
DROP TABLE IF EXISTS `limitonline`;
CREATE TABLE `limitonline` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `renWuData` varchar(1000) DEFAULT NULL COMMENT '????',
  `renWuAwards` varchar(500) DEFAULT NULL COMMENT '???????',
  `hyAwards` varchar(500) DEFAULT NULL COMMENT '???????',
  `buyData` varchar(500) DEFAULT NULL COMMENT '???????',
  `hyScore` int(10) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingbao
-- ----------------------------
DROP TABLE IF EXISTS `lingbao`;
CREATE TABLE `lingbao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `day` int(10) DEFAULT NULL COMMENT '????',
  `lbMap` varchar(500) DEFAULT NULL COMMENT '????',
  `getTask` varchar(1000) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingchong
-- ----------------------------
DROP TABLE IF EXISTS `lingchong`;
CREATE TABLE `lingchong` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `lingChongMap` text COMMENT '????????',
  `deployId` int(10) DEFAULT NULL COMMENT '????id',
  `fightList` varchar(200) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingchongfanlimodel
-- ----------------------------
DROP TABLE IF EXISTS `lingchongfanlimodel`;
CREATE TABLE `lingchongfanlimodel` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consume` int(10) DEFAULT NULL COMMENT '?????????',
  `signNum` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingchonglottery
-- ----------------------------
DROP TABLE IF EXISTS `lingchonglottery`;
CREATE TABLE `lingchonglottery` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????????????',
  `count` int(10) DEFAULT NULL COMMENT '??????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingjiejiangshi
-- ----------------------------
DROP TABLE IF EXISTS `lingjiejiangshi`;
CREATE TABLE `lingjiejiangshi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lingqi
-- ----------------------------
DROP TABLE IF EXISTS `lingqi`;
CREATE TABLE `lingqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loginchristmas
-- ----------------------------
DROP TABLE IF EXISTS `loginchristmas`;
CREATE TABLE `loginchristmas` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalNum` int(10) DEFAULT NULL COMMENT '??????',
  `loginTime` bigint(20) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loginyuandan
-- ----------------------------
DROP TABLE IF EXISTS `loginyuandan`;
CREATE TABLE `loginyuandan` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalNum` int(10) DEFAULT NULL COMMENT '??????',
  `loginTime` bigint(20) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lovegift
-- ----------------------------
DROP TABLE IF EXISTS `lovegift`;
CREATE TABLE `lovegift` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `receiveList` varchar(50) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for luckybuy
-- ----------------------------
DROP TABLE IF EXISTS `luckybuy`;
CREATE TABLE `luckybuy` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for luckytable
-- ----------------------------
DROP TABLE IF EXISTS `luckytable`;
CREATE TABLE `luckytable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  `firstTen` int(10) DEFAULT NULL COMMENT '??????????0??1?',
  `luckyValue` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for magic
-- ----------------------------
DROP TABLE IF EXISTS `magic`;
CREATE TABLE `magic` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `itemlist` text COMMENT 'item??',
  `caolist` varchar(1000) DEFAULT NULL COMMENT '????',
  `colorlist` varchar(255) DEFAULT NULL COMMENT '??????',
  `perfactmakTimes` int(10) DEFAULT NULL COMMENT '??????',
  `makeTimes` int(10) DEFAULT NULL COMMENT '????????',
  `levelUpTimes` int(10) DEFAULT NULL COMMENT '????????',
  `rewardList` varchar(1000) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for magicequip
-- ----------------------------
DROP TABLE IF EXISTS `magicequip`;
CREATE TABLE `magicequip` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `magicEquipData` varchar(1000) DEFAULT NULL COMMENT '????',
  `skillList` varchar(500) DEFAULT NULL COMMENT '?????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mahjong
-- ----------------------------
DROP TABLE IF EXISTS `mahjong`;
CREATE TABLE `mahjong` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '????',
  `skills` varchar(500) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mahjongteasure
-- ----------------------------
DROP TABLE IF EXISTS `mahjongteasure`;
CREATE TABLE `mahjongteasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `receiverId` bigint(20) DEFAULT NULL COMMENT '???id',
  `receiver` varchar(50) DEFAULT NULL COMMENT '?????',
  `content` varchar(2500) DEFAULT NULL COMMENT '????',
  `flag` int(10) DEFAULT NULL COMMENT '?????????',
  `sendTime` int(10) DEFAULT NULL COMMENT '????',
  `isRead` int(10) DEFAULT NULL COMMENT '????????? MailConst.MAIL_READ',
  `isGetAdj` int(10) DEFAULT NULL COMMENT '????????? MailConst.ADJ_STATE_0',
  `mailAdjuncts` varchar(1000) DEFAULT NULL COMMENT '??',
  `yuanbao` int(10) DEFAULT NULL COMMENT '????',
  `coin` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_receiverId` (`receiverId`) USING BTREE,
  KEY `i_sendTime` (`sendTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000089 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mall
-- ----------------------------
DROP TABLE IF EXISTS `mall`;
CREATE TABLE `mall` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '???????key1??????key2??????value?????',
  `resetTime` varchar(200) DEFAULT NULL COMMENT '????????',
  `dataResetTimeMap` varchar(1000) DEFAULT NULL COMMENT '????????????(???????)',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for marry
-- ----------------------------
DROP TABLE IF EXISTS `marry`;
CREATE TABLE `marry` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `marryHid` bigint(20) DEFAULT NULL COMMENT '???????id',
  `flag` int(10) DEFAULT NULL COMMENT '?????1??2?',
  `marryTime` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for materialfubendata
-- ----------------------------
DROP TABLE IF EXISTS `materialfubendata`;
CREATE TABLE `materialfubendata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `winTimes` int(10) DEFAULT NULL COMMENT '????????',
  `materialDatas` varchar(300) DEFAULT NULL COMMENT '??????????{??ID????????????????}',
  `passDatas` varchar(2000) DEFAULT NULL COMMENT 'boss????? key???id?value?1',
  `buyData` varchar(2000) DEFAULT NULL COMMENT '?????? key????id?value??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `danMap` text COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mentorship
-- ----------------------------
DROP TABLE IF EXISTS `mentorship`;
CREATE TABLE `mentorship` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `master` bigint(20) DEFAULT NULL COMMENT '??id',
  `masterTime` int(10) DEFAULT NULL COMMENT '????',
  `sendTime` int(10) DEFAULT NULL COMMENT '?????',
  `receive` int(10) DEFAULT NULL COMMENT '1?????',
  `weiWang` int(10) DEFAULT NULL COMMENT '???',
  `chatTime` int(10) DEFAULT NULL COMMENT '????',
  `tdList` varchar(100) DEFAULT NULL COMMENT '??id???????',
  `taskMap` varchar(512) DEFAULT NULL COMMENT '??????',
  `masterList` varchar(3000) DEFAULT NULL COMMENT '??????',
  `askList` varchar(2000) DEFAULT NULL COMMENT '???id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meridian
-- ----------------------------
DROP TABLE IF EXISTS `meridian`;
CREATE TABLE `meridian` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `star` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for microclientgift
-- ----------------------------
DROP TABLE IF EXISTS `microclientgift`;
CREATE TABLE `microclientgift` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `downloadFlag` int(10) DEFAULT NULL COMMENT '?????? 0 ??? 1 ??',
  `downloadAwardFlag` int(10) DEFAULT NULL COMMENT '????????',
  `dayAwardFlag` int(10) DEFAULT NULL COMMENT '???????? 0 ??? 1 ???',
  `dayAwardTime` int(10) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for military
-- ----------------------------
DROP TABLE IF EXISTS `military`;
CREATE TABLE `military` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `state` int(10) DEFAULT NULL COMMENT '????',
  `actTime` int(10) DEFAULT NULL COMMENT '????',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `danMap` varchar(300) DEFAULT NULL COMMENT '???????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for moneytree
-- ----------------------------
DROP TABLE IF EXISTS `moneytree`;
CREATE TABLE `moneytree` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consume` int(10) DEFAULT NULL COMMENT '????',
  `useCount` int(10) DEFAULT NULL COMMENT '??????',
  `rewardCount` varchar(500) DEFAULT NULL COMMENT '??????????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monkey
-- ----------------------------
DROP TABLE IF EXISTS `monkey`;
CREATE TABLE `monkey` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monkeyrank
-- ----------------------------
DROP TABLE IF EXISTS `monkeyrank`;
CREATE TABLE `monkeyrank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '??',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  `layer` int(10) DEFAULT NULL COMMENT '??',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mooncard
-- ----------------------------
DROP TABLE IF EXISTS `mooncard`;
CREATE TABLE `mooncard` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `cardState` int(10) DEFAULT NULL COMMENT '??????   0.???    1.???',
  `cardEndTime` bigint(20) DEFAULT NULL COMMENT '??????',
  `cardAwardTime` bigint(20) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mystershop
-- ----------------------------
DROP TABLE IF EXISTS `mystershop`;
CREATE TABLE `mystershop` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `qs` int(10) DEFAULT NULL COMMENT '????',
  `limitMap` varchar(2000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mysterymarket
-- ----------------------------
DROP TABLE IF EXISTS `mysterymarket`;
CREATE TABLE `mysterymarket` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `qs` int(10) DEFAULT NULL COMMENT '????',
  `limitMap` varchar(2000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_admonitorflow
-- ----------------------------
DROP TABLE IF EXISTS `m_admonitorflow`;
CREATE TABLE `m_admonitorflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(255) DEFAULT NULL COMMENT '??id',
  `content` varchar(4000) DEFAULT NULL COMMENT '????',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_type` (`type`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_economy
-- ----------------------------
DROP TABLE IF EXISTS `m_economy`;
CREATE TABLE `m_economy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `times` int(10) DEFAULT NULL COMMENT '????',
  `spendtype` int(10) DEFAULT NULL COMMENT '????; 1:??; 2:??',
  `heronum` int(10) DEFAULT NULL COMMENT '??/?????',
  `spendsum` bigint(20) DEFAULT NULL COMMENT '??/????',
  `moneytype` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_flowlogininfo
-- ----------------------------
DROP TABLE IF EXISTS `m_flowlogininfo`;
CREATE TABLE `m_flowlogininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(100) DEFAULT NULL COMMENT '????',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `isold` int(10) DEFAULT NULL COMMENT '???????0???1?',
  `logintime` int(10) DEFAULT NULL COMMENT '????',
  `regtime` int(10) DEFAULT NULL COMMENT '????',
  `loginip` varchar(100) DEFAULT NULL COMMENT '??ip',
  `regpf` varchar(255) DEFAULT NULL COMMENT '????',
  `loginpf` varchar(255) DEFAULT NULL COMMENT '????',
  `regpd` varchar(255) DEFAULT NULL COMMENT '?????',
  `loginpd` varchar(255) DEFAULT NULL COMMENT '?????',
  `loginDate` int(10) DEFAULT NULL COMMENT '????',
  `shareOri` varchar(50) DEFAULT NULL COMMENT '????',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '?????????ios???',
  `createDevicePf` varchar(100) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_logintime` (`logintime`) USING BTREE,
  KEY `i_loginpf` (`loginpf`) USING BTREE,
  KEY `i_loginpd` (`loginpd`) USING BTREE,
  KEY `i_regpf` (`regpf`) USING BTREE,
  KEY `i_regpd` (`regpd`) USING BTREE,
  KEY `i_loginDate` (`loginDate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_forbid
-- ----------------------------
DROP TABLE IF EXISTS `m_forbid`;
CREATE TABLE `m_forbid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(30) DEFAULT NULL COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '??',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `recharge` bigint(20) DEFAULT NULL COMMENT '???',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `begintime` int(10) DEFAULT NULL COMMENT '????',
  `endtime` int(10) DEFAULT NULL COMMENT '????',
  `reason` int(10) DEFAULT NULL COMMENT '????',
  `account` varchar(100) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_begintime` (`begintime`) USING BTREE,
  KEY `i_endtime` (`endtime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_gamedata
-- ----------------------------
DROP TABLE IF EXISTS `m_gamedata`;
CREATE TABLE `m_gamedata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `accountnum` int(10) DEFAULT NULL COMMENT '????',
  `rolenum` int(10) DEFAULT NULL COMMENT '????',
  `newaccount` int(10) DEFAULT NULL COMMENT '??????',
  `newrole` int(10) DEFAULT NULL COMMENT '??????',
  `loginnum` int(10) DEFAULT NULL COMMENT '??????',
  `paytotal` bigint(20) DEFAULT NULL COMMENT '????',
  `consume` bigint(20) DEFAULT NULL COMMENT '????',
  `remainGlod` bigint(20) DEFAULT NULL COMMENT '????',
  `remainCoin` bigint(20) DEFAULT NULL COMMENT '????',
  `produceGlod` bigint(20) DEFAULT NULL COMMENT '???????',
  `produceCoin` bigint(20) DEFAULT NULL COMMENT '???????',
  `pf` varchar(255) DEFAULT NULL COMMENT '????',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_goods
-- ----------------------------
DROP TABLE IF EXISTS `m_goods`;
CREATE TABLE `m_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '?????1????2??id?3??',
  `cond` text COMMENT '????????',
  `account` varchar(100) DEFAULT NULL COMMENT '????',
  `mail` varchar(1000) DEFAULT NULL COMMENT '????',
  `reason` varchar(500) DEFAULT NULL COMMENT '??',
  `goods` text COMMENT '????????[??id_????][??id_??]',
  `checkflag` int(10) DEFAULT NULL COMMENT '0-?????1-?????2-?????  3 ???',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `passtime` int(10) DEFAULT NULL COMMENT '??/?????',
  `checkuser` varchar(100) DEFAULT NULL COMMENT '?????',
  `yuanbao` bigint(20) DEFAULT NULL COMMENT '??',
  `yuanbaoBind` bigint(20) DEFAULT NULL COMMENT '????',
  `silver` bigint(20) DEFAULT NULL COMMENT '??',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_checkflag` (`checkflag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_kefurequest
-- ----------------------------
DROP TABLE IF EXISTS `m_kefurequest`;
CREATE TABLE `m_kefurequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `reqTime` int(10) DEFAULT NULL COMMENT '????',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(150) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `vipLv` int(10) DEFAULT NULL COMMENT 'vip??',
  `pf` varchar(100) DEFAULT NULL COMMENT '??',
  `content` text COMMENT '????',
  `kefuName` varchar(100) DEFAULT NULL COMMENT '????',
  `dealTime` int(10) DEFAULT NULL COMMENT '????',
  `state` int(10) DEFAULT NULL COMMENT '???0????1???',
  `mailContent` text COMMENT '????',
  `goods` text COMMENT '????:[??id,????],[??id,????],[.....]',
  `account` varchar(100) DEFAULT NULL COMMENT '?????',
  `mailTime` int(10) DEFAULT NULL COMMENT '????',
  `flag` int(10) DEFAULT NULL COMMENT '?????0??  1?? 2?? 3??',
  `passtime` int(10) DEFAULT NULL COMMENT '??/?????',
  `checkuser` varchar(100) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_levellose
-- ----------------------------
DROP TABLE IF EXISTS `m_levellose`;
CREATE TABLE `m_levellose` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `loseday` int(10) DEFAULT NULL COMMENT '????(1,3,7,15,30?)',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `reachnum` int(10) DEFAULT NULL COMMENT '??????',
  `losenum` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_logininfo
-- ----------------------------
DROP TABLE IF EXISTS `m_logininfo`;
CREATE TABLE `m_logininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `openid` varchar(100) DEFAULT NULL COMMENT '????',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `isold` int(10) DEFAULT NULL COMMENT '???????0???1?',
  `logintime` int(10) DEFAULT NULL COMMENT '????',
  `regtime` int(10) DEFAULT NULL COMMENT '????',
  `loginip` varchar(100) DEFAULT NULL COMMENT '??ip',
  `regpf` varchar(255) DEFAULT NULL COMMENT '????',
  `loginpf` varchar(255) DEFAULT NULL COMMENT '????',
  `regpd` varchar(255) DEFAULT NULL COMMENT '?????',
  `loginpd` varchar(255) DEFAULT NULL COMMENT '?????',
  `loginDate` int(10) DEFAULT NULL COMMENT '????',
  `regDate` int(10) DEFAULT NULL COMMENT '????',
  `shareOri` varchar(50) DEFAULT NULL COMMENT '????',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '?????????ios???',
  `createDevicePf` varchar(100) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_logintime` (`logintime`) USING BTREE,
  KEY `i_loginpf` (`loginpf`) USING BTREE,
  KEY `i_loginpd` (`loginpd`) USING BTREE,
  KEY `i_regpf` (`regpf`) USING BTREE,
  KEY `i_regpd` (`regpd`) USING BTREE,
  KEY `i_loginDate` (`loginDate`) USING BTREE,
  KEY `i_regtime` (`regtime`) USING BTREE,
  KEY `i_regDate` (`regDate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_loginlose
-- ----------------------------
DROP TABLE IF EXISTS `m_loginlose`;
CREATE TABLE `m_loginlose` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `recdate` int(10) DEFAULT NULL COMMENT '??20171101',
  `goLogin` int(10) DEFAULT NULL COMMENT '????????',
  `newAccount` int(10) DEFAULT NULL COMMENT '??????',
  `canCreate` int(10) DEFAULT NULL COMMENT '????????',
  `newHero` int(10) DEFAULT NULL COMMENT '????',
  `inGame` int(10) DEFAULT NULL COMMENT '?????',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_recdate` (`recdate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_loginout
-- ----------------------------
DROP TABLE IF EXISTS `m_loginout`;
CREATE TABLE `m_loginout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `logintime` int(10) DEFAULT NULL COMMENT '????',
  `logouttime` int(10) DEFAULT NULL COMMENT '????',
  `loginip` varchar(100) DEFAULT NULL COMMENT '??ip',
  `loginpf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `loginpd` varchar(255) DEFAULT NULL COMMENT '???',
  `oper` int(10) DEFAULT NULL COMMENT '??????,?1.??,2.????,3.????,4.????',
  `shareOri` varchar(50) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_mailgoods
-- ----------------------------
DROP TABLE IF EXISTS `m_mailgoods`;
CREATE TABLE `m_mailgoods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `content` text COMMENT '????',
  `goods` text COMMENT '????:[??id,????],[??id,????],[.....]',
  `account` varchar(100) DEFAULT NULL COMMENT '?????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `flag` int(10) DEFAULT NULL COMMENT '?????0??  1?? 2?? 3??',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `levelrange` varchar(20) DEFAULT NULL COMMENT '????',
  `moneyrange` varchar(40) DEFAULT NULL COMMENT '????',
  `checkuser` varchar(100) DEFAULT NULL COMMENT '?????',
  `passtime` int(10) DEFAULT NULL COMMENT '??/?????',
  `type` int(10) DEFAULT NULL COMMENT '0???1??',
  `link` varchar(2500) DEFAULT NULL COMMENT '?????URLEncoder.encode(link)??',
  `yuanbao` int(10) DEFAULT NULL COMMENT '??',
  `bindyuanbao` int(10) DEFAULT NULL COMMENT '????',
  `silver` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_mallconsume
-- ----------------------------
DROP TABLE IF EXISTS `m_mallconsume`;
CREATE TABLE `m_mallconsume` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `shopType` int(10) DEFAULT NULL COMMENT '????',
  `goodsId` int(10) DEFAULT NULL COMMENT '??id',
  `moneyType1` int(10) DEFAULT NULL COMMENT '????1',
  `moneyCost1` int(10) DEFAULT NULL COMMENT '????1',
  `price1` int(10) DEFAULT NULL COMMENT '??1',
  `moneyType2` int(10) DEFAULT NULL COMMENT '????2',
  `moneyCost2` int(10) DEFAULT NULL COMMENT '????2',
  `price2` int(10) DEFAULT NULL COMMENT '??2',
  `num` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `shopId` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000052 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_notice
-- ----------------------------
DROP TABLE IF EXISTS `m_notice`;
CREATE TABLE `m_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `begintime` int(10) DEFAULT NULL COMMENT '??????',
  `endtime` int(10) DEFAULT NULL COMMENT '??????',
  `spacetime` int(10) DEFAULT NULL COMMENT '??????',
  `content` varchar(600) DEFAULT NULL COMMENT '????',
  `account` varchar(100) DEFAULT NULL COMMENT '?????',
  `levelrange` varchar(20) DEFAULT NULL COMMENT '????',
  `moneyrange` varchar(40) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  `state` int(10) DEFAULT NULL COMMENT '?????0??????1????2??????',
  `link` varchar(200) DEFAULT NULL COMMENT '??',
  `type` int(10) DEFAULT NULL COMMENT '?????0?????1????',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_online
-- ----------------------------
DROP TABLE IF EXISTS `m_online`;
CREATE TABLE `m_online` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `onlineNum` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `ipNum` int(10) DEFAULT NULL COMMENT '??IP?',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_onlinetime
-- ----------------------------
DROP TABLE IF EXISTS `m_onlinetime`;
CREATE TABLE `m_onlinetime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `timeflag` varchar(20) DEFAULT NULL COMMENT '???? 0000-0001',
  `man` int(10) DEFAULT NULL COMMENT '???',
  `women` int(10) DEFAULT NULL COMMENT '???',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000050 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_onlinetimetemp
-- ----------------------------
DROP TABLE IF EXISTS `m_onlinetimetemp`;
CREATE TABLE `m_onlinetimetemp` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `sex` int(10) DEFAULT NULL COMMENT '??',
  `onlineTime` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_payaccount
-- ----------------------------
DROP TABLE IF EXISTS `m_payaccount`;
CREATE TABLE `m_payaccount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `onePayAcc` int(10) DEFAULT NULL COMMENT '??????????',
  `oneNewPayAcc` int(10) DEFAULT NULL COMMENT '?????????????????',
  `sevenPayAcc` int(10) DEFAULT NULL COMMENT '7??????????????',
  `sevenNewPayAcc` int(10) DEFAULT NULL COMMENT '7?????????????????',
  `oneMonPayAcc` int(10) DEFAULT NULL COMMENT '?????????????????',
  `oneMonNewPayAcc` int(10) DEFAULT NULL COMMENT '???????????????????',
  `allPayAcc` int(10) DEFAULT NULL COMMENT '???????????????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_payamt_coins
-- ----------------------------
DROP TABLE IF EXISTS `m_payamt_coins`;
CREATE TABLE `m_payamt_coins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `openid` varchar(255) DEFAULT NULL COMMENT '??id',
  `billno` varchar(255) DEFAULT NULL COMMENT '?????,????openid???????',
  `payitem` varchar(1000) DEFAULT NULL COMMENT '???ID*price*num???,??????????;??,??????512???',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `issend` int(10) DEFAULT NULL COMMENT '1???? ',
  `ismdspay` int(10) DEFAULT NULL COMMENT '???????? 1????',
  `providetype` int(10) DEFAULT NULL COMMENT '?????0???????1?????????????2????????????????',
  `amt` varchar(255) DEFAULT NULL COMMENT 'Q?/Q?????????????????????0.1Q????????amt????????????',
  `payamt_coins` varchar(255) DEFAULT NULL COMMENT '????????,???Q??????????????????????????????????????????????????????',
  `pubacct_payamt_coins` varchar(255) DEFAULT NULL COMMENT '?????????,???Q?.????????Q???????????',
  `paytotal` bigint(20) DEFAULT NULL COMMENT '?????0.1Q?',
  `glod` bigint(20) DEFAULT NULL COMMENT '????',
  `createtime` int(10) DEFAULT NULL COMMENT '????',
  `createdate` int(10) DEFAULT NULL COMMENT '????',
  `ilevel` int(10) DEFAULT NULL COMMENT '?????',
  `isold` int(10) DEFAULT NULL COMMENT '???????. 0: ???, 1: ????',
  `ireldaimond` int(10) DEFAULT NULL COMMENT '??????',
  `ireldaimondlevel` int(10) DEFAULT NULL COMMENT '????????',
  `vunreldaimond` varchar(200) DEFAULT NULL COMMENT '??????(??????,????????????�_�??)',
  `vunreldaimondlevel` varchar(200) DEFAULT NULL COMMENT '????????(????,?�_�??)',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `pf` varchar(100) DEFAULT NULL COMMENT '????',
  `curpf` varchar(100) DEFAULT NULL COMMENT '???????',
  `pd` varchar(100) DEFAULT NULL COMMENT '?????',
  `curpd` varchar(100) DEFAULT NULL COMMENT '??????',
  `subject` varchar(100) DEFAULT NULL COMMENT '?????????',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '?????????ios???',
  `sdkuid` varchar(255) DEFAULT NULL COMMENT '????uid',
  `sdkorder` varchar(512) DEFAULT NULL COMMENT '????order',
  `channel` varchar(100) DEFAULT NULL COMMENT '???????channel??????',
  `failcount` int(10) DEFAULT NULL COMMENT '????',
  `shareOri` varchar(100) DEFAULT NULL COMMENT '??????',
  `createDevicePf` varchar(100) DEFAULT NULL COMMENT '????',
  `ordertype` int(10) DEFAULT NULL COMMENT '???? 0?????1????',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_billno` (`billno`) USING BTREE,
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_isold` (`isold`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_openid` (`openid`) USING BTREE,
  KEY `i_hid` (`hid`) USING BTREE,
  KEY `i_createdate` (`createdate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_register
-- ----------------------------
DROP TABLE IF EXISTS `m_register`;
CREATE TABLE `m_register` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `recdate` int(10) DEFAULT NULL COMMENT '????',
  `newaccount` int(10) DEFAULT NULL COMMENT '????',
  `newrole` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  `devicePf` varchar(100) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE,
  KEY `i_recdate` (`recdate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_shareoricount
-- ----------------------------
DROP TABLE IF EXISTS `m_shareoricount`;
CREATE TABLE `m_shareoricount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `shareOri` varchar(100) DEFAULT NULL COMMENT '??????',
  `heronum` int(10) DEFAULT NULL COMMENT '?????',
  `times` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `pf` varchar(255) DEFAULT NULL COMMENT '???(??)',
  `pd` varchar(255) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`id`),
  KEY `i_time` (`time`) USING BTREE,
  KEY `i_shareOri` (`shareOri`) USING BTREE,
  KEY `i_zoneid` (`zoneid`) USING BTREE,
  KEY `i_pf` (`pf`) USING BTREE,
  KEY `i_pd` (`pd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_task
-- ----------------------------
DROP TABLE IF EXISTS `m_task`;
CREATE TABLE `m_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `type` int(10) DEFAULT NULL COMMENT '????',
  `taskId` int(10) DEFAULT NULL COMMENT '??id',
  `taskName` varchar(255) DEFAULT NULL COMMENT '????',
  `canAccept` int(10) DEFAULT NULL COMMENT '????',
  `accept` int(10) DEFAULT NULL COMMENT '????',
  `canCommit` int(10) DEFAULT NULL COMMENT '????????',
  `commit` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  `lev` int(10) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000999 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for m_tuohero
-- ----------------------------
DROP TABLE IF EXISTS `m_tuohero`;
CREATE TABLE `m_tuohero` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id ???id ',
  `name` varchar(255) DEFAULT NULL COMMENT '?????',
  `type` int(10) DEFAULT NULL COMMENT '?????',
  `askerName` varchar(255) DEFAULT NULL COMMENT '?????',
  `applicant` varchar(255) DEFAULT NULL COMMENT '?????',
  `askTime` int(10) DEFAULT NULL COMMENT '????',
  `submitName` varchar(255) DEFAULT NULL COMMENT '?????',
  `submitTime` int(10) DEFAULT NULL COMMENT '????',
  `state` int(10) DEFAULT NULL COMMENT '??,0???,1????,2????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for nature
-- ----------------------------
DROP TABLE IF EXISTS `nature`;
CREATE TABLE `nature` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for newhand
-- ----------------------------
DROP TABLE IF EXISTS `newhand`;
CREATE TABLE `newhand` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `curTaskId` int(10) DEFAULT NULL COMMENT '????id',
  `curTaskProgress` int(10) DEFAULT NULL COMMENT '??????',
  `curTaskState` int(10) DEFAULT NULL COMMENT '???????1???2???3?????',
  `taskList` text COMMENT '????????',
  `state` int(10) DEFAULT NULL COMMENT '?????????1????',
  `wxState` int(10) DEFAULT NULL COMMENT '????????? 1????',
  `programState` int(10) DEFAULT NULL COMMENT '?????????? 1????',
  `fczn` int(10) DEFAULT NULL COMMENT '????????? 1????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for niudan
-- ----------------------------
DROP TABLE IF EXISTS `niudan`;
CREATE TABLE `niudan` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '?????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `luckyValue` int(10) DEFAULT NULL COMMENT '???????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for nolevelequip
-- ----------------------------
DROP TABLE IF EXISTS `nolevelequip`;
CREATE TABLE `nolevelequip` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `equipData` varchar(500) DEFAULT NULL COMMENT '????',
  `jhIndex` int(10) DEFAULT NULL COMMENT '??????',
  `rhLv` int(10) DEFAULT NULL COMMENT '????',
  `rhd` int(10) DEFAULT NULL COMMENT '???',
  `rhExp` int(10) DEFAULT NULL COMMENT '????',
  `rhRwData` varchar(1000) DEFAULT NULL COMMENT '??????',
  `awardData` varchar(1000) DEFAULT NULL COMMENT '?????????',
  `lxLv` int(10) DEFAULT NULL COMMENT '????',
  `star` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `petMap` text COMMENT '????????',
  `deployMap` varchar(200) DEFAULT NULL COMMENT '????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  `post` int(10) DEFAULT NULL COMMENT '??????1???',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for petfly
-- ----------------------------
DROP TABLE IF EXISTS `petfly`;
CREATE TABLE `petfly` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` varchar(3000) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for petgrowup
-- ----------------------------
DROP TABLE IF EXISTS `petgrowup`;
CREATE TABLE `petgrowup` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` text COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pettable
-- ----------------------------
DROP TABLE IF EXISTS `pettable`;
CREATE TABLE `pettable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `qs` int(10) DEFAULT NULL COMMENT '????',
  `getList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for poker
-- ----------------------------
DROP TABLE IF EXISTS `poker`;
CREATE TABLE `poker` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `pokerDetail` varchar(3000) DEFAULT NULL COMMENT 'key?????1?2?pokerModel??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for potential
-- ----------------------------
DROP TABLE IF EXISTS `potential`;
CREATE TABLE `potential` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `useData` varchar(1000) DEFAULT NULL COMMENT '?????',
  `exchangeData` varchar(1000) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for primarydata
-- ----------------------------
DROP TABLE IF EXISTS `primarydata`;
CREATE TABLE `primarydata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `sex` int(10) DEFAULT NULL COMMENT '??',
  `level` int(10) DEFAULT NULL COMMENT '??',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `qu` int(10) DEFAULT NULL COMMENT '??',
  `bang` int(10) DEFAULT NULL COMMENT '???',
  `zhanji` int(10) DEFAULT NULL COMMENT '????',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `hp` int(10) DEFAULT NULL COMMENT '????',
  `totalStrength` bigint(20) DEFAULT NULL COMMENT '???',
  `finalFightAttr` varchar(1000) DEFAULT NULL COMMENT '????',
  `challList` varchar(2000) DEFAULT NULL COMMENT '????',
  `skill` varchar(300) DEFAULT NULL COMMENT '????',
  `showModel` varchar(300) DEFAULT NULL COMMENT '??',
  `pet` varchar(500) DEFAULT NULL COMMENT '??',
  `xianlv` varchar(500) DEFAULT NULL COMMENT '??',
  `tiannv` varchar(500) DEFAULT NULL COMMENT '??',
  `element` varchar(300) DEFAULT NULL COMMENT '??',
  `petFly` varchar(500) DEFAULT NULL COMMENT '????',
  `magic` varchar(200) DEFAULT NULL COMMENT '??',
  `weChatProfile` varchar(300) DEFAULT NULL COMMENT '????',
  `children` varchar(1000) DEFAULT NULL COMMENT '??',
  `zhuanSheng` varchar(1000) DEFAULT NULL COMMENT '??',
  `lingChong` varchar(1000) DEFAULT NULL COMMENT '??',
  `transfor` varchar(200) DEFAULT NULL COMMENT '??',
  `yuanShen` varchar(1000) DEFAULT NULL COMMENT '??',
  `rongLing` varchar(1000) DEFAULT NULL COMMENT '??',
  `noLevelEquip` varchar(1000) DEFAULT NULL COMMENT '?????',
  `petGrowUp` varchar(1000) DEFAULT NULL COMMENT '????',
  `spiritRing` varchar(1000) DEFAULT NULL COMMENT '??',
  `starts` varchar(200) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for primaryhero
-- ----------------------------
DROP TABLE IF EXISTS `primaryhero`;
CREATE TABLE `primaryhero` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `term` int(10) DEFAULT NULL COMMENT '???????',
  `bang` int(10) DEFAULT NULL COMMENT '???????',
  `betData` varchar(2000) DEFAULT NULL COMMENT '????',
  `myRank` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qilinzhaohuan
-- ----------------------------
DROP TABLE IF EXISTS `qilinzhaohuan`;
CREATE TABLE `qilinzhaohuan` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rankconsume
-- ----------------------------
DROP TABLE IF EXISTS `rankconsume`;
CREATE TABLE `rankconsume` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `sex` int(10) DEFAULT NULL COMMENT '??',
  `consume` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rankconsumedata
-- ----------------------------
DROP TABLE IF EXISTS `rankconsumedata`;
CREATE TABLE `rankconsumedata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `consume` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rankrecharge
-- ----------------------------
DROP TABLE IF EXISTS `rankrecharge`;
CREATE TABLE `rankrecharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `hid` bigint(20) DEFAULT NULL COMMENT '??id',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `zoneid` int(10) DEFAULT NULL COMMENT '??',
  `job` int(10) DEFAULT NULL COMMENT '??',
  `sex` int(10) DEFAULT NULL COMMENT '??',
  `recharge` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`),
  KEY `i_hid` (`hid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rankrechargedata
-- ----------------------------
DROP TABLE IF EXISTS `rankrechargedata`;
CREATE TABLE `rankrechargedata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `recharge` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rechargeTen` int(10) DEFAULT NULL COMMENT '10???0???1??2??',
  `rechargeTenTime` int(10) DEFAULT NULL COMMENT '10?????',
  `rechargeDouble` varchar(300) DEFAULT NULL COMMENT '?????? ????????key??id?value?1',
  `rechargeDan` int(10) DEFAULT NULL COMMENT '???????0???1??2???',
  `tenMap` varchar(1000) DEFAULT NULL COMMENT '10???[state,time]',
  `haoliNum` int(10) DEFAULT NULL COMMENT '???????',
  `haoliState` int(10) DEFAULT NULL COMMENT '????????',
  `haoliTerm` int(10) DEFAULT NULL COMMENT '????????',
  `firstSigNum` int(10) DEFAULT NULL COMMENT '???? ????',
  `firstSigState` int(10) DEFAULT NULL COMMENT '????????0???1??2???',
  `firstSigTime` int(10) DEFAULT NULL COMMENT '????????',
  `firstSigGet` int(10) DEFAULT NULL COMMENT '??????',
  `grandReward` int(10) DEFAULT NULL COMMENT '???? 0??? 1??? 2???',
  `grandRewardSigNum` int(10) DEFAULT NULL COMMENT '???? ??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rechargebiggift
-- ----------------------------
DROP TABLE IF EXISTS `rechargebiggift`;
CREATE TABLE `rechargebiggift` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `gainMap` varchar(2000) DEFAULT NULL COMMENT '??????',
  `awardMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `signNum` int(10) DEFAULT NULL COMMENT '??????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rechargefirst
-- ----------------------------
DROP TABLE IF EXISTS `rechargefirst`;
CREATE TABLE `rechargefirst` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewards` varchar(1024) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rechargegift
-- ----------------------------
DROP TABLE IF EXISTS `rechargegift`;
CREATE TABLE `rechargegift` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rechargemay
-- ----------------------------
DROP TABLE IF EXISTS `rechargemay`;
CREATE TABLE `rechargemay` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(1500) DEFAULT NULL COMMENT '???????',
  `totalRecharge` int(10) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rechargetable
-- ----------------------------
DROP TABLE IF EXISTS `rechargetable`;
CREATE TABLE `rechargetable` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  `rechargeCount` int(10) DEFAULT NULL COMMENT '???????',
  `rewardList` varchar(300) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for redpacketpersonal
-- ----------------------------
DROP TABLE IF EXISTS `redpacketpersonal`;
CREATE TABLE `redpacketpersonal` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `sendMap` varchar(3000) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reflowrecharge
-- ----------------------------
DROP TABLE IF EXISTS `reflowrecharge`;
CREATE TABLE `reflowrecharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `todayRecharge` int(10) DEFAULT NULL COMMENT '????',
  `isReward` int(10) DEFAULT NULL COMMENT '??????',
  `rewardList` varchar(500) DEFAULT NULL COMMENT '??id',
  `mailRewardId` int(10) DEFAULT NULL COMMENT '????????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for refreshfeast
-- ----------------------------
DROP TABLE IF EXISTS `refreshfeast`;
CREATE TABLE `refreshfeast` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardedList` varchar(1000) DEFAULT NULL COMMENT '??????',
  `refreshTimes` int(10) DEFAULT NULL COMMENT '???? ????',
  `refreshSigNum` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for returnlogin
-- ----------------------------
DROP TABLE IF EXISTS `returnlogin`;
CREATE TABLE `returnlogin` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `backMapModel` text COMMENT '??????',
  `rbStrength` text COMMENT '??????id',
  `rbCount` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for returnmission
-- ----------------------------
DROP TABLE IF EXISTS `returnmission`;
CREATE TABLE `returnmission` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `finish` int(10) DEFAULT NULL COMMENT '????????',
  `liveness` int(10) DEFAULT NULL COMMENT '???',
  `openDays` int(10) DEFAULT NULL COMMENT '????',
  `taskCount` varchar(2000) DEFAULT NULL COMMENT '????????',
  `finishTaskId` varchar(1000) DEFAULT NULL COMMENT '?????id',
  `reward` varchar(1000) DEFAULT NULL COMMENT '???????',
  `livenessReward` varchar(500) DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ride
-- ----------------------------
DROP TABLE IF EXISTS `ride`;
CREATE TABLE `ride` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skinList` varchar(1000) DEFAULT NULL COMMENT '??id',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  `skinMap` varchar(6000) DEFAULT NULL COMMENT '??????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rollbackinvest
-- ----------------------------
DROP TABLE IF EXISTS `rollbackinvest`;
CREATE TABLE `rollbackinvest` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `finish` int(10) DEFAULT NULL COMMENT '????',
  `chargeState` int(10) DEFAULT NULL COMMENT '????',
  `openDay` int(10) DEFAULT NULL COMMENT '????',
  `loginDay` int(10) DEFAULT NULL COMMENT '????',
  `awardData` varchar(500) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rollbackregister
-- ----------------------------
DROP TABLE IF EXISTS `rollbackregister`;
CREATE TABLE `rollbackregister` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `finish` int(10) DEFAULT NULL COMMENT '????',
  `openDay` int(10) DEFAULT NULL COMMENT '???????',
  `loginDay` int(10) DEFAULT NULL COMMENT '????',
  `registerData` varchar(500) DEFAULT NULL COMMENT '????????',
  `boxData` varchar(500) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rongling
-- ----------------------------
DROP TABLE IF EXISTS `rongling`;
CREATE TABLE `rongling` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `talent` int(10) DEFAULT NULL COMMENT '????',
  `petMap` text COMMENT '????',
  `skillMap` varchar(1000) DEFAULT NULL COMMENT '????',
  `toolMap` varchar(1000) DEFAULT NULL COMMENT '??????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sealbox
-- ----------------------------
DROP TABLE IF EXISTS `sealbox`;
CREATE TABLE `sealbox` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shenbing
-- ----------------------------
DROP TABLE IF EXISTS `shenbing`;
CREATE TABLE `shenbing` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skinList` varchar(1000) DEFAULT NULL COMMENT '??id',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  `skinMap` varchar(6000) DEFAULT NULL COMMENT '??????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shengxiaofuli
-- ----------------------------
DROP TABLE IF EXISTS `shengxiaofuli`;
CREATE TABLE `shengxiaofuli` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `awards` varchar(500) DEFAULT NULL COMMENT '?????[id]',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singlerecharge
-- ----------------------------
DROP TABLE IF EXISTS `singlerecharge`;
CREATE TABLE `singlerecharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardList` varchar(500) DEFAULT NULL COMMENT '???????',
  `canRewardList` varchar(500) DEFAULT NULL COMMENT '?????????',
  `rewardMap` varchar(500) DEFAULT NULL COMMENT '?????',
  `canRewardMap` varchar(500) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `lvmap` varchar(255) DEFAULT NULL COMMENT '?????? key:skillid?value???',
  `orderarr` varchar(200) DEFAULT NULL COMMENT '???? ?skillid?arr',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for smeltmedicine
-- ----------------------------
DROP TABLE IF EXISTS `smeltmedicine`;
CREATE TABLE `smeltmedicine` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `count` int(10) DEFAULT NULL COMMENT '??????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????????????',
  `oneListReward` varchar(2000) DEFAULT NULL COMMENT '????????????',
  `recycleList` varchar(2000) DEFAULT NULL COMMENT '????????????',
  `recycleCount` int(10) DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for smeltmedicinerankmodel
-- ----------------------------
DROP TABLE IF EXISTS `smeltmedicinerankmodel`;
CREATE TABLE `smeltmedicinerankmodel` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `totalNum` int(10) DEFAULT NULL COMMENT '????',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for soul
-- ----------------------------
DROP TABLE IF EXISTS `soul`;
CREATE TABLE `soul` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for specialshop
-- ----------------------------
DROP TABLE IF EXISTS `specialshop`;
CREATE TABLE `specialshop` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyMap` varchar(2000) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spiritring
-- ----------------------------
DROP TABLE IF EXISTS `spiritring`;
CREATE TABLE `spiritring` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` varchar(3000) DEFAULT NULL COMMENT '????????',
  `washCout` varchar(500) DEFAULT NULL COMMENT '??????',
  `skillMap` varchar(500) DEFAULT NULL COMMENT '????',
  `washSave` varchar(1000) DEFAULT NULL COMMENT '??????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for starimagetreasure
-- ----------------------------
DROP TABLE IF EXISTS `starimagetreasure`;
CREATE TABLE `starimagetreasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for starts
-- ----------------------------
DROP TABLE IF EXISTS `starts`;
CREATE TABLE `starts` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` varchar(5000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for strengthmodel
-- ----------------------------
DROP TABLE IF EXISTS `strengthmodel`;
CREATE TABLE `strengthmodel` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `pet` int(10) DEFAULT NULL COMMENT '????',
  `shenbing` int(10) DEFAULT NULL COMMENT '????',
  `ride` int(10) DEFAULT NULL COMMENT '????',
  `xianlv` int(10) DEFAULT NULL COMMENT '????',
  `wing` int(10) DEFAULT NULL COMMENT '????',
  `tianxian` int(10) DEFAULT NULL COMMENT '????',
  `fazhen` int(10) DEFAULT NULL COMMENT '????',
  `xianwei` int(10) DEFAULT NULL COMMENT '????',
  `shouhun` int(10) DEFAULT NULL COMMENT '????',
  `tongling` int(10) DEFAULT NULL COMMENT '????',
  `tiannv` int(10) DEFAULT NULL COMMENT '????',
  `xianqi` int(10) DEFAULT NULL COMMENT '??????',
  `huanian` int(10) DEFAULT NULL COMMENT '??????',
  `lingqi` int(10) DEFAULT NULL COMMENT '??????',
  `daohang` bigint(20) DEFAULT NULL COMMENT '?????',
  `feiqi` int(10) DEFAULT NULL COMMENT '????',
  `lingbao` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superequip
-- ----------------------------
DROP TABLE IF EXISTS `superequip`;
CREATE TABLE `superequip` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `slotMap` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superrank
-- ----------------------------
DROP TABLE IF EXISTS `superrank`;
CREATE TABLE `superrank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `targetList` varchar(1000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superrankcross
-- ----------------------------
DROP TABLE IF EXISTS `superrankcross`;
CREATE TABLE `superrankcross` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `zoneId` int(10) DEFAULT NULL COMMENT '?id',
  `rank` int(10) DEFAULT NULL COMMENT '??',
  `name` varchar(100) DEFAULT NULL COMMENT '????',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `targetList` varchar(500) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for targetreward
-- ----------------------------
DROP TABLE IF EXISTS `targetreward`;
CREATE TABLE `targetreward` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `rewardRecord` varchar(255) DEFAULT NULL COMMENT '????',
  `dayInviteCount` int(10) DEFAULT NULL COMMENT '????????????????????20?',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teamfb
-- ----------------------------
DROP TABLE IF EXISTS `teamfb`;
CREATE TABLE `teamfb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `leftTimes` int(10) DEFAULT NULL COMMENT '??????',
  `passList` varchar(512) DEFAULT NULL COMMENT '?????? v:fbid',
  `broadTime` int(10) DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for thriftshops
-- ----------------------------
DROP TABLE IF EXISTS `thriftshops`;
CREATE TABLE `thriftshops` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `freeCount` int(10) DEFAULT NULL COMMENT '???????',
  `moneyCount` int(10) DEFAULT NULL COMMENT '????????',
  `shopMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `refreshTime` int(10) DEFAULT NULL COMMENT '????',
  `signNum` int(10) DEFAULT NULL COMMENT '??????',
  `buyList` varchar(500) DEFAULT NULL COMMENT '?????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tianjitreasury
-- ----------------------------
DROP TABLE IF EXISTS `tianjitreasury`;
CREATE TABLE `tianjitreasury` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tianmingzuhe
-- ----------------------------
DROP TABLE IF EXISTS `tianmingzuhe`;
CREATE TABLE `tianmingzuhe` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `zhuHeMap` text COMMENT '??????',
  `awardList` text COMMENT '?????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tiannv
-- ----------------------------
DROP TABLE IF EXISTS `tiannv`;
CREATE TABLE `tiannv` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skinList` varchar(1000) DEFAULT NULL COMMENT '??id',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  `showId` int(10) DEFAULT NULL COMMENT '???id',
  `xianqiId` int(10) DEFAULT NULL COMMENT '?????id',
  `huanianId` int(10) DEFAULT NULL COMMENT '?????id',
  `lingqiId` int(10) DEFAULT NULL COMMENT '?????id',
  `strength` int(10) DEFAULT NULL COMMENT '????',
  `skinMap` varchar(6000) DEFAULT NULL COMMENT '??????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tianshu
-- ----------------------------
DROP TABLE IF EXISTS `tianshu`;
CREATE TABLE `tianshu` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `starModelMap` text COMMENT '????????',
  `levelModelMap` text COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tianshutreasure
-- ----------------------------
DROP TABLE IF EXISTS `tianshutreasure`;
CREATE TABLE `tianshutreasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `hasList` varchar(2000) DEFAULT NULL COMMENT '???????',
  `hasMap` text COMMENT '????????????????30???',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tongling
-- ----------------------------
DROP TABLE IF EXISTS `tongling`;
CREATE TABLE `tongling` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tongtian
-- ----------------------------
DROP TABLE IF EXISTS `tongtian`;
CREATE TABLE `tongtian` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '?????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `luckyValue` int(10) DEFAULT NULL COMMENT '???????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for totems
-- ----------------------------
DROP TABLE IF EXISTS `totems`;
CREATE TABLE `totems` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totemsModelMap` text COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tower
-- ----------------------------
DROP TABLE IF EXISTS `tower`;
CREATE TABLE `tower` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `layer` int(10) DEFAULT NULL COMMENT '??????',
  `time` int(10) DEFAULT NULL COMMENT '????',
  `shopMap` varchar(1200) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for toysfuling
-- ----------------------------
DROP TABLE IF EXISTS `toysfuling`;
CREATE TABLE `toysfuling` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `modelMap` varchar(3000) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for toyupgrade
-- ----------------------------
DROP TABLE IF EXISTS `toyupgrade`;
CREATE TABLE `toyupgrade` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` varchar(3000) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for transfor
-- ----------------------------
DROP TABLE IF EXISTS `transfor`;
CREATE TABLE `transfor` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `fightId` int(10) DEFAULT NULL COMMENT '??id',
  `transId` int(10) DEFAULT NULL COMMENT '???id',
  `dataMap` text COMMENT '????',
  `groupList` text COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for treasure
-- ----------------------------
DROP TABLE IF EXISTS `treasure`;
CREATE TABLE `treasure` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  `firstTen` int(10) DEFAULT NULL COMMENT '??????????0??1?',
  `luckyValue` int(10) DEFAULT NULL COMMENT '???',
  `newOneList` varchar(2000) DEFAULT NULL COMMENT '???????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for treasurebox
-- ----------------------------
DROP TABLE IF EXISTS `treasurebox`;
CREATE TABLE `treasurebox` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `cost` int(10) DEFAULT NULL COMMENT '???????',
  `keyCount` int(10) DEFAULT NULL COMMENT '????',
  `useCount` int(10) DEFAULT NULL COMMENT '????????',
  `id` varchar(2000) DEFAULT NULL COMMENT '??????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tujian
-- ----------------------------
DROP TABLE IF EXISTS `tujian`;
CREATE TABLE `tujian` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `tujianDetail` text COMMENT '?????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tujianfuli
-- ----------------------------
DROP TABLE IF EXISTS `tujianfuli`;
CREATE TABLE `tujianfuli` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `qs` int(10) DEFAULT NULL COMMENT '??',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `awards` varchar(500) DEFAULT NULL COMMENT '?????[id]',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for twelveanimals
-- ----------------------------
DROP TABLE IF EXISTS `twelveanimals`;
CREATE TABLE `twelveanimals` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `starData` varchar(1000) DEFAULT NULL COMMENT '????',
  `zhDatas` varchar(1000) DEFAULT NULL COMMENT '????',
  `yzSkillId` int(10) DEFAULT NULL COMMENT '?????????ID',
  `state` int(10) DEFAULT NULL COMMENT '??????',
  `strength` bigint(20) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vipdata
-- ----------------------------
DROP TABLE IF EXISTS `vipdata`;
CREATE TABLE `vipdata` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `vipExp` int(10) DEFAULT NULL COMMENT 'VIP??',
  `rewardMap` varchar(500) DEFAULT NULL COMMENT 'VIP??????',
  `upTime` int(10) DEFAULT NULL COMMENT '??????',
  `upStateMap` varchar(3000) DEFAULT NULL COMMENT '??????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vipdiscount
-- ----------------------------
DROP TABLE IF EXISTS `vipdiscount`;
CREATE TABLE `vipdiscount` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `zheKouData` varchar(1000) DEFAULT NULL COMMENT '???????',
  `buyDatas` varchar(1000) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vipgift
-- ----------------------------
DROP TABLE IF EXISTS `vipgift`;
CREATE TABLE `vipgift` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `awards` varchar(300) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wabaofb
-- ----------------------------
DROP TABLE IF EXISTS `wabaofb`;
CREATE TABLE `wabaofb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `guandata` text COMMENT '??? key???value?[????????????????]',
  `zhangStarData` varchar(5000) DEFAULT NULL COMMENT '??? key???value?[6?12?18????]',
  `totalStar` int(10) DEFAULT NULL COMMENT '???',
  `maxPassZhang` int(10) DEFAULT NULL COMMENT '??????',
  `maxPassGuan` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wallow
-- ----------------------------
DROP TABLE IF EXISTS `wallow`;
CREATE TABLE `wallow` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `state` int(10) DEFAULT NULL COMMENT '?????0????1???',
  `recordTime` int(10) DEFAULT NULL COMMENT '??????',
  `accTime` int(10) DEFAULT NULL COMMENT '?????',
  `getReward` int(10) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wanxianfight
-- ----------------------------
DROP TABLE IF EXISTS `wanxianfight`;
CREATE TABLE `wanxianfight` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `score` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for weekcard
-- ----------------------------
DROP TABLE IF EXISTS `weekcard`;
CREATE TABLE `weekcard` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `cardState` int(10) DEFAULT NULL COMMENT '??????   0.???    1.???',
  `cardStartTime` int(10) DEFAULT NULL COMMENT '??????',
  `cardEndTime` int(10) DEFAULT NULL COMMENT '??????',
  `rewardDayTime` int(10) DEFAULT NULL COMMENT '?????????',
  `rewardState` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for whitesend
-- ----------------------------
DROP TABLE IF EXISTS `whitesend`;
CREATE TABLE `whitesend` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `buyList` varchar(2000) DEFAULT NULL COMMENT '????',
  `addAttr` int(10) DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wing
-- ----------------------------
DROP TABLE IF EXISTS `wing`;
CREATE TABLE `wing` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skinList` varchar(1000) DEFAULT NULL COMMENT '??id',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  `skinMap` varchar(6000) DEFAULT NULL COMMENT '??????',
  `transfer` int(10) DEFAULT NULL COMMENT '??????????0?????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wishpool
-- ----------------------------
DROP TABLE IF EXISTS `wishpool`;
CREATE TABLE `wishpool` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wishtree
-- ----------------------------
DROP TABLE IF EXISTS `wishtree`;
CREATE TABLE `wishtree` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `friendId` bigint(20) DEFAULT NULL COMMENT '??id',
  `myWish` int(10) DEFAULT NULL COMMENT '????',
  `friendWish` int(10) DEFAULT NULL COMMENT '????',
  `friendLogin` int(10) DEFAULT NULL COMMENT '??????????',
  `getReward` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for worldcup
-- ----------------------------
DROP TABLE IF EXISTS `worldcup`;
CREATE TABLE `worldcup` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `betMap` varchar(2000) DEFAULT NULL COMMENT '????',
  `rewardList` varchar(2000) DEFAULT NULL COMMENT '??????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianfaqiankun
-- ----------------------------
DROP TABLE IF EXISTS `xianfaqiankun`;
CREATE TABLE `xianfaqiankun` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????????????',
  `count` int(10) DEFAULT NULL COMMENT '??????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xiangongrank
-- ----------------------------
DROP TABLE IF EXISTS `xiangongrank`;
CREATE TABLE `xiangongrank` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `score` int(10) DEFAULT NULL COMMENT '??',
  `time` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianlv
-- ----------------------------
DROP TABLE IF EXISTS `xianlv`;
CREATE TABLE `xianlv` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `xianlvMap` text COMMENT '????',
  `deploy` varchar(1000) DEFAULT NULL COMMENT '????',
  `totalCount` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianqi
-- ----------------------------
DROP TABLE IF EXISTS `xianqi`;
CREATE TABLE `xianqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianshiqianggou
-- ----------------------------
DROP TABLE IF EXISTS `xianshiqianggou`;
CREATE TABLE `xianshiqianggou` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '????',
  `flag` int(10) DEFAULT NULL COMMENT '????',
  `modifyDate` bigint(20) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianwei
-- ----------------------------
DROP TABLE IF EXISTS `xianwei`;
CREATE TABLE `xianwei` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xianzhen
-- ----------------------------
DROP TABLE IF EXISTS `xianzhen`;
CREATE TABLE `xianzhen` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `step` int(10) DEFAULT NULL COMMENT '??',
  `exp` int(10) DEFAULT NULL COMMENT '??',
  `tempExp` int(10) DEFAULT NULL COMMENT '????',
  `skills` varchar(1000) DEFAULT NULL COMMENT '??',
  `danNum` int(10) DEFAULT NULL COMMENT '?????',
  `stepDan` int(10) DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xiqi
-- ----------------------------
DROP TABLE IF EXISTS `xiqi`;
CREATE TABLE `xiqi` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `score` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xyfb
-- ----------------------------
DROP TABLE IF EXISTS `xyfb`;
CREATE TABLE `xyfb` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `belongCount` int(10) DEFAULT NULL COMMENT '????',
  `helpCount` int(10) DEFAULT NULL COMMENT '????',
  `topZhang` int(10) DEFAULT NULL COMMENT '??????',
  `buy` int(10) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yearrecharge
-- ----------------------------
DROP TABLE IF EXISTS `yearrecharge`;
CREATE TABLE `yearrecharge` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `num` int(10) DEFAULT NULL COMMENT '??????',
  `rewardList` varchar(2000) DEFAULT NULL COMMENT '???????',
  `boxRewardList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `isRecharge` int(10) DEFAULT NULL COMMENT '????????? 0 ??1??',
  `signNum` int(10) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yearredpet
-- ----------------------------
DROP TABLE IF EXISTS `yearredpet`;
CREATE TABLE `yearredpet` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `liveness` int(10) DEFAULT NULL COMMENT '???',
  `reward` varchar(2000) DEFAULT NULL COMMENT '???????',
  `taskCount` varchar(2000) DEFAULT NULL COMMENT '????????',
  `finishTaskId` varchar(2000) DEFAULT NULL COMMENT '?????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yuanbaozhuanpan
-- ----------------------------
DROP TABLE IF EXISTS `yuanbaozhuanpan`;
CREATE TABLE `yuanbaozhuanpan` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `useMap` varchar(500) DEFAULT NULL COMMENT '??????',
  `gainMap` varchar(500) DEFAULT NULL COMMENT '??????',
  `rechargeMap` varchar(500) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yuanshen
-- ----------------------------
DROP TABLE IF EXISTS `yuanshen`;
CREATE TABLE `yuanshen` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `dataMap` text COMMENT '????',
  `fightSkill` varchar(50) DEFAULT NULL COMMENT '????id',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yunxiaocangbao
-- ----------------------------
DROP TABLE IF EXISTS `yunxiaocangbao`;
CREATE TABLE `yunxiaocangbao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `chooseGoods` varchar(1000) DEFAULT NULL COMMENT '?????',
  `awardBhs` varchar(1000) DEFAULT NULL COMMENT '?????? ',
  `step` int(10) DEFAULT NULL COMMENT '??0 ???? 1 ????',
  `round` int(10) DEFAULT NULL COMMENT '??',
  `pc` int(10) DEFAULT NULL COMMENT '??',
  `cs` int(10) DEFAULT NULL COMMENT '??',
  `csAwards` varchar(1000) DEFAULT NULL COMMENT '????????',
  `signNum` int(10) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhenfa
-- ----------------------------
DROP TABLE IF EXISTS `zhenfa`;
CREATE TABLE `zhenfa` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `xianjing` int(10) DEFAULT NULL COMMENT '??',
  `levelData` varchar(100) DEFAULT NULL COMMENT '??????',
  `expData` varchar(100) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhuansheng
-- ----------------------------
DROP TABLE IF EXISTS `zhuansheng`;
CREATE TABLE `zhuansheng` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `level` int(10) DEFAULT NULL COMMENT '????',
  `xiuwei` bigint(20) DEFAULT NULL COMMENT '??',
  `exchangeCount` int(10) DEFAULT NULL COMMENT '???????',
  `buyCount` int(10) DEFAULT NULL COMMENT '?????????',
  `talentMap` varchar(500) DEFAULT NULL COMMENT '????',
  `equipSuitId` int(10) DEFAULT NULL COMMENT '????ID',
  `detailMap` varchar(3000) DEFAULT NULL COMMENT '??????????????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhuanshuxunbao
-- ----------------------------
DROP TABLE IF EXISTS `zhuanshuxunbao`;
CREATE TABLE `zhuanshuxunbao` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `totalCount` int(10) DEFAULT NULL COMMENT '????????????????',
  `count` int(10) DEFAULT NULL COMMENT '????????????',
  `tenCount` int(10) DEFAULT NULL COMMENT '10????????????',
  `oneList` varchar(2000) DEFAULT NULL COMMENT '?????????',
  `loopList` varchar(2000) DEFAULT NULL COMMENT '????????',
  `tenLoop` int(10) DEFAULT NULL COMMENT '??10??????',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhuxiantower
-- ----------------------------
DROP TABLE IF EXISTS `zhuxiantower`;
CREATE TABLE `zhuxiantower` (
  `hid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `challengeList` text COMMENT '???????0???',
  `helpNum` int(10) DEFAULT NULL COMMENT '?????',
  `topFubenid` int(10) DEFAULT NULL COMMENT '??????',
  `currentFubenid` int(10) DEFAULT NULL COMMENT '???????????0????',
  `resetTime` int(10) DEFAULT NULL COMMENT '????(??????)',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100000000003 DEFAULT CHARSET=utf8;
