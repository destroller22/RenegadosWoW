/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Kobold Miner';
SET @ENTRY 		:= '40';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '373',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '6',  '7',  '0',  '0',  '0',  '26',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '262144',  '2048',  '0',  '4',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '40',  '40',  '0',  '0',  '21',  '0',  '0',  '0',  '0',  '6016',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '7',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'You no take candle!', '12', '0', '50', '0', '0', '0', '0', '0', 'combat Say'), 
(@ENTRY, '0', '1', 'Yiieeeee! Me run!', '12', '0', '50', '0', '0', '0', '0', '0', 'combat Say'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 40 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('40', '0', '0', '0', '4', '0', '25', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Say on Aggro'), 
('40', '0', '1', '0', '0', '0', '100', '0', '4000', '14000', '38000', '42000', '', '11', '6016', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Pierce Armor'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(178837, @ENTRY, '0', '12', '18', '1', '0', '0', '0', '-1', '0', '0', '-9317.02', '-484.668', '70.8168', '4.1241', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178836, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '373', '0', '-9100.41', '-599.343', '57.3644', '4.58375', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178835, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '373', '0', '-9062.04', '-600.067', '59.7016', '0.526735', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178828, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '373', '0', '-9196.61', '-673.118', '64.3563', '5.81204', '300', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178164, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9282.95', '-551.513', '65.0843', '2.95658', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178817, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9325.41', '-583.982', '70.412', '0.299484', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178764, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9295.62', '-613.915', '67.6645', '3.15218', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178692, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9245.12', '-586.095', '65.2722', '5.1323', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(179889, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9220.44', '-589.55', '65.6827', '4.48774', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(179493, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9316.45', '-651.297', '66.285', '2.85106', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(179484, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9252.49', '-651.754', '64.1924', '5.21626', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178834, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9172.45', '-599.435', '62.9456', '1.58314', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178826, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9222.41', '-679.848', '62.89', '1.35439', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178823, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9162.38', '-571.12', '58.1276', '2.26764', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178820, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9142.05', '-599.373', '57.9908', '6.20777', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178818, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9118.71', '-586.508', '57.6494', '4.24753', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178814, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9116.28', '-567.079', '59.0878', '3.23949', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178809, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9085.4', '-578.94', '62.2335', '4.72955', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178808, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9087.97', '-555.558', '60.8513', '3.64315', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178802, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9093.78', '-586.824', '58.087', '5.50963', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178798, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9089.64', '-589.076', '58.4532', '2.79133', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178797, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9252.6', '-696.354', '64.015', '4.8405', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178773, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9292.23', '-684.268', '64.1417', '0.869802', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178771, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9351.97', '-686.203', '67.1157', '5.12304', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178765, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '0', '0', '-9315.42', '-717.106', '67.4402', '1.18288', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178763, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9759.31', '149.232', '22.3871', '1.43739', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178757, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9737.85', '135.755', '19.1896', '4.68287', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178691, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9825.41', '121.249', '4.26962', '4.32138', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178685, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9815.19', '151.576', '7.78553', '5.89087', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178674, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9797.23', '131.518', '24.4681', '2.55844', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178655, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9806.51', '113.667', '24.1003', '4.2578', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178646, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9799.54', '103.327', '24.7824', '6.03547', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178644, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9802.74', '114.543', '5.64188', '2.91588', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178643, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9788.12', '117.141', '5.29568', '5.8834', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178642, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9813.03', '109.614', '6.14393', '5.3941', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178641, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9743.12', '95.9555', '12.6398', '5.63043', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178640, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9782.2', '138.792', '26.2346', '2.72896', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178639, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9793.21', '90.2537', '28.858', '4.54519', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178501, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9786.56', '97.0227', '28.447', '0.276344', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178500, @ENTRY, '0', '12', '57', '1', '0', '0', '0', '-1', '0', '0', '-9752.21', '107.233', '25.8482', '3.25286', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178493, @ENTRY, '0', '12', '5176', '1', '0', '0', '0', '-1', '0', '0', '-9770.64', '155.547', '22.4221', '5.77704', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(178413, @ENTRY, '0', '12', '5176', '1', '0', '0', '0', '-1', '0', '0', '-9794.49', '150.141', '16.7358', '1.44862', '120', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9317.02' AND `position_y` REGEXP '-484.668' AND `position_z` REGEXP '70.8168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9317.02' AND `position_y` REGEXP '-484.668' AND `position_z` REGEXP '70.8168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9100.41' AND `position_y` REGEXP '-599.343' AND `position_z` REGEXP '57.3644' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9100.41' AND `position_y` REGEXP '-599.343' AND `position_z` REGEXP '57.3644' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9062.04' AND `position_y` REGEXP '-600.067' AND `position_z` REGEXP '59.7016' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9062.04' AND `position_y` REGEXP '-600.067' AND `position_z` REGEXP '59.7016' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9196.61' AND `position_y` REGEXP '-673.118' AND `position_z` REGEXP '64.3563' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9196.61' AND `position_y` REGEXP '-673.118' AND `position_z` REGEXP '64.3563' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9282.95' AND `position_y` REGEXP '-551.513' AND `position_z` REGEXP '65.0843' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9282.95' AND `position_y` REGEXP '-551.513' AND `position_z` REGEXP '65.0843' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9325.41' AND `position_y` REGEXP '-583.982' AND `position_z` REGEXP '70.412' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9325.41' AND `position_y` REGEXP '-583.982' AND `position_z` REGEXP '70.412' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9295.62' AND `position_y` REGEXP '-613.915' AND `position_z` REGEXP '67.6645' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9295.62' AND `position_y` REGEXP '-613.915' AND `position_z` REGEXP '67.6645' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9245.12' AND `position_y` REGEXP '-586.095' AND `position_z` REGEXP '65.2722' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9245.12' AND `position_y` REGEXP '-586.095' AND `position_z` REGEXP '65.2722' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9220.44' AND `position_y` REGEXP '-589.55' AND `position_z` REGEXP '65.6827' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9220.44' AND `position_y` REGEXP '-589.55' AND `position_z` REGEXP '65.6827' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9316.45' AND `position_y` REGEXP '-651.297' AND `position_z` REGEXP '66.285' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9316.45' AND `position_y` REGEXP '-651.297' AND `position_z` REGEXP '66.285' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9252.49' AND `position_y` REGEXP '-651.754' AND `position_z` REGEXP '64.1924' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9252.49' AND `position_y` REGEXP '-651.754' AND `position_z` REGEXP '64.1924' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9172.45' AND `position_y` REGEXP '-599.435' AND `position_z` REGEXP '62.9456' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9172.45' AND `position_y` REGEXP '-599.435' AND `position_z` REGEXP '62.9456' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9222.41' AND `position_y` REGEXP '-679.848' AND `position_z` REGEXP '62.89' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9222.41' AND `position_y` REGEXP '-679.848' AND `position_z` REGEXP '62.89' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9162.38' AND `position_y` REGEXP '-571.12' AND `position_z` REGEXP '58.1276' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9162.38' AND `position_y` REGEXP '-571.12' AND `position_z` REGEXP '58.1276' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9142.05' AND `position_y` REGEXP '-599.373' AND `position_z` REGEXP '57.9908' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9142.05' AND `position_y` REGEXP '-599.373' AND `position_z` REGEXP '57.9908' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9118.71' AND `position_y` REGEXP '-586.508' AND `position_z` REGEXP '57.6494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9118.71' AND `position_y` REGEXP '-586.508' AND `position_z` REGEXP '57.6494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9116.28' AND `position_y` REGEXP '-567.079' AND `position_z` REGEXP '59.0878' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9116.28' AND `position_y` REGEXP '-567.079' AND `position_z` REGEXP '59.0878' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9085.4' AND `position_y` REGEXP '-578.94' AND `position_z` REGEXP '62.2335' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9085.4' AND `position_y` REGEXP '-578.94' AND `position_z` REGEXP '62.2335' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9087.97' AND `position_y` REGEXP '-555.558' AND `position_z` REGEXP '60.8513' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9087.97' AND `position_y` REGEXP '-555.558' AND `position_z` REGEXP '60.8513' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9093.78' AND `position_y` REGEXP '-586.824' AND `position_z` REGEXP '58.087' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9093.78' AND `position_y` REGEXP '-586.824' AND `position_z` REGEXP '58.087' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9089.64' AND `position_y` REGEXP '-589.076' AND `position_z` REGEXP '58.4532' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9089.64' AND `position_y` REGEXP '-589.076' AND `position_z` REGEXP '58.4532' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9252.6' AND `position_y` REGEXP '-696.354' AND `position_z` REGEXP '64.015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9252.6' AND `position_y` REGEXP '-696.354' AND `position_z` REGEXP '64.015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9292.23' AND `position_y` REGEXP '-684.268' AND `position_z` REGEXP '64.1417' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9292.23' AND `position_y` REGEXP '-684.268' AND `position_z` REGEXP '64.1417' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9351.97' AND `position_y` REGEXP '-686.203' AND `position_z` REGEXP '67.1157' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9351.97' AND `position_y` REGEXP '-686.203' AND `position_z` REGEXP '67.1157' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9315.42' AND `position_y` REGEXP '-717.106' AND `position_z` REGEXP '67.4402' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9315.42' AND `position_y` REGEXP '-717.106' AND `position_z` REGEXP '67.4402' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9759.31' AND `position_y` REGEXP '149.232' AND `position_z` REGEXP '22.3871' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9759.31' AND `position_y` REGEXP '149.232' AND `position_z` REGEXP '22.3871' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9737.85' AND `position_y` REGEXP '135.755' AND `position_z` REGEXP '19.1896' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9737.85' AND `position_y` REGEXP '135.755' AND `position_z` REGEXP '19.1896' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9825.41' AND `position_y` REGEXP '121.249' AND `position_z` REGEXP '4.26962' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9825.41' AND `position_y` REGEXP '121.249' AND `position_z` REGEXP '4.26962' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9815.19' AND `position_y` REGEXP '151.576' AND `position_z` REGEXP '7.78553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9815.19' AND `position_y` REGEXP '151.576' AND `position_z` REGEXP '7.78553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9797.23' AND `position_y` REGEXP '131.518' AND `position_z` REGEXP '24.4681' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9797.23' AND `position_y` REGEXP '131.518' AND `position_z` REGEXP '24.4681' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9806.51' AND `position_y` REGEXP '113.667' AND `position_z` REGEXP '24.1003' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9806.51' AND `position_y` REGEXP '113.667' AND `position_z` REGEXP '24.1003' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9799.54' AND `position_y` REGEXP '103.327' AND `position_z` REGEXP '24.7824' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9799.54' AND `position_y` REGEXP '103.327' AND `position_z` REGEXP '24.7824' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9802.74' AND `position_y` REGEXP '114.543' AND `position_z` REGEXP '5.64188' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9802.74' AND `position_y` REGEXP '114.543' AND `position_z` REGEXP '5.64188' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9788.12' AND `position_y` REGEXP '117.141' AND `position_z` REGEXP '5.29568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9788.12' AND `position_y` REGEXP '117.141' AND `position_z` REGEXP '5.29568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9813.03' AND `position_y` REGEXP '109.614' AND `position_z` REGEXP '6.14393' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9813.03' AND `position_y` REGEXP '109.614' AND `position_z` REGEXP '6.14393' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9743.12' AND `position_y` REGEXP '95.9555' AND `position_z` REGEXP '12.6398' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9743.12' AND `position_y` REGEXP '95.9555' AND `position_z` REGEXP '12.6398' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9782.2' AND `position_y` REGEXP '138.792' AND `position_z` REGEXP '26.2346' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9782.2' AND `position_y` REGEXP '138.792' AND `position_z` REGEXP '26.2346' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9793.21' AND `position_y` REGEXP '90.2537' AND `position_z` REGEXP '28.858' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9793.21' AND `position_y` REGEXP '90.2537' AND `position_z` REGEXP '28.858' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9786.56' AND `position_y` REGEXP '97.0227' AND `position_z` REGEXP '28.447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9786.56' AND `position_y` REGEXP '97.0227' AND `position_z` REGEXP '28.447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9752.21' AND `position_y` REGEXP '107.233' AND `position_z` REGEXP '25.8482' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9752.21' AND `position_y` REGEXP '107.233' AND `position_z` REGEXP '25.8482' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9770.64' AND `position_y` REGEXP '155.547' AND `position_z` REGEXP '22.4221' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9770.64' AND `position_y` REGEXP '155.547' AND `position_z` REGEXP '22.4221' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9794.49' AND `position_y` REGEXP '150.141' AND `position_z` REGEXP '16.7358' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9794.49' AND `position_y` REGEXP '150.141' AND `position_z` REGEXP '16.7358' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 40;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('40', '117', '0', '0.0031', '0', '1', '0', '1', '2', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '118', '0', '2.535', '0', '1', '0', '1', '3', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('40', '159', '0', '4.3844', '0', '1', '0', '1', '4', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '727', '727', '0.07', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('40', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('40', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('40', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('40', '772', '0', '35', '1', '1', '0', '1', '1', '') /* Item(772): Large Candle, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '773', '0', '35', '1', '1', '0', '1', '1', '') /* Item(773): Gold Dust, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '774', '0', '0.8686', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('40', '818', '0', '0.2785', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('40', '1389', '0', '4.54', '0', '1', '0', '1', '1', '') /* Item(1389): Kobold Mining Mallet, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('40', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('40', '2070', '0', '0.0013', '0', '1', '0', '1', '2', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '2406', '2406', '0.266', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('40', '2589', '0', '32.8881', '0', '1', '0', '1', '4', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('40', '4536', '0', '8.7219', '0', '1', '0', '1', '3', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '4540', '0', '0.0006', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '4565', '4565', '0.3', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('40', '4604', '0', '0.0031', '0', '1', '0', '1', '1', '') /* Item(4604): Forest Mushroom Cap, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('40', '49748', '0', '0.0011', '1', '1', '0', '1', '1', '') /* Item(49748): Ragged Wolf Hide, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '57122', '0', '0.0011', '1', '1', '0', '1', '1', '') /* Item(57122): James Clark's Head, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '57987', '0', '0.0043', '1', '1', '0', '1', '1', '') /* Item(57987): Recovered Possession, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '58361', '0', '0.0715', '1', '1', '0', '1', '1', '') /* Item(58361): Blackrock Orc Weapon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('40', '60401', '0', '0.0085', '1', '1', '0', '1', '1', '') /* Item(60401): Tender Boar Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '117', '0', '8.3333', '0', '1', '0', '1', '1', '')  /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '118', '0', '3.8194', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '774', '0', '3.125', '0', '1', '0', '1', '1', '')  /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
(@ENTRY, '5364', '0', '13.8889', '0', '1', '0', '1', '1', '')  /* Item(5364): Dry Salt Lick, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
772  1  WAIHT_COMMON      1  0  Large Candle
773  1  WAIHT_COMMON      1  0  Gold Dust
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
1389  1  WAIHT_COMMON      0g 0s 58c  7  2  Kobold Mining Mallet
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4604  1  WAIHT_COMMON      0g 0s 1c  1  1  Forest Mushroom Cap
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
49748  1  WAIHT_COMMON      1  1  Ragged Wolf Hide
57122  1  WAIHT_COMMON      1  1  James Clark's Head
57987  1  WAIHT_COMMON      1  1  Recovered Possession
58361  1  WAIHT_COMMON      1  1  Blackrock Orc Weapon
60401  1  WAIHT_COMMON      1  0  Tender Boar Meat
*/
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
5364  0  GREY_POOR         0g 0s 27c  1  0  Dry Salt Lick
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 40;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('40', '1', '1910', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 40;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('40', '4', '20', '-1', '0', '25996');



