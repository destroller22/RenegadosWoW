    /*//////////////////////////////////////////
   //  FunSocietyWoW - SAI DEV          //
  //  Copyright 2018 FunSocietyWoW  //
 //  All Rights Reserved                    //
////////////////////////////////////////////

/*#############
# Mardum Part - 1   #
#############*/

-- Kayn Sunfury Wellcome SAI
SET @KAYN_SUNFURY_WELLCOME := 93011;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KAYN_SUNFURY_WELLCOME;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KAYN_SUNFURY_WELLCOME AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KAYN_SUNFURY_WELLCOME,0,0,0,19,0,100,0,40077,0,0,0,66,0,0,0,0,0,0,21,5,0,0,0,0,0,0,"Kayn Sunfury - On Quest 'The Invasion Begins' Taken - Set Orientation Closest Player"),
(@KAYN_SUNFURY_WELLCOME,0,1,0,19,0,100,0,40077,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Quest 'The Invasion Begins' Taken - Say Line 0"),
(@KAYN_SUNFURY_WELLCOME,0,2,0,52,0,100,0,0,93011,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Text 0 Over - Say Line 1"),
(@KAYN_SUNFURY_WELLCOME,0,3,0,52,0,100,0,1,93011,0,0,1,0,3000,0,0,0,0,11,98292,30,0,0,0,0,0,"Kayn Sunfury - On Text 1 Over - Say Line 0");

DELETE FROM `creature_text` WHERE `CreatureID` = 93011;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(93011, 0, 0, 'You heard Lord Illidan. Let\'s find that Keystone.', 12, 0, 100, 0, 0, 55248, 0, 0, 'Kayn Sunfury to Player'),
(93011, 1, 0, 'With it, We\'ll be able to invade any Legion World, even Argus.', 12, 0, 100, 0, 0, 55246, 0, 0, 'Kayn Sunfury to Player');

DELETE FROM `creature_addon` WHERE `guid` = 20540920;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
('20540920', '0', '0', '0', '1', '0', '0', '0', '0', '199303');

-- Kor'vas Bloodthorn SAI
SET @KOR_VAS_BLOODTHORN := 98292;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KOR_VAS_BLOODTHORN;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KOR_VAS_BLOODTHORN AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KOR_VAS_BLOODTHORN,0,0,0,52,0,100,0,1,93011,0,0,1,0,2000,0,0,0,0,11,93011,50,0,0,0,0,0,"Kor'vas Bloodthorn - On Text 1 Over - Say Line 0");

DELETE FROM `creature_text` WHERE `CreatureID` = 98292;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(98292, 0, 0, 'Kill them all!', 14, 0, 100, 0, 0, 55284, 0, 0, "Kor'\vas Bloodthorn to Player");

DELETE FROM `creature_addon` WHERE `guid` = 20540919;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
('20540919', '0', '0', '0', '1', '0', '0', '0', '0', '199303');

-- GO Legion Banner SAI
SET @GO_LEGION_BANNER := 250560;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI",`ScriptName`='' WHERE `entry`=@GO_LEGION_BANNER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GO_LEGION_BANNER AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GO_LEGION_BANNER,1,0,0,70,0,100,0,2,0,0,0,11,191677,0,0,0,0,0,7,0,0,0,0,0,0,0,"Legion Banner - On Gameobject State Changed - Cast 'Scene - Mardum Legion Banner'");

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=191677 AND `spell_effect`=59074;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
('191677', '59074', '0', 'Spell Scene Mardum Legion Banner apply aura Phase 2');

-- Kayn Sunfury Invasion SAI
SET @KAYN_SUNFURY_INVASION := 98229;
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`='' WHERE `entry`=@KAYN_SUNFURY_INVASION;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KAYN_SUNFURY_INVASION AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KAYN_SUNFURY_INVASION,0,0,0,19,0,100,0,40378,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Quest 'Enter the Illidari: Ashtongue' Taken - Say Line 0"),
(@KAYN_SUNFURY_INVASION,0,1,0,52,0,100,0,0,98229,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Text 0 Over - Say Line 1");

DELETE FROM `creature_text` WHERE `CreatureID` = 98229;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(98229, 0, 0, 'Activate all three gateways and summon in the rest of our forces.', 12, 0, 100, 0, 0, 55244, 0, 0, 'Kayn Sunfury to Player'),
(98229, 1, 0, 'I''ll cut a hole through the demons and meet you in the volcano.', 12, 0, 100, 0, 0, 55245, 0, 0, 'Kayn Sunfury to Player');

-- Sevis Brightflame SAI - Thanks to Arthas
DELETE FROM conditions WHERE SourceTypeOrReferenceId IN (22) AND SourceEntry IN (99916);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, Elsegroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, COMMENT) VALUES
(22, 1, 99916, 0, 1, 9, 0, 40378, 0, 0, 0, ''),
(22, 1, 99916, 0, 1, 31, 0, 4, 0, 0, 0, ''),
(22, 2, 99916, 0, 1, 48, 0, 88872, 0, 0, 0, ''),
(22, 2, 99916, 0, 1, 31, 0, 4, 0, 0, 0, '');

SET @SEVIS_BRIGHTFLAME := 99916;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SEVIS_BRIGHTFLAME;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SEVIS_BRIGHTFLAME AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SEVIS_BRIGHTFLAME*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SEVIS_BRIGHTFLAME,0,0,1,10,0,100,1,1,15,25000,25000,1,0,10000,0,0,0,0,18,15,0,0,0,0,0,0,"Sevis Brightflame - Within 1-15 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@SEVIS_BRIGHTFLAME,0,1,0,61,0,100,1,1,15,25000,25000,80,@SEVIS_BRIGHTFLAME*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - Within 1-15 Range Out of Combat LoS - Run Script (No Repeat)"),
(@SEVIS_BRIGHTFLAME,0,2,0,40,0,100,0,7,@SEVIS_BRIGHTFLAME*100+01,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Waypoint 7 Reached - Despawn Instant"),
(@SEVIS_BRIGHTFLAME*100+00,9,0,0,0,0,100,0,8000,8000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Script - Say Line 1"),
(@SEVIS_BRIGHTFLAME*100+00,9,1,0,0,0,100,0,0,0,0,0,43,0,64385,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Script - Mount To Creature Nightsaber Mount"),
(@SEVIS_BRIGHTFLAME*100+00,9,2,0,0,0,100,0,1500,1500,0,0,53,1,@SEVIS_BRIGHTFLAME*100+01,0,0,1000,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Script - Start Waypoint");

DELETE FROM `creature_text` WHERE `CreatureID` = 99916;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('99916', '0', '0', 'Plenty of souls were sacrificed here. The activator is powered.', '12', '0', '100', '273', '0', '55344', '101656', '0', 'Sevis Brightflame to Player'),
('99916', '1', '0', 'I will move ahead and find Allari.', '12', '0', '100', '0', '0', '55346', '101657', '0', 'Sevis Brightflame to Player');

DELETE FROM `waypoints` WHERE `entry` = 9991601;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
('9991601', '1', '1019.22', '2860.14', '4.30371', 'Sevis Brightflame'),
('9991601', '2', '1007.52', '2877.45', '3.52412', 'Sevis Brightflame'),
('9991601', '3', '995.340', '2885.70', '1.22810', 'Sevis Brightflame'),
('9991601', '4', '975.140', '2891.02', '-3.61031', 'Sevis Brightflame'),
('9991601', '5', '954.105', '2903.65', '-10.7511', 'Sevis Brightflame'),
('9991601', '6', '917.208', '2902.71', '-19.7940', 'Sevis Brightflame'),
('9991601', '7', '884.422', '2891.49', '-22.3321', 'Sevis Brightflame');

-- Fel Spreader SAI
SET @FEL_SPREADER := 97142;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@FEL_SPREADER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FEL_SPREADER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@FEL_SPREADER,0,0,1,73,0,100,0,0,0,0,0,11,191827,6,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Spreader - On Spellclick - Cast 'Fel Spreader Destroyed'"),
(@FEL_SPREADER,0,1,2,61,0,100,1,0,0,0,0,206,581,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Spreader - On Spellclick Play Conversation"),
(@FEL_SPREADER,0,2,3,61,0,100,0,0,0,0,0,11,207508,16,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Spreader - On Spellclick - Cast 'Fel Spreader Explosion'"),
(@FEL_SPREADER,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Spreader - On Spellclick - Despawn Instant");

-- Legion Communicator SAI
SET @GO_LEGION_COMMUNICATOR := 244439;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@GO_LEGION_COMMUNICATOR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GO_LEGION_COMMUNICATOR AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GO_LEGION_COMMUNICATOR,1,0,1,64,0,100,0,0,0,0,0,206,558,0,0,0,0,0,7,0,0,0,0,0,0,0,"Legion Communicator - On Gossip Hello - Play Conversation"),
(@GO_LEGION_COMMUNICATOR,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Legion Communicator - On Gossip Hello - Close Gossip");

-- Allari the Souleater SAI
SET @ALLARI_THE_SOULEATER := 94410;
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`="" WHERE `entry`=@ALLARI_THE_SOULEATER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ALLARI_THE_SOULEATER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ALLARI_THE_SOULEATER,0,0,0,10,0,100,0,1,20,500,500,11,188437,2,0,0,0,0,11,105316,20,0,0,0,0,0,"Allari the Souleater - Within 1-20 Range Out of Combat LoS - Cast 'Channeling cosmetic on npc Questioner Arev'naal'"),
(@ALLARI_THE_SOULEATER,0,1,2,1,0,100,512,1000,1000,1000,1000,33,@ALLARI_THE_SOULEATER,0,0,0,0,0,18,10,0,0,0,0,0,0,"Allari the Souleater - Out of Combat - Quest Credit ''"),
(@ALLARI_THE_SOULEATER,0,2,3,61,0,100,512,1000,1000,1000,1000,33,101534,0,0,0,0,0,18,10,0,0,0,0,0,0,"Allari the Souleater - Out of Combat - Quest Credit ''"),
(@ALLARI_THE_SOULEATER,0,3,0,61,0,100,512,1000,1000,1000,1000,33,97831,0,0,0,0,0,18,10,0,0,0,0,0,0,"Allari the Souleater - Out of Combat - Quest Credit ''"),
(@ALLARI_THE_SOULEATER,0,4,0,10,0,100,1,1,30,25000,25000,1,0,5000,0,0,0,0,18,30,0,0,0,0,0,0,"Allari the Souleater - Within 1-30 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@ALLARI_THE_SOULEATER,0,5,0,19,0,100,0,39049,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Allari the Souleater - On Quest 'Eye On the Prize' Taken - Say Line 1");

DELETE FROM `creature_text` WHERE `CreatureID` = 94410;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('94410', '0', '0', '$n, over here.', '12', '0', '100', '0', '0', '55011', '96441', '0', 'Allari the Souleater to Player'),
('94410', '1', '0', 'Good luck. I will make my way up to the foothold as soon as I am done with this demon.', '12', '0', '100', '0', '0', '55012', '0', '0', 'Allari the Souleater to Player');

-- Questioner Arev'naal
DELETE FROM `creature` WHERE `guid`=984514 AND `id`=105316;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
('984514', '105316', '1481', '7705', '7741', '1', '0', '0', '0', '-1', '0', '0', '822.512', '2744.77', '-30.9782', '1.43203', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420');

DELETE FROM `creature_template_addon` WHERE `entry` = 105316;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
('105316', '0', '0', '50331648', '1', '64', '0', '0', '0', '');

-- Sevis Brightflame SAI
SET @SEVIS_BRIGHFLAME_2 := 100982;
UPDATE `creature` SET `spawntimesecs`=120 WHERE `guid`=20541160 AND `id`=@SEVIS_BRIGHFLAME_2;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SEVIS_BRIGHFLAME_2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SEVIS_BRIGHFLAME_2 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SEVIS_BRIGHFLAME_2,0,0,0,19,0,100,0,40379,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Quest 'Enter the Illidari: Coilskar' Taken - Say Line 0"),
(@SEVIS_BRIGHFLAME_2,0,1,2,52,0,100,0,0,@SEVIS_BRIGHFLAME_2,0,0,12,@SEVIS_BRIGHFLAME_2*100+00,6,0,0,0,0,8,0,0,0,826.903,2758.64,-30.5066,4.405,"Sevis Brightflame - On Text 0 Over - Summon Creature 'Sevis Brightflame'"),
(@SEVIS_BRIGHFLAME_2,0,2,0,61,0,100,0,0,@SEVIS_BRIGHFLAME_2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Text 0 Over - Despawn Instant");

DELETE FROM `creature_text` WHERE `CreatureID` = 100982;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('100982', '0', '0', 'I will meet you down at the gateway on the Molten Shore.', '12', '0', '100', '0', '0', '55352', '103349', '0', 'Sevis Brightflame to Player');

-- Sevis Brightflame Summon SAI
SET @SEVIS_BRIGHFLAME_2_SUMMON := 10098200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SEVIS_BRIGHFLAME_2_SUMMON;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SEVIS_BRIGHFLAME_2_SUMMON AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SEVIS_BRIGHFLAME_2_SUMMON,0,0,1,25,0,100,0,0,0,0,0,43,0,64385,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Reset - Mount To Model 64385"),
(@SEVIS_BRIGHFLAME_2_SUMMON,0,1,0,61,0,100,0,0,0,0,0,53,1,@SEVIS_BRIGHFLAME_2_SUMMON,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Reset - Start Waypoint"),
(@SEVIS_BRIGHFLAME_2_SUMMON,0,2,0,40,0,100,0,10,@SEVIS_BRIGHFLAME_2_SUMMON,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sevis Brightflame - On Waypoint 10 Reached - Despawn Instant");

DELETE FROM `creature_template` WHERE `entry`=@SEVIS_BRIGHFLAME_2_SUMMON;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@SEVIS_BRIGHFLAME_2_SUMMON, '0', '0', '0', '0', '0', '66396', '0', '0', '0', 'Sevis Brightflame', '', 'Illidari', NULL, NULL, '0', '99', '99', '5', '0', '0', '2838', '2', '1', '1.14286', '1', '1', '0', '2000', '2000', '1', '1', '1', '33536', '2048', '0', '0', '0', '0', '0', '0', '7', '0', '32768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartAI', '0', '3', '1', '9', '1', '5', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '25549');

DELETE FROM `creature_template_addon` WHERE `entry`=@SEVIS_BRIGHFLAME_2_SUMMON;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@SEVIS_BRIGHFLAME_2_SUMMON, '0', '0', '0', '1', '0', '0', '0', '0', NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=@SEVIS_BRIGHFLAME_2_SUMMON;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(@SEVIS_BRIGHFLAME_2_SUMMON, '1', '128369', '0', '0', '128369', '0', '0', '0', '0', '0', '0');

DELETE FROM `waypoints` WHERE `entry` = @SEVIS_BRIGHFLAME_2_SUMMON;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@SEVIS_BRIGHFLAME_2_SUMMON,  0 ,824.799, 2767.98, -30.7851, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  1 ,822.5, 2771.05, -30.7231, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  2 ,815.805, 2772.8, -31.2942, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  3 ,807.373, 2771.48, -32.8644, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  4 ,799.948, 2768.23, -34.336, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  5 ,790.697, 2762.67, -36.0985, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  6 ,776.989, 2752.63, -40.3708, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  7 ,770.112, 2744.45, -42.8945, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  8 ,764.13, 2734.48, -45.4303, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  9 ,760.558, 2724.53, -47.0802, 'Comment'),
(@SEVIS_BRIGHFLAME_2_SUMMON,  10 ,752.779, 2709.71, -50.5295, 'Comment');

-- ELM General Purpose Bunny (scale x0.01) SAI
SET @ELM_GENERAL_PURPOSE_BUNNY := 24021;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ELM_GENERAL_PURPOSE_BUNNY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ELM_GENERAL_PURPOSE_BUNNY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ELM_GENERAL_PURPOSE_BUNNY,0,0,0,1,0,100,0,500,500,500,500,11,188437,2,0,0,0,0,11,94410,20,0,0,0,0,0,"ELM General Purpose Bunny (scale x0.01) - Out of Combat - Cast 'Channeling cosmetic on Allari the Souleater");

-- Wrath Warrior SAI
SET @WRATH_WARRIOR := 98486;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@WRATH_WARRIOR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@WRATH_WARRIOR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@WRATH_WARRIOR*100+01,@WRATH_WARRIOR*100+02,@WRATH_WARRIOR*100+03,@WRATH_WARRIOR*100+04,@WRATH_WARRIOR*100+05,@WRATH_WARRIOR*100+06) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@WRATH_WARRIOR,0,0,0,26,0,75,1,0,10,0,0,87,@WRATH_WARRIOR*100+01,@WRATH_WARRIOR*100+02,@WRATH_WARRIOR*100+03,@WRATH_WARRIOR*100+04,@WRATH_WARRIOR*100+05,@WRATH_WARRIOR*100+06,1,0,0,0,0,0,0,0,"Wrath Warrior - In Combat LoS - Run Random Script (No Repeat)"),
(@WRATH_WARRIOR*100+01,9,0,0,0,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 0"),
(@WRATH_WARRIOR*100+02,9,0,0,0,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 1"),
(@WRATH_WARRIOR*100+03,9,0,0,0,0,100,0,0,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 2"),
(@WRATH_WARRIOR*100+04,9,0,0,0,0,100,0,0,0,0,0,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 3"),
(@WRATH_WARRIOR*100+05,9,0,0,0,0,100,0,0,0,0,0,1,4,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 4"),
(@WRATH_WARRIOR*100+06,9,0,0,0,0,100,0,0,0,0,0,1,5,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath Warrior - On Script - Say Line 5");

DELETE FROM `creature_text` WHERE `CreatureID` = 98486;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(98486, 0, 0, 'You are outmatched and outnumbered.', 12, 0, 100, 0, 0, 55367, 0, 'Wrath Warrior to Player'),
(98486, 1, 0, 'This is where you die.', 12, 0, 100, 0, 0, 55362, 0, 'Wrath Warrior to Player'),
(98486, 2, 0, 'You will not gain the keystone.', 12, 0, 100, 0, 0, 55365, 0, 'Wrath Warrior to Player'),
(98486, 3, 0, 'I live to serve.', 12, 0, 100, 0, 0, 55363, 0, 'Wrath Warrior to Player'),
(98486, 4, 0, 'My life for the Legion.', 12, 0, 100, 0, 0, 55364, 0, 'Wrath Warrior to Player'),
(98486, 5, 0, 'We will cleanse the universe in fire.', 12, 0, 100, 0, 0, 55370, 0, 'Wrath Warrior to Player');

-- Mo'arg Brute SAI
SET @MO_ARG_BRUTE := 98484;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@MO_ARG_BRUTE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MO_ARG_BRUTE AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@MO_ARG_BRUTE*100+01,@MO_ARG_BRUTE*100+02,@MO_ARG_BRUTE*100+03,@MO_ARG_BRUTE*100+04) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MO_ARG_BRUTE,0,0,0,26,0,100,1,1,15,0,0,87,@MO_ARG_BRUTE*100+01,@MO_ARG_BRUTE*100+02,@MO_ARG_BRUTE*100+03,@MO_ARG_BRUTE*100+04,0,0,1,0,0,0,0,0,0,0,"Mo'arg Brute - In Combat LoS - Run Random Script (No Repeat)"),
(@MO_ARG_BRUTE,0,1,0,0,0,100,0,1000,2000,8000,9000,11,200425,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mo'arg Brute - In Combat - Cast 'Brutal Slam'"),
(@MO_ARG_BRUTE*100+01,9,0,0,0,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'arg Brute - On Script - Say Line 0"),
(@MO_ARG_BRUTE*100+02,9,0,0,0,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'arg Brute - On Script - Say Line 1"),
(@MO_ARG_BRUTE*100+03,9,0,0,0,0,100,0,0,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'arg Brute - On Script - Say Line 2"),
(@MO_ARG_BRUTE*100+04,9,0,0,0,0,100,0,0,0,0,0,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'arg Brute - On Script - Say Line 3");

DELETE FROM `creature_text` WHERE `CreatureID` = 98484;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('98484', '0', '0', 'For Tyranna!', '14', '0', '100', '0', '0', '55329', '0', '0', 'Mo\'arg Brute to Player'),
('98484', '1', '0', 'I\'m going to destroy you, little demon hunter.', '14', '0', '100', '0', '0', '55325', '0', '0', "Mo\'arg Brute to Player"),
('98484', '2', '0', 'Taste my blade.', '14', '0', '100', '0', '0', '55327', '0', '0', "Mo\'arg Brute to Player"),
('98484', '3', '0', 'Ahahahahaha! I will cut you down.', '14', '0', '100', '0', '0', '55326', '0', '0', "Mo\'arg Brute to Player");

-- Foul Felstalker SAI
SET @FOUL_FELSTALKER := 98482;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@FOUL_FELSTALKER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FOUL_FELSTALKER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@FOUL_FELSTALKER,0,0,0,0,0,100,0,5000,8000,12000,15000,11,200417,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foul Felstalker - In Combat - Cast 'Foul Fel'");

-- Imp Mother SAI
SET @IMP_MOTHER := 98497;
UPDATE `creature_template` SET `InhabitType`=4, `AIName`="SmartAI" WHERE `entry`=@IMP_MOTHER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IMP_MOTHER AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@IMP_MOTHER*100+01,@IMP_MOTHER*100+02,@IMP_MOTHER*100+03,@IMP_MOTHER*100+04,@IMP_MOTHER*100+05,@IMP_MOTHER*100+06) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@IMP_MOTHER,0,0,0,26,0,100,1,1,15,0,0,87,@IMP_MOTHER*100+01,@IMP_MOTHER*100+02,@IMP_MOTHER*100+03,@IMP_MOTHER*100+04,@IMP_MOTHER*100+05,@IMP_MOTHER*100+06,1,0,0,0,0,0,0,0,"Imp Mother - In Combat LoS - Run Random Script (No Repeat)"),
(@IMP_MOTHER,0,1,0,0,0,100,0,2000,3000,15000,18000,11,200393,2,0,0,0,0,2,0,0,0,0,0,0,0,"Imp Mother - In Combat - Cast 'Rain of Imp'"),
(@IMP_MOTHER,0,2,0,0,0,100,1,1000,1000,5000,5000,1,2,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - In Combat - Say Line 2 (No Repeat)"),
(@IMP_MOTHER,0,3,0,2,0,100,1,30,40,0,0,1,4,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - Between 30-40% Health - Say Line 4 (No Repeat)"),
(@IMP_MOTHER,0,4,0,1,0,100,1,1000,1000,1000,1000,11,51733,2,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - Out of Combat - Cast 'Shadow Channelling' (No Repeat)"),
(@IMP_MOTHER,0,5,0,7,0,100,1,0,0,0,0,11,51733,2,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Evade - Cast 'Shadow Channelling' (No Repeat)"),
(@IMP_MOTHER*100+01,9,0,0,0,0,100,0,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 0"),
(@IMP_MOTHER*100+02,9,0,0,0,0,100,0,0,0,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 1"),
(@IMP_MOTHER*100+03,9,0,0,0,0,100,0,0,0,0,0,1,3,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 3"),
(@IMP_MOTHER*100+04,9,0,0,0,0,100,0,0,0,0,0,1,5,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 5"),
(@IMP_MOTHER*100+05,9,0,0,0,0,100,0,0,0,0,0,1,6,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 6"),
(@IMP_MOTHER*100+06,9,0,0,0,0,100,0,0,0,0,0,1,7,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Imp Mother - On Script - Say Line 7");

DELETE FROM `creature_text` WHERE `CreatureID` = 98497;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('98497', '0', '0', 'I\'m so hungry.', '14', '0', '100', '0', '0', '55211', '0', '0', 'Imp Mother to Player'),
('98497', '1', '0', 'My meal comes to me.', '14', '0', '100', '0', '0', '55212', '0', '0', 'Imp Mother to Player'),
('98497', '2', '0', 'Come, my little imps, dance for mother.', '14', '0', '100', '0', '0', '55214', '0', '0', 'Imp Mother Player'),
('98497', '3', '0', 'My children will cook you up nicely.', '14', '0', '100', '0', '0', '55215', '0', '0', 'Imp Mother to Player'),
('98497', '4', '0', 'The Legion\'s victory is inevitable, child.', '14', '0', '100', '0', '0', '55218', '0', '0', 'Imp Mother to Player'),
('98497', '5', '0', 'I\'ll deliver you to Tyranna myself.', '14', '0', '100', '0', '0', '55219', '0', '0', 'Imp Mother to Player'),
('98497', '6', '0', 'Filthy, little elf. I can taste the fel energy on you.', '14', '0', '100', '0', '0', '55220', '0', '0', 'Imp Mother Player'),
('98497', '7', '0', 'Intruders! Someone warn the Doom Commander!', '14', '0', '100', '0', '0', '55220', '0', '0', 'Imp Mother to Player');

-- Lesser Imp SAI
SET @LESSER_IMP := 101603;
UPDATE `creature_template` SET `faction`=90, `AIName`="SmartAI" WHERE `entry`=@LESSER_IMP;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@LESSER_IMP AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@LESSER_IMP,0,0,0,0,0,100,0,0,0,0,0,11,3110,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lesser Imp - In Combat - Cast 'FireBolt'");

-- Hellish Imp SAI
SET @HELLISH_IMP := 98483;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@HELLISH_IMP;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@HELLISH_IMP AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@HELLISH_IMP*100+01,@HELLISH_IMP*100+02,@HELLISH_IMP*100+03,@HELLISH_IMP*100+04,@HELLISH_IMP*100+05) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HELLISH_IMP,0,0,0,11,0,100,1,0,0,0,0,11,200372,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Respawn - Cast '<Spell not found!>' (No Repeat)"),
(@HELLISH_IMP,0,1,0,4,0,100,1,0,0,0,0,87,@HELLISH_IMP*100+01,@HELLISH_IMP*100+02,@HELLISH_IMP*100+03,@HELLISH_IMP*100+04,@HELLISH_IMP*100+05,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Aggro - Run Random Script (No Repeat)"),
(@HELLISH_IMP*100+01,9,0,0,0,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Script - Say Line 0"),
(@HELLISH_IMP*100+02,9,0,0,0,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Script - Say Line 1"),
(@HELLISH_IMP*100+03,9,0,0,0,0,100,0,0,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Script - Say Line 2"),
(@HELLISH_IMP*100+04,9,0,0,0,0,100,0,0,0,0,0,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Script - Say Line 3"),
(@HELLISH_IMP*100+05,9,0,0,0,0,100,0,0,0,0,0,1,4,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Hellish Imp - On Script - Say Line 4");

DELETE FROM `creature_text` WHERE `CreatureID` = 98483;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(98483, 0, 0, 'Warn the Brood Queen!', 12, 0, 100, 0, 0, 55208, '', 'Hellish Imp to Player'),
(98483, 1, 0, 'Quickly, grab them!', 12, 0, 100, 0, 0, 55202, '', 'Hellish Imp to Player'),
(98483, 2, 0, 'We\'ll feast on your flesh and devour your soul.', 12, 0, 100, 0, 0, 55205, '', 'Hellish Imp to Player'),
(98483, 3, 0, 'Another morsel has come to say, hello.', 12, 0, 100, 0, 0, 55203, '', 'Hellish Imp to Player'),
(98483, 4, 0, 'Help! Baddies here!', 12, 0, 100, 0, 0, 55204, '', 'Hellish Imp to Player');

-- Empowered Fel Crystal SAI
SET @EMPOWERED_FEL_CRYSTAL := 101704;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@EMPOWERED_FEL_CRYSTAL;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@EMPOWERED_FEL_CRYSTAL AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@EMPOWERED_FEL_CRYSTAL,0,0,0,73,0,100,0,0,0,0,0,75,200627,0,0,0,0,0,18,5,0,0,0,0,0,0,"Empowered Fel Crystal - On Spellclick - Add Aura 'Empowering Fel'"),
(@EMPOWERED_FEL_CRYSTAL,0,1,0,73,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Empowered Fel Crystal - On Spellclick - Despawn In 1000 ms");

-- Soul Leech - Critter
UPDATE `creature_template` SET `faction`=190 WHERE `entry`=94655;