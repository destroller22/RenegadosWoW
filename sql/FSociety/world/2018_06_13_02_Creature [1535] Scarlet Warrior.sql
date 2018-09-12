
SET @CREATURE  	:= 'Scarlet Warrior';
SET @ENTRY 		:= '1535';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '2471',  '2482',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '6',  '7',  '0',  '0',  '0',  '67',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '1535',  '1535',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '5',  '12',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', '12', '0', '100', '0', '0', '0', '2628', '0', 'Scarlet1'), 
(@ENTRY, '0', '1', 'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.', '12', '0', '100', '0', '0', '0', '2626', '0', 'Scarlet1'), 
(@ENTRY, '0', '2', 'The Light condemns all who harbor evil. Now you will die!', '12', '0', '100', '0', '0', '0', '2627', '0', 'Scarlet1'), 
(@ENTRY, '0', '3', 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', '12', '0', '100', '0', '0', '0', '2625', '0', 'Scarlet1'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1535 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1535', '0', '0', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet - On Aggro - talk'), 
('1535', '0', '1', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '11', '57846', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Scarlet6 - IC - CAST'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18764, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2359.11', '1681.8', '35.3688', '2.76979', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18765, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2406.9', '1660.92', '30.7278', '2.94111', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18766, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2358.24', '1659.3', '34.5092', '1.17848', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18767, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2305.2', '1655.21', '43.66', '2.98174', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18768, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2296.54', '1611.96', '41.6665', '5.6385', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18769, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2342.99', '1607.94', '35.751', '5.48033', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18770, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2348.96', '1604.36', '35.7505', '4.79965', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18771, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2382.15', '1636.82', '33.4178', '5.48033', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18772, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2386.42', '1637.17', '33.4178', '4.46804', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18773, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2337.5', '1620.83', '35.8348', '0.231335', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18774, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2457.48', '1592.54', '41.9211', '2.86234', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18775, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2439.16', '1599.61', '50.9602', '5.86431', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18776, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2454.14', '1588.04', '72.2392', '5.41052', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18777, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2409.25', '1583.67', '32.9478', '4.27606', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18778, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2430.09', '1577.92', '37.2447', '3.80482', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18779, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2405.7', '1592.94', '33.6022', '1.23817', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18780, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2437.37', '1629.03', '34.8928', '2.22739', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18781, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2482.51', '1581.62', '36.8688', '3.57731', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18782, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2382.88', '1555.17', '31.5095', '1.92972', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18783, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2440.64', '1538.95', '35.7231', '1.62316', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18784, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2442.24', '1541.69', '35.7635', '3.57792', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18785, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2476.71', '1522.19', '33.7794', '3.03074', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18786, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2320.62', '1554.89', '34.4052', '0.920851', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18787, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2295', '1578.93', '39.3214', '1.78178', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18788, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2388.66', '1496.1', '33.8615', '2.69757', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18789, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2405.4', '1512.64', '33.2615', '4.29987', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18790, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2336.35', '1508.44', '34.1793', '2.35655', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18791, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2283.71', '1540.81', '42.1885', '3.92006', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18792, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2321.49', '1490.56', '34.0998', '6.27217', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18793, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2350.92', '1473.72', '33.5656', '3.94826', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18794, @ENTRY, '0', '85', '4917', '1', '0', '0', '0', '-1', '0', '1', '2381.05', '1484.23', '34.4004', '1.78513', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18795, @ENTRY, '0', '85', '156', '1', '0', '0', '0', '-1', '0', '1', '2394.86', '1392.56', '34.4428', '0.178952', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18796, @ENTRY, '0', '85', '156', '1', '0', '0', '0', '-1', '0', '1', '2395.89', '1344.35', '34.403', '4.05294', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2359.11' AND `position_y` REGEXP '1681.8' AND `position_z` REGEXP '35.3688' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2359.11' AND `position_y` REGEXP '1681.8' AND `position_z` REGEXP '35.3688' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2406.9' AND `position_y` REGEXP '1660.92' AND `position_z` REGEXP '30.7278' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2406.9' AND `position_y` REGEXP '1660.92' AND `position_z` REGEXP '30.7278' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2358.24' AND `position_y` REGEXP '1659.3' AND `position_z` REGEXP '34.5092' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2358.24' AND `position_y` REGEXP '1659.3' AND `position_z` REGEXP '34.5092' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2305.2' AND `position_y` REGEXP '1655.21' AND `position_z` REGEXP '43.66' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2305.2' AND `position_y` REGEXP '1655.21' AND `position_z` REGEXP '43.66' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2296.54' AND `position_y` REGEXP '1611.96' AND `position_z` REGEXP '41.6665' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2296.54' AND `position_y` REGEXP '1611.96' AND `position_z` REGEXP '41.6665' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2342.99' AND `position_y` REGEXP '1607.94' AND `position_z` REGEXP '35.751' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '3', '1', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2342.99' AND `position_y` REGEXP '1607.94' AND `position_z` REGEXP '35.751' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2348.96' AND `position_y` REGEXP '1604.36' AND `position_z` REGEXP '35.7505' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '8', '1', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2348.96' AND `position_y` REGEXP '1604.36' AND `position_z` REGEXP '35.7505' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.15' AND `position_y` REGEXP '1636.82' AND `position_z` REGEXP '33.4178' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '3', '1', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.15' AND `position_y` REGEXP '1636.82' AND `position_z` REGEXP '33.4178' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2386.42' AND `position_y` REGEXP '1637.17' AND `position_z` REGEXP '33.4178' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '8', '1', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2386.42' AND `position_y` REGEXP '1637.17' AND `position_z` REGEXP '33.4178' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2337.5' AND `position_y` REGEXP '1620.83' AND `position_z` REGEXP '35.8348' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2337.5' AND `position_y` REGEXP '1620.83' AND `position_z` REGEXP '35.8348' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2457.48' AND `position_y` REGEXP '1592.54' AND `position_z` REGEXP '41.9211' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2457.48' AND `position_y` REGEXP '1592.54' AND `position_z` REGEXP '41.9211' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2439.16' AND `position_y` REGEXP '1599.61' AND `position_z` REGEXP '50.9602' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2439.16' AND `position_y` REGEXP '1599.61' AND `position_z` REGEXP '50.9602' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2454.14' AND `position_y` REGEXP '1588.04' AND `position_z` REGEXP '72.2392' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2454.14' AND `position_y` REGEXP '1588.04' AND `position_z` REGEXP '72.2392' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2409.25' AND `position_y` REGEXP '1583.67' AND `position_z` REGEXP '32.9478' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2409.25' AND `position_y` REGEXP '1583.67' AND `position_z` REGEXP '32.9478' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2430.09' AND `position_y` REGEXP '1577.92' AND `position_z` REGEXP '37.2447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2430.09' AND `position_y` REGEXP '1577.92' AND `position_z` REGEXP '37.2447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2405.7' AND `position_y` REGEXP '1592.94' AND `position_z` REGEXP '33.6022' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2405.7' AND `position_y` REGEXP '1592.94' AND `position_z` REGEXP '33.6022' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2437.37' AND `position_y` REGEXP '1629.03' AND `position_z` REGEXP '34.8928' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2437.37' AND `position_y` REGEXP '1629.03' AND `position_z` REGEXP '34.8928' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2482.51' AND `position_y` REGEXP '1581.62' AND `position_z` REGEXP '36.8688' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2482.51' AND `position_y` REGEXP '1581.62' AND `position_z` REGEXP '36.8688' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.88' AND `position_y` REGEXP '1555.17' AND `position_z` REGEXP '31.5095' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.88' AND `position_y` REGEXP '1555.17' AND `position_z` REGEXP '31.5095' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2440.64' AND `position_y` REGEXP '1538.95' AND `position_z` REGEXP '35.7231' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '418', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2440.64' AND `position_y` REGEXP '1538.95' AND `position_z` REGEXP '35.7231' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2442.24' AND `position_y` REGEXP '1541.69' AND `position_z` REGEXP '35.7635' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '418', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2442.24' AND `position_y` REGEXP '1541.69' AND `position_z` REGEXP '35.7635' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2476.71' AND `position_y` REGEXP '1522.19' AND `position_z` REGEXP '33.7794' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2476.71' AND `position_y` REGEXP '1522.19' AND `position_z` REGEXP '33.7794' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2320.62' AND `position_y` REGEXP '1554.89' AND `position_z` REGEXP '34.4052' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2320.62' AND `position_y` REGEXP '1554.89' AND `position_z` REGEXP '34.4052' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2295' AND `position_y` REGEXP '1578.93' AND `position_z` REGEXP '39.3214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2295' AND `position_y` REGEXP '1578.93' AND `position_z` REGEXP '39.3214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2388.66' AND `position_y` REGEXP '1496.1' AND `position_z` REGEXP '33.8615' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2388.66' AND `position_y` REGEXP '1496.1' AND `position_z` REGEXP '33.8615' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2405.4' AND `position_y` REGEXP '1512.64' AND `position_z` REGEXP '33.2615' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2405.4' AND `position_y` REGEXP '1512.64' AND `position_z` REGEXP '33.2615' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2336.35' AND `position_y` REGEXP '1508.44' AND `position_z` REGEXP '34.1793' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2336.35' AND `position_y` REGEXP '1508.44' AND `position_z` REGEXP '34.1793' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2283.71' AND `position_y` REGEXP '1540.81' AND `position_z` REGEXP '42.1885' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2283.71' AND `position_y` REGEXP '1540.81' AND `position_z` REGEXP '42.1885' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2321.49' AND `position_y` REGEXP '1490.56' AND `position_z` REGEXP '34.0998' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2321.49' AND `position_y` REGEXP '1490.56' AND `position_z` REGEXP '34.0998' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2350.92' AND `position_y` REGEXP '1473.72' AND `position_z` REGEXP '33.5656' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2350.92' AND `position_y` REGEXP '1473.72' AND `position_z` REGEXP '33.5656' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2381.05' AND `position_y` REGEXP '1484.23' AND `position_z` REGEXP '34.4004' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2381.05' AND `position_y` REGEXP '1484.23' AND `position_z` REGEXP '34.4004' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2394.86' AND `position_y` REGEXP '1392.56' AND `position_z` REGEXP '34.4428' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2394.86' AND `position_y` REGEXP '1392.56' AND `position_z` REGEXP '34.4428' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2395.89' AND `position_y` REGEXP '1344.35' AND `position_z` REGEXP '34.403' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2395.89' AND `position_y` REGEXP '1344.35' AND `position_z` REGEXP '34.403' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1535;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1535', '118', '0', '3', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('1535', '159', '0', '4', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1535', '2589', '0', '33', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('1535', '2875', '0', '40', '1', '1', '0', '1', '1', '') /* Item(2875): Scarlet Insignia Ring, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1535', '4604', '0', '10', '0', '1', '0', '1', '1', '') /* Item(4604): Forest Mushroom Cap, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1535', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('1535', '24073', '24073', '30', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('1535', '24100', '24100', '5', '0', '1', '1', '1', '1', '') /* Item(24100): Warder's Dagger, ItemLevel: 2, RequiredLevel: 2, ItemQuality: WAIHT_COMMON     */, 
('1535', '24720', '24720', '1', '0', '1', '1', '1', '1', '') /* Item(24720): Dreghood Gloves, ItemLevel: 90, RequiredLevel: 90, ItemQuality: GREEN_UNCOMMON   */, 
('1535', '24730', '24730', '1', '0', '1', '1', '1', '1', '') /* Item(24730): Dementia Trousers, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('1535', '44007', '44007', '0.5', '0', '1', '1', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */, 
('1535', '52079', '0', '75', '0', '1', '0', '1', '1', '') /* Item(52079): A Scarlet Letter, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '118', '0', '1.7045', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '2070', '0', '10.2273', '0', '1', '0', '1', '1', '')  /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '4536', '0', '1.1364', '0', '1', '0', '1', '1', '')  /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '4540', '0', '2.8409', '0', '1', '0', '1', '1', '')  /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5363', '0', '2.2727', '0', '1', '0', '1', '1', '')  /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
(@ENTRY, '6150', '0', '5.6818', '0', '1', '0', '1', '1', '')  /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2875  1  WAIHT_COMMON      1  0  Scarlet Insignia Ring
4604  1  WAIHT_COMMON      0g 0s 1c  1  1  Forest Mushroom Cap
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
24073  3  BLUE_RARE         1g 90s 84c  85  60  Garrote-String Necklace
24100  1  WAIHT_COMMON      0g 0s 7c  2  1  Warder's Dagger
24720  2  GREEN_UNCOMMON    1g 86s 33c  90  60  Dreghood Gloves
24730  2  GREEN_UNCOMMON    3g 93s 6c  93  61  Dementia Trousers
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
52079  1  WAIHT_COMMON      5  5  A Scarlet Letter
*/
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
5363  0  GREY_POOR         0g 0s 20c  1  0  Folded Handkerchief
6150  0  GREY_POOR         0g 0s 22c  1  0  A Frayed Knot
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1535;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1535', '1', '1899', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1535;

