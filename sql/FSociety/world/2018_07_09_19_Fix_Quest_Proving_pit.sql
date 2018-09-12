DELETE FROM `smart_scripts` WHERE `entryorguid`=39062;
DELETE FROM `smart_scripts` WHERE `entryorguid`=-251546;
DELETE FROM `smart_scripts` WHERE `entryorguid`=-251547;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3906200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3906201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3814200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3814201;


DELETE FROM `creature` WHERE `guid`=252672;
DELETE FROM `creature` WHERE `guid`=210115344;
DELETE FROM `creature` WHERE `guid`=210115440;
DELETE FROM `creature` WHERE `guid`=210115550;
DELETE FROM `creature` WHERE  `guid`=251547;
DELETE FROM `creature` WHERE  `guid`=252630;
DELETE FROM `creature` WHERE  `guid`=502001;


DELETE FROM `creature` WHERE `guid`=252672;
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=38142;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(252672, 38142, 1, 6453, 4865, 1, 0, 0, 0, -1, 6764, 0, -1135.87, -5414.14, 13.3523, 3.36848, 45, 0, 0, 106, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=10974;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(10974, 0, 0, 'I\'m ready to face my challenge.', 0, 1, 1, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup` IN (10974);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 10974, 0, 0, 0, 9, 0, 24768, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24768'),
(15, 10974, 0, 0, 1, 9, 0, 24642, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24642'),
(15, 10974, 0, 0, 2, 9, 0, 24754, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24754'),
(15, 10974, 0, 0, 3, 9, 0, 24762, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24762'),
(15, 10974, 0, 0, 4, 9, 0, 24774, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24774'),
(15, 10974, 0, 0, 5, 9, 0, 24780, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24780'),
(15, 10974, 0, 0, 6, 9, 0, 24786, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 24786'),
(15, 10974, 0, 0, 7, 9, 0, 26276, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 26276'),
(15, 10974, 0, 0, 8, 9, 0, 31161, 0, 0, 0, 0, 0, '', 'Gossip Only Shows if Player has Quest 31161');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39062;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39062, 0, 0, 1, 62, 0, 100, 0, 10974, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - On Gossip Option - Close Gossip'),
(39062, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 53, 1, 39062, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Start Waipoints'),
(39062, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 39062, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Update Quest'),
(39062, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Link - Remove Gossip Flag'),
(39062, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Link - Remove Gossip Flag'),
(39062, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Link - Remove Gossip Flag'),
(39062, 0, 6, 0, 40, 0, 100, 0, 2, 39062, 0, 0, '', 80, 3906200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - End Waipoints - Start Script 1'),
(39062, 0, 7, 8, 38, 0, 100, 0, 1, 0, 0, 0, '', 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Update - Set Orientation 6,19592'),
(39062, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - Update - Set Orientation 6,19592'),
(39062, 0, 9, 0, 60, 0, 100, 0, 0, 0, 2000, 3000, '', 66, 1.85005, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1.85005, 'Darkspear Jailor - Update - Set Orientation 6,19592'),
(3906200, 9, 0, 0, 0, 0, 100, 0, 150, 500, 0, 0, '', 9, 0, 0, 0, 0, 0, 0, 15, 201968, 30, 0, 0, 0, 0, 0, 'Darkspear Jailor - Update - Activate Gameobject'),
(3906200, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 10, 252672, 38142, 0, 0, 0, 0, 0, 'Darkspear Jailor - Update - Start Script (Naga)'),
(3906200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 53, 0, 390620, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Jailor - End Waipoints - Start Script 1');


DELETE FROM `smart_scripts` WHERE `entryorguid`=38142;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38142, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 18, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - Link - Remove Flag Immune To Players'),
(38142, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 32, 0, 0, 0, 0, 0, 0, 20, 201968, 30, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - On Respawn - Reset Cage'),
(38142, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, '', 45, 1, 0, 0, 0, 0, 0, 19, 39062, 35, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - On Death - Set Data 1-0 to Jailor'),
(38142, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - On Death - Set Data 1-0 to Jailor'),
(38142, 0, 4, 0, 38, 0, 100, 0, 1, 1, 0, 0, '', 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, -1145.488281, -5415.474609, 10.598297, 0, 'Captive Spitescale Scout - Update - Move Forward'),
(38142, 0, 5, 6, 34, 0, 100, 0, 8, 1, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - On Movement Inform - Say Line 0'),
(38142, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, '', 19, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - Update - Return Gossip Flag to Jailor'),
(38142, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - Link - Set Home Pos'),
(38142, 0, 8, 0, 11, 0, 100, 0, 0, 0, 0, 0, '', 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captive Spitescale Scout - Link - Set Home Pos');

-- Waipoints
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=39062;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=38142;

DELETE FROM `waypoints` WHERE `entry`=39062;
DELETE FROM `waypoints` WHERE `entry`=38142;
DELETE FROM `waypoints` WHERE `entry`=390620;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(39062,1,-1137.318,-5429.087,13.88843,'Darkspear Jailor'),
(39062,2,-1136.257324,-5416.376953,13.269497 ,'Darkspear Jailor'),
(390620,1,-1137.023193,-5428.901367,13.687312 ,'Darkspear Jailor'),
(390620,2,-1143.19, -5429.96, 13.9727,'Darkspear Jailor'),
(390620,3,-1143.38, -5429.88, 13.8519,'Darkspear Jailor');

-- Text
DELETE FROM `creature_text` WHERE `CreatureID`=38142;
DELETE FROM `creature_text` WHERE `CreatureID`=39062;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `comment`) VALUES 
(39062, 0, 0, 'Get in the pit and show us your stuff,  $G boy:girl;.', 12, 0, 100, 1, 0, 0, 0, 'Jailor'),
(39062, 1, 0, 'Well done,  $n!', 12, 0, 100, 0, 0, 0, 0,'Jailor'),
(38142, 0, 0, 'They sssend you to your death youngling.', 12, 0, 100, 0, 0, 0, 0,'Captive Spitescale Scout Quote 1'),
(38142, 0, 1, 'I sshal ssslaughter you, Darksspear runt!', 12, 0, 100, 0, 0, 0, 0,'Captive Spitescale Scout Quote'),
(38142, 1, 0, 'The Sssea Witch will kill you all.', 12, 0, 100, 0, 0, 0, 0,'Captive Spitescale Scout Quote 4');

DELETE FROM `smart_scripts` WHERE  `entryorguid`=201968 AND `source_type`=1 AND `id`=0 AND `link`=0;


UPDATE `gameobject_template` SET `AIName`='' WHERE  `entry`=201968;
UPDATE `gameobject_template` SET `AIName`='' WHERE  `entry`=201968;
UPDATE `gameobject_template_addon` SET `flags`=16 WHERE  `entry`=201968;