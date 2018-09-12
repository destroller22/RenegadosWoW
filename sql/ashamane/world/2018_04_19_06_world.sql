-- quest 26364 http://www.wowhead.com/quest=26364/down-with-crushcog

-- NPC 42849 High Tinker Mekkatorque <King of Gnomes> (objetive)) SAI

/* Table creature_template */ UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42849; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42849);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42849, 0, 0, 0, 62, 0, 100, 0, 11662, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set phase 1'),
(42849, 0, 1, 0, 1, 1, 100, 1, 1000, 1000, 10000, 10000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk after 1 sec'),
(42849, 0, 2, 0, 1, 1, 100, 1, 15000, 15000, 10000, 10000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk after 15 sec'),
(42849, 0, 3, 0, 1, 1, 100, 1, 25000, 25000, 10000, 10000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk after 25 sec'),
(42849, 0, 4, 18, 1, 1, 100, 1, 32000, 32000, 10000, 10000, 53, 1, 428490, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start waypoint after 32 sec'),
(42849, 0, 5, 0, 40, 0, 100, 1, 6, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set phase 2 after waypoint reached'),
(42849, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn'),
(42849, 0, 17, 0, 1, 7, 100, 0, 120000, 120000, 120000, 120000, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn if idle for too long'),
(42849, 0, 18, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 42852, 30, 0, 0, 0, 0, 0, 'Send data 1 to Stronegrind after 32 sec');


DELETE FROM `gossip_menu` WHERE `MenuId`=11662;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES 
(11662, 16305, 25961);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=11662;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(11662, 0, 0, 'I am ready to start the assault!', 0, 1, 1, 25961);



-- High Tinker Mekkatorque <King of Gnomes> 42849
DELETE FROM `waypoints` WHERE `entry`=42849 or `entry`=428490;
INSERT INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(428490, 1, -5301.88, 138.601, 388.884, 'Mekkatorque Point 1'),
(428490, 2, -5296.53, 135.536, 386.115, 'Mekkatorque Point 2'),
(428490, 3, -5292.51, 133.086, 386.115, 'Mekkatorque Point 3'),
(428490, 4, -5274.01, 125.106, 392.335, 'Mekkatorque Point 4'),
(428490, 5, -5274.01, 125.106, 392.335, 'Mekkatorque Point 5'),
(428490, 6, -5255.77, 122.326, 393.795, 'Mekkatorque Point 6');

-- High Tinker Mekkatorque <King of Gnomes> 42849 creature_text
DELETE FROM `creature_text` WHERE `CreatureID`=42849;
INSERT INTO `creature_text` (`CreatureID`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(42849, 0, 1, 'Mekgineer Thermaplugg refuses to acknowledge that his defeat is imminent! He has sent Razlo Crushcog to prevent us from rebuilding our beloved Gnomeregan!', 12, 0, 100, 0, 0, 20890, 'Mekkatorque talk'),
(42849, 1, 1, 'But our brave friend here has thwarted his plans at every turn, and the dwarves of Ironforge stand with us!.', 12, 0, 100, 0, 0, 20891, 'Mekkatorque talk'),
(42849, 2, 1, 'Lets send him crawling back to his master in defeat!.', 12, 0, 100, 0, 0, 20892, 'Mekkatorque talk'),
(42849, 3, 1, 'Weve done it! Were victorious!', 12, 0, 100, 0, 0, 20893, 'Mekkatorque talk'),
(42849, 4, 1, 'Thermaplugg will be quaking in his mechano-tank when he hears of our victory! Well deal with him later. Head back to town and Ill meet you there for the celebration!', 12, 0, 100, 0, 0, 20894, 'Mekkatorque talk');



-- Quest 26364 SAI NPC 42860 Kill Credit Razlo Crushcog
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=42860;

DELETE FROM `creature` WHERE `guid`=210112069;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(210112069, 42860, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5248.07, 119.701, 394.347, 3.1902, 300, 0, 0, 1740, 0, 0, 0, 0, 0, 0, 0, '', 0);


/* Table creature_template */ UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42860; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42860);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42860, 0, 0, 0, 10, 0, 100, 0, 1, 100, 0, 0, '', 33, 42860, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, '-Razlo Crushcog kill credit quest 26364, rango de 1-a 100');