DELETE FROM gossip_menu_option_action WHERE MenuId IN (11845,11846);
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '0', '11867', '559');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '1', '3081', '560');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '2', '11857', '561');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '3', '11859', '562');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '4', '9767', '20');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11845', '5', '11858', '563');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11846', '0', '11847', '564');
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES ('11846', '1', '4925', '565');

DELETE FROM points_of_interest WHERE ID IN (20,259,560,561,562,563,19,556,564,565,559);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('20', '-8573.47', '990.095', '7', '0', '0', 'Stormwind Harbor', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('559', '-8764.14', '404.2', '7', '99', '0', 'Stormwind Champions\' Hall', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('560', '-8394.28', '560.927', '7', '99', '0', 'Stormwind Tram', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('561', '-8766.67', '1033.05', '7', '99', '0', 'Lion\'s Rest', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('562', '-8789.09', '827.214', '7', '99', '0', 'Stormwind Stockade', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('563', '-8432.65', '319.663', '7', '99', '0', 'Stormwind Keep', '23420');

INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('19', '-8900.59', '632.021', '7', '99', '0', 'Stormwind Bank', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('556', '-8327.83', '598.797', '7', '99', '0', 'Stormwind Bank', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('564', '-8775.39', '371.104', '7', '99', '0', 'Stormwind Stable Master', '23420');
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES ('565', '-8432.87', '555.121', '7', '99', '0', 'Stormwind Stable Master', '23420');

