-- Fix Teleport to Blackwing Lair
-- Object Orb of Command 
DELETE FROM `gameobject_template` WHERE `entry`=179879 AND `type`=2;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(179879, 2, 4891, 'Orb of Command', '', '', '', 1, 0, 0, 3, 6001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 15595);

-- Gossip Orb of Command 
DELETE FROM `gossip_menu_option` WHERE `menuid`=6001 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES 
(6001,0,0,'<Put your hand on the sphere.>',0,1,1,0); 

-- SAI Teleport to Blackwing Lair
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 179879; 
DELETE FROM `smart_scripts` WHERE (`source_type` = 1 AND `entryorguid` = 179879);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(179879, 1, 0, 1, 62, 0, 100, 0, 6001, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - Close gossip - Action Invoker'),
(179879, 1, 1, 0, 61, 0, 100, 0, 6001, 0, 0, 0, '', 62, 469, 0, 0, 0, 0, 0, 7, 0, 0, 0, -7672.32, -1107.05, 396.651, 0.59, 'Link - Teleport - Action Invoker');

-- Fix Chromaggus position in Blackwing Lair  
UPDATE `creature` SET `position_x`='-7515.34', `position_y`='-1029.62', `position_z`='476.73' WHERE  `guid`=52534;

-- Fix Vaelastrasz
-- Quitandole movimiento
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE  `guid`=48456;
-- Vida al 25%
UPDATE `creature_template` SET `RegenHealth`=0 WHERE  `entry`=13020;
-- Gossip
DELETE FROM `gossip_menu_option` WHERE `menuid`=6021 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES 
(6021, 0, 0, 'I cannot, Vaelastrasz! Surely something can be done to heal you!', 0, 1, 3, 0);

DELETE FROM `gossip_menu_option_action` WHERE `menuid`=6021 AND `ActionMenuId`=6101;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `ActionMenuId`) VALUES
(6021, 6101);

DELETE FROM `gossip_menu_option` WHERE `menuid`=6101 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES 
(6101, 0, 0, 'Vaelastrasz, no!!!', 0 ,1, 3, 0);

-- Borrando npc de mas
DELETE FROM `creature` WHERE  `guid`=126727 AND `id`=105380;