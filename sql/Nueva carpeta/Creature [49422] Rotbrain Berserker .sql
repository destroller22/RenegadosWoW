/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Rotbrain Berserker';
SET @ENTRY 		:= '49422';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '36467',  '36468',  '36471',  '36472',   @CREATURE,  '',  '',  '',  '',  '0',  '4',  '5',  '0',  '0',  '0',  '190',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 49422 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18517, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1727.61', '1392.8', '106.743', '5.33914', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18518, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1745.64', '1384.82', '99.0471', '4.93925', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18519, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1766.88', '1400.85', '95.4446', '3.9609', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18520, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1778.61', '1412.5', '92.7056', '4.01065', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18521, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1839.78', '1358.78', '74.5885', '3.91116', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18522, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1810.98', '1356.25', '84.9307', '5.88253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18523, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1786.58', '1372.22', '86.36', '2.35482', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18524, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1795.91', '1342.81', '89.0869', '3.64774', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18525, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1761.92', '1367.74', '90.4292', '4.82313', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18526, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1768.45', '1356.5', '90.3369', '4.52017', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18527, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1814.34', '1390.51', '77.8098', '3.01982', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18528, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1809.42', '1319.29', '92.107', '3.15418', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18529, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1822.76', '1304.48', '92.5595', '0.657959', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18530, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1827.23', '1327.08', '87.1845', '3.10642', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18531, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1787.26', '1343.15', '89.4765', '5.65487', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18532, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1837.69', '1341.92', '79.9634', '1.15257', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18533, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1805.65', '1335.92', '87.7086', '5.60383', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18534, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1789.48', '1335.2', '89.7294', '1.36136', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18535, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1769.98', '1337.91', '90.0784', '1.11883', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18536, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1756.14', '1341.36', '96.2923', '2.86069', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18537, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1729.05', '1367.97', '104.948', '4.53376', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18538, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1772.89', '1309.45', '101.159', '2.10298', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18539, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1794.96', '1294.85', '106.405', '4.57159', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18540, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1741.64', '1325.03', '104.671', '3.01616', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18541, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1725.4', '1324.01', '109.954', '2.6349', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18542, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1690.62', '1342.71', '126.561', '3.41672', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18543, @ENTRY, '0', '6454', '4915', '1', '0', '0', '0', '-1', '0', '0', '1678.95', '1330.49', '130.03', '3.9098', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1727.61' AND `position_y` REGEXP '1392.8' AND `position_z` REGEXP '106.743' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1727.61' AND `position_y` REGEXP '1392.8' AND `position_z` REGEXP '106.743' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1745.64' AND `position_y` REGEXP '1384.82' AND `position_z` REGEXP '99.0471' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1745.64' AND `position_y` REGEXP '1384.82' AND `position_z` REGEXP '99.0471' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1766.88' AND `position_y` REGEXP '1400.85' AND `position_z` REGEXP '95.4446' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1766.88' AND `position_y` REGEXP '1400.85' AND `position_z` REGEXP '95.4446' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1778.61' AND `position_y` REGEXP '1412.5' AND `position_z` REGEXP '92.7056' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1778.61' AND `position_y` REGEXP '1412.5' AND `position_z` REGEXP '92.7056' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1839.78' AND `position_y` REGEXP '1358.78' AND `position_z` REGEXP '74.5885' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1839.78' AND `position_y` REGEXP '1358.78' AND `position_z` REGEXP '74.5885' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1810.98' AND `position_y` REGEXP '1356.25' AND `position_z` REGEXP '84.9307' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1810.98' AND `position_y` REGEXP '1356.25' AND `position_z` REGEXP '84.9307' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1786.58' AND `position_y` REGEXP '1372.22' AND `position_z` REGEXP '86.36' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1786.58' AND `position_y` REGEXP '1372.22' AND `position_z` REGEXP '86.36' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1795.91' AND `position_y` REGEXP '1342.81' AND `position_z` REGEXP '89.0869' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1795.91' AND `position_y` REGEXP '1342.81' AND `position_z` REGEXP '89.0869' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1761.92' AND `position_y` REGEXP '1367.74' AND `position_z` REGEXP '90.4292' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1761.92' AND `position_y` REGEXP '1367.74' AND `position_z` REGEXP '90.4292' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1768.45' AND `position_y` REGEXP '1356.5' AND `position_z` REGEXP '90.3369' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1768.45' AND `position_y` REGEXP '1356.5' AND `position_z` REGEXP '90.3369' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1814.34' AND `position_y` REGEXP '1390.51' AND `position_z` REGEXP '77.8098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1814.34' AND `position_y` REGEXP '1390.51' AND `position_z` REGEXP '77.8098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1809.42' AND `position_y` REGEXP '1319.29' AND `position_z` REGEXP '92.107' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1809.42' AND `position_y` REGEXP '1319.29' AND `position_z` REGEXP '92.107' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1822.76' AND `position_y` REGEXP '1304.48' AND `position_z` REGEXP '92.5595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1822.76' AND `position_y` REGEXP '1304.48' AND `position_z` REGEXP '92.5595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1827.23' AND `position_y` REGEXP '1327.08' AND `position_z` REGEXP '87.1845' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1827.23' AND `position_y` REGEXP '1327.08' AND `position_z` REGEXP '87.1845' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1787.26' AND `position_y` REGEXP '1343.15' AND `position_z` REGEXP '89.4765' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1787.26' AND `position_y` REGEXP '1343.15' AND `position_z` REGEXP '89.4765' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1837.69' AND `position_y` REGEXP '1341.92' AND `position_z` REGEXP '79.9634' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1837.69' AND `position_y` REGEXP '1341.92' AND `position_z` REGEXP '79.9634' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1805.65' AND `position_y` REGEXP '1335.92' AND `position_z` REGEXP '87.7086' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1805.65' AND `position_y` REGEXP '1335.92' AND `position_z` REGEXP '87.7086' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1789.48' AND `position_y` REGEXP '1335.2' AND `position_z` REGEXP '89.7294' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1789.48' AND `position_y` REGEXP '1335.2' AND `position_z` REGEXP '89.7294' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1769.98' AND `position_y` REGEXP '1337.91' AND `position_z` REGEXP '90.0784' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1769.98' AND `position_y` REGEXP '1337.91' AND `position_z` REGEXP '90.0784' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1756.14' AND `position_y` REGEXP '1341.36' AND `position_z` REGEXP '96.2923' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1756.14' AND `position_y` REGEXP '1341.36' AND `position_z` REGEXP '96.2923' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1729.05' AND `position_y` REGEXP '1367.97' AND `position_z` REGEXP '104.948' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1729.05' AND `position_y` REGEXP '1367.97' AND `position_z` REGEXP '104.948' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1772.89' AND `position_y` REGEXP '1309.45' AND `position_z` REGEXP '101.159' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1772.89' AND `position_y` REGEXP '1309.45' AND `position_z` REGEXP '101.159' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1794.96' AND `position_y` REGEXP '1294.85' AND `position_z` REGEXP '106.405' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1794.96' AND `position_y` REGEXP '1294.85' AND `position_z` REGEXP '106.405' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1741.64' AND `position_y` REGEXP '1325.03' AND `position_z` REGEXP '104.671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1741.64' AND `position_y` REGEXP '1325.03' AND `position_z` REGEXP '104.671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1725.4' AND `position_y` REGEXP '1324.01' AND `position_z` REGEXP '109.954' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1725.4' AND `position_y` REGEXP '1324.01' AND `position_z` REGEXP '109.954' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1690.62' AND `position_y` REGEXP '1342.71' AND `position_z` REGEXP '126.561' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1690.62' AND `position_y` REGEXP '1342.71' AND `position_z` REGEXP '126.561' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1678.95' AND `position_y` REGEXP '1330.49' AND `position_z` REGEXP '130.03' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1678.95' AND `position_y` REGEXP '1330.49' AND `position_z` REGEXP '130.03' AND `PhaseId` = '0' AND `map` = '0');
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
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 49422;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('49422', '1', '1896', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 49422;

