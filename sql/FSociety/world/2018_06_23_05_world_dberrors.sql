DELETE FROM `creature_addon` WHERE  `guid` IN (103850,103851,103852);
UPDATE `creature_addon` SET `auras`='' WHERE  `guid`=20556362;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25201,2520100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(25201, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, '', 80, 2520100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterfin Tadpole - On Sata Set 1 1 - Run Actionlist 4141000'),
(2520100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 33, 25201, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Winterfin Tadpole - Give Quest Credit 25201'),
(2520100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 89, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0 , 0, 'Winterfin Tadpole - Start Random Movement'),
(2520100, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterfin Tadpole - Despawn');

UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25846 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25318 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25794 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25654 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25845 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`='0' WHERE  `entryorguid`=25847 AND `source_type`=0 AND `id`=0 AND `link`=1;

UPDATE `creature_template` SET `npcflag`='129' WHERE  `entry`=43505;

