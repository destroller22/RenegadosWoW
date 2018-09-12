-- Lost in the Floods Quest Fix
SET @DUROTAR_TELESCOPE := 39320;

UPDATE `creature_template` SET `faction`=35, `speed_run`=12, `unit_flags`=768, `type_flags`=1048576, `VehicleId`=686, `AIName`='SmartAI', `InhabitType`=4 WHERE `entry`=@DUROTAR_TELESCOPE;

DELETE FROM `creature_template_addon` WHERE `entry` IN (@DUROTAR_TELESCOPE);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@DUROTAR_TELESCOPE, 0, 0, 50331648, 0, 0, '');

DELETE FROM `spell_scripts` WHERE `id` IN (73817) AND `datalong` IN (73741);
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(73817, 0, 0, 15, 73741, 1, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (17) AND `sourceEntry` IN (73741);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 73741, 0, 0, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(17, 0, 73741, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (22) AND `sourceEntry` IN (@DUROTAR_TELESCOPE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @DUROTAR_TELESCOPE, 0, 0, 1, 0, 85319, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 1, @DUROTAR_TELESCOPE, 0, 0, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 85319, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81240, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81240, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81201, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 4, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81201, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 4, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete');

UPDATE `gameobject_template` SET `displayId`=0 WHERE `entry`=301050;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DUROTAR_TELESCOPE) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DUROTAR_TELESCOPE*100,@DUROTAR_TELESCOPE*100+1,@DUROTAR_TELESCOPE*100+2,@DUROTAR_TELESCOPE*100+3) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@DUROTAR_TELESCOPE, 0, 0, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 1'),
(@DUROTAR_TELESCOPE, 0, 1, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 2'),
(@DUROTAR_TELESCOPE, 0, 2, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 3'),
(@DUROTAR_TELESCOPE, 0, 3, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 4'),
(@DUROTAR_TELESCOPE, 0, 4, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10, 0, 0, 80, @DUROTAR_TELESCOPE*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 5, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+1, 0, 0, 80, @DUROTAR_TELESCOPE*100+1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 6, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+2, 0, 0, 80, @DUROTAR_TELESCOPE*100+2, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 7, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+3, 0, 0, 80, @DUROTAR_TELESCOPE*100+3, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE*100, 9, 0, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 33, 39357, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 85319, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 2, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 5, 15, 0, 0, 0, 0, 0, 10, 253002, 39326, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 3, 0, 0, 0, 100, 512, 3500, 3500, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 0, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 33, 39358, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 81240, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 2, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 0, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 33, 39359, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 81201, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 2, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 0, 0, 0, 0, 100, 512, 6000, 6000, 0, 0, 33, 39360, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 81201, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 85319, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 3, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 81240, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 4, 0, 0, 0, 100, 512, 4000, 4000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit');

DELETE FROM `waypoints` WHERE `entry` IN (@DUROTAR_TELESCOPE*10,@DUROTAR_TELESCOPE*10+1,@DUROTAR_TELESCOPE*10+2,@DUROTAR_TELESCOPE*10+3);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@DUROTAR_TELESCOPE*10, 1, 350.911, -4547.55, 78.0417, 'Raggaran'),
(@DUROTAR_TELESCOPE*10, 2, 60.7847, -4232.33, 38.4023, 'Raggaran'),
(@DUROTAR_TELESCOPE*10+1, 1, 412.066, -4528.23, 78.0417, 'Tekla'),
(@DUROTAR_TELESCOPE*10+1, 2, 555.582, -4146.9, 28.3467, 'Tekla'),
(@DUROTAR_TELESCOPE*10+2, 1, 440.613, -4538.23, 72.097, 'Misha'),
(@DUROTAR_TELESCOPE*10+2, 2, 721.934, -4260.48, 23.069, 'Misha'),
(@DUROTAR_TELESCOPE*10+3, 1, 385.194, -4497.49, 75.3749, 'Zen\'Taji'),
(@DUROTAR_TELESCOPE*10+3, 2, 349.146, -3869.01, 25.069, 'Zen\'Taji');


