
-- Fix Quest 24623 http://www.wowhead.com/quest=24623/saving-the-young

DELETE FROM `creature_queststarter` WHERE  `id`=39157 AND `quest`=24623;

-- Scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=39157;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39157, 0, 0, 1, 8, 0, 100, 1, 70874, 0, 0, 0, '0', 29, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - On Spellhit - Follow Invoker'),
(39157, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '0', 33, 39157, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - Link - Quest Credit'),
(39157, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '0', 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - Link - Despawn in 60 sec'),
(39157, 0, 3, 0, 8, 0, 15, 1, 70874, 0, 0, 0, '0', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling - On Spellhit - Say Line 0');

-- Texts
DELETE FROM `creature_text` WHERE `CreatureID`=39157;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `TextRange`, `comment`) VALUES 
(39157, 0, 0, '%s skips after you.', 16, 0, 100, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 1, '%s yips in appreciation.', 16, 0, 100, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 2, '%s bounces up and down.', 16, 0, 100, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 3, '%s waves its horn at you.', 16, 0, 100, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 4, '%s almost falls on his face in excitement.', 16, 0, 100, 0, 0, 0, 0, 0, 'Lost Bloodtalon Hatchling');
