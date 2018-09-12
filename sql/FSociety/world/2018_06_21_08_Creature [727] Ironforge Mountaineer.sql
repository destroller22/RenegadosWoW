/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Ironforge Mountaineer';
SET @ENTRY 		:= '727';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1598',  '1608',  '0',  '0',   @CREATURE,  '',  '',  '',  'Directions',  '3533',  '15',  '15',  '0',  '0',  '0',  '57',  '1',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '0',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '6660',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '2',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '32768',  'guard_generic',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 727 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(167425, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1608', '0', '-5230.49', '-471.389', '386.414', '0.638271', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167426, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5167.65', '-404.48', '389.43', '0.740684', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167427, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5369.03', '-584.249', '391.595', '4.13939', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167428, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5360.98', '-569.307', '391.578', '4.47297', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167429, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5508.87', '-1966.94', '399.491', '4.26102', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167430, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5529.09', '-1019.78', '393.08', '0.196073', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167681, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5441.76', '-763.172', '394.082', '1.49127', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167682, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5427.33', '-797.132', '392.671', '2.06545', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167683, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5522.63', '-1017', '393.033', '0.216443', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167684, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5226.73', '-562.097', '408.563', '2.19912', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167841, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5267.91', '-513.285', '388.726', '2.1293', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167842, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5766.24', '-538.648', '417.304', '2.3911', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167843, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5264.38', '-511.639', '387.752', '2.04204', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167844, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5513.76', '-1799.37', '397.227', '4.61673', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167845, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5512.35', '-1799.51', '397.227', '4.61675', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167846, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-6015.68', '-333.428', '427.746', '5.08724', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167982, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5513.12', '-1800.14', '397.227', '4.61682', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167983, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5513.12', '-1865.65', '397.227', '4.78861', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167984, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5511.71', '-1865.54', '397.227', '4.78861', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167985, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5946.54', '-430.703', '412.991', '2.18527', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(167986, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5602.74', '-1051.9', '400.354', '2.94961', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(168099, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5407.53', '-639.865', '392.939', '0', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(168100, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '1598', '0', '-5909.22', '-67.8491', '387.788', '1.3813', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(168973, @ENTRY, '0', '11', '11', '1', '0', '0', '0', '-1', '1598', '0', '-3987.05', '-1507.06', '168.743', '4.34587', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(168974, @ENTRY, '0', '11', '11', '1', '0', '0', '0', '-1', '1598', '0', '-3972.58', '-1513.63', '169.281', '5.61996', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169359, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5366.91', '-521.476', '391.618', '3.08741', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169361, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5588.39', '-464.152', '401.81', '4.01426', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169523, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5610.72', '-490.063', '397.684', '2.19912', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169524, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5551.04', '-462.461', '407.486', '4.4855', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169526, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5449.51', '-509.297', '397.461', '4.97419', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169527, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5694.35', '-562.869', '400.176', '5.90113', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169528, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5591.73', '-489.796', '397.705', '1.69297', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169529, @ENTRY, '0', '1', '131', '1', '0', '0', '0', '-1', '1598', '0', '-5565.5', '-471.144', '399.698', '4.66003', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169533, @ENTRY, '0', '1', '189', '1', '0', '0', '0', '-1', '1598', '0', '-5373.57', '-544.752', '400.573', '0.471239', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169534, @ENTRY, '0', '1', '189', '1', '0', '0', '0', '-1', '1598', '0', '-5491.22', '-667.173', '394.215', '0.279253', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169610, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4937.51', '-1702.2', '504.695', '3.00129', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169611, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4641.51', '-1726.6', '503.407', '1.5708', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169652, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1608', '0', '-4888.76', '-1735.37', '504.824', '-0.121346', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169653, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4491.46', '-1576.27', '509.088', '3.59538', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169656, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4722.4', '-1667.07', '504.917', '5.18363', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169659, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4684.54', '-1661.4', '504.877', '4.4855', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169663, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4498.71', '-1577.41', '509.088', '0.575959', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169664, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4664.78', '-1716.51', '503.407', '3.08923', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169665, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1608', '0', '-4800.56', '-1674.27', '504.258', '1.46608', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169691, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4816.37', '-1665.2', '504.675', '2.56563', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169694, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4669.03', '-1717.4', '503.407', '0.820305', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169698, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4694.03', '-1650.32', '503.594', '3.12327', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(169721, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4887.81', '-1733.31', '505.449', '1.08924', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(170029, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4870.97', '-1629.69', '503.438', '4.64258', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(180895, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4864.09', '-1629.83', '503.438', '4.79965', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(181021, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4606.63', '-1694.36', '503.584', '2.80998', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(181022, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4709.79', '-1676.35', '504.672', '4.7822', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(181023, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4723', '-1651.54', '503.781', '0.245034', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(181333, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4857.46', '-1687.75', '503.449', '4.89755', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(216440, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4751.84', '-1645.54', '503.407', '2.63545', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(216445, @ENTRY, '0', '1', '5115', '1', '0', '0', '0', '-1', '1598', '0', '-4864.56', '-1699', '504.038', '5.85653', '300', '0', '0', '656', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5230.49' AND `position_y` REGEXP '-471.389' AND `position_z` REGEXP '386.414' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5230.49' AND `position_y` REGEXP '-471.389' AND `position_z` REGEXP '386.414' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5167.65' AND `position_y` REGEXP '-404.48' AND `position_z` REGEXP '389.43' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5167.65' AND `position_y` REGEXP '-404.48' AND `position_z` REGEXP '389.43' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5369.03' AND `position_y` REGEXP '-584.249' AND `position_z` REGEXP '391.595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5369.03' AND `position_y` REGEXP '-584.249' AND `position_z` REGEXP '391.595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5360.98' AND `position_y` REGEXP '-569.307' AND `position_z` REGEXP '391.578' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5360.98' AND `position_y` REGEXP '-569.307' AND `position_z` REGEXP '391.578' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5508.87' AND `position_y` REGEXP '-1966.94' AND `position_z` REGEXP '399.491' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5508.87' AND `position_y` REGEXP '-1966.94' AND `position_z` REGEXP '399.491' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5529.09' AND `position_y` REGEXP '-1019.78' AND `position_z` REGEXP '393.08' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5529.09' AND `position_y` REGEXP '-1019.78' AND `position_z` REGEXP '393.08' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5441.76' AND `position_y` REGEXP '-763.172' AND `position_z` REGEXP '394.082' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5441.76' AND `position_y` REGEXP '-763.172' AND `position_z` REGEXP '394.082' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5427.33' AND `position_y` REGEXP '-797.132' AND `position_z` REGEXP '392.671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5427.33' AND `position_y` REGEXP '-797.132' AND `position_z` REGEXP '392.671' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5522.63' AND `position_y` REGEXP '-1017' AND `position_z` REGEXP '393.033' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5522.63' AND `position_y` REGEXP '-1017' AND `position_z` REGEXP '393.033' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5226.73' AND `position_y` REGEXP '-562.097' AND `position_z` REGEXP '408.563' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5226.73' AND `position_y` REGEXP '-562.097' AND `position_z` REGEXP '408.563' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5267.91' AND `position_y` REGEXP '-513.285' AND `position_z` REGEXP '388.726' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5267.91' AND `position_y` REGEXP '-513.285' AND `position_z` REGEXP '388.726' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5766.24' AND `position_y` REGEXP '-538.648' AND `position_z` REGEXP '417.304' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5766.24' AND `position_y` REGEXP '-538.648' AND `position_z` REGEXP '417.304' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5264.38' AND `position_y` REGEXP '-511.639' AND `position_z` REGEXP '387.752' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5264.38' AND `position_y` REGEXP '-511.639' AND `position_z` REGEXP '387.752' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.76' AND `position_y` REGEXP '-1799.37' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.76' AND `position_y` REGEXP '-1799.37' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5512.35' AND `position_y` REGEXP '-1799.51' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5512.35' AND `position_y` REGEXP '-1799.51' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-6015.68' AND `position_y` REGEXP '-333.428' AND `position_z` REGEXP '427.746' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-6015.68' AND `position_y` REGEXP '-333.428' AND `position_z` REGEXP '427.746' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.12' AND `position_y` REGEXP '-1800.14' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.12' AND `position_y` REGEXP '-1800.14' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.12' AND `position_y` REGEXP '-1865.65' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5513.12' AND `position_y` REGEXP '-1865.65' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5511.71' AND `position_y` REGEXP '-1865.54' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5511.71' AND `position_y` REGEXP '-1865.54' AND `position_z` REGEXP '397.227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5946.54' AND `position_y` REGEXP '-430.703' AND `position_z` REGEXP '412.991' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5946.54' AND `position_y` REGEXP '-430.703' AND `position_z` REGEXP '412.991' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5602.74' AND `position_y` REGEXP '-1051.9' AND `position_z` REGEXP '400.354' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5602.74' AND `position_y` REGEXP '-1051.9' AND `position_z` REGEXP '400.354' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5407.53' AND `position_y` REGEXP '-639.865' AND `position_z` REGEXP '392.939' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5407.53' AND `position_y` REGEXP '-639.865' AND `position_z` REGEXP '392.939' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5909.22' AND `position_y` REGEXP '-67.8491' AND `position_z` REGEXP '387.788' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5909.22' AND `position_y` REGEXP '-67.8491' AND `position_z` REGEXP '387.788' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3987.05' AND `position_y` REGEXP '-1507.06' AND `position_z` REGEXP '168.743' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3987.05' AND `position_y` REGEXP '-1507.06' AND `position_z` REGEXP '168.743' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3972.58' AND `position_y` REGEXP '-1513.63' AND `position_z` REGEXP '169.281' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3972.58' AND `position_y` REGEXP '-1513.63' AND `position_z` REGEXP '169.281' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5366.91' AND `position_y` REGEXP '-521.476' AND `position_z` REGEXP '391.618' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5366.91' AND `position_y` REGEXP '-521.476' AND `position_z` REGEXP '391.618' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5588.39' AND `position_y` REGEXP '-464.152' AND `position_z` REGEXP '401.81' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5588.39' AND `position_y` REGEXP '-464.152' AND `position_z` REGEXP '401.81' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5610.72' AND `position_y` REGEXP '-490.063' AND `position_z` REGEXP '397.684' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5610.72' AND `position_y` REGEXP '-490.063' AND `position_z` REGEXP '397.684' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5551.04' AND `position_y` REGEXP '-462.461' AND `position_z` REGEXP '407.486' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5551.04' AND `position_y` REGEXP '-462.461' AND `position_z` REGEXP '407.486' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5449.51' AND `position_y` REGEXP '-509.297' AND `position_z` REGEXP '397.461' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5449.51' AND `position_y` REGEXP '-509.297' AND `position_z` REGEXP '397.461' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5694.35' AND `position_y` REGEXP '-562.869' AND `position_z` REGEXP '400.176' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5694.35' AND `position_y` REGEXP '-562.869' AND `position_z` REGEXP '400.176' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5591.73' AND `position_y` REGEXP '-489.796' AND `position_z` REGEXP '397.705' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5591.73' AND `position_y` REGEXP '-489.796' AND `position_z` REGEXP '397.705' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5565.5' AND `position_y` REGEXP '-471.144' AND `position_z` REGEXP '399.698' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5565.5' AND `position_y` REGEXP '-471.144' AND `position_z` REGEXP '399.698' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5373.57' AND `position_y` REGEXP '-544.752' AND `position_z` REGEXP '400.573' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5373.57' AND `position_y` REGEXP '-544.752' AND `position_z` REGEXP '400.573' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5491.22' AND `position_y` REGEXP '-667.173' AND `position_z` REGEXP '394.215' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-5491.22' AND `position_y` REGEXP '-667.173' AND `position_z` REGEXP '394.215' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4937.51' AND `position_y` REGEXP '-1702.2' AND `position_z` REGEXP '504.695' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4937.51' AND `position_y` REGEXP '-1702.2' AND `position_z` REGEXP '504.695' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4641.51' AND `position_y` REGEXP '-1726.6' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4641.51' AND `position_y` REGEXP '-1726.6' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4888.76' AND `position_y` REGEXP '-1735.37' AND `position_z` REGEXP '504.824' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4888.76' AND `position_y` REGEXP '-1735.37' AND `position_z` REGEXP '504.824' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4491.46' AND `position_y` REGEXP '-1576.27' AND `position_z` REGEXP '509.088' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4491.46' AND `position_y` REGEXP '-1576.27' AND `position_z` REGEXP '509.088' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4722.4' AND `position_y` REGEXP '-1667.07' AND `position_z` REGEXP '504.917' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '8', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4722.4' AND `position_y` REGEXP '-1667.07' AND `position_z` REGEXP '504.917' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4684.54' AND `position_y` REGEXP '-1661.4' AND `position_z` REGEXP '504.877' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '8', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4684.54' AND `position_y` REGEXP '-1661.4' AND `position_z` REGEXP '504.877' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4498.71' AND `position_y` REGEXP '-1577.41' AND `position_z` REGEXP '509.088' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4498.71' AND `position_y` REGEXP '-1577.41' AND `position_z` REGEXP '509.088' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4664.78' AND `position_y` REGEXP '-1716.51' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4664.78' AND `position_y` REGEXP '-1716.51' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4800.56' AND `position_y` REGEXP '-1674.27' AND `position_z` REGEXP '504.258' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4800.56' AND `position_y` REGEXP '-1674.27' AND `position_z` REGEXP '504.258' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4816.37' AND `position_y` REGEXP '-1665.2' AND `position_z` REGEXP '504.675' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4816.37' AND `position_y` REGEXP '-1665.2' AND `position_z` REGEXP '504.675' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4669.03' AND `position_y` REGEXP '-1717.4' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4669.03' AND `position_y` REGEXP '-1717.4' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4694.03' AND `position_y` REGEXP '-1650.32' AND `position_z` REGEXP '503.594' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4694.03' AND `position_y` REGEXP '-1650.32' AND `position_z` REGEXP '503.594' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4887.81' AND `position_y` REGEXP '-1733.31' AND `position_z` REGEXP '505.449' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4887.81' AND `position_y` REGEXP '-1733.31' AND `position_z` REGEXP '505.449' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4870.97' AND `position_y` REGEXP '-1629.69' AND `position_z` REGEXP '503.438' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4870.97' AND `position_y` REGEXP '-1629.69' AND `position_z` REGEXP '503.438' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4864.09' AND `position_y` REGEXP '-1629.83' AND `position_z` REGEXP '503.438' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4864.09' AND `position_y` REGEXP '-1629.83' AND `position_z` REGEXP '503.438' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4606.63' AND `position_y` REGEXP '-1694.36' AND `position_z` REGEXP '503.584' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4606.63' AND `position_y` REGEXP '-1694.36' AND `position_z` REGEXP '503.584' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4709.79' AND `position_y` REGEXP '-1676.35' AND `position_z` REGEXP '504.672' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '8', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4709.79' AND `position_y` REGEXP '-1676.35' AND `position_z` REGEXP '504.672' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4723' AND `position_y` REGEXP '-1651.54' AND `position_z` REGEXP '503.781' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4723' AND `position_y` REGEXP '-1651.54' AND `position_z` REGEXP '503.781' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4857.46' AND `position_y` REGEXP '-1687.75' AND `position_z` REGEXP '503.449' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4857.46' AND `position_y` REGEXP '-1687.75' AND `position_z` REGEXP '503.449' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4751.84' AND `position_y` REGEXP '-1645.54' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4751.84' AND `position_y` REGEXP '-1645.54' AND `position_z` REGEXP '503.407' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4864.56' AND `position_y` REGEXP '-1699' AND `position_z` REGEXP '504.038' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '3', '0', '0', '0', '0', ''); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4864.56' AND `position_y` REGEXP '-1699' AND `position_z` REGEXP '504.038' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM gossip_menu WHERE  `MenuId` = 3533;
INSERT INTO `gossip_menu` (`MenuId`,`TextId`,`VerifiedBuild`) VALUES 
(3533,4287, 25961); 
/* Step 4.6 Table  `npc_text` */
DELETE FROM npc_text WHERE `ID` = 4287;
INSERT INTO `npc_text` (`ID`,`Probability0`,`Probability1`,`Probability2`,`Probability3`,`Probability4`,`Probability5`,`Probability6`,`Probability7`,`BroadcastTextID0`,`BroadcastTextID1`,`BroadcastTextID2`,`BroadcastTextID3`,`BroadcastTextID4`,`BroadcastTextID5`,`BroadcastTextID6`,`BroadcastTextID7`,`VerifiedBuild`) VALUES 
('4287', '1', '0', '0', '0', '0', '0', '0', '0', '6986', '0', '0', '0', '0', '0', '0', '0', '1111'); 




/* Step 2.7 Table  `gossip_menu_option */
DELETE FROM gossip_menu_option WHERE  `MenuId` = 3533;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '0', '0', 'Bank', '84', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '1', '0', 'Gryphon Master', '78', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '2', '0', 'Guild Master & Vendor', '54', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '3', '0', 'The Inn', '163', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '4', '0', 'Stable Master', '71', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '5', '0', 'Class Trainer', '66', '1', '1', '25961');
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('3533', '6', '0', 'Profession Trainer', '70', '1', '1', '25961');


/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 3533;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 727;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('727', '1', '2557', '0', '0', '0', '0', '2552', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 727;

