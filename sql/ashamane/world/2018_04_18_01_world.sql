-- Quest 25841    http://www.wowhead.com/quest=25841/strike-from-above

-- NPC 41372

UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=41372; 

DELETE FROM `creature` WHERE (id = 41372);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(210112073, 41372, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5716.24, -1025.09, 394.835, 5.09476, 300, 0, 0, 87, 60, 0, 0, 0, 0, 0, 0, '', 0);

-- NPC 41372 SAI

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=41372;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41372;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`, `action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(41372,0,0,0,10,0,100,0,1,100,0,0,33,41372,0,0,0,0,0,18,20,0,0,0,0,0,0,'-A kill credit quest 25841, rango de 1 a 100' );


-- NPC 41373 

UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=41373; 

DELETE FROM `creature` WHERE (id = 41373);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(210112076, 41373, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5809.66, -956.158, 393.454, 2.36942, 300, 0, 0, 87, 60, 0, 0, 0, 0, 0, 0, '', 0);

-- NPC 41373 SAI

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=41373;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41373;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`, `action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(41373,0,0,0,10,0,100,0,1,100,0,0,33,41373,0,0,0,0,0,18,20,0,0,0,0,0,0,'- kill credit quest 25841, rango de 1 a 100' );
