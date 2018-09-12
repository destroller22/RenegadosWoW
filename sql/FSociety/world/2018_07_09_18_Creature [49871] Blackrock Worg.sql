/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Blackrock Worg';
SET @ENTRY 		:= '49871';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '40147',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '1',  '1',  '0',  '0',  '0',  '7',  '0',  '1',  '1.14286',  '1.2',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '0',  '2048',  '0',  '4',  '1',  '0',  '0',  '0',  '1',  '1',  '0',  '49871',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '17253',  '0',  '2649',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 49871 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1354, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8880.98', '-282.746', '79.7713', '3.36848', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1355, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8820.83', '-111.979', '82.2256', '3.38613', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1357, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8795.59', '-90.0156', '85.7428', '4.8634', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1358, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8820.48', '-72.0021', '88.1565', '1.69304', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1359, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8957.64', '-259.94', '75.2868', '3.89191', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1360, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8908.19', '-288.135', '77.1988', '0.160971', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1361, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8882.16', '-247.757', '81.3053', '2.13866', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1362, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8946.81', '-45.7433', '91.7167', '-3.08645', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1363, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8911.64', '-246.797', '80.9993', '0.729977', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1364, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8852.55', '-286.795', '78.7948', '0.680746', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1365, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8831.32', '-286.287', '79.0083', '2.3374', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1366, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-9079.94', '-176.647', '74.5505', '3.46334', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1367, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8847.23', '-307.637', '76.2481', '3.20048', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1368, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8838.84', '-59.8413', '86.0852', '0.196791', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1369, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-9002.89', '-184.789', '77.1647', '-0.336789', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1370, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-9014.38', '-189.489', '76.7536', '0.678203', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1371, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8794.57', '-151.484', '83.6602', '5.88284', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1372, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8810.83', '-55.5067', '91.6915', '0.335752', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1373, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8923.19', '-67.2802', '89.3481', '5.23541', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1374, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8879.49', '-52.4429', '86.311', '4.73631', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1375, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8986.93', '-244.996', '73.6336', '1.99999', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1376, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8856.32', '-108.271', '80.7226', '0.0319623', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1377, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8861.92', '-81.4045', '83.4565', '4.96494', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1378, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8829.21', '-96.6224', '85.0256', '0.964106', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1379, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8998.49', '-232.622', '71.772', '4.52052', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1380, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-9017.78', '-145.125', '83.9009', '3.12597', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1381, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-9035.42', '-160.013', '80.1572', '3.48754', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1382, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8995.87', '-203.208', '74.1448', '1.11975', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1383, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '22475', '0', '-8927.71', '-39.7675', '91.7082', '3.26712', '300', '5', '0', '42', '100', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8880.98' AND `position_y` REGEXP '-282.746' AND `position_z` REGEXP '79.7713' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8880.98' AND `position_y` REGEXP '-282.746' AND `position_z` REGEXP '79.7713' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8820.83' AND `position_y` REGEXP '-111.979' AND `position_z` REGEXP '82.2256' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8820.83' AND `position_y` REGEXP '-111.979' AND `position_z` REGEXP '82.2256' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8795.59' AND `position_y` REGEXP '-90.0156' AND `position_z` REGEXP '85.7428' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8795.59' AND `position_y` REGEXP '-90.0156' AND `position_z` REGEXP '85.7428' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8820.48' AND `position_y` REGEXP '-72.0021' AND `position_z` REGEXP '88.1565' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8820.48' AND `position_y` REGEXP '-72.0021' AND `position_z` REGEXP '88.1565' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8957.64' AND `position_y` REGEXP '-259.94' AND `position_z` REGEXP '75.2868' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8957.64' AND `position_y` REGEXP '-259.94' AND `position_z` REGEXP '75.2868' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8908.19' AND `position_y` REGEXP '-288.135' AND `position_z` REGEXP '77.1988' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8908.19' AND `position_y` REGEXP '-288.135' AND `position_z` REGEXP '77.1988' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8882.16' AND `position_y` REGEXP '-247.757' AND `position_z` REGEXP '81.3053' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8882.16' AND `position_y` REGEXP '-247.757' AND `position_z` REGEXP '81.3053' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8946.81' AND `position_y` REGEXP '-45.7433' AND `position_z` REGEXP '91.7167' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8946.81' AND `position_y` REGEXP '-45.7433' AND `position_z` REGEXP '91.7167' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8911.64' AND `position_y` REGEXP '-246.797' AND `position_z` REGEXP '80.9993' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8911.64' AND `position_y` REGEXP '-246.797' AND `position_z` REGEXP '80.9993' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8852.55' AND `position_y` REGEXP '-286.795' AND `position_z` REGEXP '78.7948' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8852.55' AND `position_y` REGEXP '-286.795' AND `position_z` REGEXP '78.7948' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8831.32' AND `position_y` REGEXP '-286.287' AND `position_z` REGEXP '79.0083' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8831.32' AND `position_y` REGEXP '-286.287' AND `position_z` REGEXP '79.0083' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9079.94' AND `position_y` REGEXP '-176.647' AND `position_z` REGEXP '74.5505' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9079.94' AND `position_y` REGEXP '-176.647' AND `position_z` REGEXP '74.5505' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8847.23' AND `position_y` REGEXP '-307.637' AND `position_z` REGEXP '76.2481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8847.23' AND `position_y` REGEXP '-307.637' AND `position_z` REGEXP '76.2481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8838.84' AND `position_y` REGEXP '-59.8413' AND `position_z` REGEXP '86.0852' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8838.84' AND `position_y` REGEXP '-59.8413' AND `position_z` REGEXP '86.0852' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9002.89' AND `position_y` REGEXP '-184.789' AND `position_z` REGEXP '77.1647' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9002.89' AND `position_y` REGEXP '-184.789' AND `position_z` REGEXP '77.1647' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9014.38' AND `position_y` REGEXP '-189.489' AND `position_z` REGEXP '76.7536' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9014.38' AND `position_y` REGEXP '-189.489' AND `position_z` REGEXP '76.7536' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8794.57' AND `position_y` REGEXP '-151.484' AND `position_z` REGEXP '83.6602' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8794.57' AND `position_y` REGEXP '-151.484' AND `position_z` REGEXP '83.6602' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8810.83' AND `position_y` REGEXP '-55.5067' AND `position_z` REGEXP '91.6915' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8810.83' AND `position_y` REGEXP '-55.5067' AND `position_z` REGEXP '91.6915' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8923.19' AND `position_y` REGEXP '-67.2802' AND `position_z` REGEXP '89.3481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8923.19' AND `position_y` REGEXP '-67.2802' AND `position_z` REGEXP '89.3481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8879.49' AND `position_y` REGEXP '-52.4429' AND `position_z` REGEXP '86.311' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8879.49' AND `position_y` REGEXP '-52.4429' AND `position_z` REGEXP '86.311' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8986.93' AND `position_y` REGEXP '-244.996' AND `position_z` REGEXP '73.6336' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8986.93' AND `position_y` REGEXP '-244.996' AND `position_z` REGEXP '73.6336' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8856.32' AND `position_y` REGEXP '-108.271' AND `position_z` REGEXP '80.7226' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8856.32' AND `position_y` REGEXP '-108.271' AND `position_z` REGEXP '80.7226' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8861.92' AND `position_y` REGEXP '-81.4045' AND `position_z` REGEXP '83.4565' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8861.92' AND `position_y` REGEXP '-81.4045' AND `position_z` REGEXP '83.4565' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8829.21' AND `position_y` REGEXP '-96.6224' AND `position_z` REGEXP '85.0256' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8829.21' AND `position_y` REGEXP '-96.6224' AND `position_z` REGEXP '85.0256' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8998.49' AND `position_y` REGEXP '-232.622' AND `position_z` REGEXP '71.772' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8998.49' AND `position_y` REGEXP '-232.622' AND `position_z` REGEXP '71.772' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9017.78' AND `position_y` REGEXP '-145.125' AND `position_z` REGEXP '83.9009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9017.78' AND `position_y` REGEXP '-145.125' AND `position_z` REGEXP '83.9009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9035.42' AND `position_y` REGEXP '-160.013' AND `position_z` REGEXP '80.1572' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9035.42' AND `position_y` REGEXP '-160.013' AND `position_z` REGEXP '80.1572' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8995.87' AND `position_y` REGEXP '-203.208' AND `position_z` REGEXP '74.1448' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8995.87' AND `position_y` REGEXP '-203.208' AND `position_z` REGEXP '74.1448' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8927.71' AND `position_y` REGEXP '-39.7675' AND `position_z` REGEXP '91.7082' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8927.71' AND `position_y` REGEXP '-39.7675' AND `position_z` REGEXP '91.7082' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 49871;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('49871', '805', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(805): Small Red Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '828', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(828): Small Blue Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '1468', '0', '0.002', '0', '1', '0', '1', '1', '') /* Item(1468): Murloc Fin, ItemLevel: 16, RequiredLevel: 16, ItemQuality: WAIHT_COMMON     */, 
('49871', '2672', '0', '0.001', '0', '1', '0', '1', '1', '') /* Item(2672): Stringy Wolf Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '3300', '0', '23.9292', '0', '1', '0', '1', '1', '') /* Item(3300): Rabbit's Foot, ItemLevel: 5, RequiredLevel: 5, ItemQuality: GREY_POOR        */, 
('49871', '4496', '0', '0.1099', '0', '1', '0', '1', '1', '') /* Item(4496): Small Brown Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '5571', '0', '0.1119', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '5572', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(5572): Small Green Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('49871', '20482', '0', '0.001', '0', '1', '0', '1', '1', '') /* Item(20482): Arcane Sliver, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('49871', '20845', '0', '0.001', '0', '1', '0', '1', '1', '') /* Item(20845): Torn Wyrm Scale, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('49871', '22934', '0', '0.001', '0', '1', '0', '1', '1', '') /* Item(22934): Lasher Sample, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('49871', '58361', '0', '0.0051', '1', '1', '0', '1', '1', '') /* Item(58361): Blackrock Orc Weapon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('49871', '62328', '0', '76.0708', '0', '1', '0', '1', '1', '') /* Item(62328): Shed Fur, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
805  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Red Pouch
828  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Blue Pouch
1468  1  WAIHT_COMMON      0g 0s 28c  16  0  Murloc Fin
2672  1  WAIHT_COMMON      0g 0s 4c  5  0  Stringy Wolf Meat
3300  0  GREY_POOR         0g 0s 9c  5  0  Rabbit's Foot
4496  1  WAIHT_COMMON      0g 1s 25c  5  0  Small Brown Pouch
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
5572  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Green Pouch
20482  1  WAIHT_COMMON      1  0  Arcane Sliver
20845  0  GREY_POOR         0g 0s 4c  1  0  Torn Wyrm Scale
22934  1  WAIHT_COMMON      1  0  Lasher Sample
58361  1  WAIHT_COMMON      1  1  Blackrock Orc Weapon
62328  0  GREY_POOR         0g 0s 1c  1  0  Shed Fur
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 49871;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 49871;

