/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Decrepit Darkhound';
SET @ENTRY 		:= '1547';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '9021',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '6',  '0',  '0',  '0',  '38',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '52',  '0',  '0',  '0',  '1',  '1',  '0',  '1547',  '0',  '1547',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1547 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1547', '0', '0', '0', '0', '0', '100', '0', '1000', '1000', '6000', '6000', '', '11', '82797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Decrepit - IC - CAST'), 
('1547', '0', '1', '0', '0', '0', '100', '0', '3000', '3000', '4000', '4000', '', '11', '17253', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Decrepit - IC - CAST'), 
('1547', '0', '2', '0', '4', '0', '100', '1', '0', '0', '0', '0', '', '80', '154700', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Decrepit - On aggro - ActionList'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18575, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2455.96', '1389.11', '27.6637', '1.88519', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18576, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2453.91', '1285.67', '32.6414', '1.91437', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18577, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2512.36', '1281.15', '42.4372', '3.56799', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18497, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2610.37', '1310.51', '44.7306', '3.1334', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18579, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2597.92', '1267.83', '57.2471', '4.71239', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18580, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2650.61', '1277.33', '53.1434', '3.19659', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18581, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2557.14', '1278.19', '48.3847', '2.32485', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18582, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2625.65', '1258.46', '58.9594', '1.46025', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18583, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2638.98', '1219.38', '67.6878', '5.17298', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18584, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2515.24', '1198.46', '66.1413', '5.05558', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18585, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2504.63', '1228.71', '55.4222', '1.32013', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18586, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2586.97', '1209.9', '69.0015', '5.62171', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18587, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2442.23', '1190.63', '49.2972', '2.78022', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18588, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2461.83', '1218.6', '52.3686', '1.66172', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18589, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2435.66', '1202.19', '45.9575', '6.19839', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18590, @ENTRY, '0', '85', '811', '1', '0', '0', '0', '-1', '0', '0', '2147.96', '1172.47', '41.5214', '1.62548', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18591, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2546.19', '1156.35', '73.3818', '1.42848', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18592, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2617.15', '1114.86', '93.6497', '4.46365', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18593, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2374.33', '1109.97', '44.9659', '6.05975', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18594, @ENTRY, '0', '85', '811', '1', '0', '0', '0', '-1', '0', '0', '2148.43', '1066.47', '34.804', '3.29454', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18595, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2357.4', '774.556', '39.8034', '0.392716', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18596, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2426.04', '754.045', '43.3671', '1.90088', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18597, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2226.74', '546.064', '39.547', '5.61332', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18598, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2228.12', '471.214', '40.5289', '5.27635', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18599, @ENTRY, '0', '85', '159', '1', '0', '0', '0', '-1', '0', '0', '2248.59', '421.328', '38.6399', '3.06595', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18600, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2613.62', '303.09', '40.4914', '1.15538', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18601, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2493.3', '282.111', '41.8025', '1.05734', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18602, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2648', '215.676', '31.9483', '4.33624', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18603, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2623.63', '256.275', '37.4466', '1.54834', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18604, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2691.25', '181.779', '33.2038', '4.15062', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18605, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2468.83', '230.992', '45.0205', '4.57803', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18606, @ENTRY, '0', '85', '159', '1', '0', '0', '0', '-1', '0', '0', '2171.94', '277.732', '41.9197', '5.01116', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18607, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2620.01', '189.156', '32.1871', '0.652262', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18608, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2372', '210.062', '35.4873', '0.0944722', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18609, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2464.32', '162.965', '31.2118', '3.79955', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18610, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2205.59', '177.089', '49.0614', '2.81675', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18611, @ENTRY, '0', '85', '159', '1', '0', '0', '0', '-1', '0', '0', '2183.21', '206.555', '44.7175', '2.83807', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18496, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2140.23', '131.734', '45.5079', '3.15331', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18613, @ENTRY, '0', '85', '162', '1', '0', '0', '0', '-1', '0', '0', '2490.62', '126.473', '28.9125', '4.75225', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18614, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2580.84', '149.495', '33.1812', '0.773539', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18615, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2648.41', '118.836', '34.6932', '4.25854', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18616, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2717.04', '83.7641', '34.5015', '5.57679', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18617, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2551.25', '112.848', '27.2324', '2.29416', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18618, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2343.76', '77.8617', '29.7432', '3.58341', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18619, @ENTRY, '0', '85', '162', '1', '0', '0', '0', '-1', '0', '0', '2382.01', '120.414', '29.4154', '2.97218', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18620, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2254.78', '108.802', '41.5318', '2.5655', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18621, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2288.96', '81.7582', '34.5408', '2.19792', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18622, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1952.54', '112.442', '11.9949', '0.70734', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18623, @ENTRY, '0', '85', '162', '1', '0', '0', '0', '-1', '0', '0', '2629.52', '54.0134', '26.9887', '4.60819', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18624, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2316.49', '55.0476', '31.7611', '2.02926', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18625, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1947.83', '43.0753', '15.8694', '2.79082', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18626, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1912.29', '12.5163', '20.4766', '0.340297', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18627, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2256.25', '-18.675', '26.1084', '4.71239', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18628, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2122.54', '-45.5723', '43.614', '4.4378', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18629, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1887.9', '-83.1178', '32.6086', '6.0296', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18630, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '2177.32', '-85.9377', '42.1009', '0.917297', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18631, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1881.55', '-148.859', '36.4971', '4.776', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18495, @ENTRY, '0', '85', '85', '1', '0', '0', '0', '-1', '0', '0', '1916.49', '-114.608', '37.1066', '5.45944', '120', '7', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2455.96' AND `position_y` REGEXP '1389.11' AND `position_z` REGEXP '27.6637' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2455.96' AND `position_y` REGEXP '1389.11' AND `position_z` REGEXP '27.6637' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2453.91' AND `position_y` REGEXP '1285.67' AND `position_z` REGEXP '32.6414' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2453.91' AND `position_y` REGEXP '1285.67' AND `position_z` REGEXP '32.6414' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2512.36' AND `position_y` REGEXP '1281.15' AND `position_z` REGEXP '42.4372' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2512.36' AND `position_y` REGEXP '1281.15' AND `position_z` REGEXP '42.4372' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2610.37' AND `position_y` REGEXP '1310.51' AND `position_z` REGEXP '44.7306' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2610.37' AND `position_y` REGEXP '1310.51' AND `position_z` REGEXP '44.7306' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2597.92' AND `position_y` REGEXP '1267.83' AND `position_z` REGEXP '57.2471' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2597.92' AND `position_y` REGEXP '1267.83' AND `position_z` REGEXP '57.2471' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2650.61' AND `position_y` REGEXP '1277.33' AND `position_z` REGEXP '53.1434' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2650.61' AND `position_y` REGEXP '1277.33' AND `position_z` REGEXP '53.1434' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2557.14' AND `position_y` REGEXP '1278.19' AND `position_z` REGEXP '48.3847' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2557.14' AND `position_y` REGEXP '1278.19' AND `position_z` REGEXP '48.3847' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2625.65' AND `position_y` REGEXP '1258.46' AND `position_z` REGEXP '58.9594' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2625.65' AND `position_y` REGEXP '1258.46' AND `position_z` REGEXP '58.9594' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2638.98' AND `position_y` REGEXP '1219.38' AND `position_z` REGEXP '67.6878' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2638.98' AND `position_y` REGEXP '1219.38' AND `position_z` REGEXP '67.6878' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2515.24' AND `position_y` REGEXP '1198.46' AND `position_z` REGEXP '66.1413' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2515.24' AND `position_y` REGEXP '1198.46' AND `position_z` REGEXP '66.1413' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2504.63' AND `position_y` REGEXP '1228.71' AND `position_z` REGEXP '55.4222' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2504.63' AND `position_y` REGEXP '1228.71' AND `position_z` REGEXP '55.4222' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2586.97' AND `position_y` REGEXP '1209.9' AND `position_z` REGEXP '69.0015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2586.97' AND `position_y` REGEXP '1209.9' AND `position_z` REGEXP '69.0015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2442.23' AND `position_y` REGEXP '1190.63' AND `position_z` REGEXP '49.2972' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2442.23' AND `position_y` REGEXP '1190.63' AND `position_z` REGEXP '49.2972' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2461.83' AND `position_y` REGEXP '1218.6' AND `position_z` REGEXP '52.3686' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2461.83' AND `position_y` REGEXP '1218.6' AND `position_z` REGEXP '52.3686' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2435.66' AND `position_y` REGEXP '1202.19' AND `position_z` REGEXP '45.9575' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2435.66' AND `position_y` REGEXP '1202.19' AND `position_z` REGEXP '45.9575' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2147.96' AND `position_y` REGEXP '1172.47' AND `position_z` REGEXP '41.5214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2147.96' AND `position_y` REGEXP '1172.47' AND `position_z` REGEXP '41.5214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2546.19' AND `position_y` REGEXP '1156.35' AND `position_z` REGEXP '73.3818' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2546.19' AND `position_y` REGEXP '1156.35' AND `position_z` REGEXP '73.3818' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2617.15' AND `position_y` REGEXP '1114.86' AND `position_z` REGEXP '93.6497' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2617.15' AND `position_y` REGEXP '1114.86' AND `position_z` REGEXP '93.6497' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2374.33' AND `position_y` REGEXP '1109.97' AND `position_z` REGEXP '44.9659' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2374.33' AND `position_y` REGEXP '1109.97' AND `position_z` REGEXP '44.9659' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2148.43' AND `position_y` REGEXP '1066.47' AND `position_z` REGEXP '34.804' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2148.43' AND `position_y` REGEXP '1066.47' AND `position_z` REGEXP '34.804' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2357.4' AND `position_y` REGEXP '774.556' AND `position_z` REGEXP '39.8034' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2357.4' AND `position_y` REGEXP '774.556' AND `position_z` REGEXP '39.8034' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2426.04' AND `position_y` REGEXP '754.045' AND `position_z` REGEXP '43.3671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2426.04' AND `position_y` REGEXP '754.045' AND `position_z` REGEXP '43.3671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2226.74' AND `position_y` REGEXP '546.064' AND `position_z` REGEXP '39.547' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2226.74' AND `position_y` REGEXP '546.064' AND `position_z` REGEXP '39.547' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2228.12' AND `position_y` REGEXP '471.214' AND `position_z` REGEXP '40.5289' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2228.12' AND `position_y` REGEXP '471.214' AND `position_z` REGEXP '40.5289' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2248.59' AND `position_y` REGEXP '421.328' AND `position_z` REGEXP '38.6399' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2248.59' AND `position_y` REGEXP '421.328' AND `position_z` REGEXP '38.6399' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2613.62' AND `position_y` REGEXP '303.09' AND `position_z` REGEXP '40.4914' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2613.62' AND `position_y` REGEXP '303.09' AND `position_z` REGEXP '40.4914' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2493.3' AND `position_y` REGEXP '282.111' AND `position_z` REGEXP '41.8025' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2493.3' AND `position_y` REGEXP '282.111' AND `position_z` REGEXP '41.8025' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2648' AND `position_y` REGEXP '215.676' AND `position_z` REGEXP '31.9483' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2648' AND `position_y` REGEXP '215.676' AND `position_z` REGEXP '31.9483' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2623.63' AND `position_y` REGEXP '256.275' AND `position_z` REGEXP '37.4466' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2623.63' AND `position_y` REGEXP '256.275' AND `position_z` REGEXP '37.4466' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2691.25' AND `position_y` REGEXP '181.779' AND `position_z` REGEXP '33.2038' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2691.25' AND `position_y` REGEXP '181.779' AND `position_z` REGEXP '33.2038' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2468.83' AND `position_y` REGEXP '230.992' AND `position_z` REGEXP '45.0205' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2468.83' AND `position_y` REGEXP '230.992' AND `position_z` REGEXP '45.0205' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2171.94' AND `position_y` REGEXP '277.732' AND `position_z` REGEXP '41.9197' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2171.94' AND `position_y` REGEXP '277.732' AND `position_z` REGEXP '41.9197' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2620.01' AND `position_y` REGEXP '189.156' AND `position_z` REGEXP '32.1871' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2620.01' AND `position_y` REGEXP '189.156' AND `position_z` REGEXP '32.1871' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2372' AND `position_y` REGEXP '210.062' AND `position_z` REGEXP '35.4873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2372' AND `position_y` REGEXP '210.062' AND `position_z` REGEXP '35.4873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2464.32' AND `position_y` REGEXP '162.965' AND `position_z` REGEXP '31.2118' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2464.32' AND `position_y` REGEXP '162.965' AND `position_z` REGEXP '31.2118' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2205.59' AND `position_y` REGEXP '177.089' AND `position_z` REGEXP '49.0614' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2205.59' AND `position_y` REGEXP '177.089' AND `position_z` REGEXP '49.0614' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2183.21' AND `position_y` REGEXP '206.555' AND `position_z` REGEXP '44.7175' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2183.21' AND `position_y` REGEXP '206.555' AND `position_z` REGEXP '44.7175' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2140.23' AND `position_y` REGEXP '131.734' AND `position_z` REGEXP '45.5079' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2140.23' AND `position_y` REGEXP '131.734' AND `position_z` REGEXP '45.5079' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2490.62' AND `position_y` REGEXP '126.473' AND `position_z` REGEXP '28.9125' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2490.62' AND `position_y` REGEXP '126.473' AND `position_z` REGEXP '28.9125' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2580.84' AND `position_y` REGEXP '149.495' AND `position_z` REGEXP '33.1812' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2580.84' AND `position_y` REGEXP '149.495' AND `position_z` REGEXP '33.1812' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2648.41' AND `position_y` REGEXP '118.836' AND `position_z` REGEXP '34.6932' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2648.41' AND `position_y` REGEXP '118.836' AND `position_z` REGEXP '34.6932' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2717.04' AND `position_y` REGEXP '83.7641' AND `position_z` REGEXP '34.5015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2717.04' AND `position_y` REGEXP '83.7641' AND `position_z` REGEXP '34.5015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2551.25' AND `position_y` REGEXP '112.848' AND `position_z` REGEXP '27.2324' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2551.25' AND `position_y` REGEXP '112.848' AND `position_z` REGEXP '27.2324' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2343.76' AND `position_y` REGEXP '77.8617' AND `position_z` REGEXP '29.7432' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2343.76' AND `position_y` REGEXP '77.8617' AND `position_z` REGEXP '29.7432' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.01' AND `position_y` REGEXP '120.414' AND `position_z` REGEXP '29.4154' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2382.01' AND `position_y` REGEXP '120.414' AND `position_z` REGEXP '29.4154' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2254.78' AND `position_y` REGEXP '108.802' AND `position_z` REGEXP '41.5318' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2254.78' AND `position_y` REGEXP '108.802' AND `position_z` REGEXP '41.5318' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2288.96' AND `position_y` REGEXP '81.7582' AND `position_z` REGEXP '34.5408' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2288.96' AND `position_y` REGEXP '81.7582' AND `position_z` REGEXP '34.5408' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1952.54' AND `position_y` REGEXP '112.442' AND `position_z` REGEXP '11.9949' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1952.54' AND `position_y` REGEXP '112.442' AND `position_z` REGEXP '11.9949' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2629.52' AND `position_y` REGEXP '54.0134' AND `position_z` REGEXP '26.9887' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2629.52' AND `position_y` REGEXP '54.0134' AND `position_z` REGEXP '26.9887' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2316.49' AND `position_y` REGEXP '55.0476' AND `position_z` REGEXP '31.7611' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2316.49' AND `position_y` REGEXP '55.0476' AND `position_z` REGEXP '31.7611' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1947.83' AND `position_y` REGEXP '43.0753' AND `position_z` REGEXP '15.8694' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1947.83' AND `position_y` REGEXP '43.0753' AND `position_z` REGEXP '15.8694' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1912.29' AND `position_y` REGEXP '12.5163' AND `position_z` REGEXP '20.4766' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1912.29' AND `position_y` REGEXP '12.5163' AND `position_z` REGEXP '20.4766' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2256.25' AND `position_y` REGEXP '-18.675' AND `position_z` REGEXP '26.1084' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2256.25' AND `position_y` REGEXP '-18.675' AND `position_z` REGEXP '26.1084' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2122.54' AND `position_y` REGEXP '-45.5723' AND `position_z` REGEXP '43.614' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2122.54' AND `position_y` REGEXP '-45.5723' AND `position_z` REGEXP '43.614' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1887.9' AND `position_y` REGEXP '-83.1178' AND `position_z` REGEXP '32.6086' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1887.9' AND `position_y` REGEXP '-83.1178' AND `position_z` REGEXP '32.6086' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2177.32' AND `position_y` REGEXP '-85.9377' AND `position_z` REGEXP '42.1009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2177.32' AND `position_y` REGEXP '-85.9377' AND `position_z` REGEXP '42.1009' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1881.55' AND `position_y` REGEXP '-148.859' AND `position_z` REGEXP '36.4971' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1881.55' AND `position_y` REGEXP '-148.859' AND `position_z` REGEXP '36.4971' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1916.49' AND `position_y` REGEXP '-114.608' AND `position_z` REGEXP '37.1066' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1916.49' AND `position_y` REGEXP '-114.608' AND `position_z` REGEXP '37.1066' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1547;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1547', '2672', '0', '75', '0', '1', '0', '1', '1', '') /* Item(2672): Stringy Wolf Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('1547', '2858', '0', '35', '1', '1', '0', '1', '1', '') /* Item(2858): Darkhound Blood, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1547', '3299', '0', '12', '0', '1', '0', '1', '2', '') /* Item(3299): Fractured Canine, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('1547', '3300', '0', '17', '0', '1', '0', '1', '2', '') /* Item(3300): Rabbit's Foot, ItemLevel: 5, RequiredLevel: 5, ItemQuality: GREY_POOR        */, 
('1547', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('1547', '24730', '24730', '1', '0', '1', '1', '1', '1', '') /* Item(24730): Dementia Trousers, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('1547', '44007', '44007', '0.5', '0', '1', '1', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '2318', '0', '40.7979', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '2934', '0', '59.2021', '0', '1', '1', '1', '1', ''); 


/*
2672  1  WAIHT_COMMON      0g 0s 4c  5  0  Stringy Wolf Meat
2858  1  WAIHT_COMMON      1  0  Darkhound Blood
3299  0  GREY_POOR         0g 0s 48c  1  0  Fractured Canine
3300  0  GREY_POOR         0g 0s 9c  5  0  Rabbit's Foot
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
24730  2  GREEN_UNCOMMON    3g 93s 6c  93  61  Dementia Trousers
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
*/
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*
2318  1  WAIHT_COMMON      0g 0s 15c  10  0  Light Leather
2934  1  WAIHT_COMMON      0g 0s 7c  5  0  Ruined Leather Scraps


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1547;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1547;

