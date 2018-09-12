-- quest 26208 http://www.wowhead.com/quest=26208/the-fight-continues
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=42463; 

/*DELETE FROM `creature` WHERE `id`=42463;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(42463, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5133.56, 494.429, 396.451, 5.29334, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0);*/

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42463;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42463;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`, `action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(42463,0,0,0,10,0,100,0,1,10,0,0,33,42463,0,0,0,0,0,18,20,0,0,0,0,0,0,'-Aprende sobre las Operaciones kill credit quest 26208, rango de 1-a 10' );
