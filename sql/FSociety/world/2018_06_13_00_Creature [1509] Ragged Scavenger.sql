/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Ragged Scavenger';
SET @ENTRY 		:= '1509';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '604',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '3',  '4',  '0',  '0',  '0',  '32',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '1',  '0',  '0',  '0',  '1',  '1',  '0',  '1509',  '0',  '0',  '0',  '0',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1509 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18545, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1935.44', '1471.47', '77.4683', '3.10154', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18546, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '1970.39', '1470.54', '79.6642', '6.24703', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18547, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2069.36', '1478.9', '66.1093', '2.27813', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18548, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2141.55', '1475.66', '72.1779', '6.11249', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18549, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2103.94', '1450.48', '62.2873', '3.37692', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18550, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2054.6', '1420.32', '64.3458', '3.78919', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18551, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2001.85', '1376.24', '62.1572', '5.92565', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18552, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2126.44', '1359.61', '62.0289', '5.77297', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18553, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2116.74', '1408.04', '64.3692', '1.88452', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18554, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2153.63', '1411.33', '70.9611', '4.35376', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18555, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2149.7', '1335.49', '56.4567', '1.83165', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18556, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2064.25', '1355.04', '60.3407', '5.26654', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18557, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1931.8', '1327.8', '78.2568', '3.49145', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18558, @ENTRY, '0', '6454', '154', '1', '0', '0', '0', '-1', '0', '0', '2011.08', '1331.38', '75.7275', '0.0268052', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18559, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1901.66', '1313.35', '88.2901', '0.561187', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1935.44' AND `position_y` REGEXP '1471.47' AND `position_z` REGEXP '77.4683' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1935.44' AND `position_y` REGEXP '1471.47' AND `position_z` REGEXP '77.4683' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1970.39' AND `position_y` REGEXP '1470.54' AND `position_z` REGEXP '79.6642' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1970.39' AND `position_y` REGEXP '1470.54' AND `position_z` REGEXP '79.6642' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2069.36' AND `position_y` REGEXP '1478.9' AND `position_z` REGEXP '66.1093' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2069.36' AND `position_y` REGEXP '1478.9' AND `position_z` REGEXP '66.1093' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2141.55' AND `position_y` REGEXP '1475.66' AND `position_z` REGEXP '72.1779' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2141.55' AND `position_y` REGEXP '1475.66' AND `position_z` REGEXP '72.1779' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2103.94' AND `position_y` REGEXP '1450.48' AND `position_z` REGEXP '62.2873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2103.94' AND `position_y` REGEXP '1450.48' AND `position_z` REGEXP '62.2873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2054.6' AND `position_y` REGEXP '1420.32' AND `position_z` REGEXP '64.3458' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2054.6' AND `position_y` REGEXP '1420.32' AND `position_z` REGEXP '64.3458' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2001.85' AND `position_y` REGEXP '1376.24' AND `position_z` REGEXP '62.1572' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2001.85' AND `position_y` REGEXP '1376.24' AND `position_z` REGEXP '62.1572' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2126.44' AND `position_y` REGEXP '1359.61' AND `position_z` REGEXP '62.0289' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2126.44' AND `position_y` REGEXP '1359.61' AND `position_z` REGEXP '62.0289' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2116.74' AND `position_y` REGEXP '1408.04' AND `position_z` REGEXP '64.3692' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2116.74' AND `position_y` REGEXP '1408.04' AND `position_z` REGEXP '64.3692' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2153.63' AND `position_y` REGEXP '1411.33' AND `position_z` REGEXP '70.9611' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2153.63' AND `position_y` REGEXP '1411.33' AND `position_z` REGEXP '70.9611' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2149.7' AND `position_y` REGEXP '1335.49' AND `position_z` REGEXP '56.4567' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2149.7' AND `position_y` REGEXP '1335.49' AND `position_z` REGEXP '56.4567' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2064.25' AND `position_y` REGEXP '1355.04' AND `position_z` REGEXP '60.3407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2064.25' AND `position_y` REGEXP '1355.04' AND `position_z` REGEXP '60.3407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1931.8' AND `position_y` REGEXP '1327.8' AND `position_z` REGEXP '78.2568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1931.8' AND `position_y` REGEXP '1327.8' AND `position_z` REGEXP '78.2568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2011.08' AND `position_y` REGEXP '1331.38' AND `position_z` REGEXP '75.7275' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2011.08' AND `position_y` REGEXP '1331.38' AND `position_z` REGEXP '75.7275' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1901.66' AND `position_y` REGEXP '1313.35' AND `position_z` REGEXP '88.2901' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1901.66' AND `position_y` REGEXP '1313.35' AND `position_z` REGEXP '88.2901' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1509;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1509', '3265', '0', '75', '1', '1', '0', '1', '1', '') /* Item(3265): Scavenger Paw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1509', '4865', '0', '20', '0', '1', '0', '1', '1', '') /* Item(4865): Ruined Pelt, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1509', '7073', '0', '20', '0', '1', '0', '1', '2', '') /* Item(7073): Broken Fang, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1509', '7074', '0', '20', '0', '1', '0', '1', '2', '') /* Item(7074): Chipped Claw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1509', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('1509', '24073', '24073', '30', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('1509', '44007', '44007', '0.5', '0', '1', '1', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
3265  1  WAIHT_COMMON      1  0  Scavenger Paw
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1509;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1509;

