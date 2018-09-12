-- Elwynn Forest Fixes 
-- Marshal Dughan SAI Fix

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (240);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 240, 0, 1, 31, 0, 4, 0, 0, 0, 0, 0, '', ''),
(22, 1, 240, 0, 1, 28, 0, 54, 0, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (240);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(240, 0, 0, 0, 10, 0, 100, 0, 1, 8, 5000, 6000, '', 5, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Play emote when see a player');

-- set invisible to players Herbouflage Bunny
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=51335;

-- add cosmetic shoot to Benjamin Foxworthy
DELETE FROM `disables` WHERE `sourceType` IN (0) AND `entry` IN (187966);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 187966, 64, '', '', 'Cosmetic Shoot disable Los');

DELETE FROM `creature` WHERE `guid` IN (200109);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(200109, 23837, 0, 0, 0, 1, 0, 0, 0, 0, -9462.04, 126.97, 59.3225, 1.27166, 300, 0, 0, 7987, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=46983;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (46983);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46983, 0, 0, 0, 60, 0, 100, 0, 3000, 6000, 25000, 30000, '', 11, 187966, 4, 0, 0, 0, 0, 10, 200109, 23837, 0, 0, 0, 0, 0, 'Cast Cosmetic Shoot at bunny');

-- Set Talking NPCs
DELETE FROM `creature_addon` WHERE `guid` IN (167587,167588);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(167587, 0, 0, 0, 0, 378, 0, 0, 0, ''),
(167588, 0, 0, 0, 0, 378, 0, 0, 0, '');

-- remove wrong equipment from NPC Mark
DELETE FROM `creature_equip_template` WHERE `CreatureID`=795;

-- Set Tarecgosa and Malygos on Stormwind City to Fly
DELETE FROM `creature_addon` WHERE `guid` IN (144403,770971);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(144403, 0, 0, 50331648, 0, 0, 0, 0, 0, ''),
(770971, 0, 0, 50331648, 0, 0, 0, 0, 0, '');

-- Spawn Missing Marcus Jensen (Goldshire Pet Trainer) and Orange Tabby Cat
SET @GUID := 200117;
SET @GUID1 := 200118;
DELETE FROM `creature` WHERE `guid` IN (@GUID,@GUID1);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GUID, 7382, 0, 0, 0, 1, 0, 0, 0, 0, -9468.16, 136.841, 58.0517, 2.8399, 300, 0, 0, 9585, 0, 0, 0, 0, 0, '', 0),
(@GUID1, 63014, 0, 0, 0, 1, 0, 0, 0, 0, -9467.97, 136.066, 58.1557, 3.43451, 300, 0, 0, 321, 0, 0, 0, 0, 0, '', 0);

-- Fix quest The Fargodeep Mine
SET @GUID := 977319;
DELETE FROM `creature` WHERE `guid` IN (@GUID);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GUID, 290, 0, 0, 0, 1, 0, 0, 0, 0, -9838.53, 127.416, 5.05751, 5.69533, 300, 0, 0, 507, 295, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=130 WHERE `entry`=290;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (290);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(290, 0, 0, 0, 10, 0, 100, 0, 1, 8, 0, 0, '', 15, 62, 0, 0, 0, 0, 0, 18, 8, 0, 0, 0, 0, 0, 0, 'Complete Quest on player approach');

-- Wanted ¨Hogger¨ Quest Fix
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (448);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 11, 448, 0, 0, 29, 1, 45979, 1, 0, 0, 0, 0, '', ''),
(22, 14, 448, 0, 0, 1, 1, 87351, 1, 0, 0, 0, 0, '', '');

DELETE FROM `creature` WHERE `id` IN (49874,46942,46943,46940,46941);
DELETE FROM `creature_text` WHERE `CreatureID` IN (448,46942,46943);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(448, 0, 0, 'More bones to gnaw on...', 12, 0, 100, 0, 0, 0, 46596, 0, 'Hogger Agro Say 1'),
(448, 0, 1, 'Grrrr... fresh meat!', 12, 0, 100, 0, 0, 0, 1870, 0, 'Hogger Agro Say 2'),
(448, 1, 0, 'Yipe! Help Hogger!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(448, 2, 0, 'Hogger is eating! Stop him!', 42, 0, 100, 0, 0, 0, 0, 0, ''),
(448, 3, 0, 'Hogger is stunned!', 42, 0, 100, 0, 0, 0, 0, 0, ''),
(448, 4, 0, 'No hurt Hogger!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(448, 5, 0, 'Grrr...', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(448, 6, 0, 'Nooooo...', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(46942, 0, 0, 'Hold your blade, adventurer!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(46942, 1, 0, 'This beast leads the Riverpaw gnoll gang and may be the key to ending gnoll aggression in Elwynn.', 12, 0, 100, 25, 0, 0, 0, 0, ''),
(46942, 2, 0, 'We\'re taking him into custody in the name of King Varian Wrynn.', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(46942, 3, 0, 'Take us to the Stockades, Andromath.', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(46943, 0, 0, 'General Marcus Jonathan!', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(46943, 1, 0, 'Wow!', 12, 0, 100, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=45979;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (448,46942,46943,46940,46941,46932);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (448,46940,46941,46942,46943,46932);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (44800,4694200,4694000) AND `source_type` IN (9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(448, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, '', 11, 6268, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On aggro - Cast Rushing Charge'),
(448, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On Aggro - Random Say'),
(448, 0, 2, 0, 0, 0, 100, 0, 1300, 3700, 20000, 25000, '', 11, 6730, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Combat - Cast Headbutt'),
(448, 0, 3, 0, 0, 0, 100, 0, 4800, 6000, 30000, 30000, '', 11, 87337, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Combat - Cast Vicious Slice'),
(448, 0, 4, 5, 2, 0, 100, 1, 0, 50, 0, 0, '', 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Say'),
(448, 0, 5, 6, 61, 0, 100, 1, 0, 0, 0, 0, '', 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Set Run'),
(448, 0, 6, 7, 61, 0, 100, 1, 0, 0, 0, 0, '', 11, 87366, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Summon Minions'),
(448, 0, 7, 8, 61, 0, 100, 1, 0, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 10, 167917, 45979, 0, 0, 0, 0, 0, 'Hogger - Low Health - Move to Bunny'),
(448, 0, 8, 9, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Announce'),
(448, 0, 9, 22, 61, 0, 100, 1, 0, 0, 0, 0, '', 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Set Event Phase 2'),
(448, 0, 22, 23, 61, 0, 100, 1, 0, 0, 0, 0, '', 18, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Set Unit Flags'),
(448, 0, 23, 25, 61, 0, 100, 1, 0, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Set Pasive State'),
(448, 0, 25, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Low Health - Stop Autoattack'),
(448, 0, 10, 11, 0, 2, 100, 1, 0, 0, 0, 0, '', 11, 87351, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update IC Near Bunny (Phase 2) - Cast Eat'),
(448, 0, 11, 12, 61, 2, 100, 1, 0, 0, 0, 0, '', 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update IC Near Bunny (Phase 2) - Stop Autoattack'),
(448, 0, 12, 24, 61, 2, 100, 1, 0, 0, 0, 0, '', 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update IC Near Bunny (Phase 2) - Stop Combat Movement'),
(448, 0, 24, 0, 61, 2, 100, 1, 0, 0, 0, 0, '', 19, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update IC Near Bunny (Phase 2) - Remove Unit Flags'),
(448, 0, 13, 14, 32, 2, 100, 1, 1, 2, 0, 0, '', 28, 87351, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Remove Eating Buff'),
(448, 0, 14, 15, 61, 2, 100, 1, 0, 0, 0, 0, '', 11, 87352, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Cast Upset Stomach'),
(448, 0, 15, 16, 61, 2, 100, 1, 0, 0, 0, 0, '', 1, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Announce'),
(448, 0, 16, 17, 61, 2, 100, 1, 0, 0, 0, 0, '', 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Start Autoattack'),
(448, 0, 17, 18, 61, 2, 100, 1, 0, 0, 0, 0, '', 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Allow Combat Movement'),
(448, 0, 18, 0, 61, 2, 100, 1, 0, 0, 0, 0, '', 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Update If Attacked while eating(Phase 2) - Set Invincible'),
(448, 0, 19, 0, 2, 2, 100, 1, 0, 2, 0, 0, '', 80, 44800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On Low Health(Phase 2) - Run Script'),
(448, 0, 20, 0, 0, 0, 100, 1, 1, 2, 0, 0, '', 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - IC - Set Event Phase 1'),
(448, 0, 21, 0, 38, 0, 100, 1, 1, 1, 0, 0, '', 80, 4694000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On Data Set 1 1 - Run Script'),
(448, 0, 22, 0, 0, 0, 100, 1, 1, 2, 0, 0, '', 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - IC - Set Invincible'),
(448, 0, 26, 27, 25, 0, 100, 1, 0, 0, 0, 0, '', 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On Reset - Allow Attack'),
(448, 0, 27, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hogger - On Reset - Allow Combat Movement'),
(46932, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Minnion of Hogger - On Just Summoned - Attack Nearby player'),
(44800, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 1, 4, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Stop Combat Movement'),
(44800, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Stop Combat Movement'),
(44800, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Stop AutoAttack'),
(44800, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 12, 46942, 8, 0, 0, 0, 0, 8, 0, 0, 0, -10128.3, 656.465, 36.0544, 2.04543, 'Script - Summon General Marcus Jhonatan'),
(44800, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 12, 46940, 8, 0, 0, 0, 0, 8, 0, 0, 0, -10132.9, 653.561, 36.0503, 2.021, 'Script - Summon Dumas'),
(44800, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 12, 46941, 8, 0, 0, 0, 0, 8, 0, 0, 0, -10123, 656.875, 36.0511, 1.97181, 'Script - Summon Andromath'),
(44800, 9, 6, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 12, 46943, 3, 9000, 0, 0, 0, 8, 0, 0, 0, -10130.9, 653.302, 36.0501, 1.65242, 'Script - Summon Ragamuffin1'),
(44800, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 12, 46943, 3, 9000, 0, 0, 0, 8, 0, 0, 0, -10122.5, 660.198, 36.0366, 2.83775, 'Script - Summon Ragamuffin2'),
(44800, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 18, 898, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'Script - Add Unit Flags'),
(44800, 9, 9, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -10142.081, 671.773, 36.014, 0, 'Script - Move to Position'),
(44800, 9, 10, 0, 0, 0, 100, 1, 2000, 2000, 2000, 2000, '', 66, 0, 0, 0, 0, 0, 0, 19, 46942, 50, 0, 0, 0, 0, 0, 'Script - Set Orientation to General'),
(46940, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, '', 80, 4694000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dumas - On Data Set 1 1 - Run Script'),
(46941, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, '', 80, 4694000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Andromath - On Data Set 1 1 - Run Script'),
(46942, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, '', 80, 4694200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'General Marcus Jhonatan - On Just Summoned - Run Script'),
(4694200, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Run Off'),
(4694200, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(4694200, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -10141.054, 670.719, 35.9569, 0, 'Script - Move to Position'),
(4694200, 9, 3, 0, 0, 0, 100, 1, 1500, 1500, 1500, 1500, '', 1, 0, 1, 0, 0, 0, 0, 19, 46943, 45, 0, 0, 0, 0, 0, 'Script - Raggamurfin Say'),
(4694200, 9, 4, 0, 0, 0, 100, 1, 1500, 1500, 1500, 1500, '', 1, 1, 1, 0, 0, 0, 0, 19, 46943, 45, 0, 0, 0, 0, 0, 'Script - Raggamurfin Say'),
(4694200, 9, 5, 0, 0, 0, 100, 1, 1500, 1500, 1500, 1500, '', 1, 5, 1, 0, 0, 0, 0, 19, 448, 30, 0, 0, 0, 0, 0, 'Script - Hogger Says'),
(4694200, 9, 6, 0, 0, 0, 100, 1, 6000, 6000, 6000, 6000, '', 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Marcus Says'),
(4694200, 9, 7, 0, 0, 0, 100, 1, 4000, 4000, 4000, 4000, '', 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Marcus Says'),
(4694200, 9, 8, 0, 0, 0, 100, 1, 500, 500, 500, 500, '', 1, 6, 1, 0, 0, 0, 0, 19, 448, 30, 0, 0, 0, 0, 0, 'Script - Hogger Says'),
(4694200, 9, 9, 0, 0, 0, 100, 1, 1000, 1000, 1000, 1000, '', 66, 0, 0, 0, 0, 0, 0, 19, 46941, 30, 0, 0, 0, 0, 0, 'Script - Set Orientation to Andromath'),
(4694200, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 1, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(4694200, 9, 11, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 11, 0, 30, 0, 0, 0, 0, 0, 'Script - Set Data 1 1 On Creatures'),
(4694200, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 11, 64446, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Teleport'),
(4694200, 9, 13, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 33, 448, 0, 0, 0, 0, 0, 18, 35, 0, 0, 0, 0, 0, 0, 'Script - Give Credit to Nearby Players'),
(4694200, 9, 14, 0, 0, 0, 100, 1, 1000, 1000, 1000, 1000, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Despawn'),
(4694000, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 11, 64446, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Teleport'),
(4694000, 9, 1, 0, 0, 0, 100, 1, 1000, 1000, 1000, 1000, '', 19, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Unit Flags'),
(4694000, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Despawn');


-- Drop Rate Item 1019

DELETE FROM `creature_loot_template` WHERE `Entry`=116 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (116, 1019, 0, 60, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=473 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (473, 1019, 0, 66, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=474 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (474, 1019, 0, 60, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=583 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (583, 1019, 0, 66, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=880 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (880, 1019, 0, 30, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=881 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (881, 1019, 0, 60, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=6846 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (6846, 1019, 0, 66, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=6866 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (6866, 1019, 0, 66, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=6927 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (6927, 1019, 0, 66, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=34248 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (34248, 1019, 0, 30, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=37507 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (37507, 1019, 0, 30, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=42391 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (42391, 1019, 0, 30.3333, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=42937 AND `Item`=1019;
INSERT INTO `creature_loot_template` VALUES (42937, 1019, 0, 30, 0, 1, 0, 1, 1, '');


DELETE FROM `creature` WHERE `guid`=2101165309;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(1100340, 110034, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -8288.54, 241.954, 155.348, 0.0596814, 300, 0, 0, 2687808, 0, 0, 0, 0, 0, 0, 0, '', 0);


UPDATE `creature_loot_template` SET `Chance`='70' WHERE  `Entry`=478 AND `Item`=782;