/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Mangy Duskbat';
SET @ENTRY 		:= '1513';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '47211',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '3',  '4',  '0',  '0',  '0',  '7',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '24',  '0',  '0',  '0',  '1',  '1',  '0',  '1513',  '0',  '100007',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1513 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18672, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1863.4', '1488.16', '89.1091', '4.01065', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18673, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1983.39', '1492.14', '84.0811', '2.89496', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18494, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2041.64', '1487.78', '71.6982', '5.95447', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18675, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2121', '1500.36', '71.8187', '4.96297', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18676, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2135.87', '1444.86', '69.1315', '0.411684', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18677, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2052.29', '1448', '67.5716', '5.4353', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18678, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2083.06', '1424.53', '61.5899', '5.62171', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18679, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1984.46', '1446.7', '70.9778', '2.28292', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18680, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1986.8', '1422.75', '62.4976', '0.709966', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18681, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1936.64', '1436.09', '68.8852', '4.70653', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18682, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1973.75', '1369.48', '64.4882', '1.25459', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18683, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2079.97', '1387.23', '60.9105', '2.2861', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18684, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2042.71', '1359.45', '61.7168', '0.686808', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18685, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2140.33', '1385.49', '70.0972', '1.35732', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18686, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2090.45', '1328.53', '60.529', '1.42293', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18687, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2045.02', '1336.09', '68.6009', '1.88761', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18688, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1970.84', '1328.89', '77.7441', '3.0235', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1863.4' AND `position_y` REGEXP '1488.16' AND `position_z` REGEXP '89.1091' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1863.4' AND `position_y` REGEXP '1488.16' AND `position_z` REGEXP '89.1091' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1983.39' AND `position_y` REGEXP '1492.14' AND `position_z` REGEXP '84.0811' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1983.39' AND `position_y` REGEXP '1492.14' AND `position_z` REGEXP '84.0811' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2041.64' AND `position_y` REGEXP '1487.78' AND `position_z` REGEXP '71.6982' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2041.64' AND `position_y` REGEXP '1487.78' AND `position_z` REGEXP '71.6982' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2121' AND `position_y` REGEXP '1500.36' AND `position_z` REGEXP '71.8187' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2121' AND `position_y` REGEXP '1500.36' AND `position_z` REGEXP '71.8187' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2135.87' AND `position_y` REGEXP '1444.86' AND `position_z` REGEXP '69.1315' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2135.87' AND `position_y` REGEXP '1444.86' AND `position_z` REGEXP '69.1315' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2052.29' AND `position_y` REGEXP '1448' AND `position_z` REGEXP '67.5716' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2052.29' AND `position_y` REGEXP '1448' AND `position_z` REGEXP '67.5716' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2083.06' AND `position_y` REGEXP '1424.53' AND `position_z` REGEXP '61.5899' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2083.06' AND `position_y` REGEXP '1424.53' AND `position_z` REGEXP '61.5899' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1984.46' AND `position_y` REGEXP '1446.7' AND `position_z` REGEXP '70.9778' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1984.46' AND `position_y` REGEXP '1446.7' AND `position_z` REGEXP '70.9778' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1986.8' AND `position_y` REGEXP '1422.75' AND `position_z` REGEXP '62.4976' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1986.8' AND `position_y` REGEXP '1422.75' AND `position_z` REGEXP '62.4976' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1936.64' AND `position_y` REGEXP '1436.09' AND `position_z` REGEXP '68.8852' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1936.64' AND `position_y` REGEXP '1436.09' AND `position_z` REGEXP '68.8852' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1973.75' AND `position_y` REGEXP '1369.48' AND `position_z` REGEXP '64.4882' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1973.75' AND `position_y` REGEXP '1369.48' AND `position_z` REGEXP '64.4882' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2079.97' AND `position_y` REGEXP '1387.23' AND `position_z` REGEXP '60.9105' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2079.97' AND `position_y` REGEXP '1387.23' AND `position_z` REGEXP '60.9105' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2042.71' AND `position_y` REGEXP '1359.45' AND `position_z` REGEXP '61.7168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2042.71' AND `position_y` REGEXP '1359.45' AND `position_z` REGEXP '61.7168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2140.33' AND `position_y` REGEXP '1385.49' AND `position_z` REGEXP '70.0972' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2140.33' AND `position_y` REGEXP '1385.49' AND `position_z` REGEXP '70.0972' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2090.45' AND `position_y` REGEXP '1328.53' AND `position_z` REGEXP '60.529' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2090.45' AND `position_y` REGEXP '1328.53' AND `position_z` REGEXP '60.529' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2045.02' AND `position_y` REGEXP '1336.09' AND `position_z` REGEXP '68.6009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2045.02' AND `position_y` REGEXP '1336.09' AND `position_z` REGEXP '68.6009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1970.84' AND `position_y` REGEXP '1328.89' AND `position_z` REGEXP '77.7441' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1970.84' AND `position_y` REGEXP '1328.89' AND `position_z` REGEXP '77.7441' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1513;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1513', '3264', '0', '75', '1', '1', '0', '1', '1', '') /* Item(3264): Duskbat Wing, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1513', '4865', '0', '40', '0', '1', '0', '1', '1', '') /* Item(4865): Ruined Pelt, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1513', '7073', '0', '40', '0', '1', '0', '1', '1', '') /* Item(7073): Broken Fang, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1513', '7074', '0', '40', '0', '1', '0', '1', '1', '') /* Item(7074): Chipped Claw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1513', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('1513', '24073', '24073', '35', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('1513', '44007', '44007', '0.5', '0', '1', '1', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
3264  1  WAIHT_COMMON      1  0  Duskbat Wing
4865  0  GREY_POOR         0g 0s 5c  1  0  Ruined Pelt
7073  0  GREY_POOR         0g 0s 6c  1  0  Broken Fang
7074  0  GREY_POOR         0g 0s 4c  1  0  Chipped Claw
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
24073  3  BLUE_RARE         1g 90s 84c  85  60  Garrote-String Necklace
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
*/
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1513;
DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 1513;

