

UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=706 LIMIT 1;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 706;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(706, 0, 0, 0, 4, 0, 20, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostmane Troll Whelp - On Aggro - Say Line 0'),
(706, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, '', 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flee at 15% HP');


DELETE FROM `creature_text` WHERE `CreatureID`=706;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `TextRange`, `comment`) VALUES 
(706, 0, 3, 'My weapon be thirsty!', 12, 0, 100, 0, 0, 0, 0, 0, 'Frostmane Troll Whelp - On Aggro'),
(706, 0, 0, 'You be dead soon!', 12, 0, 100, 0, 0, 0, 0, 0, 'Frostmane Troll Whelp'),
(706, 0, 1, 'Killing you be easy.', 12, 0, 100, 0, 0, 0, 0, 0, 'Frostmane Troll Whelp'),
(706, 0, 2, 'I gonna make you into mojo!', 12, 0, 100, 0, 0, 0, 0, 0, 'Frostmane Troll Whelp');




