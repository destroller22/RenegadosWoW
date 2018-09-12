
-- Quest Star Trolls

DELETE FROM `creature_queststarter` WHERE `quest`=31159;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('37951', '31159');


DELETE FROM `playercreateinfo_cast_spell` WHERE  `raceMask`=128 AND `spell`=71241;
INSERT INTO `playercreateinfo_cast_spell` (`raceMask`, `spell`, `note`) VALUES ('128', '71241', 'Trolls-cast-zuni');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37988;

-- Text

DELETE FROM `creature_text` WHERE `CreatureID`=37951;
DELETE FROM `creature_text` WHERE `CreatureID`=37988;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `TextRange`, `comment`) VALUES 
(37951, 0, 0, '$n. Zuni. Ya\'ll find ya trainer in the trainin\' grounds to the east. Bring pride to the Darkspear.', 12, 0, 100, 1, 0, 20732, 37821, 0, 'Jinthala to Player'),
(37988, 0, 0, 'Ya, mon. Let\'s crack some tiki target skulls!', 12, 0, 100, 5, 0, 21366, 0, 0, 'Zuni to Player'),
(37988, 1, 0, 'Ya trainer should be somewhere in the grounds \'ere. I\'ll catch you lata, mon.', 12, 0, 100, 1, 0, 21367, 0, 0, 'Zuni to Player');

-- Scritp

DELETE FROM `smart_scripts` WHERE `entryorguid`=37951;
DELETE FROM `smart_scripts` WHERE `entryorguid`=37988;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES 
(37951, 0, 0, 1, 19, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Jin\'thala - On Quest \'The Rise of the Darkspear\' Taken - Say Line 0'),
(37951, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 45, 1, 0, 0, 0, 0, 0, 19, 37988, 30, 0, 0, 0, 0, 0, 'Jin\'thala - On Quest \'Set Data 1'),
(37988, 0, 0, 0, 38, 0, 100, 1, 1, 0, 0, 0, '', 80, 3798800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zuni - On Link - Start Script' );


DELETE FROM `smart_scripts` WHERE `entryorguid`=3798800;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3798800, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Zuni - On Script - Set Orientation To Owner'),
(3798800, 9, 2, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Zuni - On Script - Say Line 0'),
(3798800, 9, 3, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0,-1193.365479,-5334.521484, 13.260899, 0, ''),
(3798800, 9, 4, 0, 0, 0, 100, 1, 4000, 4000, 0, 0, '', 1, 1, 500, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Zuni - On Script - Say Line 1'),
(3798800, 9, 5, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

 