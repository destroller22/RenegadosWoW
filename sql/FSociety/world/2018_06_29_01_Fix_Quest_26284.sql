-- Missing in action http://www.wowhead.com/quest=26284/missing-in-action


SET @GO_MAKESHIFT := 204019;
SET @DEMOLITIONIST := 42645;


UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=204019;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42645;


DELETE FROM `smart_scripts` WHERE (source_type = 1 AND entryorguid = @GO_MAKESHIFT);
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = @DEMOLITIONIST);
DELETE FROM `smart_scripts` WHERE (source_type = 9 AND entryorguid = @DEMOLITIONIST*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GO_MAKESHIFT, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, '', 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(@GO_MAKESHIFT, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 100, 1, 0, 0, 0, 0, 0, 19, @DEMOLITIONIST, 5, 0, 0, 0, 0, 0, ''),
(@GO_MAKESHIFT, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 45, 1, 0, 0, 0, 0, 0, 19, @DEMOLITIONIST, 5, 0, 0, 0, 0, 0, ''),

(@DEMOLITIONIST, 0, 0, 0, 38, 0, 100, 1, 1, 0, 0, 0, '', 80, @DEMOLITIONIST*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),

(@DEMOLITIONIST*100, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 33, @DEMOLITIONIST, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, ''),
(@DEMOLITIONIST*100, 9, 1, 0, 0, 0, 100, 1, 1500, 1500, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@DEMOLITIONIST*100, 9, 2, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -5557.02, 519.52, 382.35, 0, ''),
(@DEMOLITIONIST*100, 9, 3, 0, 0, 0, 100, 1, 4000, 4000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Text
DELETE FROM `creature_text` WHERE (creatureid = @DEMOLITIONIST);
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES 
(@DEMOLITIONIST, 0, 0, 'Finally, someone who\'s not a trogg!', 12, 0, 100, 0, 0, 0, 0, ''),
(@DEMOLITIONIST, 0, 1, 'I\'m free! I\'m really free!', 12, 0, 100, 0, 0, 0, 0, ''),
(@DEMOLITIONIST, 0, 2, 'Thank you for breaking me out of here!', 12, 0, 100, 0, 0, 0, 0, ''),
(@DEMOLITIONIST, 0, 3, 'Thanks. Now, let\'s blow up that cave!', 12, 0, 100, 0, 0, 0, 0, ''),
(@DEMOLITIONIST, 0, 4, 'You have no idea how happy I am to see you!', 12, 0, 100, 0, 0, 0, 0, '');
