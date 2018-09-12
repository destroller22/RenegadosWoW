/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Scarlet Vanguard';
SET @ENTRY 		:= '1540';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '2481',  '2470',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '10',  '11',  '0',  '0',  '0',  '67',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '1540',  '1540',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '7164',  '11972',  '0',  '0',  '0',  '0',  '0',  '0',  '665',  '11',  '20',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', '12', '0', '100', '0', '0', '0', '2628', '0', 'Scarlet1'), 
(@ENTRY, '0', '1', 'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.', '12', '0', '100', '0', '0', '0', '2626', '0', 'Scarlet1'), 
(@ENTRY, '0', '2', 'The Light condemns all who harbor evil. Now you will die!', '12', '0', '100', '0', '0', '0', '2627', '0', 'Scarlet1'), 
(@ENTRY, '0', '3', 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', '12', '0', '100', '0', '0', '0', '2625', '0', 'Scarlet1'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1540 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1540', '0', '0', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Vanguard - On Aggro - Say Line 0'), 
('1540', '0', '1', '0', '2', '0', '100', '0', '0', '15', '0', '0', '', '25', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Vanguard - Between 0-15% Health - Flee For Assist'), 
('1540', '0', '2', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '75', '7164', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Vanguard - On Aggro - Add Aura \'Defensive Stance\''), 
('1540', '0', '3', '0', '0', '0', '100', '0', '3000', '6000', '3000', '6000', '', '11', '11972', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Vanguard - In Combat - Cast \'Shield Bash\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1070, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3006.29', '-538.512', '116.235', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1071, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2990.25', '-527.663', '111.274', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1072, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2849.83', '-475.366', '99.4548', '1.67552', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1073, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2868.92', '-497.544', '101.384', '4.2237', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(1074, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2839.98', '-482.655', '99.4791', '0.19584', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1075, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2791.81', '-473.694', '101.753', '1.25664', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1076, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2792.01', '-487.446', '101.4', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1077, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2761.21', '-484.215', '104.69', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1078, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2769.89', '-485.562', '107.247', '3.78736', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1079, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2766.46', '-499.104', '103.032', '0.174515', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1080, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2827.28', '-496.496', '101.523', '1.67552', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1081, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2847.18', '-508.013', '106.808', '4.72555', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1082, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2750.31', '-521.581', '106.324', '2.35619', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1083, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2850', '-531.182', '108.825', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1084, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2923.52', '-562.805', '109.015', '1.67552', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1085, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2994.17', '-558.007', '116.411', '1.67552', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1086, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2957.71', '-553.852', '110.164', '4.69494', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1087, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3019.89', '-560.585', '118.777', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1088, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3037.76', '-571.663', '121.262', '3.15905', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1089, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3119.52', '-573.777', '128.942', '0.680678', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3006.29' AND `position_y` REGEXP '-538.512' AND `position_z` REGEXP '116.235' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3006.29' AND `position_y` REGEXP '-538.512' AND `position_z` REGEXP '116.235' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2990.25' AND `position_y` REGEXP '-527.663' AND `position_z` REGEXP '111.274' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2990.25' AND `position_y` REGEXP '-527.663' AND `position_z` REGEXP '111.274' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2849.83' AND `position_y` REGEXP '-475.366' AND `position_z` REGEXP '99.4548' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2849.83' AND `position_y` REGEXP '-475.366' AND `position_z` REGEXP '99.4548' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2868.92' AND `position_y` REGEXP '-497.544' AND `position_z` REGEXP '101.384' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2868.92' AND `position_y` REGEXP '-497.544' AND `position_z` REGEXP '101.384' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '2868.92', '-497.544', '101.384', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '2858.42', '-487.386', '100.174', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '2856.97', '-486.032', '99.788', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '2843.02', '-484.717', '99.43', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '2859.99', '-484.188', '99.7291', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '2866.83', '-492.369', '100.866', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '2877.11', '-515.862', '103.566', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '2882.54', '-528.381', '106.8', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '2886.53', '-532.085', '106.46', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '2892.33', '-533.336', '106.112', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '2892.33', '-533.336', '106.112', '3', '0', '0', '0', '100', '0'), 
(@GUID, '12', '2886.53', '-532.085', '106.46', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '2882.54', '-528.381', '106.8', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '2877.11', '-515.862', '103.566', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2868.92' AND `position_y` REGEXP '-497.544' AND `position_z` REGEXP '101.384' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2839.98' AND `position_y` REGEXP '-482.655' AND `position_z` REGEXP '99.4791' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2839.98' AND `position_y` REGEXP '-482.655' AND `position_z` REGEXP '99.4791' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2791.81' AND `position_y` REGEXP '-473.694' AND `position_z` REGEXP '101.753' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2791.81' AND `position_y` REGEXP '-473.694' AND `position_z` REGEXP '101.753' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2792.01' AND `position_y` REGEXP '-487.446' AND `position_z` REGEXP '101.4' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2792.01' AND `position_y` REGEXP '-487.446' AND `position_z` REGEXP '101.4' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2761.21' AND `position_y` REGEXP '-484.215' AND `position_z` REGEXP '104.69' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2761.21' AND `position_y` REGEXP '-484.215' AND `position_z` REGEXP '104.69' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2769.89' AND `position_y` REGEXP '-485.562' AND `position_z` REGEXP '107.247' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2769.89' AND `position_y` REGEXP '-485.562' AND `position_z` REGEXP '107.247' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2766.46' AND `position_y` REGEXP '-499.104' AND `position_z` REGEXP '103.032' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2766.46' AND `position_y` REGEXP '-499.104' AND `position_z` REGEXP '103.032' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2827.28' AND `position_y` REGEXP '-496.496' AND `position_z` REGEXP '101.523' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2827.28' AND `position_y` REGEXP '-496.496' AND `position_z` REGEXP '101.523' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2847.18' AND `position_y` REGEXP '-508.013' AND `position_z` REGEXP '106.808' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2847.18' AND `position_y` REGEXP '-508.013' AND `position_z` REGEXP '106.808' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2750.31' AND `position_y` REGEXP '-521.581' AND `position_z` REGEXP '106.324' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2750.31' AND `position_y` REGEXP '-521.581' AND `position_z` REGEXP '106.324' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2850' AND `position_y` REGEXP '-531.182' AND `position_z` REGEXP '108.825' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2850' AND `position_y` REGEXP '-531.182' AND `position_z` REGEXP '108.825' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2923.52' AND `position_y` REGEXP '-562.805' AND `position_z` REGEXP '109.015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2923.52' AND `position_y` REGEXP '-562.805' AND `position_z` REGEXP '109.015' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2994.17' AND `position_y` REGEXP '-558.007' AND `position_z` REGEXP '116.411' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2994.17' AND `position_y` REGEXP '-558.007' AND `position_z` REGEXP '116.411' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2957.71' AND `position_y` REGEXP '-553.852' AND `position_z` REGEXP '110.164' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2957.71' AND `position_y` REGEXP '-553.852' AND `position_z` REGEXP '110.164' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3019.89' AND `position_y` REGEXP '-560.585' AND `position_z` REGEXP '118.777' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3019.89' AND `position_y` REGEXP '-560.585' AND `position_z` REGEXP '118.777' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3037.76' AND `position_y` REGEXP '-571.663' AND `position_z` REGEXP '121.262' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3037.76' AND `position_y` REGEXP '-571.663' AND `position_z` REGEXP '121.262' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3119.52' AND `position_y` REGEXP '-573.777' AND `position_z` REGEXP '128.942' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3119.52' AND `position_y` REGEXP '-573.777' AND `position_z` REGEXP '128.942' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1540;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1540', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '118', '0', '3.4483', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '774', '0', '3.4483', '0', '1', '0', '1', '1', '')  /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
(@ENTRY, '4536', '0', '3.4483', '0', '1', '0', '1', '1', '')  /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5363', '0', '3.4483', '0', '1', '0', '1', '1', '')  /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
(@ENTRY, '6150', '0', '10.3448', '0', '1', '0', '1', '1', '')  /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
*/
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1540;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1540', '1', '1899', '0', '1984', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1540;

