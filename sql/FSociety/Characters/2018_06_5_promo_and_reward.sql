SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for promotions_rewarded
-- ----------------------------
DROP TABLE IF EXISTS `promotions_rewarded`;
CREATE TABLE `promotions_rewarded` (
  `account` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `guildTransfer` int(10) NOT NULL DEFAULT '0',
  `profession` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
