UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=37080 LIMIT 1;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=37080 LIMIT 1;


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13) AND `sourceEntry` IN (69855); 
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, sourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES 
(13, 1, 69855, 0, 0, 31, 0, 3, 37080, 0, 0, 0, 0, '', '');
-- Scripst

DELETE FROM `smart_scripts` WHERE `entryorguid` = 37080;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 3708000;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES 
(37080, 0, 0, 0, 8, 0, 100, 1, 69855, 0, 0, 0, '0', 80, 3708000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wounded Coldridge Mountaineer - On SpellHit'),
(3708000, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, '', 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wounded Coldridge Mountaineer - Update - Remove Bytes1'),
(3708000, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wounded Coldridge Mountaineer - Update - Set Orientation'),
(3708000, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wounded Coldridge Mountaineer - Update - Say Line 0'),
(3708000, 9, 3, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0,-6262.149414,  373.936951, 382.984009, 0, ''),
(3708000, 9, 4, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


-- Text
DELETE FROM `creature_text` WHERE `CreatureID`=37080;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `TextRange`, `comment`) VALUES 
(37080, 0, 0, 'Ahh, much better. I owe ya one.', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(37080, 0, 1, 'Thanks! I can make it from here.', 12, 0, 100, 0, 0, 0, 0, 0, ''),
(37080, 0, 2, 'Yer a lifesaver! For Ironforge!', 12, 0, 100, 0, 0, 0, 0, 0, '');



