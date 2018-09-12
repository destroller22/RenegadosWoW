

-- Pathing for Mounted Ironforge Mountaineer Entry: 12996 
SET @NPC := 169292;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5391.787,`position_y`=308.896,`position_z`=394.7108 WHERE `guid`=@NPC;

-- Pathing for Mounted Ironforge Mountaineer Entry: 12996
SET @NPC := 168873;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5398.53,`position_y`=289.731,`position_z`=395.6697 WHERE `guid`=@NPC;

UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE  `entry`=12996;

DELETE FROM `smart_scripts` WHERE `entryorguid`=12996 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (12996, 0, 0, 0, 9, 0, 100, 0, 5, 30, 2000, 2000, '0', 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mounted Ironforge Mountaineer - In Range 5-30 yd - Cast Shoot');
DELETE FROM `smart_scripts` WHERE `entryorguid`=12996 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (12996, 0, 1, 0, 9, 0, 100, 0, 0, 5, 2000, 2000, '0', 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mounted Ironforge Mountaineer - In Range 0-5 yd - Enable Movement');
DELETE FROM `smart_scripts` WHERE `entryorguid`=12996 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (12996, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, '0', 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mounted Ironforge Mountaineer - At 15 % HP - Flee');

