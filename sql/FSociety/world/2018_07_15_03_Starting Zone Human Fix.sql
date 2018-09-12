-- Starting Zone Human Fix 

UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=50039;
UPDATE `creature_template` SET `lootid`='13159' WHERE  `entry`=13159;

DELETE FROM `creature_loot_template` WHERE `entry`=13159;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `MinCount`, `maxcount`) VALUES 
(13159, 765, 0.54, 1, 0, 1, 1),
(13159, 57122, 100, 1, 0, 1, 1),
(13159, 1307, 100, 1, 0, 1, 1);

-- Spawn Missing Chair for Stormwind Army Registrar
DELETE FROM `gameobject` WHERE `guid` IN (200064);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(200064, 203731, 0, 6170, 9, 1, 0, 0, -8935.78, -135.877, 82.197, 2.31256, 0, 0, 0.831471, 0.555568, 120, 255, 1, '', 0);

-- Remove Random Movement from Blackrock Worg Near Stormwind Infantry
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid` IN (168237,168238,168252,168251,168303,168312,168334,168345,168359,168361,168245,168246,168250);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (49871,49869);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 49871, 0, 0, 29, 1, 49869, 4, 0, 0, 0, 0, '', ''),
(22, 1, 49869, 0, 0, 29, 1, 49871, 4, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (49871,49869);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(49871, 0, 0, 1, 1, 0, 100, 0, 100, 200, 300, 400, '', 5, 36, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On OOC - Set Battle Emote'),
(49871, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 19, 49869, 4, 0, 0, 0, 0, 0, 'On OOC - Set Orientation'),
(49869, 0, 0, 1, 1, 0, 100, 0, 100, 200, 300, 400, '', 5, 36, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle emote'),
(49869, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 19, 49871, 4, 0, 0, 0, 0, 0, 'On OOC - Set Orientation');

-- Bunny fear when player near
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (721);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 721, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (721);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(721, 0, 0, 0, 10, 0, 100, 512, 1, 8, 5000, 6000, '', 11, 52716, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast when see a player');

-- Blackrock Spy Issues Fix
DELETE FROM `creature_addon` WHERE `guid` IN (168239,168273,168279,168302,168311,168313,168315,168326,168329,168341,168422,168486,168497,168498,168363);
DELETE FROM `creature_template_addon` WHERE `entry` IN (49874);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(49874, 0, 0, 8, 1, 0, 0, 0, 0, '80676');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (49874);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(49874, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Text on Aggro');

-- Adjustments to Brother Paxton
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (93091);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 93091, 0, 0, 31, 0, 3, 49869, 0, 0, 0, 0, '', ''),
(13, 1, 93091, 0, 1, 31, 0, 3, 951, 0, 0, 0, 0, '', ''),
(13, 1, 93091, 0, 2, 31, 0, 3, 823, 0, 0, 0, 0, '', ''),
(13, 1, 93091, 0, 3, 31, 0, 4, 0, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (951,95100,95103);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(951, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1800000, 1800000, '', 11, 13864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 30 Minutes, re-apply fortitude'),
(951, 0, 1, 0, 25, 0, 100, 512, 0, 0, 0, 0, '', 53, 0, 95100, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Reset, Start Waypoint Path'),
(951, 0, 2, 3, 40, 0, 25, 512, 0, 0, 0, 0, '', 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Pause waypoint'),
(951, 0, 3, 0, 61, 0, 20, 512, 0, 0, 0, 0, '', 88, 95100, 95103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chance to do Random Timed Action'),
(951, 0, 4, 0, 64, 0, 100, 0, 0, 0, 0, 0, '', 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello - Pause WP'),
(95100, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 19, 49869, 10, 0, 0, 0, 0, 0, 'Stormwind Infantry Yell for Help'),
(95100, 9, 1, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 11, 66097, 0, 0, 0, 0, 0, 19, 49869, 10, 0, 0, 0, 0, 0, 'Cast penance'),
(95100, 9, 2, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 1, 2, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Random Phrase'),
(95103, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 11, 93091, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast AOE heal'),
(95103, 9, 1, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 1, 1, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Random Phrase');

-- Fix for Questline
UPDATE `quest_template_addon` SET `AllowableClasses`=1 WHERE `ID` IN (28797,28813,28823);

-- Fear no Evil Quest Rework
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry`=50047;
UPDATE `creature_text` SET `emote`=3 WHERE `CreatureID`=50047;
UPDATE `creature` SET `curhealth`=10 WHERE `id`=50047;

-- conditions to handle the spellclick appear only if the player have any of the Fear no Evil Quests
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=50047 AND `SourceEntry` IN (93072,93097);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 50047, 93072, 0, 0, 9, 0, 28806, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 0, 9, 0, 28806, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 1, 9, 0, 28811, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 1, 9, 0, 28811, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 2, 9, 0, 28812, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 2, 9, 0, 28812, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 3, 9, 0, 28808, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 3, 9, 0, 28808, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 4, 9, 0, 28809, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 4, 9, 0, 28809, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 5, 9, 0, 29082, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 5, 9, 0, 29082, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 6, 9, 0, 29082, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 6, 9, 0, 29082, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 7, 9, 0, 28810, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 7, 9, 0, 28810, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93072, 0, 8, 9, 0, 28813, 0, 0, 0, 0, 0, '', ''),
(18, 50047, 93097, 0, 8, 9, 0, 28813, 0, 0, 0, 0, 0, '', '');

DELETE FROM `waypoints` WHERE `entry` IN (5004700);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(5004700, 1, -8817.65, -150.70, 81.50, '');

DELETE FROM `creature_addon` WHERE `guid` IN (168435,168439,168445,168447,168450,168458,168459,168461,168463,168468,168474,168475,168476,168477,168478,168484,168485,168487);
DELETE FROM `creature_template_addon` WHERE `entry` IN (50047);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(50047, 0, 0, 7, 1, 0, 0, 0, 0, '113628');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (50047,5004700);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(50047, 0, 0, 0, 73, 0, 100, 1, 0, 0, 0, 0, '', 80, 5004700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Spellclick - Run Script'),
(50047, 0, 1, 0, 40, 0, 100, 0, 1, 5004700, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On WP Reached - Despawn'),
(50047, 0, 2, 3, 25, 0, 100, 1, 0, 0, 0, 0, '', 18, 49152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Respawn - Add Flags'),
(50047, 0, 3, 4, 61, 0, 100, 1, 0, 0, 0, 0, '', 102, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Respawn - Remove Health Regen'),
(50047, 0, 4, 5, 61, 0, 100, 1, 0, 0, 0, 0, '', 90, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Respawn - Set Death State'),
(5004700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 83, 16777216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Spellclick Flag'),
(5004700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 96, 2049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Dynamic Flag'),
(5004700, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Death State'),
(5004700, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 19, 49152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Flag'),
(5004700, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 28, 113628, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Aura'),
(5004700, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 102, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Allow Health Regen'),
(5004700, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Orientation'),
(5004700, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, '', 33, 50047, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Quest Credit'),
(5004700, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Script - Say Line 0 (random)'),
(5004700, 9, 9, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, '', 53, 1, 5004700, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Script - Run WP');


