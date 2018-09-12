/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Stormwind Guard';
SET @ENTRY 		:= '1423';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3258',  '3257',  '0',  '0',   @CREATURE,  '',  '',  '',  'Directions',  '0',  '15',  '15',  '0',  '0',  '0',  '11',  '1',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '2',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '32768',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1423 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1423', '0', '0', '0', '0', '0', '100', '0', '0', '0', '2300', '3900', '', '11', '95826', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Stormwind Guard - In Combat - Cast \'Shoot\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(177229, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9083.6', '-53.3508', '86.4261', '5.44666', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(177449, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9779.24', '815.57', '25.9716', '3.52556', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177450, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9787.54', '809.795', '26.0386', '0.837758', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177451, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9800.77', '735.681', '32.9617', '0.359003', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177452, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9594.37', '679.333', '38.6521', '3.81255', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177453, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9593.67', '685.708', '38.6521', '1.99514', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177454, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9617.35', '668.332', '38.6522', '1.18233', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177455, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9613.45', '667.013', '38.6522', '3.91259', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177457, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9600.63', '667.413', '38.6522', '1.07256', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177458, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9606.1', '669.257', '53.8694', '4.78009', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177459, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9611.29', '637.043', '51.6806', '1.47222', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177463, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9610.38', '638.552', '38.6521', '0.888915', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177502, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9616.7', '645.16', '38.6521', '1.70067', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177503, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9621.15', '693.24', '62.7333', '5.88795', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177508, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9801.01', '715.722', '33.1168', '6.25828', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177509, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9815.01', '690.105', '31.8605', '4.31096', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177510, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9661.14', '691.271', '37.4969', '4.01426', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177511, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9626.67', '677.151', '52.5756', '6.08407', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177512, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9627.07', '691.132', '52.5756', '1.92199', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177514, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9789.82', '713.63', '68.2065', '6.14356', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177515, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9804.19', '685.987', '31.9638', '4.18879', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177516, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9795.4', '709.685', '33.2013', '3.40339', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177517, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9637.91', '665.659', '52.5756', '4.30872', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177518, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9622.87', '662.563', '52.5756', '3.7198', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177519, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9664.59', '683.259', '37.4969', '1.309', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177520, @ENTRY, '0', '12', '120', '1', '0', '0', '0', '-1', '0', '1', '-9640.68', '653.895', '62.6781', '2.76483', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177522, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9740.42', '557.688', '35.4952', '4.64679', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177523, @ENTRY, '0', '12', '60', '1', '0', '0', '0', '-1', '0', '1', '-9744.4', '558.682', '35.7106', '6.00393', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177605, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9181.63', '310.324', '78.9794', '1.58252', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177616, @ENTRY, '0', '12', '87', '1', '0', '0', '0', '-1', '0', '1', '-9455.43', '73.7274', '56.9503', '3.14159', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177617, @ENTRY, '0', '12', '87', '1', '0', '0', '0', '-1', '0', '1', '-9483.48', '73.9977', '56.5629', '2.93215', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177618, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9781.87', '-1405.95', '62.9875', '1.11701', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177619, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9783.52', '-1412.02', '97.8873', '5.84685', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177620, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9784.8', '-1397.46', '62.982', '0.191986', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177626, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9755.07', '-1377.19', '59.2102', '1.0472', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177631, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9767.03', '-1368.88', '59.0108', '0.890118', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177636, @ENTRY, '0', '12', '798', '1', '0', '0', '0', '-1', '0', '1', '-9797.45', '-1413.29', '62.7204', '4.93539', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177727, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9618.58', '-1069.09', '39.7633', '6.12611', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177728, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9611.04', '-1071.76', '39.599', '3.33358', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177730, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9615.54', '-1038.75', '39.8703', '3.14159', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177731, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9621.44', '-1038.78', '39.841', '6.21337', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177732, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9621.58', '-1009.8', '41.4601', '5.45329', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9083.6' AND `position_y` REGEXP '-53.3508' AND `position_z` REGEXP '86.4261' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9083.6' AND `position_y` REGEXP '-53.3508' AND `position_z` REGEXP '86.4261' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9083.6', '-53.3508', '86.4261', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9098.67', '-65.6183', '84.054', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9109.42', '-75.7207', '82.0922', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9125.42', '-85.1659', '78.163', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9142.28', '-95.8797', '75.0947', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9163.2', '-108.535', '72.5671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9176.17', '-111.983', '71.2451', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9195.77', '-112.795', '71.1206', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9208.96', '-109.317', '71.1289', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9225.82', '-104.717', '71.1289', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9238.65', '-99.047', '70.7085', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9249.91', '-91.4822', '70.4067', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9268.24', '-77.8927', '68.6869', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9280.2', '-67.6585', '68.2496', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9297.88', '-60.6129', '67.3444', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9322.91', '-53.6008', '66.4439', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9335.96', '-49.3748', '65.8247', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9351.48', '-40.1138', '64.8154', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9362.03', '-29.9148', '63.7647', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9376.17', '-14.7843', '62.2442', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9397.75', '6.89572', '60.0439', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9409.91', '21.163', '58.8272', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9438.46', '54.5786', '56.02', '0', '6000', '0', '0', '100', '0'), 
(@GUID, '24', '-9431.21', '46.5591', '56.6935', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9421.63', '36.4708', '57.3185', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9411.37', '24.5168', '58.2478', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9401.32', '13.3848', '59.6792', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9390.17', '-1.14529', '60.8219', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-9378.08', '-13.0141', '61.8883', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-9365.35', '-27.7294', '63.3652', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-9351.89', '-40.303', '64.8154', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-9337.79', '-50.1553', '65.6746', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-9329.19', '-52.8443', '66.1309', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-9314.49', '-56.4806', '66.7049', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-9302.47', '-59.147', '66.9322', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-9290.4', '-63.3569', '67.5221', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-9281.47', '-69.3226', '68.0978', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-9270.33', '-77.1763', '68.6869', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-9258.73', '-86.8968', '69.7136', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-9245.78', '-95.4848', '70.5271', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-9235.75', '-101.567', '70.7765', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-9228.75', '-104.131', '70.9917', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-9219.66', '-106.704', '71.2539', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-9208.19', '-109.8', '71.1746', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-9197.43', '-112.189', '71.0954', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-9185.82', '-112.741', '70.9956', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-9174.03', '-111.842', '71.549', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-9159.32', '-106.846', '73.042', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-9149.28', '-100.661', '74.2365', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-9135.36', '-91.4846', '76.2439', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-9119.71', '-80.9652', '79.7045', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-9109.23', '-73.0075', '82.2177', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-9097.45', '-63.842', '84.3533', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-9090.09', '-58.3601', '85.4209', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-9084.71', '-52.9579', '86.3824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-9079.42', '-48.8967', '87.3543', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-9070.88', '-43.4176', '88.0645', '0', '6000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9083.6' AND `position_y` REGEXP '-53.3508' AND `position_z` REGEXP '86.4261' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9779.24' AND `position_y` REGEXP '815.57' AND `position_z` REGEXP '25.9716' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9779.24' AND `position_y` REGEXP '815.57' AND `position_z` REGEXP '25.9716' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9787.54' AND `position_y` REGEXP '809.795' AND `position_z` REGEXP '26.0386' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9787.54' AND `position_y` REGEXP '809.795' AND `position_z` REGEXP '26.0386' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9800.77' AND `position_y` REGEXP '735.681' AND `position_z` REGEXP '32.9617' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9800.77' AND `position_y` REGEXP '735.681' AND `position_z` REGEXP '32.9617' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9594.37' AND `position_y` REGEXP '679.333' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9594.37' AND `position_y` REGEXP '679.333' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9593.67' AND `position_y` REGEXP '685.708' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9593.67' AND `position_y` REGEXP '685.708' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9617.35' AND `position_y` REGEXP '668.332' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9617.35' AND `position_y` REGEXP '668.332' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9613.45' AND `position_y` REGEXP '667.013' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9613.45' AND `position_y` REGEXP '667.013' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9600.63' AND `position_y` REGEXP '667.413' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9600.63' AND `position_y` REGEXP '667.413' AND `position_z` REGEXP '38.6522' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9606.1' AND `position_y` REGEXP '669.257' AND `position_z` REGEXP '53.8694' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9606.1' AND `position_y` REGEXP '669.257' AND `position_z` REGEXP '53.8694' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9611.29' AND `position_y` REGEXP '637.043' AND `position_z` REGEXP '51.6806' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9611.29' AND `position_y` REGEXP '637.043' AND `position_z` REGEXP '51.6806' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9610.38' AND `position_y` REGEXP '638.552' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9610.38' AND `position_y` REGEXP '638.552' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9616.7' AND `position_y` REGEXP '645.16' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9616.7' AND `position_y` REGEXP '645.16' AND `position_z` REGEXP '38.6521' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.15' AND `position_y` REGEXP '693.24' AND `position_z` REGEXP '62.7333' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.15' AND `position_y` REGEXP '693.24' AND `position_z` REGEXP '62.7333' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9801.01' AND `position_y` REGEXP '715.722' AND `position_z` REGEXP '33.1168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9801.01' AND `position_y` REGEXP '715.722' AND `position_z` REGEXP '33.1168' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9815.01' AND `position_y` REGEXP '690.105' AND `position_z` REGEXP '31.8605' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9815.01' AND `position_y` REGEXP '690.105' AND `position_z` REGEXP '31.8605' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9661.14' AND `position_y` REGEXP '691.271' AND `position_z` REGEXP '37.4969' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9661.14' AND `position_y` REGEXP '691.271' AND `position_z` REGEXP '37.4969' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9626.67' AND `position_y` REGEXP '677.151' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9626.67' AND `position_y` REGEXP '677.151' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9627.07' AND `position_y` REGEXP '691.132' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9627.07' AND `position_y` REGEXP '691.132' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9789.82' AND `position_y` REGEXP '713.63' AND `position_z` REGEXP '68.2065' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9789.82' AND `position_y` REGEXP '713.63' AND `position_z` REGEXP '68.2065' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9804.19' AND `position_y` REGEXP '685.987' AND `position_z` REGEXP '31.9638' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9804.19' AND `position_y` REGEXP '685.987' AND `position_z` REGEXP '31.9638' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9795.4' AND `position_y` REGEXP '709.685' AND `position_z` REGEXP '33.2013' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9795.4' AND `position_y` REGEXP '709.685' AND `position_z` REGEXP '33.2013' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9637.91' AND `position_y` REGEXP '665.659' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9637.91' AND `position_y` REGEXP '665.659' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9622.87' AND `position_y` REGEXP '662.563' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9622.87' AND `position_y` REGEXP '662.563' AND `position_z` REGEXP '52.5756' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9664.59' AND `position_y` REGEXP '683.259' AND `position_z` REGEXP '37.4969' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9664.59' AND `position_y` REGEXP '683.259' AND `position_z` REGEXP '37.4969' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9640.68' AND `position_y` REGEXP '653.895' AND `position_z` REGEXP '62.6781' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9640.68' AND `position_y` REGEXP '653.895' AND `position_z` REGEXP '62.6781' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9740.42' AND `position_y` REGEXP '557.688' AND `position_z` REGEXP '35.4952' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9740.42' AND `position_y` REGEXP '557.688' AND `position_z` REGEXP '35.4952' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9744.4' AND `position_y` REGEXP '558.682' AND `position_z` REGEXP '35.7106' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9744.4' AND `position_y` REGEXP '558.682' AND `position_z` REGEXP '35.7106' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9181.63' AND `position_y` REGEXP '310.324' AND `position_z` REGEXP '78.9794' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9181.63' AND `position_y` REGEXP '310.324' AND `position_z` REGEXP '78.9794' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9455.43' AND `position_y` REGEXP '73.7274' AND `position_z` REGEXP '56.9503' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9455.43' AND `position_y` REGEXP '73.7274' AND `position_z` REGEXP '56.9503' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9483.48' AND `position_y` REGEXP '73.9977' AND `position_z` REGEXP '56.5629' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9483.48' AND `position_y` REGEXP '73.9977' AND `position_z` REGEXP '56.5629' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9781.87' AND `position_y` REGEXP '-1405.95' AND `position_z` REGEXP '62.9875' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9781.87' AND `position_y` REGEXP '-1405.95' AND `position_z` REGEXP '62.9875' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9783.52' AND `position_y` REGEXP '-1412.02' AND `position_z` REGEXP '97.8873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9783.52' AND `position_y` REGEXP '-1412.02' AND `position_z` REGEXP '97.8873' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9784.8' AND `position_y` REGEXP '-1397.46' AND `position_z` REGEXP '62.982' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9784.8' AND `position_y` REGEXP '-1397.46' AND `position_z` REGEXP '62.982' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9755.07' AND `position_y` REGEXP '-1377.19' AND `position_z` REGEXP '59.2102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9755.07' AND `position_y` REGEXP '-1377.19' AND `position_z` REGEXP '59.2102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9767.03' AND `position_y` REGEXP '-1368.88' AND `position_z` REGEXP '59.0108' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9767.03' AND `position_y` REGEXP '-1368.88' AND `position_z` REGEXP '59.0108' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9797.45' AND `position_y` REGEXP '-1413.29' AND `position_z` REGEXP '62.7204' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9797.45' AND `position_y` REGEXP '-1413.29' AND `position_z` REGEXP '62.7204' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9618.58' AND `position_y` REGEXP '-1069.09' AND `position_z` REGEXP '39.7633' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9618.58' AND `position_y` REGEXP '-1069.09' AND `position_z` REGEXP '39.7633' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9611.04' AND `position_y` REGEXP '-1071.76' AND `position_z` REGEXP '39.599' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9611.04' AND `position_y` REGEXP '-1071.76' AND `position_z` REGEXP '39.599' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9615.54' AND `position_y` REGEXP '-1038.75' AND `position_z` REGEXP '39.8703' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9615.54' AND `position_y` REGEXP '-1038.75' AND `position_z` REGEXP '39.8703' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.44' AND `position_y` REGEXP '-1038.78' AND `position_z` REGEXP '39.841' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.44' AND `position_y` REGEXP '-1038.78' AND `position_z` REGEXP '39.841' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.58' AND `position_y` REGEXP '-1009.8' AND `position_z` REGEXP '41.4601' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.58' AND `position_y` REGEXP '-1009.8' AND `position_z` REGEXP '41.4601' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9621.58', '-1009.8', '41.4601', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9622.98', '-993.516', '42.5194', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9616.81', '-971.487', '43.6432', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9605.69', '-952.925', '43.847', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9589.6', '-935.541', '43.7159', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9581.84', '-917.24', '43.8884', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9582.13', '-892.795', '43.5287', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9587.05', '-870.248', '43.7787', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9603.13', '-848.382', '43.8069', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9635.43', '-813.696', '43.8438', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9646.75', '-797.559', '43.5938', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9651.21', '-783.651', '44.3262', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9651.46', '-762.575', '44.4796', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9656.33', '-740.673', '44.6195', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9656.64', '-723.051', '44.6641', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9649.04', '-701.821', '46.0081', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9643.35', '-663.422', '49.365', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9628.84', '-641.666', '51.1414', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9622.42', '-603.777', '52.85', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9619.69', '-574.732', '54.1988', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9617.31', '-551.602', '54.49', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9611.55', '-532.057', '54.7783', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9602.27', '-517.884', '56.7688', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-9593.44', '-504.342', '57.5261', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9589.49', '-487.528', '57.7685', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9590.74', '-469.731', '57.8166', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9600.5', '-453.027', '57.781', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9608.5', '-436.105', '57.3633', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-9614.5', '-416.288', '57.6649', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-9617.87', '-395.898', '57.9557', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-9619.87', '-371.517', '57.5807', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-9620.9', '-344.161', '57.2819', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-9620.88', '-320.544', '57.527', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-9618.64', '-297.629', '57.1818', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-9612.65', '-276.415', '57.7628', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-9608.69', '-255.343', '57.3217', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-9598.69', '-228.603', '57.3935', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-9588.34', '-202.68', '57.8125', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-9578.54', '-171.495', '57.5035', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-9567.97', '-150.994', '57.1911', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-9553.46', '-136.268', '57.2803', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-9549.18', '-112.036', '57.5524', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-9548.44', '-83.4119', '57.6446', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-9546.56', '-64.2165', '57.1908', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-9542.05', '-43.9742', '56.6908', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-9531.67', '-17.7189', '56.0053', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-9518.5', '4.58865', '56.1109', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-9505.71', '31.6297', '56.4859', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-9495.04', '54.6611', '55.8135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-9492.8', '64.3598', '56.0275', '0', '6000', '0', '0', '100', '0'), 
(@GUID, '51', '-9497.88', '48.8162', '55.9479', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-9503.12', '36.3532', '56.4226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-9509.77', '23.9451', '56.5319', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-9517.83', '6.74794', '56.1109', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-9529.74', '-15.7274', '55.8871', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-9541.36', '-44.913', '56.7677', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-9547.37', '-71.9513', '57.5196', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-9549.51', '-109.446', '57.5067', '0', '0', '0', '0', '100', '0'), 
(@GUID, '59', '-9556.68', '-136.553', '57.5594', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-9567.81', '-151.018', '57.1723', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-9578.88', '-170.288', '57.3785', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-9586.78', '-195.139', '57.6285', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-9598.22', '-224.65', '57.3034', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-9608.65', '-258.085', '57.3082', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-9614.82', '-289.097', '57.5905', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-9618.11', '-312.991', '57.5834', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-9620.26', '-340.564', '57.5246', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-9619.76', '-370.955', '57.5807', '0', '0', '0', '0', '100', '0'), 
(@GUID, '69', '-9618.12', '-393.672', '57.8307', '0', '0', '0', '0', '100', '0'), 
(@GUID, '70', '-9610.83', '-427.736', '57.5228', '0', '0', '0', '0', '100', '0'), 
(@GUID, '71', '-9602.77', '-445.216', '57.624', '0', '0', '0', '0', '100', '0'), 
(@GUID, '72', '-9596.11', '-461.798', '57.7484', '0', '0', '0', '0', '100', '0'), 
(@GUID, '73', '-9591.11', '-476.258', '57.7685', '0', '0', '0', '0', '100', '0'), 
(@GUID, '74', '-9591.47', '-488.467', '57.84', '0', '0', '0', '0', '100', '0'), 
(@GUID, '75', '-9593.78', '-501.44', '57.3818', '0', '0', '0', '0', '100', '0'), 
(@GUID, '76', '-9598.51', '-512.459', '57.4743', '0', '0', '0', '0', '100', '0'), 
(@GUID, '77', '-9609.81', '-533.646', '54.865', '0', '0', '0', '0', '100', '0'), 
(@GUID, '78', '-9615.97', '-550.82', '54.49', '0', '0', '0', '0', '100', '0'), 
(@GUID, '79', '-9618.97', '-571.015', '54.3746', '0', '0', '0', '0', '100', '0'), 
(@GUID, '80', '-9620.51', '-590.842', '53.786', '0', '0', '0', '0', '100', '0'), 
(@GUID, '81', '-9623.52', '-620.694', '51.9486', '0', '0', '0', '0', '100', '0'), 
(@GUID, '82', '-9629', '-638.227', '51.1792', '0', '0', '0', '0', '100', '0'), 
(@GUID, '83', '-9636.7', '-653.112', '49.6941', '0', '0', '0', '0', '100', '0'), 
(@GUID, '84', '-9641.28', '-663.944', '49.3969', '0', '0', '0', '0', '100', '0'), 
(@GUID, '85', '-9645.32', '-681.183', '48.0089', '0', '0', '0', '0', '100', '0'), 
(@GUID, '86', '-9650.68', '-701.941', '45.9937', '0', '0', '0', '0', '100', '0'), 
(@GUID, '87', '-9653.72', '-722.322', '44.6729', '0', '0', '0', '0', '100', '0'), 
(@GUID, '88', '-9654.57', '-742.368', '44.5512', '0', '0', '0', '0', '100', '0'), 
(@GUID, '89', '-9652.61', '-766.483', '44.3022', '0', '0', '0', '0', '100', '0'), 
(@GUID, '90', '-9648.01', '-792.975', '43.6243', '0', '0', '0', '0', '100', '0'), 
(@GUID, '91', '-9638.62', '-808.644', '43.7188', '0', '0', '0', '0', '100', '0'), 
(@GUID, '92', '-9626.77', '-822.281', '43.8849', '0', '0', '0', '0', '100', '0'), 
(@GUID, '93', '-9613.57', '-836.709', '43.6231', '0', '0', '0', '0', '100', '0'), 
(@GUID, '94', '-9600.54', '-851.837', '43.6819', '0', '0', '0', '0', '100', '0'), 
(@GUID, '95', '-9589.79', '-865.696', '43.831', '0', '0', '0', '0', '100', '0'), 
(@GUID, '96', '-9585.49', '-875.554', '43.9037', '0', '0', '0', '0', '100', '0'), 
(@GUID, '97', '-9584.77', '-898.893', '43.9037', '0', '0', '0', '0', '100', '0'), 
(@GUID, '98', '-9586.06', '-915.418', '43.9035', '0', '0', '0', '0', '100', '0'), 
(@GUID, '99', '-9592.03', '-931.484', '43.7444', '0', '0', '0', '0', '100', '0'), 
(@GUID, '100', '-9598.08', '-942.441', '43.9232', '0', '0', '0', '0', '100', '0'), 
(@GUID, '101', '-9607.78', '-959.011', '43.4947', '0', '0', '0', '0', '100', '0'), 
(@GUID, '102', '-9615.45', '-974.169', '43.8519', '0', '0', '0', '0', '100', '0'), 
(@GUID, '103', '-9620.89', '-993.472', '42.6139', '0', '0', '0', '0', '100', '0'), 
(@GUID, '104', '-9620.6', '-1003.66', '42.2562', '0', '0', '0', '0', '100', '0'), 
(@GUID, '105', '-9620.34', '-1014.11', '41.0678', '0', '0', '0', '0', '100', '0'), 
(@GUID, '106', '-9619.95', '-1024.69', '40.4931', '0', '0', '0', '0', '100', '0'), 
(@GUID, '107', '-9619.24', '-1036.47', '39.8739', '0', '6000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9621.58' AND `position_y` REGEXP '-1009.8' AND `position_z` REGEXP '41.4601' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1423;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1423', '1', '1899', '0', '143', '0', '0', '2551', '0', '0', '18019');

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

