/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Northwatch Marine';
SET @ENTRY 		:= '39267';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '31396',  '31397',  '0',  '0',   @CREATURE,  '',  'Northwatch Expeditionary Force',  '',  '',  '0',  '6',  '7',  '0',  '0',  '0',  '1077',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '32768',  '2048',  '0',  '12',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '39267',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '9080',  '79726',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '6',  '6',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 39267 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('39267', '0', '0', '0', '0', '0', '100', '0', '2000', '3000', '18000', '19000', '', '11', '9080', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Hamstring'), 
('39267', '0', '1', '0', '0', '0', '100', '0', '7000', '9000', '22000', '27000', '', '11', '79726', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Ticking Time Bomb'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(19096, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '1', '-240.107', '-5100.79', '41.3472', '2.12988', '300', '0', '0', '207', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19097, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-245.971', '-5144.4', '20.7219', '5.12334', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19098, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-321.75', '-5148.68', '17.0465', '3.60933', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19100, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-254.441', '-5011.25', '22.1309', '0.478088', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19101, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-296.875', '-5080.21', '20.8171', '3.97601', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19102, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-285.335', '-5109.27', '20.1569', '0.687235', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19103, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-147.829', '-5032.77', '21.9742', '5.40555', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19104, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-226.99', '-5096.65', '49.4084', '4.62512', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19105, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-214.304', '-5018.77', '21.2622', '3.79642', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19106, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-236.069', '-5112.9', '34.0653', '3.06905', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19107, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-254.758', '-5093.08', '41.3472', '6.05687', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19108, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-151.394', '-5083.58', '21.385', '0.424745', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19109, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31396', '0', '-182.66', '-5112.19', '21.4602', '0.501386', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19110, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '31396', '0', '-126.561', '-5202.98', '1.12439', '2.194', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19111, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '31396', '0', '-170.613', '-5201.01', '0.923308', '0.796692', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19112, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '31396', '0', '-220.031', '-5194.85', '2.50698', '4.05938', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19113, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '31396', '0', '-286.978', '-5178.65', '10.127', '3.49478', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-240.107' AND `position_y` REGEXP '-5100.79' AND `position_z` REGEXP '41.3472' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-240.107' AND `position_y` REGEXP '-5100.79' AND `position_z` REGEXP '41.3472' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-245.971' AND `position_y` REGEXP '-5144.4' AND `position_z` REGEXP '20.7219' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-245.971' AND `position_y` REGEXP '-5144.4' AND `position_z` REGEXP '20.7219' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-321.75' AND `position_y` REGEXP '-5148.68' AND `position_z` REGEXP '17.0465' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-321.75' AND `position_y` REGEXP '-5148.68' AND `position_z` REGEXP '17.0465' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-254.441' AND `position_y` REGEXP '-5011.25' AND `position_z` REGEXP '22.1309' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-254.441' AND `position_y` REGEXP '-5011.25' AND `position_z` REGEXP '22.1309' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-296.875' AND `position_y` REGEXP '-5080.21' AND `position_z` REGEXP '20.8171' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-296.875' AND `position_y` REGEXP '-5080.21' AND `position_z` REGEXP '20.8171' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-285.335' AND `position_y` REGEXP '-5109.27' AND `position_z` REGEXP '20.1569' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-285.335' AND `position_y` REGEXP '-5109.27' AND `position_z` REGEXP '20.1569' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-147.829' AND `position_y` REGEXP '-5032.77' AND `position_z` REGEXP '21.9742' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-147.829' AND `position_y` REGEXP '-5032.77' AND `position_z` REGEXP '21.9742' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-226.99' AND `position_y` REGEXP '-5096.65' AND `position_z` REGEXP '49.4084' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-226.99' AND `position_y` REGEXP '-5096.65' AND `position_z` REGEXP '49.4084' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-214.304' AND `position_y` REGEXP '-5018.77' AND `position_z` REGEXP '21.2622' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-214.304' AND `position_y` REGEXP '-5018.77' AND `position_z` REGEXP '21.2622' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-236.069' AND `position_y` REGEXP '-5112.9' AND `position_z` REGEXP '34.0653' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-236.069' AND `position_y` REGEXP '-5112.9' AND `position_z` REGEXP '34.0653' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-254.758' AND `position_y` REGEXP '-5093.08' AND `position_z` REGEXP '41.3472' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '378', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-254.758' AND `position_y` REGEXP '-5093.08' AND `position_z` REGEXP '41.3472' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-151.394' AND `position_y` REGEXP '-5083.58' AND `position_z` REGEXP '21.385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-151.394' AND `position_y` REGEXP '-5083.58' AND `position_z` REGEXP '21.385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-182.66' AND `position_y` REGEXP '-5112.19' AND `position_z` REGEXP '21.4602' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-182.66' AND `position_y` REGEXP '-5112.19' AND `position_z` REGEXP '21.4602' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-126.561' AND `position_y` REGEXP '-5202.98' AND `position_z` REGEXP '1.12439' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-126.561' AND `position_y` REGEXP '-5202.98' AND `position_z` REGEXP '1.12439' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-170.613' AND `position_y` REGEXP '-5201.01' AND `position_z` REGEXP '0.923308' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-170.613' AND `position_y` REGEXP '-5201.01' AND `position_z` REGEXP '0.923308' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.031' AND `position_y` REGEXP '-5194.85' AND `position_z` REGEXP '2.50698' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.031' AND `position_y` REGEXP '-5194.85' AND `position_z` REGEXP '2.50698' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-286.978' AND `position_y` REGEXP '-5178.65' AND `position_z` REGEXP '10.127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-286.978' AND `position_y` REGEXP '-5178.65' AND `position_z` REGEXP '10.127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 39267;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('39267', '118', '0', '1.7857', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '159', '0', '3.026', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '727', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '766', '0', '0.2675', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39267', '767', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39267', '768', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39267', '769', '0', '0.0035', '0', '1', '0', '1', '1', '') /* Item(769): Chunk of Boar Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '774', '0', '2.0115', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '805', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(805): Small Red Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '818', '0', '0.6775', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '828', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(828): Small Blue Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '1411', '0', '0.7956', '0', '1', '0', '1', '1', '') /* Item(1411): Withered Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '1412', '0', '0.7365', '0', '1', '0', '1', '1', '') /* Item(1412): Crude Bastard Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '1413', '0', '0.6288', '0', '1', '0', '1', '1', '') /* Item(1413): Feeble Sword, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '1414', '0', '0.7469', '0', '1', '0', '1', '1', '') /* Item(1414): Cracked Sledge, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '1415', '0', '0.5038', '0', '1', '0', '1', '1', '') /* Item(1415): Carpenter's Mallet, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '1416', '0', '0.5976', '0', '1', '0', '1', '1', '') /* Item(1416): Rusty Hatchet, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '1417', '0', '0.7608', '0', '1', '0', '1', '1', '') /* Item(1417): Beaten Battle Axe, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '1418', '0', '0.4655', '0', '1', '0', '1', '1', '') /* Item(1418): Worn Leather Belt, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '1419', '0', '0.4864', '0', '1', '0', '1', '1', '') /* Item(1419): Worn Leather Boots, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '1420', '0', '0.5385', '0', '1', '0', '1', '1', '') /* Item(1420): Worn Leather Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '1422', '0', '0.5072', '0', '1', '0', '1', '1', '') /* Item(1422): Worn Leather Gloves, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39267', '1423', '0', '0.5663', '0', '1', '0', '1', '1', '') /* Item(1423): Worn Leather Pants, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '1425', '0', '0.476', '0', '1', '0', '1', '1', '') /* Item(1425): Worn Leather Vest, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '1427', '0', '0.4412', '0', '1', '0', '1', '1', '') /* Item(1427): Patchwork Shoes, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39267', '1429', '0', '0.5524', '0', '1', '0', '1', '1', '') /* Item(1429): Patchwork Cloak, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39267', '1430', '0', '0.5246', '0', '1', '0', '1', '1', '') /* Item(1430): Patchwork Gloves, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '1431', '0', '0.3961', '0', '1', '0', '1', '1', '') /* Item(1431): Patchwork Pants, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '1433', '0', '0.601', '0', '1', '0', '1', '1', '') /* Item(1433): Patchwork Armor, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '2070', '0', '6.7225', '0', '1', '0', '1', '1', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '2138', '0', '0.7921', '0', '1', '0', '1', '1', '') /* Item(2138): Sharpened Letter Opener, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '2212', '0', '0.3995', '0', '1', '0', '1', '1', '') /* Item(2212): Cracked Buckler, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39267', '2213', '0', '0.4343', '0', '1', '0', '1', '1', '') /* Item(2213): Worn Large Shield, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '2406', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '2407', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '2408', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '2555', '0', '0.0347', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '2589', '0', '75.7956', '0', '1', '0', '1', '1', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '2598', '0', '0.1772', '0', '1', '0', '1', '1', '') /* Item(2598): Pattern: Red Linen Robe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '2635', '0', '0.3544', '0', '1', '0', '1', '1', '') /* Item(2635): Loose Chain Belt, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '2642', '0', '0.5524', '0', '1', '0', '1', '1', '') /* Item(2642): Loose Chain Boots, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '2643', '0', '0.5211', '0', '1', '0', '1', '1', '') /* Item(2643): Loose Chain Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39267', '2645', '0', '0.3613', '0', '1', '0', '1', '1', '') /* Item(2645): Loose Chain Gloves, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '2646', '0', '0.469', '0', '1', '0', '1', '1', '') /* Item(2646): Loose Chain Pants, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '2648', '0', '0.3092', '0', '1', '0', '1', '1', '') /* Item(2648): Loose Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39267', '2674', '0', '0.0035', '0', '1', '0', '1', '1', '') /* Item(2674): Crawler Meat, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('39267', '2675', '0', '0.0591', '0', '1', '0', '1', '1', '') /* Item(2675): Crawler Claw, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('39267', '2773', '0', '0.5871', '0', '1', '0', '1', '1', '') /* Item(2773): Cracked Shortbow, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '2774', '0', '0.6601', '0', '1', '0', '1', '1', '') /* Item(2774): Rust-Covered Blunderbuss, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39267', '3189', '0', '0.1216', '0', '1', '0', '1', '1', '') /* Item(3189): Wood Chopper, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39267', '3190', '0', '0.1216', '0', '1', '0', '1', '1', '') /* Item(3190): Beatstick, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39267', '3370', '0', '0.5281', '0', '1', '0', '1', '1', '') /* Item(3370): Patchwork Belt, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39267', '3373', '0', '0.4794', '0', '1', '0', '1', '1', '') /* Item(3373): Patchwork Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39267', '3609', '0', '0.1459', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '4496', '0', '0.1112', '0', '1', '0', '1', '1', '') /* Item(4496): Small Brown Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '4536', '0', '10.2041', '0', '1', '0', '1', '1', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '4540', '0', '18.3673', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '4560', '0', '0.2536', '0', '1', '0', '1', '1', '') /* Item(4560): Fine Scimitar, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39267', '4562', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(4562): Severing Axe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '4563', '0', '1.2581', '0', '1', '0', '1', '1', '') /* Item(4563): Billy Club, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39267', '4565', '0', '0.1668', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39267', '4813', '0', '0.0069', '0', '1', '0', '1', '1', '') /* Item(4813): Small Leather Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39267', '4862', '0', '0.0486', '0', '1', '0', '1', '1', '') /* Item(4862): Scorpid Worker Tail, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '4888', '0', '0.066', '0', '1', '0', '1', '1', '') /* Item(4888): Crawler Mucus, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '4905', '0', '0.0104', '0', '1', '0', '1', '1', '') /* Item(4905): Sarkoth's Mangled Claw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '5363', '0', '20.4082', '0', '1', '0', '1', '1', '') /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39267', '5466', '0', '0.0834', '0', '1', '0', '1', '1', '') /* Item(5466): Scorpid Stinger, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39267', '5523', '0', '40', '0', '1', '0', '1', '1', '') /* Item(5523): Small Barnacled Clam, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('39267', '5571', '0', '0.1424', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '5572', '0', '0.132', '0', '1', '0', '1', '1', '') /* Item(5572): Small Green Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '6150', '0', '28.5714', '0', '1', '0', '1', '1', '') /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39267', '6271', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '6303', '0', '0.0035', '0', '1', '0', '1', '1', '') /* Item(6303): Raw Slitherskin Mackerel, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39267', '8177', '0', '0.4551', '0', '1', '0', '1', '1', '') /* Item(8177): Practice Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39267', '8178', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(8178): Training Sword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39267', '8179', '0', '0.1563', '0', '1', '0', '1', '1', '') /* Item(8179): Cadet's Bow, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39267', '8181', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(8181): Hunting Rifle, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39267', '8182', '0', '0.2814', '0', '1', '0', '1', '1', '') /* Item(8182): Pellet Rifle, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39267', '21808', '0', '0.0139', '0', '1', '0', '1', '1', '') /* Item(21808): Arcane Core, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '50018', '0', '0.0174', '1', '1', '0', '1', '1', '') /* Item(50018): Naj'tess' Orb of Corruption, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '50222', '0', '0.0452', '1', '1', '0', '1', '1', '') /* Item(50222): Wildmane Cat Pelt, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '52080', '0', '0.073', '1', '1', '0', '1', '1', '') /* Item(52080): Fresh Crawler Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39267', '56968', '0', '0.0313', '0', '1', '0', '1', '1', '') /* Item(56968): Bug Juice, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39267', '62514', '0', '0.073', '0', '1', '0', '1', '1', '') /* Item(62514): Cracked Pincer, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
769  1  WAIHT_COMMON      0g 0s 3c  5  0  Chunk of Boar Meat
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
805  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Red Pouch
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
828  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Blue Pouch
1411  0  GREY_POOR         0g 0s 68c  8  3  Withered Staff
1412  0  GREY_POOR         0g 0s 49c  7  2  Crude Bastard Sword
1413  0  GREY_POOR         0g 0s 55c  8  3  Feeble Sword
1414  0  GREY_POOR         0g 0s 97c  9  4  Cracked Sledge
1415  0  GREY_POOR         0g 0s 72c  9  4  Carpenter's Mallet
1416  0  GREY_POOR         0g 0s 72c  9  4  Rusty Hatchet
1417  0  GREY_POOR         0g 0s 65c  8  3  Beaten Battle Axe
1418  0  GREY_POOR         0g 0s 13c  7  2  Worn Leather Belt
1419  0  GREY_POOR         0g 0s 27c  8  3  Worn Leather Boots
1420  0  GREY_POOR         0g 0s 26c  9  4  Worn Leather Bracers
1422  0  GREY_POOR         0g 0s 8c  6  1  Worn Leather Gloves
1423  0  GREY_POOR         0g 0s 26c  7  2  Worn Leather Pants
1425  0  GREY_POOR         0g 0s 52c  9  4  Worn Leather Vest
1427  0  GREY_POOR         0g 0s 51c  10  5  Patchwork Shoes
1429  0  GREY_POOR         0g 0s 13c  6  1  Patchwork Cloak
1430  0  GREY_POOR         0g 0s 13c  7  2  Patchwork Gloves
1431  0  GREY_POOR         0g 0s 35c  8  3  Patchwork Pants
1433  0  GREY_POOR         0g 0s 25c  7  2  Patchwork Armor
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2138  0  GREY_POOR         0g 0s 38c  7  2  Sharpened Letter Opener
2212  0  GREY_POOR         0g 0s 16c  6  1  Cracked Buckler
2213  0  GREY_POOR         0g 0s 24c  7  2  Worn Large Shield
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2407  2  GREEN_UNCOMMON    0g 1s 62c  13  0  Pattern: White Leather Jerkin
2408  2  GREEN_UNCOMMON    0g 1s 25c  15  0  Pattern: Fine Leather Gloves
2555  2  GREEN_UNCOMMON    0g 0s 40c  15  0  Recipe: Swiftness Potion
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2598  2  GREEN_UNCOMMON    0g 0s 30c  10  0  Pattern: Red Linen Robe
2635  0  GREY_POOR         0g 0s 19c  8  3  Loose Chain Belt
2642  0  GREY_POOR         0g 0s 38c  9  4  Loose Chain Boots
2643  0  GREY_POOR         0g 0s 33c  10  5  Loose Chain Bracers
2645  0  GREY_POOR         0g 0s 13c  7  2  Loose Chain Gloves
2646  0  GREY_POOR         0g 0s 37c  8  3  Loose Chain Pants
2648  0  GREY_POOR         0g 0s 68c  10  5  Loose Chain Vest
2674  1  WAIHT_COMMON      0g 0s 12c  13  0  Crawler Meat
2675  1  WAIHT_COMMON      0g 0s 11c  13  0  Crawler Claw
2773  0  GREY_POOR         0g 0s 65c  8  3  Cracked Shortbow
2774  0  GREY_POOR         0g 0s 46c  7  2  Rust-Covered Blunderbuss
3189  1  WAIHT_COMMON      0g 0s 99c  8  3  Wood Chopper
3190  1  WAIHT_COMMON      0g 0s 99c  8  3  Beatstick
3370  0  GREY_POOR         0g 0s 17c  8  3  Patchwork Belt
3373  0  GREY_POOR         0g 0s 25c  9  4  Patchwork Bracers
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
4496  1  WAIHT_COMMON      0g 1s 25c  5  0  Small Brown Pouch
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4560  1  WAIHT_COMMON      0g 0s 37c  6  1  Fine Scimitar
4562  2  GREEN_UNCOMMON    0g 2s 98c  10  5  Severing Axe
4563  1  WAIHT_COMMON      0g 1s 10c  9  4  Billy Club
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4813  0  GREY_POOR         0g 0s 33c  1  0  Small Leather Collar
4862  1  WAIHT_COMMON      1  0  Scorpid Worker Tail
4888  1  WAIHT_COMMON      1  0  Crawler Mucus
4905  1  WAIHT_COMMON      1  0  Sarkoth's Mangled Claw
5363  0  GREY_POOR         0g 0s 20c  1  0  Folded Handkerchief
5466  1  WAIHT_COMMON      0g 0s 8c  8  0  Scorpid Stinger
5523  1  WAIHT_COMMON      0g 0s 15c  10  0  Small Barnacled Clam
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
5572  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Green Pouch
6150  0  GREY_POOR         0g 0s 22c  1  0  A Frayed Knot
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6303  1  WAIHT_COMMON      0g 0s 1c  5  1  Raw Slitherskin Mackerel
8177  1  WAIHT_COMMON      0g 0s 71c  7  2  Practice Sword
8178  2  GREEN_UNCOMMON    0g 3s 6c  10  5  Training Sword
8179  1  WAIHT_COMMON      0g 0s 48c  6  1  Cadet's Bow
8181  1  WAIHT_COMMON      0g 1s 32c  9  4  Hunting Rifle
8182  1  WAIHT_COMMON      0g 0s 68c  7  2  Pellet Rifle
21808  1  WAIHT_COMMON      1  0  Arcane Core
50018  1  WAIHT_COMMON      1  0  Naj'tess' Orb of Corruption
50222  1  WAIHT_COMMON      1  0  Wildmane Cat Pelt
52080  1  WAIHT_COMMON      1  0  Fresh Crawler Meat
56968  0  GREY_POOR         0g 0s 1c  1  0  Bug Juice
62514  0  GREY_POOR         0g 0s 1c  1  0  Cracked Pincer
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 39267;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('39267', '1', '1897', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 39267;

