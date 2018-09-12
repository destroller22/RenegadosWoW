/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Stormwind City Guard';
SET @ENTRY 		:= '68';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3167',  '5446',  '0',  '0',   @CREATURE,  '',  '',  '',  'Directions',  '435',  '0',  '0',  '-1',  '0',  '0',  '11',  '1',  '1',  '1.42857',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1.5',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '144',  '1',  '0',  '32768',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'Taste blade, mongrel!', '12', '0', '100', '0', '0', '0', '10950', '0', 'SAY_GUARD_SIL_AGGRO1'), 
(@ENTRY, '0', '1', 'Please tell me that you didn\'t just do what I think you just did. Please tell me that I\'m not going to have to hurt you... ', '12', '0', '100', '0', '0', '0', '10951', '0', 'SAY_GUARD_SIL_AGGRO2'), 
(@ENTRY, '0', '2', 'As if we don\'t have enough problems, you go and create more!', '12', '0', '100', '0', '0', '0', '10953', '0', 'SAY_GUARD_SIL_AGGRO3'), 
(@ENTRY, '2', '0', '%s throws a rotten apple at $n.', '16', '0', '100', '0', '0', '0', '31671', '0', 'Stormwind City Guard'), 
(@ENTRY, '3', '0', '%s throws rotten banana on $n.', '16', '0', '100', '0', '0', '0', '31672', '0', 'Stormwind City Guard'), 
(@ENTRY, '4', '0', '%s spits on $n.', '16', '0', '100', '0', '0', '0', '31673', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '0', 'Monster!', '12', '0', '100', '0', '0', '0', '31662', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '1', 'Murderer!', '12', '0', '100', '0', '0', '0', '31679', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '2', 'GET A ROPE!', '12', '0', '100', '0', '0', '0', '31669', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '3', 'How dare you set foot in our city!', '12', '0', '100', '0', '0', '0', '31684', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '4', 'You disgust me.', '12', '0', '100', '0', '0', '0', '31680', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '5', 'Looks like we\'re going to have ourselves an execution.', '12', '0', '100', '0', '0', '0', '31682', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '6', 'Traitorous dog.', '12', '0', '100', '0', '0', '0', '31665', '0', 'Stormwind City Guard'), 
(@ENTRY, '5', '7', 'My family was wiped out by the Scourge! MONSTER!', '12', '0', '100', '0', '0', '0', '31667', '0', 'Stormwind City Guard'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 68 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('68', '0', '0', '0', '10', '0', '100', '0', '1', '10', '10000', '10000', '', '87', '6800', '6801', '6802', '6803', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormwind City Guard - Within 1-10 Range Out of Combat LoS - Run Random Script'), 
('68', '0', '1', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Stormwind City Guard - On aggro - Say text1'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(177187, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8334.21', '1110.44', '57.3455', '2.18166', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177188, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8394.6', '1071.23', '31.7136', '2.42601', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177190, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8499.06', '1090.22', '18.0276', '1.50098', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177191, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8477.1', '977.04', '84.8446', '3.87965', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177218, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8472.81', '981.019', '80.7609', '3.90123', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177219, @ENTRY, '0', '1519', '5346', '1', '0', '0', '0', '-1', '0', '1', '-8254.14', '911.622', '98.117', '2.87979', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(180483, @ENTRY, '0', '1519', '5346', '1', '0', '0', '0', '-1', '0', '1', '-8263.92', '889.689', '100.504', '2.42601', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188477, @ENTRY, '0', '1519', '5346', '1', '0', '0', '0', '-1', '0', '1', '-8252.75', '920.174', '98.0752', '2.98451', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188478, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8485.19', '979.7', '72.8208', '2.07694', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188479, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8677.32', '875.776', '97.1262', '3.85718', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188480, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8909', '1015.15', '124.507', '0.750492', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188481, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8897.62', '1009.77', '124.497', '1.37881', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188482, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '1', '-8858.68', '934.042', '101.989', '5.35816', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188484, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '1', '-8837.64', '942.653', '105.277', '5.23599', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188485, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '1', '-8834.1', '937.37', '105.631', '2.18166', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188618, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8800.06', '865.384', '98.9396', '2.19912', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188619, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8803.48', '862.561', '98.9607', '2.28638', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188621, @ENTRY, '0', '12', '7486', '1', '0', '0', '0', '-1', '0', '1', '-9074.33', '405.335', '93.0993', '3.83972', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188717, @ENTRY, '0', '12', '7486', '1', '0', '0', '0', '-1', '0', '1', '-9095.46', '431.377', '93.2478', '3.82227', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188765, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-9062.08', '420.056', '92.1238', '2.25148', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188770, @ENTRY, '0', '12', '7486', '1', '0', '0', '0', '-1', '0', '1', '-9144.33', '374.036', '90.7553', '0.617607', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188771, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-9078.39', '440.955', '92.3557', '5.37561', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188844, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-9006.43', '467.55', '96.7578', '2.26893', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188845, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-9018.32', '481.74', '96.7007', '5.42797', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188847, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8995.62', '499.649', '96.8756', '5.37561', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188848, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8965.6', '526.179', '96.5967', '0.7201', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188851, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8975.58', '515.896', '96.6726', '5.39307', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188876, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8964.13', '501.609', '96.6727', '2.19912', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188877, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8936.45', '519.026', '96.5394', '3.61283', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188878, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8749.02', '716.452', '98.2291', '2.72273', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188880, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8751.79', '722.531', '98.177', '1.86305', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188897, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8950.66', '537.416', '96.5394', '4.11898', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188899, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8887.27', '635.868', '99.6059', '1.06465', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188900, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '1', '-8908.29', '785.601', '88.1807', '0.715585', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188903, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8889.65', '640.301', '99.6059', '0.0523599', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188905, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8835.35', '648.12', '98.1102', '3.00197', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188911, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8813.51', '803.328', '98.6974', '3.9968', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188913, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8817.93', '809.351', '98.8338', '4.01426', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188915, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8824.81', '683.625', '97.1527', '3.52556', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188916, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8838.13', '653.502', '98.1101', '4.04916', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188918, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8693.63', '715.87', '97.0443', '3.8164', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188919, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8742.15', '700.693', '99.0516', '0.558505', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188920, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8777.14', '674.8', '103.209', '3.71755', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188921, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8737.82', '694.96', '99.146', '0.558505', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188924, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8771.24', '667.028', '103.417', '3.80482', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188927, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8895.31', '575.108', '93.0537', '5.35281', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188928, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8888.4', '566.25', '93.4325', '2.23402', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188929, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8853.97', '541.24', '105.984', '5.02655', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188930, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8832.52', '541.844', '97.0939', '2.68781', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(188933, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8765.54', '607.7', '97.0107', '3.89208', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(188936, @ENTRY, '0', '1519', '5148', '1', '0', '169', '0', '-1', '0', '0', '-8950.37', '508.745', '96.3576', '1.06465', '120', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23360'), 
(189164, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8722.11', '506.99', '96.6184', '2.23078', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(189295, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8683.06', '582.903', '98.9954', '3.80482', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189296, @ENTRY, '0', '1519', '5149', '1', '0', '0', '0', '-1', '0', '1', '-8640.46', '479.21', '102.553', '2.32129', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(189332, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8673.99', '638.733', '98.9965', '2.23402', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189353, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8680.35', '580.045', '98.992', '3.80482', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189385, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8677.02', '636.401', '98.9971', '2.19912', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189386, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8510.24', '525.635', '98.3494', '2.21657', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(189390, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8333.98', '612.141', '99.6853', '2.79853', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189405, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8339.43', '608.101', '99.6853', '1.79769', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189410, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8332.51', '653.208', '97.4177', '0.750492', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189423, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8328.43', '648.127', '97.4135', '0.767945', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189433, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8403.43', '563.326', '92.2788', '2.14675', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189445, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8394.8', '570.2', '91.9619', '2.26893', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(189449, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8359.77', '654.929', '97.2306', '4.29351', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984458, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8365.85', '653.262', '97.2305', '5.65487', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984459, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8567.35', '676.016', '97.0544', '0.698132', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984460, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8471', '685.602', '99.5979', '0.663225', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984461, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8719.21', '951.832', '85.3548', '3.16951', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'), 
(984462, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8719.13', '941.743', '85.3549', '3.22979', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'), 
(984463, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8753.23', '951.547', '85.356', '6.17669', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'), 
(984464, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8753.54', '941.378', '85.3549', '0.212382', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'), 
(984465, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8732.93', '1027.55', '79.5823', '4.8948', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'), 
(984466, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '0', '-8740.51', '1027.59', '79.5823', '4.79116', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '23420'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8334.21' AND `position_y` REGEXP '1110.44' AND `position_z` REGEXP '57.3455' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8334.21' AND `position_y` REGEXP '1110.44' AND `position_z` REGEXP '57.3455' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8394.6' AND `position_y` REGEXP '1071.23' AND `position_z` REGEXP '31.7136' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8394.6' AND `position_y` REGEXP '1071.23' AND `position_z` REGEXP '31.7136' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8499.06' AND `position_y` REGEXP '1090.22' AND `position_z` REGEXP '18.0276' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8499.06' AND `position_y` REGEXP '1090.22' AND `position_z` REGEXP '18.0276' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8477.1' AND `position_y` REGEXP '977.04' AND `position_z` REGEXP '84.8446' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8477.1' AND `position_y` REGEXP '977.04' AND `position_z` REGEXP '84.8446' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8472.81' AND `position_y` REGEXP '981.019' AND `position_z` REGEXP '80.7609' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8472.81' AND `position_y` REGEXP '981.019' AND `position_z` REGEXP '80.7609' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8254.14' AND `position_y` REGEXP '911.622' AND `position_z` REGEXP '98.117' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8254.14' AND `position_y` REGEXP '911.622' AND `position_z` REGEXP '98.117' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8263.92' AND `position_y` REGEXP '889.689' AND `position_z` REGEXP '100.504' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8263.92' AND `position_y` REGEXP '889.689' AND `position_z` REGEXP '100.504' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8252.75' AND `position_y` REGEXP '920.174' AND `position_z` REGEXP '98.0752' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8252.75' AND `position_y` REGEXP '920.174' AND `position_z` REGEXP '98.0752' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8485.19' AND `position_y` REGEXP '979.7' AND `position_z` REGEXP '72.8208' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8485.19' AND `position_y` REGEXP '979.7' AND `position_z` REGEXP '72.8208' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8677.32' AND `position_y` REGEXP '875.776' AND `position_z` REGEXP '97.1262' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8677.32' AND `position_y` REGEXP '875.776' AND `position_z` REGEXP '97.1262' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8677.32', '875.776', '97.1262', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8677.32', '875.776', '97.1262', '3.85718', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8653.88', '846.043', '97.0388', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8653.88', '846.043', '97.0388', '3.89208', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8677.32' AND `position_y` REGEXP '875.776' AND `position_z` REGEXP '97.1262' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8909' AND `position_y` REGEXP '1015.15' AND `position_z` REGEXP '124.507' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8909' AND `position_y` REGEXP '1015.15' AND `position_z` REGEXP '124.507' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8897.62' AND `position_y` REGEXP '1009.77' AND `position_z` REGEXP '124.497' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8897.62' AND `position_y` REGEXP '1009.77' AND `position_z` REGEXP '124.497' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.68' AND `position_y` REGEXP '934.042' AND `position_z` REGEXP '101.989' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.68' AND `position_y` REGEXP '934.042' AND `position_z` REGEXP '101.989' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8858.68', '934.042', '101.989', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8858.68', '934.042', '101.989', '5.18363', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8891.83', '915.7', '110.588', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8891.83', '915.7', '110.588', '5.35816', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.68' AND `position_y` REGEXP '934.042' AND `position_z` REGEXP '101.989' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8837.64' AND `position_y` REGEXP '942.653' AND `position_z` REGEXP '105.277' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8837.64' AND `position_y` REGEXP '942.653' AND `position_z` REGEXP '105.277' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8834.1' AND `position_y` REGEXP '937.37' AND `position_z` REGEXP '105.631' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8834.1' AND `position_y` REGEXP '937.37' AND `position_z` REGEXP '105.631' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8800.06' AND `position_y` REGEXP '865.384' AND `position_z` REGEXP '98.9396' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8800.06' AND `position_y` REGEXP '865.384' AND `position_z` REGEXP '98.9396' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8803.48' AND `position_y` REGEXP '862.561' AND `position_z` REGEXP '98.9607' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8803.48' AND `position_y` REGEXP '862.561' AND `position_z` REGEXP '98.9607' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9074.33' AND `position_y` REGEXP '405.335' AND `position_z` REGEXP '93.0993' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9074.33' AND `position_y` REGEXP '405.335' AND `position_z` REGEXP '93.0993' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9095.46' AND `position_y` REGEXP '431.377' AND `position_z` REGEXP '93.2478' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9095.46' AND `position_y` REGEXP '431.377' AND `position_z` REGEXP '93.2478' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9062.08' AND `position_y` REGEXP '420.056' AND `position_z` REGEXP '92.1238' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9062.08' AND `position_y` REGEXP '420.056' AND `position_z` REGEXP '92.1238' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9144.33' AND `position_y` REGEXP '374.036' AND `position_z` REGEXP '90.7553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', '131700'); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9144.33' AND `position_y` REGEXP '374.036' AND `position_z` REGEXP '90.7553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9144.33', '374.036', '90.7553', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9125.3', '391.614', '91.7864', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9091.4', '414.322', '92.1695', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9073.3', '427.18', '92.0281', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9091.4', '414.322', '92.1695', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9125.3', '391.614', '91.7864', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9144.33', '374.036', '90.7553', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9165.44', '351.636', '87.3813', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9144.33' AND `position_y` REGEXP '374.036' AND `position_z` REGEXP '90.7553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9078.39' AND `position_y` REGEXP '440.955' AND `position_z` REGEXP '92.3557' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9078.39' AND `position_y` REGEXP '440.955' AND `position_z` REGEXP '92.3557' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9006.43' AND `position_y` REGEXP '467.55' AND `position_z` REGEXP '96.7578' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9006.43' AND `position_y` REGEXP '467.55' AND `position_z` REGEXP '96.7578' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9018.32' AND `position_y` REGEXP '481.74' AND `position_z` REGEXP '96.7007' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9018.32' AND `position_y` REGEXP '481.74' AND `position_z` REGEXP '96.7007' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8995.62' AND `position_y` REGEXP '499.649' AND `position_z` REGEXP '96.8756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8995.62' AND `position_y` REGEXP '499.649' AND `position_z` REGEXP '96.8756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8965.6' AND `position_y` REGEXP '526.179' AND `position_z` REGEXP '96.5967' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8965.6' AND `position_y` REGEXP '526.179' AND `position_z` REGEXP '96.5967' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8965.6', '526.179', '96.5967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8965.98', '522.475', '96.5944', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8969.25', '518.163', '96.6', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8975.61', '512.586', '96.608', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8986.57', '504.235', '96.7136', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8995.8', '496.151', '96.7867', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9005.76', '488.378', '96.8524', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9018.34', '478.527', '96.3728', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9030.4', '469.756', '94.4462', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9036.54', '464.329', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9045.85', '460.836', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9057.41', '457.421', '93.2906', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9072.47', '445.562', '93.2875', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9057.41', '457.421', '93.2906', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9046.16', '460.745', '93.2948', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9036.54', '464.329', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9030.4', '469.756', '94.4462', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9018.34', '478.527', '96.3728', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9005.91', '488.259', '96.8491', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8995.8', '496.151', '96.7867', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8986.57', '504.235', '96.7136', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8975.61', '512.586', '96.608', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8969.25', '518.163', '96.6', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8965.98', '522.475', '96.5944', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8965.6' AND `position_y` REGEXP '526.179' AND `position_z` REGEXP '96.5967' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8975.58' AND `position_y` REGEXP '515.896' AND `position_z` REGEXP '96.6726' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8975.58' AND `position_y` REGEXP '515.896' AND `position_z` REGEXP '96.6726' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8964.13' AND `position_y` REGEXP '501.609' AND `position_z` REGEXP '96.6727' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8964.13' AND `position_y` REGEXP '501.609' AND `position_z` REGEXP '96.6727' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8936.45' AND `position_y` REGEXP '519.026' AND `position_z` REGEXP '96.5394' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8936.45' AND `position_y` REGEXP '519.026' AND `position_z` REGEXP '96.5394' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8749.02' AND `position_y` REGEXP '716.452' AND `position_z` REGEXP '98.2291' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8749.02' AND `position_y` REGEXP '716.452' AND `position_z` REGEXP '98.2291' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8751.79' AND `position_y` REGEXP '722.531' AND `position_z` REGEXP '98.177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8751.79' AND `position_y` REGEXP '722.531' AND `position_z` REGEXP '98.177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8950.66' AND `position_y` REGEXP '537.416' AND `position_z` REGEXP '96.5394' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8950.66' AND `position_y` REGEXP '537.416' AND `position_z` REGEXP '96.5394' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8887.27' AND `position_y` REGEXP '635.868' AND `position_z` REGEXP '99.6059' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8887.27' AND `position_y` REGEXP '635.868' AND `position_z` REGEXP '99.6059' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8908.29' AND `position_y` REGEXP '785.601' AND `position_z` REGEXP '88.1807' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8908.29' AND `position_y` REGEXP '785.601' AND `position_z` REGEXP '88.1807' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8908.29', '785.601', '88.1807', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8908.29', '785.601', '88.1807', '0.715585', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8885.14', '756.491', '95.6911', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8885.14', '756.491', '95.6911', '0.733038', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8908.29' AND `position_y` REGEXP '785.601' AND `position_z` REGEXP '88.1807' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8889.65' AND `position_y` REGEXP '640.301' AND `position_z` REGEXP '99.6059' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8889.65' AND `position_y` REGEXP '640.301' AND `position_z` REGEXP '99.6059' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8835.35' AND `position_y` REGEXP '648.12' AND `position_z` REGEXP '98.1102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8835.35' AND `position_y` REGEXP '648.12' AND `position_z` REGEXP '98.1102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8813.51' AND `position_y` REGEXP '803.328' AND `position_z` REGEXP '98.6974' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8813.51' AND `position_y` REGEXP '803.328' AND `position_z` REGEXP '98.6974' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8817.93' AND `position_y` REGEXP '809.351' AND `position_z` REGEXP '98.8338' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8817.93' AND `position_y` REGEXP '809.351' AND `position_z` REGEXP '98.8338' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.81' AND `position_y` REGEXP '683.625' AND `position_z` REGEXP '97.1527' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.81' AND `position_y` REGEXP '683.625' AND `position_z` REGEXP '97.1527' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8824.81', '683.625', '97.1527', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8824.81', '683.625', '97.1527', '3.54302', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8840.42', '717.938', '97.7169', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8840.42', '717.938', '97.7169', '3.52556', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.81' AND `position_y` REGEXP '683.625' AND `position_z` REGEXP '97.1527' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8838.13' AND `position_y` REGEXP '653.502' AND `position_z` REGEXP '98.1101' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8838.13' AND `position_y` REGEXP '653.502' AND `position_z` REGEXP '98.1101' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8693.63' AND `position_y` REGEXP '715.87' AND `position_z` REGEXP '97.0443' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8693.63' AND `position_y` REGEXP '715.87' AND `position_z` REGEXP '97.0443' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8693.63', '715.87', '97.0443', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8693.63', '715.87', '97.0443', '2.25148', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8664.26', '739.443', '96.9903', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8664.26', '739.443', '96.9903', '2.23402', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8693.63' AND `position_y` REGEXP '715.87' AND `position_z` REGEXP '97.0443' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8742.15' AND `position_y` REGEXP '700.693' AND `position_z` REGEXP '99.0516' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8742.15' AND `position_y` REGEXP '700.693' AND `position_z` REGEXP '99.0516' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8777.14' AND `position_y` REGEXP '674.8' AND `position_z` REGEXP '103.209' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8777.14' AND `position_y` REGEXP '674.8' AND `position_z` REGEXP '103.209' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8737.82' AND `position_y` REGEXP '694.96' AND `position_z` REGEXP '99.146' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8737.82' AND `position_y` REGEXP '694.96' AND `position_z` REGEXP '99.146' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8771.24' AND `position_y` REGEXP '667.028' AND `position_z` REGEXP '103.417' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8771.24' AND `position_y` REGEXP '667.028' AND `position_z` REGEXP '103.417' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8895.31' AND `position_y` REGEXP '575.108' AND `position_z` REGEXP '93.0537' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8895.31' AND `position_y` REGEXP '575.108' AND `position_z` REGEXP '93.0537' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8888.4' AND `position_y` REGEXP '566.25' AND `position_z` REGEXP '93.4325' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8888.4' AND `position_y` REGEXP '566.25' AND `position_z` REGEXP '93.4325' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8853.97' AND `position_y` REGEXP '541.24' AND `position_z` REGEXP '105.984' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8853.97' AND `position_y` REGEXP '541.24' AND `position_z` REGEXP '105.984' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8832.52' AND `position_y` REGEXP '541.844' AND `position_z` REGEXP '97.0939' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8832.52' AND `position_y` REGEXP '541.844' AND `position_z` REGEXP '97.0939' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8765.54' AND `position_y` REGEXP '607.7' AND `position_z` REGEXP '97.0107' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8765.54' AND `position_y` REGEXP '607.7' AND `position_z` REGEXP '97.0107' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8765.54', '607.7', '97.0107', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8765.54', '607.7', '97.0107', '3.83972', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8738.67', '580.521', '97.6671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8738.67', '580.521', '97.6671', '3.89208', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8765.54' AND `position_y` REGEXP '607.7' AND `position_z` REGEXP '97.0107' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8950.37' AND `position_y` REGEXP '508.745' AND `position_z` REGEXP '96.3576' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8950.37' AND `position_y` REGEXP '508.745' AND `position_z` REGEXP '96.3576' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8950.37', '508.745', '96.3576', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8954.75', '509.356', '96.5967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8958.4', '509.049', '96.5968', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8962.92', '505.806', '96.6039', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8971.03', '499.344', '96.6374', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8982.33', '490.5', '96.7529', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8989.75', '484.423', '96.8143', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8996.95', '478.284', '96.8393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9004.83', '472.23', '96.7569', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9012.17', '466.045', '96.0167', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9018.02', '461.826', '95.1292', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9022.86', '457.747', '94.2206', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9029.85', '452.335', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9028.84', '447.201', '92.816', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9020.93', '436.215', '86.3663', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9021.51', '432.726', '85.2351', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9025.52', '433.32', '87.0264', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9034.64', '442.558', '93.2936', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9037.93', '440.931', '93.2933', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9041.82', '436.585', '93.2947', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9049.56', '429.868', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9055.84', '424.929', '93.2878', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9049.56', '429.868', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-9041.82', '436.585', '93.2947', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9037.93', '440.931', '93.2933', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9034.64', '442.558', '93.2936', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9025.52', '433.32', '87.0264', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9021.51', '432.726', '85.2351', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-9020.93', '436.215', '86.3663', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-9028.84', '447.201', '92.816', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-9029.85', '452.335', '93.2955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-9022.86', '457.747', '94.2206', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-9018.02', '461.826', '95.1292', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-9012.17', '466.045', '96.0167', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-9004.83', '472.23', '96.7569', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8996.95', '478.284', '96.8393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8989.75', '484.423', '96.8143', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8982.33', '490.5', '96.7529', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8971.03', '499.344', '96.6374', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8962.92', '505.806', '96.6039', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8958.4', '509.049', '96.5968', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8954.75', '509.356', '96.5967', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8950.37' AND `position_y` REGEXP '508.745' AND `position_z` REGEXP '96.3576' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8722.11' AND `position_y` REGEXP '506.99' AND `position_z` REGEXP '96.6184' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8722.11' AND `position_y` REGEXP '506.99' AND `position_z` REGEXP '96.6184' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8722.11', '506.99', '96.6184', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8722.11', '506.99', '96.6184', '0.541052', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8698.25', '476.49', '95.4213', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8698.25', '476.49', '95.4213', '0.593412', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8722.11' AND `position_y` REGEXP '506.99' AND `position_z` REGEXP '96.6184' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8683.06' AND `position_y` REGEXP '582.903' AND `position_z` REGEXP '98.9954' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8683.06' AND `position_y` REGEXP '582.903' AND `position_z` REGEXP '98.9954' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8640.46' AND `position_y` REGEXP '479.21' AND `position_z` REGEXP '102.553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8640.46' AND `position_y` REGEXP '479.21' AND `position_z` REGEXP '102.553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8640.46', '479.21', '102.553', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8640.46', '479.21', '102.553', '2.32129', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8610.83', '502.576', '103.423', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8610.83', '502.576', '103.423', '2.30383', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8640.46' AND `position_y` REGEXP '479.21' AND `position_z` REGEXP '102.553' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8673.99' AND `position_y` REGEXP '638.733' AND `position_z` REGEXP '98.9965' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8673.99' AND `position_y` REGEXP '638.733' AND `position_z` REGEXP '98.9965' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8680.35' AND `position_y` REGEXP '580.045' AND `position_z` REGEXP '98.992' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8680.35' AND `position_y` REGEXP '580.045' AND `position_z` REGEXP '98.992' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8677.02' AND `position_y` REGEXP '636.401' AND `position_z` REGEXP '98.9971' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8677.02' AND `position_y` REGEXP '636.401' AND `position_z` REGEXP '98.9971' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8510.24' AND `position_y` REGEXP '525.635' AND `position_z` REGEXP '98.3494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8510.24' AND `position_y` REGEXP '525.635' AND `position_z` REGEXP '98.3494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8510.24', '525.635', '98.3494', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8510.24', '525.635', '98.3494', '2.21657', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8539.5', '502.309', '98.6891', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8539.5', '502.309', '98.6891', '2.23402', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8510.24' AND `position_y` REGEXP '525.635' AND `position_z` REGEXP '98.3494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8333.98' AND `position_y` REGEXP '612.141' AND `position_z` REGEXP '99.6853' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8333.98' AND `position_y` REGEXP '612.141' AND `position_z` REGEXP '99.6853' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8339.43' AND `position_y` REGEXP '608.101' AND `position_z` REGEXP '99.6853' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8339.43' AND `position_y` REGEXP '608.101' AND `position_z` REGEXP '99.6853' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8332.51' AND `position_y` REGEXP '653.208' AND `position_z` REGEXP '97.4177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8332.51' AND `position_y` REGEXP '653.208' AND `position_z` REGEXP '97.4177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8328.43' AND `position_y` REGEXP '648.127' AND `position_z` REGEXP '97.4135' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8328.43' AND `position_y` REGEXP '648.127' AND `position_z` REGEXP '97.4135' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8403.43' AND `position_y` REGEXP '563.326' AND `position_z` REGEXP '92.2788' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8403.43' AND `position_y` REGEXP '563.326' AND `position_z` REGEXP '92.2788' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8394.8' AND `position_y` REGEXP '570.2' AND `position_z` REGEXP '91.9619' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8394.8' AND `position_y` REGEXP '570.2' AND `position_z` REGEXP '91.9619' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8359.77' AND `position_y` REGEXP '654.929' AND `position_z` REGEXP '97.2306' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8359.77' AND `position_y` REGEXP '654.929' AND `position_z` REGEXP '97.2306' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8365.85' AND `position_y` REGEXP '653.262' AND `position_z` REGEXP '97.2305' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8365.85' AND `position_y` REGEXP '653.262' AND `position_z` REGEXP '97.2305' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8567.35' AND `position_y` REGEXP '676.016' AND `position_z` REGEXP '97.0544' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8567.35' AND `position_y` REGEXP '676.016' AND `position_z` REGEXP '97.0544' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8567.35', '676.016', '97.0544', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8567.35', '676.016', '97.0544', '0.698132', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8590.81', '705.696', '97.0145', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8590.81', '705.696', '97.0145', '0.680678', '38000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8567.35' AND `position_y` REGEXP '676.016' AND `position_z` REGEXP '97.0544' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8471' AND `position_y` REGEXP '685.602' AND `position_z` REGEXP '99.5979' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8471' AND `position_y` REGEXP '685.602' AND `position_z` REGEXP '99.5979' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8471', '685.602', '99.5979', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8471', '685.602', '99.5979', '0.663225', '38000', '0', '0', '100', '0'), 
(@GUID, '3', '-8447.56', '655.849', '93.387', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8447.56', '655.849', '93.387', '0.680678', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8471' AND `position_y` REGEXP '685.602' AND `position_z` REGEXP '99.5979' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8719.21' AND `position_y` REGEXP '951.832' AND `position_z` REGEXP '85.3548' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8719.21' AND `position_y` REGEXP '951.832' AND `position_z` REGEXP '85.3548' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8719.13' AND `position_y` REGEXP '941.743' AND `position_z` REGEXP '85.3549' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8719.13' AND `position_y` REGEXP '941.743' AND `position_z` REGEXP '85.3549' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.23' AND `position_y` REGEXP '951.547' AND `position_z` REGEXP '85.356' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.23' AND `position_y` REGEXP '951.547' AND `position_z` REGEXP '85.356' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.54' AND `position_y` REGEXP '941.378' AND `position_z` REGEXP '85.3549' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.54' AND `position_y` REGEXP '941.378' AND `position_z` REGEXP '85.3549' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8732.93' AND `position_y` REGEXP '1027.55' AND `position_z` REGEXP '79.5823' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8732.93' AND `position_y` REGEXP '1027.55' AND `position_z` REGEXP '79.5823' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8740.51' AND `position_y` REGEXP '1027.59' AND `position_z` REGEXP '79.5823' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8740.51' AND `position_y` REGEXP '1027.59' AND `position_z` REGEXP '79.5823' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 68;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('68', '1', '1899', '0', '143', '0', '0', '2551', '0', '0', '18019');

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

