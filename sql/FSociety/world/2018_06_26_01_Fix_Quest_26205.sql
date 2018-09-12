-- Fix Quest A Job for the Multi-Bot http://www.wowhead.com/quest=26205/a-job-for-the-multi-bot


-- Editing the SmartAI script of [Creature] ENTRY 42598 (name: GS-9x Multi-Bot)
SET @MULTIBOT := 42598;
SET @TOXIC_POOL := 42563;
SET @GRINDSPARK := 42553;
SET @PROTOTYPE := 42945;

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @MULTIBOT;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @TOXIC_POOL;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @GRINDSPARK;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @PROTOTYPE;

UPDATE `creature_template_addon` SET `auras`='16245' WHERE `entry`=@TOXIC_POOL;
UPDATE `creature_template_addon` SET `auras`='29266' WHERE `entry`=@PROTOTYPE;

UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`= @TOXIC_POOL;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=@PROTOTYPE;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13) AND `sourceEntry` IN (79416);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 79416, 0, 0, 31, 0, 3, @MULTIBOT, 0, 0, 0, 0, '', 'Spell Hit Only Multibot');

-- Texts
DELETE FROM `creature_text` WHERE (CreatureID = @MULTIBOT);
DELETE FROM `creature_text` WHERE (CreatureID = @GRINDSPARK);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(42553, 0, 0, 'Time to put the finishing touches on my bot.', 12, 0, 100, 5, 0, 0, 42947, 0, 'Engineer Grindspark'),
(42553, 1, 0, 'At last, it\'s finished.', 12, 0, 100, 25, 0, 0, 42948, 0, 'Engineer Grindspark'),
(42553, 2, 0, 'Arise my, uh... what shall I call you? How about \'multi-bot\'? Arise, my multi-bot!', 12, 0, 100, 5, 0, 0, 42949, 0, 'Engineer Grindspark'),
(42553, 3, 0, 'Uh... a couple more tweaks should do it, I think...', 12, 0, 100, 6, 0, 0, 42950, 0, 'Engineer Grindspark'),
(42598, 0, 0, 'Initiating cleanup ... ...', 12, 0, 100, 0, 0, 0, 42476, 0, 'GS-9x Multi-Bot');

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = @MULTIBOT);
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = @TOXIC_POOL);
DELETE FROM `smart_scripts` WHERE (source_type = 9 AND entryorguid = @MULTIBOT*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@TOXIC_POOL, 0, 0, 0, 60, 0, 100, 0, 1000, 5000, 15000, 20000, '', 11, 79391, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Toxic Pool - On Update - Cast 79391'),
(@TOXIC_POOL, 0, 1, 0, 60, 0, 100, 0, 500, 600, 500, 600, '', 11, 79416, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Toxic Pool - On Update - Cast 79416'),
(@MULTIBOT, 0, 0, 0, 8, 0, 100, 1, 79416, 0, '', '', '', 69, 1, 0, 0, 0, 0, 0, 20, 203975, 10, 0, 0, 0, 0, 0, 'GS-9x Multi-Bot - On Spellhit \'79416\' - Move Near GO'),
(@MULTIBOT, 0, 1, 0, 34, 0, 100, 1, 8, 1, '', '', '', 80, @MULTIBOT*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Multi-Bot - On Movement Inform - Run Script'),
(@MULTIBOT, 0, 2, 0, 38, 0, 100, 1, 1, 2, '', '', '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Multi-Bot - On Data Set 1 2 Despawn'),
(@MULTIBOT*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 0'),
(@MULTIBOT*100, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, '', 11, 79424, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast 79424'),
(@MULTIBOT*100, 9, 2, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, '', 11, 79422, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast 79422'),
(@MULTIBOT*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 11, 94513, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast 94513'),
(@MULTIBOT*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 19, @TOXIC_POOL, 10, 0, 0, 0, 0, 0, 'Script - Despawn Nearby Toxic Pool'),
(@MULTIBOT*100, 9, 5, 0, 0, 0, 100, 0, 100, 100, 0, 0, '', 29, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Follow Owner'),
(@MULTIBOT*100, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, '', 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Reset Script');


DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = @GRINDSPARK);
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = @PROTOTYPE);
DELETE FROM `smart_scripts` WHERE (source_type = 9 AND entryorguid = @GRINDSPARK*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@GRINDSPARK, 0, 0, 0, 20, 0, 100, 0, 26205, 0, 0, 0, 80, @GRINDSPARK*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Engineer Grindspark - On Quest 26205 Finished - Run Script'),
(@GRINDSPARK, 0, 1, 2, 62, 0, 100, 0, 12634, 0, 0, 0, 11, 79419, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Engineer Grindspark - On Gossip Select - Cast Summon Multi-bot'),
(@GRINDSPARK, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Engineer Grindspark - On Link - Close Gossip'),
(@GRINDSPARK, 0, 3, 0, 19, 0, 100, 0, 26205, 0, 0, 0, 11, 79419, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Engineer Grindspark - On Quest Accept - Cast Summon Multi-bot'),
(@PROTOTYPE, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, @PROTOTYPE*10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Prototype - On Data Set 1-1 - Start WP'),
(@PROTOTYPE, 0, 1, 2, 40, 0, 100, 0, 5, @PROTOTYPE*10, 0, 0, 11, 46419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Prototype - On WP 5 Reached - Cast 46419'),
(@PROTOTYPE, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Prototype - On Link - Kill Self'),
(@PROTOTYPE, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Prototype - On Link - Despawn'),
(@PROTOTYPE, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 75, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'GS-9x Prototype - On Respawn - Add Aura'),
(@GRINDSPARK*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 11, @MULTIBOT, 30, 0, 0, 0, 0, 0, 'Script - Set Data 1 2 On Multibots'),
(@GRINDSPARK*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set npcflag=0'),
(@GRINDSPARK*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 0'),
(@GRINDSPARK*100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 69, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, -5070.83, 455.209, 410.757, 5.78, 'Script - Move To Pos'),
(@GRINDSPARK*100, 9, 4, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 5, 233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Emote State 233'),
(@GRINDSPARK*100, 9, 5, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Emote State 0'),
(@GRINDSPARK*100, 9, 6, 0, 0, 0, 100, 0, 500, 500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 1'),
(@GRINDSPARK*100, 9, 7, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 2'),
(@GRINDSPARK*100, 9, 8, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Play Emote 1'),
(@GRINDSPARK*100, 9, 9, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 28, 0, 0, 0, 0, 0, 0, 10, 168427, @PROTOTYPE, 0, 0, 0, 0, 0, 'Script - Remove Aura From GS-9x Prototype'),
(@GRINDSPARK*100, 9, 10, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 4, 12182, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Play Sound 12182'),
(@GRINDSPARK*100, 9, 11, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 168427, @PROTOTYPE, 0, 0, 0, 0, 0, 'Script - Set Data 1-1'),
(@GRINDSPARK*100, 9, 12, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 69, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, -5073.27, 454.883, 410.931, 2.321, 'Script - Move To Pos'),
(@GRINDSPARK*100, 9, 13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 3'),
(@GRINDSPARK*100, 9, 14, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set npcflag=3');

DELETE FROM `waypoints` WHERE (entry = @PROTOTYPE*10);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@PROTOTYPE*10, 1, -5076.74, 457.986, 410.258, 'GS-9x Prototype WP 1'),
(@PROTOTYPE*10, 2, -5079.74, 458.736, 409.008, 'GS-9x Prototype WP 2'),
(@PROTOTYPE*10, 3, -5083.49, 459.736, 407.258, 'GS-9x Prototype WP 3'),
(@PROTOTYPE*10, 4, -5089.99, 461.486, 405.758, 'GS-9x Prototype WP 4'),
(@PROTOTYPE*10, 5, -5093.74, 462.486, 405.008, 'GS-9x Prototype WP 5');


