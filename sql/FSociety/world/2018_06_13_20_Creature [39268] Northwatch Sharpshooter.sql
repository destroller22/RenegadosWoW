/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Northwatch Sharpshooter';
SET @ENTRY 		:= '39268';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '31394',  '31395',  '0',  '0',   @CREATURE,  '',  'Northwatch Expeditionary Force',  '',  '',  '0',  '6',  '7',  '0',  '0',  '0',  '1077',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '32768',  '2048',  '0',  '4',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '39268',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '79721',  '79719',  '6660',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '7',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 39268 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('39268', '0', '0', '0', '0', '0', '100', '0', '0', '0', '2300', '3900', '', '11', '6660', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Northwatch Sharpshooter - In Combat - Cast \'Shoot\''), 
('39268', '0', '1', '0', '9', '0', '100', '0', '5', '30', '18000', '21000', '', '11', '79721', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Northwatch Sharpshooter - Within 5-30 Range - Cast \'Explosive Shot\''), 
('39268', '0', '2', '0', '9', '0', '100', '0', '5', '30', '35000', '45000', '', '11', '79719', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Northwatch Sharpshooter - Within 5-30 Range - Cast \'Pinpoint\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18493, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '1', '-252.485', '-5103.87', '41.3474', '0.532857', '300', '0', '0', '207', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19053, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-97.1545', '-5050.28', '19.4716', '6.10865', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19054, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-282.627', '-4973.59', '36.0282', '0.959931', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19055, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-98.3715', '-5072.26', '17.5161', '0.20944', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19057, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-191.252', '-4963.27', '21.1579', '1.23918', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19058, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-186.654', '-4990.81', '22.5794', '3.70562', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19059, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-178.299', '-5043.68', '19.9223', '4.44939', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19060, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-256.535', '-4970.52', '21.3538', '1.91986', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19061, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-243.844', '-5112.82', '25.2436', '2.68998', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18492, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-208.481', '-5101.45', '19.9665', '4.78171', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19063, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-220.75', '-4964.06', '21.474', '1.65806', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19064, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-118.774', '-5004', '20.8542', '0.715585', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18491, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-144.55', '-4978.93', '20.7826', '0.715585', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(19066, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-246.944', '-5090.63', '23.8106', '1.48353', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18490, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-266.743', '-5061.32', '20.886', '5.17949', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19074, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-152.586', '-5119.83', '20.6189', '4.3045', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19075, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-242.076', '-5111.7', '25.2436', '0.564291', '300', '3', '0', '120', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19077, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '31394', '0', '-298.811', '-4915.94', '40.7486', '6.0912', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-252.485' AND `position_y` REGEXP '-5103.87' AND `position_z` REGEXP '41.3474' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-252.485' AND `position_y` REGEXP '-5103.87' AND `position_z` REGEXP '41.3474' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-97.1545' AND `position_y` REGEXP '-5050.28' AND `position_z` REGEXP '19.4716' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-97.1545' AND `position_y` REGEXP '-5050.28' AND `position_z` REGEXP '19.4716' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-282.627' AND `position_y` REGEXP '-4973.59' AND `position_z` REGEXP '36.0282' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-282.627' AND `position_y` REGEXP '-4973.59' AND `position_z` REGEXP '36.0282' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-98.3715' AND `position_y` REGEXP '-5072.26' AND `position_z` REGEXP '17.5161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-98.3715' AND `position_y` REGEXP '-5072.26' AND `position_z` REGEXP '17.5161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-191.252' AND `position_y` REGEXP '-4963.27' AND `position_z` REGEXP '21.1579' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-191.252' AND `position_y` REGEXP '-4963.27' AND `position_z` REGEXP '21.1579' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-186.654' AND `position_y` REGEXP '-4990.81' AND `position_z` REGEXP '22.5794' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-186.654' AND `position_y` REGEXP '-4990.81' AND `position_z` REGEXP '22.5794' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-178.299' AND `position_y` REGEXP '-5043.68' AND `position_z` REGEXP '19.9223' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-178.299' AND `position_y` REGEXP '-5043.68' AND `position_z` REGEXP '19.9223' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-256.535' AND `position_y` REGEXP '-4970.52' AND `position_z` REGEXP '21.3538' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-256.535' AND `position_y` REGEXP '-4970.52' AND `position_z` REGEXP '21.3538' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-243.844' AND `position_y` REGEXP '-5112.82' AND `position_z` REGEXP '25.2436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-243.844' AND `position_y` REGEXP '-5112.82' AND `position_z` REGEXP '25.2436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-208.481' AND `position_y` REGEXP '-5101.45' AND `position_z` REGEXP '19.9665' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-208.481' AND `position_y` REGEXP '-5101.45' AND `position_z` REGEXP '19.9665' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.75' AND `position_y` REGEXP '-4964.06' AND `position_z` REGEXP '21.474' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.75' AND `position_y` REGEXP '-4964.06' AND `position_z` REGEXP '21.474' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-118.774' AND `position_y` REGEXP '-5004' AND `position_z` REGEXP '20.8542' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-118.774' AND `position_y` REGEXP '-5004' AND `position_z` REGEXP '20.8542' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-144.55' AND `position_y` REGEXP '-4978.93' AND `position_z` REGEXP '20.7826' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-144.55' AND `position_y` REGEXP '-4978.93' AND `position_z` REGEXP '20.7826' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-246.944' AND `position_y` REGEXP '-5090.63' AND `position_z` REGEXP '23.8106' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-246.944' AND `position_y` REGEXP '-5090.63' AND `position_z` REGEXP '23.8106' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-266.743' AND `position_y` REGEXP '-5061.32' AND `position_z` REGEXP '20.886' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-266.743' AND `position_y` REGEXP '-5061.32' AND `position_z` REGEXP '20.886' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-152.586' AND `position_y` REGEXP '-5119.83' AND `position_z` REGEXP '20.6189' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-152.586' AND `position_y` REGEXP '-5119.83' AND `position_z` REGEXP '20.6189' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-242.076' AND `position_y` REGEXP '-5111.7' AND `position_z` REGEXP '25.2436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-242.076' AND `position_y` REGEXP '-5111.7' AND `position_z` REGEXP '25.2436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-298.811' AND `position_y` REGEXP '-4915.94' AND `position_z` REGEXP '40.7486' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-298.811' AND `position_y` REGEXP '-4915.94' AND `position_z` REGEXP '40.7486' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 39268;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('39268', '118', '0', '1.6988', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '159', '0', '2.7747', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '727', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '766', '0', '0.3052', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39268', '767', '0', '0.1542', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39268', '768', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39268', '769', '0', '0.0063', '0', '1', '0', '1', '1', '') /* Item(769): Chunk of Boar Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '774', '0', '1.9914', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '805', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(805): Small Red Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '818', '0', '0.5946', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '828', '0', '0.1164', '0', '1', '0', '1', '1', '') /* Item(828): Small Blue Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '1411', '0', '0.6606', '0', '1', '0', '1', '1', '') /* Item(1411): Withered Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '1412', '0', '0.6764', '0', '1', '0', '1', '1', '') /* Item(1412): Crude Bastard Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '1413', '0', '0.8085', '0', '1', '0', '1', '1', '') /* Item(1413): Feeble Sword, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '1414', '0', '0.6103', '0', '1', '0', '1', '1', '') /* Item(1414): Cracked Sledge, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '1415', '0', '0.5914', '0', '1', '0', '1', '1', '') /* Item(1415): Carpenter's Mallet, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '1416', '0', '0.7047', '0', '1', '0', '1', '1', '') /* Item(1416): Rusty Hatchet, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '1417', '0', '0.604', '0', '1', '0', '1', '1', '') /* Item(1417): Beaten Battle Axe, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '1418', '0', '0.5914', '0', '1', '0', '1', '1', '') /* Item(1418): Worn Leather Belt, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '1419', '0', '0.4625', '0', '1', '0', '1', '1', '') /* Item(1419): Worn Leather Boots, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '1420', '0', '0.5851', '0', '1', '0', '1', '1', '') /* Item(1420): Worn Leather Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '1422', '0', '0.6166', '0', '1', '0', '1', '1', '') /* Item(1422): Worn Leather Gloves, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39268', '1423', '0', '0.5348', '0', '1', '0', '1', '1', '') /* Item(1423): Worn Leather Pants, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '1425', '0', '0.6544', '0', '1', '0', '1', '1', '') /* Item(1425): Worn Leather Vest, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '1427', '0', '0.453', '0', '1', '0', '1', '1', '') /* Item(1427): Patchwork Shoes, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39268', '1429', '0', '0.5757', '0', '1', '0', '1', '1', '') /* Item(1429): Patchwork Cloak, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39268', '1430', '0', '0.6166', '0', '1', '0', '1', '1', '') /* Item(1430): Patchwork Gloves, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '1431', '0', '0.4908', '0', '1', '0', '1', '1', '') /* Item(1431): Patchwork Pants, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '1433', '0', '0.5002', '0', '1', '0', '1', '1', '') /* Item(1433): Patchwork Armor, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '2070', '0', '6.402', '0', '1', '0', '1', '1', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '2138', '0', '0.6323', '0', '1', '0', '1', '1', '') /* Item(2138): Sharpened Letter Opener, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '2212', '0', '0.3083', '0', '1', '0', '1', '1', '') /* Item(2212): Cracked Buckler, ItemLevel: 6, RequiredLevel: 6, ItemQuality: GREY_POOR        */, 
('39268', '2213', '0', '0.3995', '0', '1', '0', '1', '1', '') /* Item(2213): Worn Large Shield, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '2408', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '2555', '0', '0.022', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '2589', '0', '76.3677', '0', '1', '0', '1', '1', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '2598', '0', '0.2297', '0', '1', '0', '1', '1', '') /* Item(2598): Pattern: Red Linen Robe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '2635', '0', '0.3398', '0', '1', '0', '1', '1', '') /* Item(2635): Loose Chain Belt, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '2642', '0', '0.4058', '0', '1', '0', '1', '1', '') /* Item(2642): Loose Chain Boots, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '2643', '0', '0.3775', '0', '1', '0', '1', '1', '') /* Item(2643): Loose Chain Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39268', '2645', '0', '0.4939', '0', '1', '0', '1', '1', '') /* Item(2645): Loose Chain Gloves, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '2646', '0', '0.3775', '0', '1', '0', '1', '1', '') /* Item(2646): Loose Chain Pants, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '2648', '0', '0.4216', '0', '1', '0', '1', '1', '') /* Item(2648): Loose Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('39268', '2674', '0', '0.0157', '0', '1', '0', '1', '1', '') /* Item(2674): Crawler Meat, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('39268', '2675', '0', '0.0378', '0', '1', '0', '1', '1', '') /* Item(2675): Crawler Claw, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('39268', '2773', '0', '0.5851', '0', '1', '0', '1', '1', '') /* Item(2773): Cracked Shortbow, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '2774', '0', '0.7267', '0', '1', '0', '1', '1', '') /* Item(2774): Rust-Covered Blunderbuss, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREY_POOR        */, 
('39268', '2924', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(2924): Crocolisk Meat, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('39268', '3189', '0', '0.1108', '0', '1', '0', '1', '1', '') /* Item(3189): Wood Chopper, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39268', '3190', '0', '0.1447', '0', '1', '0', '1', '1', '') /* Item(3190): Beatstick, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39268', '3370', '0', '0.5128', '0', '1', '0', '1', '1', '') /* Item(3370): Patchwork Belt, ItemLevel: 8, RequiredLevel: 8, ItemQuality: GREY_POOR        */, 
('39268', '3373', '0', '0.4625', '0', '1', '0', '1', '1', '') /* Item(3373): Patchwork Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREY_POOR        */, 
('39268', '3609', '0', '0.2108', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '3610', '0', '0.1956', '0', '1', '0', '1', '1', '') /* Item(3610): Plans: Gemmed Copper Gauntlets, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '4496', '0', '0.1447', '0', '1', '0', '1', '1', '') /* Item(4496): Small Brown Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '4536', '0', '23.5294', '0', '1', '0', '1', '1', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '4540', '0', '8.8235', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '4560', '0', '0.1982', '0', '1', '0', '1', '1', '') /* Item(4560): Fine Scimitar, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39268', '4562', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(4562): Severing Axe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '4563', '0', '1.3691', '0', '1', '0', '1', '1', '') /* Item(4563): Billy Club, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39268', '4565', '0', '0.2234', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39268', '4859', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(4859): Burning Blade Medallion, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '4862', '0', '0.0472', '0', '1', '0', '1', '1', '') /* Item(4862): Scorpid Worker Tail, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '4874', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(4874): Clean Fishbones, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39268', '4888', '0', '0.1762', '0', '1', '0', '1', '1', '') /* Item(4888): Crawler Mucus, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '4905', '0', '0.0094', '0', '1', '0', '1', '1', '') /* Item(4905): Sarkoth's Mangled Claw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '5363', '0', '19.1176', '0', '1', '0', '1', '1', '') /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39268', '5466', '0', '0.0849', '0', '1', '0', '1', '1', '') /* Item(5466): Scorpid Stinger, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39268', '5523', '0', '40', '0', '1', '0', '1', '1', '') /* Item(5523): Small Barnacled Clam, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('39268', '5571', '0', '0.1258', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '5572', '0', '0.1667', '0', '1', '0', '1', '1', '') /* Item(5572): Small Green Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('39268', '6150', '0', '35.2941', '0', '1', '0', '1', '1', '') /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39268', '6271', '0', '0.2608', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '6342', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(6342): Formula: Enchant Chest - Minor Mana, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '7288', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(7288): Pattern: Rugged Leather Pants, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '8177', '0', '0.2831', '0', '1', '0', '1', '1', '') /* Item(8177): Practice Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39268', '8178', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(8178): Training Sword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('39268', '8179', '0', '0.1604', '0', '1', '0', '1', '1', '') /* Item(8179): Cadet's Bow, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('39268', '8181', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(8181): Hunting Rifle, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('39268', '8182', '0', '0.2737', '0', '1', '0', '1', '1', '') /* Item(8182): Pellet Rifle, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('39268', '15007', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(15007): Primal Cape, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('39268', '20482', '0', '0.0063', '0', '1', '0', '1', '1', '') /* Item(20482): Arcane Sliver, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '47831', '0', '0.0063', '0', '1', '0', '1', '1', '') /* Item(47831): Shattered Crystal Pendant, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39268', '50018', '0', '0.0094', '1', '1', '0', '1', '1', '') /* Item(50018): Naj'tess' Orb of Corruption, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '50222', '0', '0.0818', '1', '1', '0', '1', '1', '') /* Item(50222): Wildmane Cat Pelt, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '52080', '0', '0.1101', '1', '1', '0', '1', '1', '') /* Item(52080): Fresh Crawler Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '60615', '0', '0.0031', '1', '1', '0', '1', '1', '') /* Item(60615): Durotar Crocolisk Tooth, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('39268', '62514', '0', '0.1164', '0', '1', '0', '1', '1', '') /* Item(62514): Cracked Pincer, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('39268', '62525', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(62525): Cloudy Crocolisk Eye, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


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
2924  1  WAIHT_COMMON      0g 0s 16c  14  0  Crocolisk Meat
3189  1  WAIHT_COMMON      0g 0s 99c  8  3  Wood Chopper
3190  1  WAIHT_COMMON      0g 0s 99c  8  3  Beatstick
3370  0  GREY_POOR         0g 0s 17c  8  3  Patchwork Belt
3373  0  GREY_POOR         0g 0s 25c  9  4  Patchwork Bracers
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
3610  2  GREEN_UNCOMMON    0g 0s 50c  15  0  Plans: Gemmed Copper Gauntlets
4496  1  WAIHT_COMMON      0g 1s 25c  5  0  Small Brown Pouch
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4560  1  WAIHT_COMMON      0g 0s 37c  6  1  Fine Scimitar
4562  2  GREEN_UNCOMMON    0g 2s 98c  10  5  Severing Axe
4563  1  WAIHT_COMMON      0g 1s 10c  9  4  Billy Club
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4859  1  WAIHT_COMMON      1  0  Burning Blade Medallion
4862  1  WAIHT_COMMON      1  0  Scorpid Worker Tail
4874  0  GREY_POOR         0g 0s 46c  1  0  Clean Fishbones
4888  1  WAIHT_COMMON      1  0  Crawler Mucus
4905  1  WAIHT_COMMON      1  0  Sarkoth's Mangled Claw
5363  0  GREY_POOR         0g 0s 20c  1  0  Folded Handkerchief
5466  1  WAIHT_COMMON      0g 0s 8c  8  0  Scorpid Stinger
5523  1  WAIHT_COMMON      0g 0s 15c  10  0  Small Barnacled Clam
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
5572  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Green Pouch
6150  0  GREY_POOR         0g 0s 22c  1  0  A Frayed Knot
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6342  2  GREEN_UNCOMMON    0g 0s 75c  12  0  Formula: Enchant Chest - Minor Mana
7288  2  GREEN_UNCOMMON    0g 1s 25c  11  0  Pattern: Rugged Leather Pants
8177  1  WAIHT_COMMON      0g 0s 71c  7  2  Practice Sword
8178  2  GREEN_UNCOMMON    0g 3s 6c  10  5  Training Sword
8179  1  WAIHT_COMMON      0g 0s 48c  6  1  Cadet's Bow
8181  1  WAIHT_COMMON      0g 1s 32c  9  4  Hunting Rifle
8182  1  WAIHT_COMMON      0g 0s 68c  7  2  Pellet Rifle
15007  1  WAIHT_COMMON      0g 0s 42c  8  3  Primal Cape
20482  1  WAIHT_COMMON      1  0  Arcane Sliver
47831  0  GREY_POOR         0g 0s 20c  1  0  Shattered Crystal Pendant
50018  1  WAIHT_COMMON      1  0  Naj'tess' Orb of Corruption
50222  1  WAIHT_COMMON      1  0  Wildmane Cat Pelt
52080  1  WAIHT_COMMON      1  0  Fresh Crawler Meat
60615  1  WAIHT_COMMON      1  1  Durotar Crocolisk Tooth
62514  0  GREY_POOR         0g 0s 1c  1  0  Cracked Pincer
62525  0  GREY_POOR         0g 0s 1c  1  0  Cloudy Crocolisk Eye
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 39268;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('39268', '1', '2552', '0', '0', '0', '0', '2552', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 39268;

