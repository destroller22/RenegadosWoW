/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 11/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Palemane Skinner';
SET @ENTRY 		:= '2950';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '42354',  '0',  '1887',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '6',  '0',  '0',  '0',  '39',  '0',  '1.2',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '2',  '0',  '2048',  '0',  '4',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '2950',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '774',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '6',  '6',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'More bones to gnaw on...', '12', '0', '50', '0', '0', '0', '0', '0', 'on Aggro Text'), 
(@ENTRY, '0', '1', 'Grrrr... fresh meat!', '12', '0', '50', '0', '0', '0', '0', '0', 'on Aggro Text'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 2950 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('2950', '0', '0', '0', '0', '0', '100', '0', '4000', '5000', '19000', '22000', '', '11', '81705', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Scalp Slash'), 
('2950', '0', '1', '0', '4', '0', '20', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Say Text on Aggro'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18961, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2757.19', '-822.031', '4.56498', '0.42003', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18962, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2774.88', '-436.29', '4.94779', '0.964388', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18964, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2786.34', '-457.029', '15.5365', '4.17272', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18965, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2738.25', '-366.385', '6.94916', '0.940565', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18966, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2709.17', '-411.448', '-6.70156', '1.58158', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18967, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2706.67', '-445.115', '-6.28124', '3.82285', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18968, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2788.84', '-797.559', '6.74396', '2.30626', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18969, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2721.12', '-770.591', '-5.44856', '5.03642', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18971, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2774.19', '-690.16', '6.8235', '4.66133', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18974, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2708.63', '-693.576', '-3.01998', '0.137925', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18976, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2773.1', '-659.074', '14.1776', '0.789005', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18977, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2795.41', '-689.922', '12.6951', '4.99285', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18978, @ENTRY, '1', '215', '215', '1', '0', '169', '0', '-1', '0', '0', '-2740.25', '-412.962', '-3.36648', '2.51732', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18979, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2370.41', '471.94', '72.279', '3.10707', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18980, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2329.56', '430.543', '49.9563', '0.211476', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18981, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2370.72', '384.33', '66.1821', '3.74475', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18982, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2355.86', '419.843', '63.1885', '4.00891', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18983, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2321.14', '490.715', '45.4586', '2.66493', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18984, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2382.95', '247.399', '52.3729', '5.96034', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18985, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2440.52', '228.824', '52.5029', '4.41697', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18987, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2384.8', '344.909', '64.8289', '4.73797', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18989, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2344.96', '389.634', '66.2249', '3.81976', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18992, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2345.31', '484.451', '46.1559', '1.50366', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18996, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2387.76', '486.82', '51.1163', '0.726508', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(18997, @ENTRY, '1', '215', '818', '1', '0', '169', '0', '-1', '0', '0', '-2338.84', '524.851', '40.9719', '4.66048', '120', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2757.19' AND `position_y` REGEXP '-822.031' AND `position_z` REGEXP '4.56498' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2757.19' AND `position_y` REGEXP '-822.031' AND `position_z` REGEXP '4.56498' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2774.88' AND `position_y` REGEXP '-436.29' AND `position_z` REGEXP '4.94779' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2774.88' AND `position_y` REGEXP '-436.29' AND `position_z` REGEXP '4.94779' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2786.34' AND `position_y` REGEXP '-457.029' AND `position_z` REGEXP '15.5365' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2786.34' AND `position_y` REGEXP '-457.029' AND `position_z` REGEXP '15.5365' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2738.25' AND `position_y` REGEXP '-366.385' AND `position_z` REGEXP '6.94916' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2738.25' AND `position_y` REGEXP '-366.385' AND `position_z` REGEXP '6.94916' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2709.17' AND `position_y` REGEXP '-411.448' AND `position_z` REGEXP '-6.70156' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2709.17' AND `position_y` REGEXP '-411.448' AND `position_z` REGEXP '-6.70156' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2706.67' AND `position_y` REGEXP '-445.115' AND `position_z` REGEXP '-6.28124' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2706.67' AND `position_y` REGEXP '-445.115' AND `position_z` REGEXP '-6.28124' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2788.84' AND `position_y` REGEXP '-797.559' AND `position_z` REGEXP '6.74396' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2788.84' AND `position_y` REGEXP '-797.559' AND `position_z` REGEXP '6.74396' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2721.12' AND `position_y` REGEXP '-770.591' AND `position_z` REGEXP '-5.44856' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2721.12' AND `position_y` REGEXP '-770.591' AND `position_z` REGEXP '-5.44856' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2774.19' AND `position_y` REGEXP '-690.16' AND `position_z` REGEXP '6.8235' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2774.19' AND `position_y` REGEXP '-690.16' AND `position_z` REGEXP '6.8235' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2708.63' AND `position_y` REGEXP '-693.576' AND `position_z` REGEXP '-3.01998' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2708.63' AND `position_y` REGEXP '-693.576' AND `position_z` REGEXP '-3.01998' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2773.1' AND `position_y` REGEXP '-659.074' AND `position_z` REGEXP '14.1776' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2773.1' AND `position_y` REGEXP '-659.074' AND `position_z` REGEXP '14.1776' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2795.41' AND `position_y` REGEXP '-689.922' AND `position_z` REGEXP '12.6951' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2795.41' AND `position_y` REGEXP '-689.922' AND `position_z` REGEXP '12.6951' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2740.25' AND `position_y` REGEXP '-412.962' AND `position_z` REGEXP '-3.36648' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2740.25' AND `position_y` REGEXP '-412.962' AND `position_z` REGEXP '-3.36648' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2370.41' AND `position_y` REGEXP '471.94' AND `position_z` REGEXP '72.279' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2370.41' AND `position_y` REGEXP '471.94' AND `position_z` REGEXP '72.279' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2329.56' AND `position_y` REGEXP '430.543' AND `position_z` REGEXP '49.9563' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2329.56' AND `position_y` REGEXP '430.543' AND `position_z` REGEXP '49.9563' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2370.72' AND `position_y` REGEXP '384.33' AND `position_z` REGEXP '66.1821' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2370.72' AND `position_y` REGEXP '384.33' AND `position_z` REGEXP '66.1821' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2355.86' AND `position_y` REGEXP '419.843' AND `position_z` REGEXP '63.1885' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2355.86' AND `position_y` REGEXP '419.843' AND `position_z` REGEXP '63.1885' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2321.14' AND `position_y` REGEXP '490.715' AND `position_z` REGEXP '45.4586' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2321.14' AND `position_y` REGEXP '490.715' AND `position_z` REGEXP '45.4586' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2382.95' AND `position_y` REGEXP '247.399' AND `position_z` REGEXP '52.3729' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2382.95' AND `position_y` REGEXP '247.399' AND `position_z` REGEXP '52.3729' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2440.52' AND `position_y` REGEXP '228.824' AND `position_z` REGEXP '52.5029' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2440.52' AND `position_y` REGEXP '228.824' AND `position_z` REGEXP '52.5029' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2384.8' AND `position_y` REGEXP '344.909' AND `position_z` REGEXP '64.8289' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2384.8' AND `position_y` REGEXP '344.909' AND `position_z` REGEXP '64.8289' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2344.96' AND `position_y` REGEXP '389.634' AND `position_z` REGEXP '66.2249' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2344.96' AND `position_y` REGEXP '389.634' AND `position_z` REGEXP '66.2249' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2345.31' AND `position_y` REGEXP '484.451' AND `position_z` REGEXP '46.1559' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2345.31' AND `position_y` REGEXP '484.451' AND `position_z` REGEXP '46.1559' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2387.76' AND `position_y` REGEXP '486.82' AND `position_z` REGEXP '51.1163' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2387.76' AND `position_y` REGEXP '486.82' AND `position_z` REGEXP '51.1163' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2338.84' AND `position_y` REGEXP '524.851' AND `position_z` REGEXP '40.9719' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2338.84' AND `position_y` REGEXP '524.851' AND `position_z` REGEXP '40.9719' AND `PhaseId` = '169' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 2950;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('2950', '117', '0', '9.0877', '0', '1', '0', '1', '2', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '118', '0', '2.7514', '0', '1', '0', '1', '3', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2950', '159', '0', '4.5526', '0', '1', '0', '1', '2', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '727', '727', '0.11', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('2950', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('2950', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('2950', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('2950', '774', '0', '0.9006', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('2950', '818', '0', '0.3209', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2950', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('2950', '2070', '0', '0.0025', '0', '1', '0', '1', '3', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '2406', '2406', '0.2315', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2950', '2589', '0', '34.2438', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2950', '4540', '0', '0.0025', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '4565', '4565', '0.3', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('2950', '4604', '0', '0.0025', '0', '1', '0', '1', '1', '') /* Item(4604): Forest Mushroom Cap, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2950', '49535', '0', '0.1754', '1', '1', '0', '1', '1', '') /* Item(49535): Stolen Rifle, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '50473', '0', '0.0219', '1', '1', '0', '1', '1', '') /* Item(50473): Mane of Thornmantle, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2950', '62328', '0', '0.011', '0', '1', '0', '1', '1', '') /* Item(62328): Shed Fur, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('2950', '62514', '0', '0.0329', '0', '1', '0', '1', '1', '') /* Item(62514): Cracked Pincer, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
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
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4604  1  WAIHT_COMMON      0g 0s 1c  1  1  Forest Mushroom Cap
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
49535  1  WAIHT_COMMON      1  1  Stolen Rifle
50473  1  WAIHT_COMMON      1  1  Mane of Thornmantle
62328  0  GREY_POOR         0g 0s 1c  1  0  Shed Fur
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 2950;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('2950', '1', '10898', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 2950;

