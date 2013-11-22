use latte;
-- since v1.0

CREATE TABLE IF NOT EXISTS `imicro_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(50) NOT NULL comment '业务id',
  `token` varchar(60) NOT NULL,
  `wechatId` varchar(60) DEFAULT NULL,
  `wechatName` varchar(60) DEFAULT NULL,
  `trueName` varchar(60) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `qq` int(11) DEFAULT 0,
  `sex` tinyint(1) default 0,
  `age` int(3) default 0,
  `birthday` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `signScore` int(11) DEFAULT 0 comment '签到积分',
  `expendScore` int(11) DEFAULT 0 comment '消费积分',
  `totalScore` int(11) DEFAULT 0 comment '总共积分',
  `getCardTime` varchar(30) DEFAULT NULL comment '获取会员卡时间',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

CREATE TABLE IF NOT EXISTS `imicro_app`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(50) NOT NULL comment '业务id',
  `token` varchar(60) NOT NULL,
  `appName` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `concatTel` varchar(10) NOT NULL,
  `qq` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `invalidTime` datetime NULL,
  `pwd` varchar(100) NOT NULL,
  `userName` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

CREATE TABLE IF NOT EXISTS `imicro_page`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(50) NOT NULL comment '业务id',
  `title` varchar(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `href` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

CREATE TABLE IF NOT EXISTS `imicro_news`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(50) NOT NULL comment '业务id',
  `title` varchar(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `href` varchar(500) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

CREATE TABLE IF NOT EXISTS `imicro_menus`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(50) NOT NULL comment '业务id',
  `title` varchar(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `href` varchar(500) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;
