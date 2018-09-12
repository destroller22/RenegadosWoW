/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/6/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Gordok Hound';
SET @ENTRY 		:= '13036';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '12966',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '44',  '45',  '0',  '0',  '0',  '45',  '0',  '1',  '1.42857',  '1',  '0',  '0',  '1500',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '25',  '0',  '0',  '0',  '1',  '73',  '0',  '13036',  '0',  '13036',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '5',  '1',  '0',  '144',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 13036 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('13036', '0', '0', '0', '0', '0', '100', '2', '4000', '7000', '15000', '20000', '', '11', '13738', '32', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Gordok Mastiff - In Combat - Cast \'Rend\''), 
('13036', '0', '1', '0', '0', '0', '100', '2', '1000', '3000', '5000', '12000', '', '11', '3604', '32', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Gordok Mastiff - In Combat - Cast \'Tendon Rip\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(145937, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '725.086', '486.37', '28.2642', '4.36332', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145938, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '719.403', '477.228', '28.263', '5.86431', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145939, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '712.803', '468.677', '28.2616', '5.06145', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145940, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '724.21', '464.514', '28.2634', '0.925025', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145941, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '715.356', '492.574', '28.2628', '4.74729', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145942, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '729.782', '497.977', '28.1809', '1.0012', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145943, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '731.356', '440.905', '28.1809', '3.69297', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145944, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '730.857', '454.202', '28.1818', '4.64055', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145945, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '735.317', '444.417', '28.1823', '0.813315', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145946, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '340.884', '-22.1709', '-25.0456', '5.84685', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145947, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '357.606', '-31.0619', '-25.3087', '1.57987', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145948, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '349.138', '-36.2457', '-25.3775', '0.750492', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145949, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '341.746', '-30.117', '-25.1938', '3.12414', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145950, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '382.306', '-69.0369', '-23.5575', '1.91986', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145951, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '377.483', '-51.7621', '-24.1065', '2.63545', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145952, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '382.778', '-47.0005', '-23.906', '4.95674', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145953, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '374.831', '-59.13', '-24.1519', '0.418879', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145954, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '399.18', '16.25', '-25.5551', '4.4731', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145955, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '407.789', '-50.7201', '-23.0973', '1.5708', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145956, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '428.65', '-35.0334', '-24.7101', '0.884373', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145957, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '415.32', '-37.0531', '-23.9358', '4.29386', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145958, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '428.125', '79.5227', '-23.7273', '3.03687', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145959, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '426.051', '73.2831', '-23.4526', '0.296706', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145960, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '434.372', '68.875', '-23.2256', '5.39307', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145961, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '448.359', '304.18', '11.2033', '3.98352', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145962, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '441.873', '292.296', '11.2877', '1.20428', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145963, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '399.746', '102.826', '-3.80367', '1.8326', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145964, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '402.409', '171.529', '2.93519', '3.28122', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145965, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '410.881', '174.518', '2.93516', '1.67552', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145966, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '412.8', '183.446', '2.93557', '0.645772', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145967, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '433.926', '168.443', '2.85223', '3.27681', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145968, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '436.521', '171.8', '2.85232', '3.38357', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145969, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '409.139', '327.11', '2.93415', '6.0912', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145970, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '408.077', '23.4038', '-25.356', '5.84685', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145971, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '413.974', '15.749', '-25.0879', '2.54818', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145972, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '341.223', '-61.7868', '-25.4697', '2.46091', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145973, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '352.286', '-57.7756', '-25.8241', '0.804581', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145974, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '335.31', '-54.8641', '-25.8178', '1.0472', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145975, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '356.844', '-67.5697', '-26.1843', '4.65561', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145976, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '439.126', '359.171', '3.86281', '0.384838', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145977, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '444.332', '342.271', '2.93627', '1.16937', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145978, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '451.231', '358.101', '3.8628', '3.69278', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145979, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '311.978', '173.334', '2.93627', '2.00713', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145980, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '318.378', '360.432', '2.85293', '5.02763', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145981, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '325.075', '351.874', '2.93626', '1.3439', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145982, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '780.872', '483.796', '36.0493', '4.05614', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145983, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '792.718', '495.528', '37.3182', '3.61377', '86400', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(145984, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '778.848', '490.062', '35.1498', '3.45469', '86400', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(145985, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '399.836', '220.873', '11.2113', '4.08073', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145986, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '387.138', '203.458', '11.2161', '4.61475', '86400', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(145987, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '355.238', '-18.4445', '-25.1449', '2.0674', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145988, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '409.935', '335.965', '2.84705', '3.19855', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145989, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '404.258', '342.263', '2.84682', '0.80796', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145990, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '412.695', '-61.5281', '-25.3884', '6.03884', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145991, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '420.648', '-49.2333', '-23.81', '0.958851', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145992, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '334.235', '357.029', '2.93627', '3.4383', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145993, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '464.224', '26.2598', '-3.9254', '1.44948', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145994, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '466.826', '22.9091', '-3.9267', '1.52329', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145995, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '434.5', '304.634', '11.2862', '1.8326', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145996, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '386.18', '-59.6284', '-23.0857', '3.68265', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145997, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '404.756', '9.16734', '-24.9806', '5.37936', '86400', '5', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(145998, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '304.092', '183.315', '2.93627', '0.314159', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(145999, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '319.061', '181.406', '2.93627', '3.36848', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(146000, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '415.292', '32.0243', '-25.0731', '2.00533', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(146001, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '404.637', '33.3228', '-25.3474', '1.09309', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(146002, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '397.051', '108.892', '-3.80362', '3.85718', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(146003, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '391.716', '110.485', '-3.80361', '5.81195', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(146004, @ENTRY, '429', '2557', '5913', '2', '0', '0', '0', '-1', '0', '0', '347.183', '-67.9546', '-25.8799', '0.77538', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '725.086' AND `position_y` REGEXP '486.37' AND `position_z` REGEXP '28.2642' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '725.086' AND `position_y` REGEXP '486.37' AND `position_z` REGEXP '28.2642' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '719.403' AND `position_y` REGEXP '477.228' AND `position_z` REGEXP '28.263' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '719.403' AND `position_y` REGEXP '477.228' AND `position_z` REGEXP '28.263' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '712.803' AND `position_y` REGEXP '468.677' AND `position_z` REGEXP '28.2616' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '712.803' AND `position_y` REGEXP '468.677' AND `position_z` REGEXP '28.2616' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '724.21' AND `position_y` REGEXP '464.514' AND `position_z` REGEXP '28.2634' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '724.21' AND `position_y` REGEXP '464.514' AND `position_z` REGEXP '28.2634' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '715.356' AND `position_y` REGEXP '492.574' AND `position_z` REGEXP '28.2628' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '715.356' AND `position_y` REGEXP '492.574' AND `position_z` REGEXP '28.2628' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '729.782' AND `position_y` REGEXP '497.977' AND `position_z` REGEXP '28.1809' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '729.782' AND `position_y` REGEXP '497.977' AND `position_z` REGEXP '28.1809' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '731.356' AND `position_y` REGEXP '440.905' AND `position_z` REGEXP '28.1809' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '731.356' AND `position_y` REGEXP '440.905' AND `position_z` REGEXP '28.1809' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '730.857' AND `position_y` REGEXP '454.202' AND `position_z` REGEXP '28.1818' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '730.857' AND `position_y` REGEXP '454.202' AND `position_z` REGEXP '28.1818' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '735.317' AND `position_y` REGEXP '444.417' AND `position_z` REGEXP '28.1823' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '735.317' AND `position_y` REGEXP '444.417' AND `position_z` REGEXP '28.1823' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '340.884' AND `position_y` REGEXP '-22.1709' AND `position_z` REGEXP '-25.0456' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '340.884' AND `position_y` REGEXP '-22.1709' AND `position_z` REGEXP '-25.0456' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '357.606' AND `position_y` REGEXP '-31.0619' AND `position_z` REGEXP '-25.3087' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '357.606' AND `position_y` REGEXP '-31.0619' AND `position_z` REGEXP '-25.3087' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '349.138' AND `position_y` REGEXP '-36.2457' AND `position_z` REGEXP '-25.3775' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '349.138' AND `position_y` REGEXP '-36.2457' AND `position_z` REGEXP '-25.3775' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '341.746' AND `position_y` REGEXP '-30.117' AND `position_z` REGEXP '-25.1938' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '341.746' AND `position_y` REGEXP '-30.117' AND `position_z` REGEXP '-25.1938' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '382.306' AND `position_y` REGEXP '-69.0369' AND `position_z` REGEXP '-23.5575' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '382.306' AND `position_y` REGEXP '-69.0369' AND `position_z` REGEXP '-23.5575' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '377.483' AND `position_y` REGEXP '-51.7621' AND `position_z` REGEXP '-24.1065' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '377.483' AND `position_y` REGEXP '-51.7621' AND `position_z` REGEXP '-24.1065' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '382.778' AND `position_y` REGEXP '-47.0005' AND `position_z` REGEXP '-23.906' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '382.778' AND `position_y` REGEXP '-47.0005' AND `position_z` REGEXP '-23.906' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '374.831' AND `position_y` REGEXP '-59.13' AND `position_z` REGEXP '-24.1519' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '374.831' AND `position_y` REGEXP '-59.13' AND `position_z` REGEXP '-24.1519' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.18' AND `position_y` REGEXP '16.25' AND `position_z` REGEXP '-25.5551' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.18' AND `position_y` REGEXP '16.25' AND `position_z` REGEXP '-25.5551' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '407.789' AND `position_y` REGEXP '-50.7201' AND `position_z` REGEXP '-23.0973' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '407.789' AND `position_y` REGEXP '-50.7201' AND `position_z` REGEXP '-23.0973' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '428.65' AND `position_y` REGEXP '-35.0334' AND `position_z` REGEXP '-24.7101' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '428.65' AND `position_y` REGEXP '-35.0334' AND `position_z` REGEXP '-24.7101' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '415.32' AND `position_y` REGEXP '-37.0531' AND `position_z` REGEXP '-23.9358' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '415.32' AND `position_y` REGEXP '-37.0531' AND `position_z` REGEXP '-23.9358' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '428.125' AND `position_y` REGEXP '79.5227' AND `position_z` REGEXP '-23.7273' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '428.125' AND `position_y` REGEXP '79.5227' AND `position_z` REGEXP '-23.7273' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '426.051' AND `position_y` REGEXP '73.2831' AND `position_z` REGEXP '-23.4526' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '426.051' AND `position_y` REGEXP '73.2831' AND `position_z` REGEXP '-23.4526' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '434.372' AND `position_y` REGEXP '68.875' AND `position_z` REGEXP '-23.2256' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '434.372' AND `position_y` REGEXP '68.875' AND `position_z` REGEXP '-23.2256' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '448.359' AND `position_y` REGEXP '304.18' AND `position_z` REGEXP '11.2033' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '448.359' AND `position_y` REGEXP '304.18' AND `position_z` REGEXP '11.2033' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '441.873' AND `position_y` REGEXP '292.296' AND `position_z` REGEXP '11.2877' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '441.873' AND `position_y` REGEXP '292.296' AND `position_z` REGEXP '11.2877' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.746' AND `position_y` REGEXP '102.826' AND `position_z` REGEXP '-3.80367' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.746' AND `position_y` REGEXP '102.826' AND `position_z` REGEXP '-3.80367' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '402.409' AND `position_y` REGEXP '171.529' AND `position_z` REGEXP '2.93519' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '402.409' AND `position_y` REGEXP '171.529' AND `position_z` REGEXP '2.93519' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '410.881' AND `position_y` REGEXP '174.518' AND `position_z` REGEXP '2.93516' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '410.881' AND `position_y` REGEXP '174.518' AND `position_z` REGEXP '2.93516' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '412.8' AND `position_y` REGEXP '183.446' AND `position_z` REGEXP '2.93557' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '412.8' AND `position_y` REGEXP '183.446' AND `position_z` REGEXP '2.93557' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '433.926' AND `position_y` REGEXP '168.443' AND `position_z` REGEXP '2.85223' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '433.926' AND `position_y` REGEXP '168.443' AND `position_z` REGEXP '2.85223' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '436.521' AND `position_y` REGEXP '171.8' AND `position_z` REGEXP '2.85232' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '436.521' AND `position_y` REGEXP '171.8' AND `position_z` REGEXP '2.85232' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '409.139' AND `position_y` REGEXP '327.11' AND `position_z` REGEXP '2.93415' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '409.139' AND `position_y` REGEXP '327.11' AND `position_z` REGEXP '2.93415' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '408.077' AND `position_y` REGEXP '23.4038' AND `position_z` REGEXP '-25.356' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '408.077' AND `position_y` REGEXP '23.4038' AND `position_z` REGEXP '-25.356' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '413.974' AND `position_y` REGEXP '15.749' AND `position_z` REGEXP '-25.0879' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '413.974' AND `position_y` REGEXP '15.749' AND `position_z` REGEXP '-25.0879' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '341.223' AND `position_y` REGEXP '-61.7868' AND `position_z` REGEXP '-25.4697' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '341.223' AND `position_y` REGEXP '-61.7868' AND `position_z` REGEXP '-25.4697' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '352.286' AND `position_y` REGEXP '-57.7756' AND `position_z` REGEXP '-25.8241' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '352.286' AND `position_y` REGEXP '-57.7756' AND `position_z` REGEXP '-25.8241' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '335.31' AND `position_y` REGEXP '-54.8641' AND `position_z` REGEXP '-25.8178' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '335.31' AND `position_y` REGEXP '-54.8641' AND `position_z` REGEXP '-25.8178' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '356.844' AND `position_y` REGEXP '-67.5697' AND `position_z` REGEXP '-26.1843' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '356.844' AND `position_y` REGEXP '-67.5697' AND `position_z` REGEXP '-26.1843' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '439.126' AND `position_y` REGEXP '359.171' AND `position_z` REGEXP '3.86281' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '439.126' AND `position_y` REGEXP '359.171' AND `position_z` REGEXP '3.86281' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '444.332' AND `position_y` REGEXP '342.271' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '444.332' AND `position_y` REGEXP '342.271' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '451.231' AND `position_y` REGEXP '358.101' AND `position_z` REGEXP '3.8628' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '451.231' AND `position_y` REGEXP '358.101' AND `position_z` REGEXP '3.8628' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '311.978' AND `position_y` REGEXP '173.334' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '311.978' AND `position_y` REGEXP '173.334' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '318.378' AND `position_y` REGEXP '360.432' AND `position_z` REGEXP '2.85293' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '318.378' AND `position_y` REGEXP '360.432' AND `position_z` REGEXP '2.85293' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '325.075' AND `position_y` REGEXP '351.874' AND `position_z` REGEXP '2.93626' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '325.075' AND `position_y` REGEXP '351.874' AND `position_z` REGEXP '2.93626' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '780.872' AND `position_y` REGEXP '483.796' AND `position_z` REGEXP '36.0493' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '780.872' AND `position_y` REGEXP '483.796' AND `position_z` REGEXP '36.0493' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '792.718' AND `position_y` REGEXP '495.528' AND `position_z` REGEXP '37.3182' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '792.718' AND `position_y` REGEXP '495.528' AND `position_z` REGEXP '37.3182' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '778.848' AND `position_y` REGEXP '490.062' AND `position_z` REGEXP '35.1498' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '778.848' AND `position_y` REGEXP '490.062' AND `position_z` REGEXP '35.1498' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.836' AND `position_y` REGEXP '220.873' AND `position_z` REGEXP '11.2113' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '399.836' AND `position_y` REGEXP '220.873' AND `position_z` REGEXP '11.2113' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '387.138' AND `position_y` REGEXP '203.458' AND `position_z` REGEXP '11.2161' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '387.138' AND `position_y` REGEXP '203.458' AND `position_z` REGEXP '11.2161' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '355.238' AND `position_y` REGEXP '-18.4445' AND `position_z` REGEXP '-25.1449' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '355.238' AND `position_y` REGEXP '-18.4445' AND `position_z` REGEXP '-25.1449' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '409.935' AND `position_y` REGEXP '335.965' AND `position_z` REGEXP '2.84705' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '409.935' AND `position_y` REGEXP '335.965' AND `position_z` REGEXP '2.84705' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.258' AND `position_y` REGEXP '342.263' AND `position_z` REGEXP '2.84682' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.258' AND `position_y` REGEXP '342.263' AND `position_z` REGEXP '2.84682' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '412.695' AND `position_y` REGEXP '-61.5281' AND `position_z` REGEXP '-25.3884' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '412.695' AND `position_y` REGEXP '-61.5281' AND `position_z` REGEXP '-25.3884' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '420.648' AND `position_y` REGEXP '-49.2333' AND `position_z` REGEXP '-23.81' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '420.648' AND `position_y` REGEXP '-49.2333' AND `position_z` REGEXP '-23.81' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '334.235' AND `position_y` REGEXP '357.029' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '334.235' AND `position_y` REGEXP '357.029' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '464.224' AND `position_y` REGEXP '26.2598' AND `position_z` REGEXP '-3.9254' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '464.224' AND `position_y` REGEXP '26.2598' AND `position_z` REGEXP '-3.9254' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '466.826' AND `position_y` REGEXP '22.9091' AND `position_z` REGEXP '-3.9267' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '466.826' AND `position_y` REGEXP '22.9091' AND `position_z` REGEXP '-3.9267' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '434.5' AND `position_y` REGEXP '304.634' AND `position_z` REGEXP '11.2862' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '434.5' AND `position_y` REGEXP '304.634' AND `position_z` REGEXP '11.2862' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '386.18' AND `position_y` REGEXP '-59.6284' AND `position_z` REGEXP '-23.0857' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '386.18' AND `position_y` REGEXP '-59.6284' AND `position_z` REGEXP '-23.0857' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.756' AND `position_y` REGEXP '9.16734' AND `position_z` REGEXP '-24.9806' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.756' AND `position_y` REGEXP '9.16734' AND `position_z` REGEXP '-24.9806' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '304.092' AND `position_y` REGEXP '183.315' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '304.092' AND `position_y` REGEXP '183.315' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '319.061' AND `position_y` REGEXP '181.406' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '319.061' AND `position_y` REGEXP '181.406' AND `position_z` REGEXP '2.93627' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '415.292' AND `position_y` REGEXP '32.0243' AND `position_z` REGEXP '-25.0731' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '415.292' AND `position_y` REGEXP '32.0243' AND `position_z` REGEXP '-25.0731' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.637' AND `position_y` REGEXP '33.3228' AND `position_z` REGEXP '-25.3474' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '404.637' AND `position_y` REGEXP '33.3228' AND `position_z` REGEXP '-25.3474' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '397.051' AND `position_y` REGEXP '108.892' AND `position_z` REGEXP '-3.80362' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '397.051' AND `position_y` REGEXP '108.892' AND `position_z` REGEXP '-3.80362' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '391.716' AND `position_y` REGEXP '110.485' AND `position_z` REGEXP '-3.80361' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '391.716' AND `position_y` REGEXP '110.485' AND `position_z` REGEXP '-3.80361' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '347.183' AND `position_y` REGEXP '-67.9546' AND `position_z` REGEXP '-25.8799' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '347.183' AND `position_y` REGEXP '-67.9546' AND `position_z` REGEXP '-25.8799' AND `PhaseId` = '0' AND `map` = '429');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 13036;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('13036', '3864', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3864): Citrine, ItemLevel: 40, RequiredLevel: 40, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '3928', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3928): Superior Healing Potion, ItemLevel: 45, RequiredLevel: 45, ItemQuality: WAIHT_COMMON     */, 
('13036', '4500', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(4500): Traveler's Backpack, ItemLevel: 55, RequiredLevel: 55, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '5263', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(5263): Pocket Lint, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('13036', '5759', '0', '0.2862', '0', '1', '0', '1', '1', '') /* Item(5759): Thorium Lockbox, ItemLevel: 55, RequiredLevel: 55, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '7909', '0', '0.2044', '0', '1', '0', '1', '1', '') /* Item(7909): Aquamarine, ItemLevel: 45, RequiredLevel: 45, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '7910', '0', '0.0818', '0', '1', '0', '1', '1', '') /* Item(7910): Star Ruby, ItemLevel: 50, RequiredLevel: 50, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '8146', '0', '7.9313', '0', '1', '0', '1', '1', '') /* Item(8146): Wicked Claw, ItemLevel: 45, RequiredLevel: 45, ItemQuality: GREY_POOR        */, 
('13036', '8932', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(8932): Alterac Swiss, ItemLevel: 45, RequiredLevel: 45, ItemQuality: WAIHT_COMMON     */, 
('13036', '12682', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12682): Plans: Thorium Armor, ItemLevel: 50, RequiredLevel: 50, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12683', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12683): Plans: Thorium Belt, ItemLevel: 50, RequiredLevel: 50, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12684', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12684): Plans: Thorium Bracers, ItemLevel: 51, RequiredLevel: 51, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12689', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12689): Plans: Radiant Breastplate, ItemLevel: 54, RequiredLevel: 54, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12691', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12691): Plans: Wildthorn Mail, ItemLevel: 54, RequiredLevel: 54, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12692', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12692): Plans: Thorium Shield Spike, ItemLevel: 55, RequiredLevel: 55, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12693', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12693): Plans: Thorium Boots, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12694', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12694): Plans: Thorium Helm, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12695', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12695): Plans: Radiant Gloves, ItemLevel: 57, RequiredLevel: 57, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12697', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12697): Plans: Radiant Boots, ItemLevel: 58, RequiredLevel: 58, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12704', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12704): Plans: Thorium Leggings, ItemLevel: 60, RequiredLevel: 60, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '12713', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(12713): Plans: Radiant Leggings, ItemLevel: 61, RequiredLevel: 61, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '13490', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(13490): Recipe: Greater Stoneshield Potion, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '13492', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(13492): Recipe: Purification Potion, ItemLevel: 57, RequiredLevel: 57, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '13493', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(13493): Recipe: Greater Arcane Elixir, ItemLevel: 57, RequiredLevel: 57, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '13518', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(13518): Recipe: Potion of Petrification, ItemLevel: 60, RequiredLevel: 60, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14466', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14466): Pattern: Frostweave Tunic, ItemLevel: 51, RequiredLevel: 51, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14467', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14467): Pattern: Frostweave Robe, ItemLevel: 51, RequiredLevel: 51, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14470', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14470): Pattern: Runecloth Tunic, ItemLevel: 52, RequiredLevel: 52, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14474', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14474): Pattern: Frostweave Gloves, ItemLevel: 53, RequiredLevel: 53, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14489', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14489): Pattern: Frostweave Pants, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14492', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14492): Pattern: Felcloth Boots, ItemLevel: 57, RequiredLevel: 57, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14494', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14494): Pattern: Brightcloth Pants, ItemLevel: 58, RequiredLevel: 58, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14496', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14496): Pattern: Felcloth Hood, ItemLevel: 58, RequiredLevel: 58, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14497', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14497): Pattern: Mooncloth Leggings, ItemLevel: 58, RequiredLevel: 58, ItemQuality: BLUE_RARE        */, 
('13036', '14499', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14499): Pattern: Mooncloth Bag, ItemLevel: 60, RequiredLevel: 60, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14501', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14501): Pattern: Mooncloth Vest, ItemLevel: 60, RequiredLevel: 60, ItemQuality: BLUE_RARE        */, 
('13036', '14506', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14506): Pattern: Felcloth Robe, ItemLevel: 61, RequiredLevel: 61, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '14507', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14507): Pattern: Mooncloth Shoulders, ItemLevel: 61, RequiredLevel: 61, ItemQuality: BLUE_RARE        */, 
('13036', '14508', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14508): Pattern: Felcloth Shoulders, ItemLevel: 62, RequiredLevel: 62, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15731', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15731): Pattern: Runic Leather Gauntlets, ItemLevel: 54, RequiredLevel: 54, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15737', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15737): Pattern: Chimeric Boots, ItemLevel: 55, RequiredLevel: 55, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15743', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15743): Pattern: Heavy Scorpid Belt, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15745', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15745): Pattern: Runic Leather Belt, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15746', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15746): Pattern: Chimeric Leggings, ItemLevel: 56, RequiredLevel: 56, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15755', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15755): Pattern: Chimeric Vest, ItemLevel: 58, RequiredLevel: 58, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15757', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15757): Pattern: Wicked Leather Pants, ItemLevel: 58, RequiredLevel: 58, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '15765', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15765): Pattern: Runic Leather Pants, ItemLevel: 60, RequiredLevel: 60, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16043', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16043): Schematic: Thorium Rifle, ItemLevel: 52, RequiredLevel: 52, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16051', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16051): Ruined Schematic: Thorium Shells, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('13036', '16215', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16215): Formula: Enchant Boots - Greater Stamina, ItemLevel: 52, RequiredLevel: 52, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16218', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16218): Formula: Enchant Bracer - Superior Versatility, ItemLevel: 54, RequiredLevel: 54, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16220', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16220): Formula: Enchant Boots - Versatility, ItemLevel: 55, RequiredLevel: 55, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16245', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(16245): Formula: Enchant Boots - Greater Agility, ItemLevel: 59, RequiredLevel: 59, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '16251', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(16251): Formula: Enchant Bracer - Superior Stamina, ItemLevel: 60, RequiredLevel: 60, ItemQuality: GREEN_UNCOMMON   */, 
('13036', '18236', '0', '28.5364', '0', '1', '0', '1', '1', '') /* Item(18236): Gordok Chew Toy, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('13036', '18237', '0', '60.5887', '0', '1', '0', '1', '1', '') /* Item(18237): Mastiff Jawbone, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('13036', '18255', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18255): Runn Tum Tuber, ItemLevel: 45, RequiredLevel: 45, ItemQuality: WAIHT_COMMON     */, 
('13036', '18297', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18297): Thornling Seed, ItemLevel: 40, RequiredLevel: 40, ItemQuality: WAIHT_COMMON     */, 
('13036', '18365', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18365): A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'.", ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('13036', '18475', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18475): Oddly Magical Belt, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '18477', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18477): Shaggy Leggings, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '18479', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18479): Carrion Scorpid Helm, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '18528', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18528): Cyclone Spaulders, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '18530', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18530): Ogre Forged Hauberk, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '18533', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(18533): Gordok Bracers of Power, ItemLevel: 49, RequiredLevel: 49, ItemQuality: BLUE_RARE        */, 
('13036', '24016', '24016', '1', '0', '1', '1', '1', '1', '') /* Item(24016): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('13036', '24017', '24017', '0.5', '0', '1', '1', '1', '1', '') /* Item(24017): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('13036', '24018', '24018', '1', '0', '1', '1', '1', '1', '') /* Item(24018): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('13036', '24019', '24019', '0.5', '0', '1', '1', '1', '1', '') /* Item(24019): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('13036', '24030', '24030', '0.5', '0', '1', '1', '1', '1', '') /* Item(24030): Brilliant Living Ruby, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('13036', '24031', '24031', '1', '0', '1', '1', '1', '1', '') /* Item(24031): Delicate Living Ruby, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('13036', '24032', '24032', '0.5', '0', '1', '1', '1', '1', '') /* Item(24032): Subtle Dawnstone, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('13036', '24033', '24033', '1', '0', '1', '1', '1', '1', '') /* Item(24033): Solid Star of Elune, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('13036', '24034', '24034', '0.5', '0', '1', '1', '1', '1', '') /* Item(24034): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('13036', '24086', '24086', '0.1', '0', '1', '1', '1', '1', '') /* Item(24086): Arcane Khorium Band, ItemLevel: 115, RequiredLevel: 115, ItemQuality: BLUE_RARE        */, 
('13036', '24087', '24087', '0.1', '0', '1', '1', '1', '1', '') /* Item(24087): Heavy Felsteel Ring, ItemLevel: 109, RequiredLevel: 109, ItemQuality: BLUE_RARE        */, 
('13036', '24088', '24088', '0.1', '0', '1', '1', '1', '1', '') /* Item(24088): Delicate Eternium Ring, ItemLevel: 101, RequiredLevel: 101, ItemQuality: BLUE_RARE        */, 
('13036', '24089', '24089', '0.1', '0', '1', '1', '1', '1', '') /* Item(24089): Blazing Eternium Band, ItemLevel: 115, RequiredLevel: 115, ItemQuality: BLUE_RARE        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '4304', '0', '9.8258', '0', '1', '1', '1', '2', ''), 
(@ENTRY, '8170', '0', '80.7666', '0', '1', '1', '1', '2', ''), 
(@ENTRY, '8171', '0', '4.669', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '8368', '0', '4.7387', '0', '1', '1', '1', '1', ''); 


/*
3864  2  GREEN_UNCOMMON    0g 8s 0c  40  0  Citrine
3928  1  WAIHT_COMMON      0g 2s 50c  45  35  Superior Healing Potion
4500  2  GREEN_UNCOMMON    0g 87s 50c  55  0  Traveler's Backpack
5263  0  GREY_POOR         0g 0s 1c  1  0  Pocket Lint
5759  2  GREEN_UNCOMMON    0g 3s 75c  55  0  Thorium Lockbox
7909  2  GREEN_UNCOMMON    0g 10s 0c  45  0  Aquamarine
7910  2  GREEN_UNCOMMON    0g 50s 0c  50  0  Star Ruby
8146  0  GREY_POOR         0g 5s 0c  45  0  Wicked Claw
8932  1  WAIHT_COMMON      0g 2s 0c  45  45  Alterac Swiss
12682  2  GREEN_UNCOMMON    0g 30s 0c  50  0  Plans: Thorium Armor
12683  2  GREEN_UNCOMMON    0g 30s 0c  50  0  Plans: Thorium Belt
12684  2  GREEN_UNCOMMON    0g 30s 0c  51  0  Plans: Thorium Bracers
12689  2  GREEN_UNCOMMON    0g 35s 0c  54  0  Plans: Radiant Breastplate
12691  2  GREEN_UNCOMMON    0g 40s 0c  54  0  Plans: Wildthorn Mail
12692  2  GREEN_UNCOMMON    0g 40s 0c  55  0  Plans: Thorium Shield Spike
12693  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Plans: Thorium Boots
12694  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Plans: Thorium Helm
12695  2  GREEN_UNCOMMON    0g 50s 0c  57  0  Plans: Radiant Gloves
12697  2  GREEN_UNCOMMON    0g 55s 0c  58  0  Plans: Radiant Boots
12704  2  GREEN_UNCOMMON    0g 75s 0c  60  0  Plans: Thorium Leggings
12713  2  GREEN_UNCOMMON    1g 0s 0c  61  0  Plans: Radiant Leggings
13490  2  GREEN_UNCOMMON    0g 40s 0c  56  0  Recipe: Greater Stoneshield Potion
13492  2  GREEN_UNCOMMON    0g 50s 0c  57  0  Recipe: Purification Potion
13493  2  GREEN_UNCOMMON    0g 50s 0c  57  0  Recipe: Greater Arcane Elixir
13518  2  GREEN_UNCOMMON    1g 0s 0c  60  0  Recipe: Potion of Petrification
14466  2  GREEN_UNCOMMON    0g 30s 0c  51  0  Pattern: Frostweave Tunic
14467  2  GREEN_UNCOMMON    0g 30s 0c  51  0  Pattern: Frostweave Robe
14470  2  GREEN_UNCOMMON    0g 30s 0c  52  0  Pattern: Runecloth Tunic
14474  2  GREEN_UNCOMMON    0g 30s 0c  53  0  Pattern: Frostweave Gloves
14489  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Pattern: Frostweave Pants
14492  2  GREEN_UNCOMMON    0g 50s 0c  57  0  Pattern: Felcloth Boots
14494  2  GREEN_UNCOMMON    0g 55s 0c  58  0  Pattern: Brightcloth Pants
14496  2  GREEN_UNCOMMON    0g 55s 0c  58  0  Pattern: Felcloth Hood
14497  3  BLUE_RARE         0g 55s 0c  58  0  Pattern: Mooncloth Leggings
14499  2  GREEN_UNCOMMON    0g 75s 0c  60  0  Pattern: Mooncloth Bag
14501  3  BLUE_RARE         0g 75s 0c  60  0  Pattern: Mooncloth Vest
14506  2  GREEN_UNCOMMON    1g 0s 0c  61  0  Pattern: Felcloth Robe
14507  3  BLUE_RARE         1g 0s 0c  61  0  Pattern: Mooncloth Shoulders
14508  2  GREEN_UNCOMMON    1g 50s 0c  62  0  Pattern: Felcloth Shoulders
15731  2  GREEN_UNCOMMON    0g 35s 0c  54  0  Pattern: Runic Leather Gauntlets
15737  2  GREEN_UNCOMMON    0g 40s 0c  55  0  Pattern: Chimeric Boots
15743  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Pattern: Heavy Scorpid Belt
15745  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Pattern: Runic Leather Belt
15746  2  GREEN_UNCOMMON    0g 50s 0c  56  0  Pattern: Chimeric Leggings
15755  2  GREEN_UNCOMMON    0g 55s 0c  58  0  Pattern: Chimeric Vest
15757  2  GREEN_UNCOMMON    0g 55s 0c  58  0  Pattern: Wicked Leather Pants
15765  2  GREEN_UNCOMMON    0g 75s 0c  60  0  Pattern: Runic Leather Pants
16043  2  GREEN_UNCOMMON    0g 30s 0c  52  0  Schematic: Thorium Rifle
16051  0  GREY_POOR         0g 50s 0c  1  0  Ruined Schematic: Thorium Shells
16215  2  GREEN_UNCOMMON    0g 30s 0c  52  0  Formula: Enchant Boots - Greater Stamina
16218  2  GREEN_UNCOMMON    0g 35s 0c  54  0  Formula: Enchant Bracer - Superior Versatility
16220  2  GREEN_UNCOMMON    0g 40s 0c  55  0  Formula: Enchant Boots - Versatility
16245  2  GREEN_UNCOMMON    0g 60s 0c  59  0  Formula: Enchant Boots - Greater Agility
16251  2  GREEN_UNCOMMON    0g 75s 0c  60  0  Formula: Enchant Bracer - Superior Stamina
18236  0  GREY_POOR         0g 27s 16c  1  0  Gordok Chew Toy
18237  0  GREY_POOR         0g 16s 22c  1  0  Mastiff Jawbone
18255  1  WAIHT_COMMON      0g 0s 15c  45  45  Runn Tum Tuber
18297  1  WAIHT_COMMON      40  39  Thornling Seed
18365  1  WAIHT_COMMON      1  0  A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
18475  3  BLUE_RARE         0g 8s 95c  49  44  Oddly Magical Belt
18477  3  BLUE_RARE         0g 17s 94c  49  44  Shaggy Leggings
18479  3  BLUE_RARE         0g 13s 53c  49  44  Carrion Scorpid Helm
18528  3  BLUE_RARE         0g 14s 34c  49  44  Cyclone Spaulders
18530  3  BLUE_RARE         0g 17s 46c  49  44  Ogre Forged Hauberk
18533  3  BLUE_RARE         0g 9s 13c  49  44  Gordok Bracers of Power
24030  3  BLUE_RARE         3g 0s 0c  70  0  Brilliant Living Ruby
24031  3  BLUE_RARE         3g 0s 0c  70  0  Delicate Living Ruby
24032  3  BLUE_RARE         3g 0s 0c  70  0  Subtle Dawnstone
24033  3  BLUE_RARE         3g 0s 0c  70  0  Solid Star of Elune
24086  3  BLUE_RARE         3g 98s 18c  115  70  Arcane Khorium Band
24087  3  BLUE_RARE         3g 70s 37c  109  68  Heavy Felsteel Ring
24088  3  BLUE_RARE         3g 91s 22c  101  70  Delicate Eternium Ring
24089  3  BLUE_RARE         3g 98s 18c  115  70  Blazing Eternium Band
*/
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*
4304  1  WAIHT_COMMON      0g 3s 0c  40  0  Thick Leather
8170  1  WAIHT_COMMON      0g 5s 0c  50  0  Rugged Leather
8171  1  WAIHT_COMMON      0g 5s 0c  50  0  Rugged Hide
8368  0  GREY_POOR         0g 10s 0c  40  0  Thick Wolfhide


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 13036;
DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 13036;

