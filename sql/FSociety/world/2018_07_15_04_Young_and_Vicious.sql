-- Young and Vicious
SET @SWIFTCLAW_NPC :=37989;
SET @SWIFTCLAW_VEHICLE :=38002;
SET @ROPE_BUNNY :=37995;
SET @NOTERA :=38988;

UPDATE `creature_template` SET `speed_run`=1.8, `unit_flags`=32768, `VehicleId`=617, `AIName`='SmartAI' WHERE `entry`=@SWIFTCLAW_VEHICLE;
UPDATE `creature_template` SET `npcflag`=0, `VehicleId`=0, `AIName`='SmartAI' WHERE `entry` IN (@SWIFTCLAW_NPC);
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=130 WHERE `entry` IN (@ROPE_BUNNY);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@SWIFTCLAW_NPC;

DELETE FROM `creature_queststarter` WHERE `id` IN (@SWIFTCLAW_NPC,@SWIFTCLAW_VEHICLE);
DELETE FROM `creature_questender` WHERE `id` IN (@SWIFTCLAW_NPC,@SWIFTCLAW_VEHICLE);

DELETE FROM `creature_text` WHERE `creatureID`=@SWIFTCLAW_VEHICLE;
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `TextRange`, `comment`) VALUES 
(@SWIFTCLAW_VEHICLE, 0, 0, 'Swiftclaw isn\'t stopping! Steer him back to the raptor pens near Darkspear Hold.', 41, 0, 100, 0, 0, 0, 0, 'Swiftclaw');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13,17) AND `sourceEntry` IN (70927,70918);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 70927, 0, 0, 31, 0, 3, 37995, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET OBJECT_ENTRY'),
(13, 1, 70918, 0, 0, 31, 1, 4, 0, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET OBJECT_ENTRY'),
(13, 1, 70927, 0, 1, 31, 0, 3, 37989, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET OBJECT_ENTRY');


DELETE FROM `spell_area` WHERE `spell` IN (49416) AND `area` IN (4863);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 4863, 0, 24623, 0, 0, 2, 0, 9);

DELETE FROM `creature` WHERE `id` IN (@SWIFTCLAW_NPC);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(1064555, @SWIFTCLAW_NPC, 1, 6453, 4863, 1, 0, 0, 0, -1, 0, 0, -1523.94, -5287.3, 7.18772, 0.28102, 300, 0, 0, 71, 0, 2, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@SWIFTCLAW_NPC);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@SWIFTCLAW_NPC, @SWIFTCLAW_NPC*10, 0, 65536, 1, 0, 0, 0, 0, '49414');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (22) AND `sourceEntry` IN (@SWIFTCLAW_VEHICLE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @SWIFTCLAW_VEHICLE, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET OBJECT_ENTRY'),
(22, 7, @SWIFTCLAW_VEHICLE, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET OBJECT_ENTRY');

-- Script --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ROPE_BUNNY,@SWIFTCLAW_VEHICLE,@NOTERA) AND `source_type` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SWIFTCLAW_VEHICLE*100) AND `source_type` IN (9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ROPE_BUNNY, 0, 0, 1, 60, 0, 100, 1, 1, 2, 0, 0, 12, @SWIFTCLAW_VEHICLE, 8, 0, 0, 0, 0, 19, @SWIFTCLAW_NPC, 30, 0, 0, 0, 0, 0, ''),
(@ROPE_BUNNY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 46598, 4, 0, 0, 0, 0, 19, @SWIFTCLAW_VEHICLE, 30, 0, 0, 0, 0, 0, ''),
(@ROPE_BUNNY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 70918, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(@ROPE_BUNNY, 0, 3, 0, 60, 0, 100, 0, 300, 350, 0, 0, 86, 46598, 0, 23, 0, 0, 0, 19, @SWIFTCLAW_VEHICLE, 30, 0, 0, 0, 0, 0, ''),
(@NOTERA, 0, 0, 0, 60, 0, 100, 0, 1, 2, 1000, 1500, 45, 1, 1, 0, 0, 0, 0, 19, @SWIFTCLAW_VEHICLE, 5, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 0, 1, 27, 0, 100, 513, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 1, 2, 61, 0, 100, 513, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 2, 3, 61, 0, 100, 513, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 3, 4, 61, 0, 100, 513, 0, 0, 0, 0, 33, @SWIFTCLAW_NPC, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 4, 5, 61, 0, 100, 513, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 5, 0, 61, 0, 100, 513, 0, 0, 0, 0, 28, 49416, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 6, 0, 28, 1, 100, 513, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 7, 0, 6, 0, 100, 513, 8, 1, 0, 0, 53, 1, @SWIFTCLAW_VEHICLE*10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 8, 0, 38, 0, 100, 513, 1, 1, 0, 0, 80, @SWIFTCLAW_VEHICLE*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE, 0, 9, 0, 60, 1, 100, 512, 1000, 2000, 1000, 2000, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, 33, @SWIFTCLAW_VEHICLE, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 19, 37956, 20, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 3, 0, 0, 0, 100, 512, 1500, 1500, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 4, 0, 0, 0, 100, 512, 200, 200, 0, 0, 11, 68576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 5, 0, 0, 0, 100, 512, 0, 0, 0, 0, 18, 898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 6, 0, 0, 0, 100, 512, 500, 500, 0, 0, 89, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(@SWIFTCLAW_VEHICLE*100, 9, 7, 0, 0, 0, 100, 512, 10000, 10000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE `entry` IN (@SWIFTCLAW_VEHICLE*10);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES 
(@SWIFTCLAW_VEHICLE*10, 1, -1534, -5307.08, 7.63212),
(@SWIFTCLAW_VEHICLE*10, 2, -1508.97, -5310.75, 5.9393),
(@SWIFTCLAW_VEHICLE*10, 3, -1492.68, -5314.54, 1.7416),
(@SWIFTCLAW_VEHICLE*10, 4, -1457.85, -5324.61, 2.21421),
(@SWIFTCLAW_VEHICLE*10, 5, -1417.22, -5339.8, 5.23375),
(@SWIFTCLAW_VEHICLE*10, 6, -1390.21, -5354.21, 8.4579),
(@SWIFTCLAW_VEHICLE*10, 7, -1353, -5380.19, 13.5507),
(@SWIFTCLAW_VEHICLE*10, 8, -1331.01, -5397.17, 14.7124),
(@SWIFTCLAW_VEHICLE*10, 9, -1298.35, -5425, 14.571),
(@SWIFTCLAW_VEHICLE*10, 10, -1288.07, -5435.25, 14.6175),
(@SWIFTCLAW_VEHICLE*10, 11, -1288.01, -5439.03, 14.5418),
(@SWIFTCLAW_VEHICLE*10, 12, -1291.56, -5441.65, 14.5335),
(@SWIFTCLAW_VEHICLE*10, 13, -1296.16, -5444.97, 14.5426);

DELETE FROM `waypoint_data` WHERE `id` IN (@SWIFTCLAW_NPC*10);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `move_type`) VALUES
(@SWIFTCLAW_NPC*10, 1, -1523.94, -5287.3, 7.18772, 1),
(@SWIFTCLAW_NPC*10, 2, -1522.94, -5283.49, 7.18772, 1),
(@SWIFTCLAW_NPC*10, 3, -1523.94, -5278.8, 6.93772, 1),
(@SWIFTCLAW_NPC*10, 4, -1520.94, -5273.3, 6.68772, 1),
(@SWIFTCLAW_NPC*10, 5, -1519.69, -5270.8, 6.43772, 1),
(@SWIFTCLAW_NPC*10, 6, -1518.69, -5266.55, 6.43772, 1),
(@SWIFTCLAW_NPC*10, 7, -1516.68, -5264.37, 6.32617, 1),
(@SWIFTCLAW_NPC*10, 8, -1520.35, -5257.4, 5.77623, 1),
(@SWIFTCLAW_NPC*10, 9, -1529.6, -5251.65, 5.77623, 1),
(@SWIFTCLAW_NPC*10, 10, -1546.13, -5243.79, 6.6781, 1),
(@SWIFTCLAW_NPC*10, 11, -1553.38, -5239.36, 4.75678, 1),
(@SWIFTCLAW_NPC*10, 12, -1557.38, -5236.29, 4.25678, 1),
(@SWIFTCLAW_NPC*10, 13, -1566.53, -5230.86, 3.55353, 1),
(@SWIFTCLAW_NPC*10, 14, -1571.3, -5227.36, 3.30353, 1),
(@SWIFTCLAW_NPC*10, 15, -1588.62, -5226.9, 3.58985, 1),
(@SWIFTCLAW_NPC*10, 16, -1590.62, -5233.65, 4.58986, 1),
(@SWIFTCLAW_NPC*10, 17, -1592.51, -5240.3, 5.26926, 1),
(@SWIFTCLAW_NPC*10, 18, -1590.51, -5245.8, 5.52693, 1),
(@SWIFTCLAW_NPC*10, 19, -1588.76, -5252.3, 6.27693, 1),
(@SWIFTCLAW_NPC*10, 20, -1587.12, -5256.35, 6.60561, 1),
(@SWIFTCLAW_NPC*10, 21, -1576.37, -5261.35, 7.10561, 1),
(@SWIFTCLAW_NPC*10, 22, -1565.87, -5266.6, 7.60561, 1),
(@SWIFTCLAW_NPC*10, 23, -1558.64, -5270.46, 7.97374, 1),
(@SWIFTCLAW_NPC*10, 24, -1555.39, -5276.46, 8.47374, 1),
(@SWIFTCLAW_NPC*10, 25, -1550.77, -5285.72, 9.11867, 1),
(@SWIFTCLAW_NPC*10, 26, -1552.21, -5291.72, 9.26187, 1),
(@SWIFTCLAW_NPC*10, 27, -1555.22, -5303.75, 8.73295, 1),
(@SWIFTCLAW_NPC*10, 28, -1562.54, -5319.57, 8.2565, 1),
(@SWIFTCLAW_NPC*10, 29, -1576.29, -5324.78, 7.94616, 1),
(@SWIFTCLAW_NPC*10, 30, -1586.76, -5322.35, 7.4979, 1),
(@SWIFTCLAW_NPC*10, 31, -1589.27, -5311.73, 7.71858, 1),
(@SWIFTCLAW_NPC*10, 32, -1588.77, -5299.98, 8.46857, 1),
(@SWIFTCLAW_NPC*10, 33, -1591.58, -5282.3, 7.98663, 1),
(@SWIFTCLAW_NPC*10, 34, -1593.83, -5281.8, 7.73663, 1),
(@SWIFTCLAW_NPC*10, 35, -1600.84, -5282.3, 7.23663, 1),
(@SWIFTCLAW_NPC*10, 36, -1606.58, -5279.55, 6.48663, 1),
(@SWIFTCLAW_NPC*10, 37, -1616.33, -5275.55, 6.23663, 1),
(@SWIFTCLAW_NPC*10, 38, -1621.33, -5272.55, 5.73663, 1),
(@SWIFTCLAW_NPC*10, 39, -1624.84, -5271.3, 5.23663, 1),
(@SWIFTCLAW_NPC*10, 40, -1628.58, -5272.54, 4.23663, 1),
(@SWIFTCLAW_NPC*10, 41, -1637.92, -5298.38, 2.42262, 1),
(@SWIFTCLAW_NPC*10, 42, -1620.12, -5337.79, 5.41152, 1),
(@SWIFTCLAW_NPC*10, 43, -1544.06, -5326.36, 7.4163, 1),
(@SWIFTCLAW_NPC*10, 44, -1533.47, -5334.75, 7.23221, 1),
(@SWIFTCLAW_NPC*10, 45, -1532.97, -5342.5, 6.48221, 1),
(@SWIFTCLAW_NPC*10, 46, -1539.72, -5351.25, 6.23221, 1),
(@SWIFTCLAW_NPC*10, 47, -1541.92, -5354.65, 5.77246, 1),
(@SWIFTCLAW_NPC*10, 48, -1536.17, -5361.4, 5.27246, 1),
(@SWIFTCLAW_NPC*10, 49, -1532.17, -5366.65, 5.22461, 1),
(@SWIFTCLAW_NPC*10, 50, -1527.68, -5364.26, 5.80379, 1),
(@SWIFTCLAW_NPC*10, 51, -1523.68, -5361.26, 6.30379, 1),
(@SWIFTCLAW_NPC*10, 52, -1516.84, -5355.94, 6.54045, 1),
(@SWIFTCLAW_NPC*10, 53, -1514.34, -5348.69, 5.79045, 1),
(@SWIFTCLAW_NPC*10, 54, -1512.43, -5342.87, 5.38673, 1),
(@SWIFTCLAW_NPC*10, 55, -1508.93, -5332.87, 5.88673, 1),
(@SWIFTCLAW_NPC*10, 56, -1512.93, -5329.62, 6.38673, 1),
(@SWIFTCLAW_NPC*10, 57, -1518.43, -5325.62, 6.88673, 1),
(@SWIFTCLAW_NPC*10, 58, -1531.28, -5314.96, 7.62983, 1),
(@SWIFTCLAW_NPC*10, 59, -1536.78, -5310.71, 8.12983, 1),
(@SWIFTCLAW_NPC*10, 60, -1542.78, -5305.96, 8.62983, 1),
(@SWIFTCLAW_NPC*10, 61, -1550.53, -5299.71, 9.37983, 1),
(@SWIFTCLAW_NPC*10, 62, -1565.6, -5291.41, 8.74975, 1),
(@SWIFTCLAW_NPC*10, 63, -1576.53, -5285.68, 8.49784, 1),
(@SWIFTCLAW_NPC*10, 64, -1585.78, -5272.17, 7.98737, 1),
(@SWIFTCLAW_NPC*10, 65, -1563.26, -5265.67, 7.73737, 1),
(@SWIFTCLAW_NPC*10, 66, -1555.93, -5266.58, 7.52478, 1),
(@SWIFTCLAW_NPC*10, 67, -1549.68, -5268.83, 7.77478, 1),
(@SWIFTCLAW_NPC*10, 68, -1544.68, -5275.77, 7.77478, 1),
(@SWIFTCLAW_NPC*10, 69, -1542.18, -5279.77, 7.77478, 1),
(@SWIFTCLAW_NPC*10, 70, -1537.43, -5282.77, 7.52478, 1),
(@SWIFTCLAW_NPC*10, 71, -1535.19, -5284.55, 7.68772, 1),
(@SWIFTCLAW_NPC*10, 72, -1531.94, -5287.3, 7.43772, 1);



DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (97142) AND `spell_id` IN (191827);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(97142, 191827, 1, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13) AND `sourceEntry` IN (191827,199617,200649,207508);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 191827, 0, 0, 31, 0, 3, 97142, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET NPC'),
(13, 1, 200649, 0, 0, 31, 0, 3, 97142, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET NPC'),
(13, 1, 207508, 0, 0, 31, 0, 3, 97142, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET NPC'),
(13, 1, 199617, 0, 0, 31, 0, 3, 97142, 0, 0, 0, 0, '', 'SPELL_IMPLICIT_TARGET NPC');

-- Fel Spreader SAI
SET @FEL_SPREADER := 97142;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@FEL_SPREADER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FEL_SPREADER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@FEL_SPREADER,0,0,1,8,0,100,1,191827,0,0,0,33,@FEL_SPREADER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Spreader - On Gossip Hello - Quest Credit ''"),
(@FEL_SPREADER,0,1,0,61,0,100,0,0,0,0,0,75,31261,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Spreader - On Gossip Hello - Set Visibility Off"),
(@FEL_SPREADER,0,2,0,6,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Spreader - On Gossip Hello - Despawn Instant");
