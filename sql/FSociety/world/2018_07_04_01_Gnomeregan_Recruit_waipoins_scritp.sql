
-- Gnomeregan Recruit waipoins and scritp

-- Update position

DELETE FROM  `creature`  WHERE `id` IN (43276);
DELETE FROM `creature` WHERE `guid` IN (168770,405000,405001);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(168770, 23837, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5128.2, 445.804, 395.568, 4.82815, 300, 0, 0, 26268, 0, 0, 0, 0, 0, 0, 0, '', 0),
(405000, 23837, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5126.78, 433.107, 396.543, 4.82815, 300, 0, 0, 26268, 0, 0, 0, 0, 0, 0, 0, '', 0),
(405001, 23837, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5187.82, 458.218, 388.542, 4.82815, 300, 0, 0, 26268, 0, 0, 0, 0, 0, 0, 0, '', 0);

SET @GNOMEREGAN_RECRUIT :=43276;

UPDATE `creature_template` SET `npcflag`=16777216, `VehicleId`=947 WHERE `entry`=@GNOMEREGAN_RECRUIT;
UPDATE `creature_template` SET `npcflag`=16777216, `VehicleId`=946 WHERE `entry`=43273;
UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=43279;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@GNOMEREGAN_RECRUIT,43273);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@GNOMEREGAN_RECRUIT, 46598, 0, 0),
(43273, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (@GNOMEREGAN_RECRUIT,43273);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(@GNOMEREGAN_RECRUIT, 43273, 0, 1, 'Gnomeregan Recruit', 8, 0),
(43273, 43279, 0, 1, 'Gnomeregan Recruit', 8, 0);


DELETE FROM `creature_template_addon` WHERE `entry` IN (43279);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43279, 0, 0, 0, 0, 0, '80855 16245');

DELETE FROM `creature_template_addon` WHERE `entry`=43276;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(43276, 0, 0, 0, 1, 0, 645, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (18) AND `SourceGroup` IN (@GNOMEREGAN_RECRUIT,43273)  AND `sourceEntry` IN (46598);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, @GNOMEREGAN_RECRUIT, 46598, 0, 0, 31, 0, 3, 43273, 0, 0, 0, 0, '', '');


-- Scripts
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (43273,43279,43276);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-168770,-405000,-405001,@GNOMEREGAN_RECRUIT,43273,43279) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-168770, 0, 0, 0, 60, 0, 100, 0, 1, 2, 15000, 25000, 12, @GNOMEREGAN_RECRUIT, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-168770, 0, 1, 0, 60, 0, 100, 1, 1, 2, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-168770, 0, 2, 0, 17, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),

(-405000, 0, 0, 0, 60, 0, 100, 0, 1, 2, 15000, 25000, 12, @GNOMEREGAN_RECRUIT, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-405000, 0, 1, 0, 60, 0, 100, 1, 1, 2, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-405000, 0, 2, 0, 17, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),

(-405001, 0, 0, 0, 60, 0, 100, 0, 1, 2, 15000, 25000, 12, @GNOMEREGAN_RECRUIT, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-405001, 0, 1, 0, 60, 0, 100, 1, 1, 2, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-405001, 0, 2, 0, 17, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),

(43273, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, 12, 43279, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43279, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, 11, 46598, 4, 0, 0, 0, 0, 19, 43273, 10, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 0, 1, 38, 0, 100, 1, 1, 0, 0, 0, 53, 0, 1467331, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 6, 1, 38, 0, 100, 1, 1, 1, 0, 0, 53, 0, 1467330, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 7, 1, 38, 0, 100, 1, 1, 2, 0, 0, 53, 0, 43276, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 2, 3, 40, 0, 100, 0, 16, 1467331, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 43279, 10, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 5, 3, 40, 0, 100, 0, 16, 1687730, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 43279, 10, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 4, 3, 40, 0, 100, 0, 18, 43276, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 43279, 10, 0, 0, 0, 0, 0, ''),
(@GNOMEREGAN_RECRUIT, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE `entry` IN (1467331,1687730,4050010);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES
(1467331, 1, -5126.78, 433.107, 396.543),
(1467331, 2, -5125.47, 424.28, 396.615),
(1467331, 3, -5124.64, 418.707, 396.609),
(1467331, 4, -5127.15, 412.459, 396.609),
(1467331, 5, -5129.28, 402.915, 396.609),
(1467331, 6, -5129.5, 393.378, 396.609),
(1467331, 7, -5128.91, 384.655, 396.609),
(1467331, 8, -5127.51, 375.036, 396.609),
(1467331, 9, -5127.79, 365.664, 396.608),
(1467331, 10, -5125.92, 345.043, 395.279),
(1467331, 11, -5122.28, 330.203, 394.216),
(1467331, 12, -5115.96, 318.753, 394.139),
(1467331, 13, -5106.23, 308.745, 394.139),
(1467331, 14, -5095.38, 296.566, 394.225),
(1467331, 15, -5093.17, 284.605, 393.919),
(1467331, 16, -5080.64, 281.121, 394.712);


DELETE FROM `waypoints` WHERE `entry`=1467331;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1467331, 1, -5126.78, 433.107, 396.543, 'Gnomeregan Recruit'),
(1467331, 2, -5125.47, 424.28, 396.615, 'Gnomeregan Recruit'),
(1467331, 3, -5124.64, 418.707, 396.609, 'Gnomeregan Recruit'),
(1467331, 4, -5127.15, 412.459, 396.609, 'Gnomeregan Recruit'),
(1467331, 5, -5129.28, 402.915, 396.609, 'Gnomeregan Recruit'),
(1467331, 6, -5129.5, 393.378, 396.609, 'Gnomeregan Recruit'),
(1467331, 7, -5128.91, 384.655, 396.609, 'Gnomeregan Recruit'),
(1467331, 8, -5127.51, 375.036, 396.609, 'Gnomeregan Recruit'),
(1467331, 9, -5127.79, 365.664, 396.608, 'Gnomeregan Recruit'),
(1467331, 10, -5125.92, 345.043, 395.279, 'Gnomeregan Recruit'),
(1467331, 11, -5122.28, 330.203, 394.216, 'Gnomeregan Recruit'),
(1467331, 12, -5115.96, 318.753, 394.139, 'Gnomeregan Recruit'),
(1467331, 13, -5106.23, 308.745, 394.139, 'Gnomeregan Recruit'),
(1467331, 14, -5095.38, 296.566, 394.225, 'Gnomeregan Recruit'),
(1467331, 15, -5078.98, 293.145, 395.271, 'Gnomeregan Recruit'),
(1467331, 16, -5066.85, 291.61, 394.08, 'Gnomeregan Recruit');


DELETE FROM `waypoints` WHERE `entry`=43276;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(43276, 1, -5187.82, 458.218, 388.542, 'Gnomeregan Recruit'),
(43276, 2, -5189.86, 454.828, 388.599, 'Gnomeregan Recruit'),
(43276, 3, -5191.75, 452.313, 388.65, 'Gnomeregan Recruit'),
(43276, 4, -5196.12, 448.941, 388.801, 'Gnomeregan Recruit'),
(43276, 5, -5217.46, 426.248, 390.238, 'Gnomeregan Recruit'),
(43276, 6, -5226.68, 418.654, 390.755, 'Gnomeregan Recruit'),
(43276, 7, -5243.1, 410.138, 391.564, 'Gnomeregan Recruit'),
(43276, 8, -5268.65, 394.35, 392.378, 'Gnomeregan Recruit'),
(43276, 9, -5296.45, 383.987, 392.877, 'Gnomeregan Recruit'),
(43276, 10, -5315.46, 379.954, 393.136, 'Gnomeregan Recruit'),
(43276, 11, -5330.36, 375.766, 393.276, 'Gnomeregan Recruit'),
(43276, 12, -5342.88, 369.837, 394.017, 'Gnomeregan Recruit'),
(43276, 13, -5348.59, 366.042, 394.441, 'Gnomeregan Recruit'),
(43276, 14, -5350.09, 364.76, 394.556, 'Gnomeregan Recruit'),
(43276, 15, -5355.03, 357.464, 394.94, 'Gnomeregan Recruit'),
(43276, 16, -5361.01, 340.438, 394.714, 'Gnomeregan Recruit'),
(43276, 17, -5362.87, 328.76, 394.238, 'Gnomeregan Recruit'),
(43276, 18, -5364.52, 312.721, 394.176, 'Gnomeregan Recruit');
