-- Ilithane spell_area change auras Quest Invisibility Detection
DELETE FROM `spell_area` WHERE `spell`=49417 AND `area`=188;
DELETE FROM `spell_area` WHERE `spell`=49416 AND `area`=188;
DELETE FROM `spell_area` WHERE `spell`=60922 AND `area`=188;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(49417,188,28713,28713,0,-1,0,2,3,9,2), -- cast aura Invisibility Detection 49417 phase 1
(49416,188,28713,28714,0,-1,0,2,3,66,2), -- cast aura Invisibility Detection 49416 phase 2
(60922,188,28714,0,0,-1,0,2,1,66,0); -- cast aura Invisibility Detection 60922 phase 3

-- Remove aura invisibility 49417 on player
DELETE FROM `spell_linked_spell`WHERE `spell_trigger`=49416 AND `spell_effect`=-49417;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(49416, -49417, 2, 'aura 2 removed aura 1');

-- Remove aura invisibility 49416 on player
DELETE FROM `spell_linked_spell`WHERE `spell_trigger`=60922 AND `spell_effect`=-49416;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(60922, -49416, 2, 'aura 3 removed aura 2');

-- NPC Ilithane spawn #2079
-- Ilithane phase 1
DELETE FROM `creature` WHERE `guid`=277148 AND `id`=2079;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(277148,2079,1,0,0,1,0,0,0,-1,0,0,10312.7,830.122,1326.53,2.37365,120,0,0,1,0,0,0,0,0,0,0,'',0);

-- Ilithane phase 2
DELETE FROM `creature` WHERE `guid`=277146 AND `id`=2079;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(277146,2079,1,0,0,1,0,0,0,-1,0,0,10322.9,820.333,1326.23,5.55015,120,0,0,1,0,0,0,0,0,0,0,'',0);

-- Ilithane phase 3
DELETE FROM `creature` WHERE `guid`=277147 AND `id`=2079;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(277147,2079,1,0,0,1,0,0,0,-1,0,0,10312.7,830.055,1326.52,5.41052,120,0,0,1,0,0,0,0,0,0,0,'',0);

-- NPC Ilithane creature_addon
DELETE FROM `creature_addon` WHERE `guid`=277146 AND `auras`=60921;
DELETE FROM `creature_addon` WHERE `guid`=277147 AND `auras`=49414;
DELETE FROM `creature_addon` WHERE `guid`=277148 AND `auras`=49415;
INSERT INTO `creature_addon`( `guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES
(277146,0,0,65536,1,0,0,0,0,60921), -- Aura Invi 60921
(277147,0,0,65536,1,0,0,0,0,49414), -- Aura Invi 49414
(277148,0,0,65536,1,0,0,0,0,49415); -- Aura Invi 49415

-- NPC Ilithane creature_addon_template
DELETE FROM `creature_template_addon` WHERE entry=2079;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(2079, 0, 0, 0, 4097, 0, 0, 0, 0, NULL);

-- Change Prev Quest like Blizzlike
UPDATE `quest_template_addon` SET `PrevQuestID`=28713 WHERE  `ID`=28715;

-- Fix creature_template and creature_template_loot NPC 1988 quest 28714
UPDATE `creature_template` SET `lootid` = 1988 WHERE `entry` = 1988 AND `lootid` = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = 1988;
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1988, 117, 0, 0.1469502, 0, 1, 0, 1, 1,''),
(1988, 159, 0, 0.08802094, 0, 1, 0, 1, 1,''),
(1988, 805, 0, 0.08279937, 0, 1, 0, 1, 1,''),
(1988, 828, 0, 0.1036857, 0, 1, 0, 1, 1,''),
(1988, 1374, 0, 0.01939445, 0, 1, 0, 1, 1,''),
(1988, 1378, 0, 0.02014039, 0, 1, 0, 1, 1,''),
(1988, 1380, 0, 0.02163227, 0, 1, 0, 1, 1,''),
(1988, 2589, 0, 0.02088633, 0, 1, 0, 1, 2,''),
(1988, 3297, 0, 83, 1, 1, 0, 1, 1,''),
(1988, 4496, 0, 0.09846411, 0, 1, 0, 1, 1,''),
(1988, 5571, 0, 0.0760859, 0, 1, 0, 1, 1,''),
(1988, 5572, 0, 0.09398847, 0, 1, 0, 1, 1,''),
(1988, 23384, 0, 13.22104, 0, 1, 0, 1, 1,''),
(1988, 62391, 0, 0.01939445, 0, 1, 0, 1, 1,''),
(1988, 67310, 0, 81.35299, 0, 1, 0, 1, 1,'');

-- Fix creature_template and creature_template_loot NPC 1989 quest 28714
UPDATE `creature_template` SET `lootid` = 1989 WHERE `entry` = 1989 AND `lootid` = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = 1989;
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1989, 117, 0, 0.3983391, 0, 1, 0, 1, 1,''),
(1989, 159, 0, 0.1755393, 0, 1, 0, 1, 1,''),
(1989, 805, 0, 0.1417817, 0, 1, 0, 1, 1,''),
(1989, 828, 0, 0.08776964, 0, 1, 0, 1, 1,''),
(1989, 1366, 0, 0.05738784, 0, 1, 0, 1, 1,''),
(1989, 1374, 0, 0.05063633, 0, 1, 0, 1, 1,''),
(1989, 1377, 0, 0.05063633, 0, 1, 0, 1, 1,''),
(1989, 1380, 0, 0.05063633, 0, 1, 0, 1, 1,''),
(1989, 2210, 0, 0.05738784, 0, 1, 0, 1, 1,''),
(1989, 2211, 0, 0.05401209, 0, 1, 0, 1, 1,''),
(1989, 2652, 0, 0.05738784, 0, 1, 0, 1, 1,''),
(1989, 2654, 0, 0.0607636, 0, 1, 0, 1, 1,''),
(1989, 2656, 0, 0.09452115, 0, 1, 0, 1, 1,''),
(1989, 3297, 0, 48.37457, 1, 1, 0, 1, 1,''),
(1989, 4496, 0, 0.05063633, 0, 1, 0, 1, 1,''),
(1989, 5571, 0, 0.08101813, 0, 1, 0, 1, 1,''),
(1989, 5572, 0, 0.08101813, 0, 1, 0, 1, 1,''),
(1989, 23384, 0, 13.38825, 0, 1, 0, 1, 1,''),
(1989, 67310, 0, 82.78027, 0, 1, 0, 1, 1,'');

-- Disable Quest 28734. Deprecated
DELETE FROM `disables` WHERE `sourcetype`=1 AND `entry`=28734;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(1,28734,0,'','','Deprecated quest: A Favor for Melithar');