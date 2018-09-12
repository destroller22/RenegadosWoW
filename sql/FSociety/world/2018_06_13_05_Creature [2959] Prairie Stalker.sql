/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Prairie Stalker';
SET @ENTRY 		:= '2959';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '643',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '7',  '8',  '0',  '0',  '0',  '38',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '1500',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '1',  '0',  '0',  '0',  '1',  '1',  '0',  '2959',  '0',  '2959',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 2959 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('2959', '0', '0', '0', '4', '0', '100', '1', '0', '0', '0', '0', '', '11', '75002', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Prairie Stalker - On Aggro - Cast \'Leaping Rush\' (No Repeat)'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18870, @ENTRY, '1', '215', '360', '1', '0', '0', '0', '-1', '0', '0', '-1851.87', '-1031.25', '73.4483', '5.78197', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18871, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2080.31', '-1014.98', '17.3838', '3.47752', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18872, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2013.69', '-946.461', '8.62102', '1.33872', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18873, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2045.61', '-912.497', '-2.13974', '0.86421', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18874, @ENTRY, '1', '215', '224', '1', '0', '0', '0', '-1', '0', '0', '-1965.44', '-812.705', '-8.65808', '2.00587', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18875, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2124.15', '-869.486', '-5.63793', '5.92501', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18876, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1818.83', '-477.775', '-2.41122', '2.03707', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18877, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1829.51', '-360.142', '-5.69874', '3.75776', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18878, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1891.29', '-364.24', '-7.55184', '0.699855', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18879, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1849.66', '-384.371', '-7.65526', '3.91797', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18880, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1881.81', '-417.12', '-6.14158', '0.859665', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18881, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1982.27', '-383.434', '-3.89501', '5.18538', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18882, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2008.98', '-398.876', '-2.45246', '0.411125', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18883, @ENTRY, '1', '215', '223', '1', '0', '0', '0', '-1', '0', '0', '-1952.2', '-484.972', '-8.02604', '2.91099', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18884, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1950.73', '-417.127', '-5.31422', '5.22057', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18885, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1810.21', '-133.596', '-7.01389', '1.30591', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18886, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1917.66', '-183.583', '-3.51672', '3.01814', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18887, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1862.15', '-101.946', '-9.04992', '1.27884', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18888, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1789.28', '-47.9551', '-5.70967', '3.06137', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18889, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1789.25', '116.346', '10.1555', '4.47168', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18890, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1378.15', '290.947', '5.21507', '1.34844', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18891, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1342.59', '331.137', '11.8271', '4.63217', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18892, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1263.18', '274.966', '17.0532', '0.496852', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18893, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1123.58', '274.179', '35.9854', '4.12279', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18894, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1525.42', '74.5188', '3.51263', '3.66322', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18895, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1545.36', '51.4068', '5.53909', '5.96143', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18896, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1760.46', '58.3398', '-0.230339', '1.69999', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18897, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1677.66', '-93.8546', '-7.95567', '5.46097', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18898, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1647.75', '-56.1456', '-11.1751', '5.7297', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18899, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1861.58', '-115.316', '-8.27452', '4.52266', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18900, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1784.04', '-54.7264', '-6.36899', '3.24535', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18901, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1923.34', '-257.264', '-6.02414', '3.7464', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18902, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1915.33', '-182.388', '-3.62365', '0.385284', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18903, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2292.16', '-806.598', '-6.32592', '5.21361', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18904, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2332.81', '-802.904', '-8.35691', '1.48839', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18905, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2358.09', '-932.205', '-5.98156', '4.83094', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18906, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2316.04', '-983.688', '-5.8447', '5.49415', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18907, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2344.51', '-870.783', '-5.67776', '2.55886', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18908, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2331.17', '-966.432', '-4.82281', '1.0014', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18909, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2350.39', '-947.449', '-4.03242', '3.15657', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18910, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2188.52', '-1126.2', '10.7465', '4.12893', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18911, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2124.28', '-974.237', '19.9861', '2.88964', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18912, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2153.5', '-1024.58', '14.991', '0.144933', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18913, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2184.91', '-977.741', '7.67898', '1.83753', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18914, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2318.04', '-849.944', '-3.3408', '5.49109', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18915, @ENTRY, '1', '215', '223', '1', '0', '0', '0', '-1', '0', '0', '-2194.57', '-796.175', '-6.35053', '5.20244', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18916, @ENTRY, '1', '215', '223', '1', '0', '0', '0', '-1', '0', '0', '-1948.07', '-484.409', '-7.89079', '4.41711', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18917, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1916.85', '-588.57', '-3.47727', '4.46146', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18918, @ENTRY, '1', '215', '224', '1', '0', '0', '0', '-1', '0', '0', '-1855.44', '-750.076', '-9.19438', '6.05991', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18922, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1913.73', '-844.863', '4.80866', '5.7575', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18923, @ENTRY, '1', '215', '224', '1', '0', '0', '0', '-1', '0', '0', '-1919.77', '-788.115', '-7.63469', '6.13458', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18924, @ENTRY, '1', '215', '224', '1', '0', '0', '0', '-1', '0', '0', '-1986.35', '-784.383', '-9.10336', '2.44611', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18925, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2284.19', '-1016.49', '-8.53457', '6.0831', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18926, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2329.51', '-1023.81', '-9.06052', '1.40529', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18927, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2067.96', '-934.092', '9.08586', '0.0345195', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18928, @ENTRY, '1', '215', '360', '1', '0', '0', '0', '-1', '0', '0', '-1989.86', '-982.504', '14.3803', '5.24564', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18929, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2085.14', '-1017.59', '17.4336', '4.50191', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18930, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2311.57', '-1247.12', '5.30217', '0.906441', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18931, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2291.02', '-1205.41', '-0.821815', '1.91172', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18932, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2285.77', '-1085.89', '-5.03026', '4.9489', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18933, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2243.94', '-1136.81', '-0.796627', '4.61253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18934, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2180.46', '-1119.28', '11.726', '5.8947', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18935, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2112.58', '-987.094', '18.2945', '5.77069', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18936, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2145.46', '-1020.96', '17.1161', '5.24782', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18937, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2258.8', '-947.358', '-6.66387', '2.31243', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18938, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2183.35', '-983.203', '8.7698', '4.15413', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18939, @ENTRY, '1', '215', '223', '1', '0', '0', '0', '-1', '0', '0', '-2124.72', '-827.086', '-7.65282', '0.712052', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18940, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2197.54', '-829.136', '-7.50271', '0.825487', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18941, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2251.47', '-824.41', '-5.92501', '0.63928', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18942, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2293.72', '-952.258', '-5.62284', '3.20726', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18943, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2366.53', '-993.026', '-9.21292', '5.47758', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18944, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2319.86', '-889.458', '-5.19079', '0.481486', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18945, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2020.52', '-385.43', '-2.19658', '1.99544', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18946, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1907.93', '-256.079', '-8.73605', '0.113822', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18947, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1922.67', '-178.219', '-4.00817', '2.39665', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18948, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1877.04', '-284.663', '-6.84573', '6.14859', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18949, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1809.13', '-126.112', '-6.1741', '4.61253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18950, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1851.56', '-116.49', '-8.79992', '5.5083', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18951, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1710.94', '-163.893', '-8.38481', '4.70088', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18952, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1650.08', '-116.849', '-8.83942', '0.976013', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18953, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1646.35', '-53.6465', '-11.1751', '5.96656', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18954, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1685.42', '-88.2232', '-8.5067', '5.0424', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18955, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1717.88', '-50.5209', '-2.53785', '3.41635', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18956, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1613.52', '-88.1751', '-0.127444', '5.25486', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18957, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1515.33', '86.7874', '3.40662', '2.84022', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18960, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1545', '49.0922', '6.34737', '1.17233', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.87' AND `position_y` REGEXP '-1031.25' AND `position_z` REGEXP '73.4483' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.87' AND `position_y` REGEXP '-1031.25' AND `position_z` REGEXP '73.4483' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2080.31' AND `position_y` REGEXP '-1014.98' AND `position_z` REGEXP '17.3838' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2080.31' AND `position_y` REGEXP '-1014.98' AND `position_z` REGEXP '17.3838' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2013.69' AND `position_y` REGEXP '-946.461' AND `position_z` REGEXP '8.62102' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2013.69' AND `position_y` REGEXP '-946.461' AND `position_z` REGEXP '8.62102' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2045.61' AND `position_y` REGEXP '-912.497' AND `position_z` REGEXP '-2.13974' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2045.61' AND `position_y` REGEXP '-912.497' AND `position_z` REGEXP '-2.13974' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1965.44' AND `position_y` REGEXP '-812.705' AND `position_z` REGEXP '-8.65808' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1965.44' AND `position_y` REGEXP '-812.705' AND `position_z` REGEXP '-8.65808' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.15' AND `position_y` REGEXP '-869.486' AND `position_z` REGEXP '-5.63793' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.15' AND `position_y` REGEXP '-869.486' AND `position_z` REGEXP '-5.63793' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1818.83' AND `position_y` REGEXP '-477.775' AND `position_z` REGEXP '-2.41122' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1818.83' AND `position_y` REGEXP '-477.775' AND `position_z` REGEXP '-2.41122' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1829.51' AND `position_y` REGEXP '-360.142' AND `position_z` REGEXP '-5.69874' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1829.51' AND `position_y` REGEXP '-360.142' AND `position_z` REGEXP '-5.69874' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1891.29' AND `position_y` REGEXP '-364.24' AND `position_z` REGEXP '-7.55184' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1891.29' AND `position_y` REGEXP '-364.24' AND `position_z` REGEXP '-7.55184' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1849.66' AND `position_y` REGEXP '-384.371' AND `position_z` REGEXP '-7.65526' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1849.66' AND `position_y` REGEXP '-384.371' AND `position_z` REGEXP '-7.65526' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1881.81' AND `position_y` REGEXP '-417.12' AND `position_z` REGEXP '-6.14158' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1881.81' AND `position_y` REGEXP '-417.12' AND `position_z` REGEXP '-6.14158' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1982.27' AND `position_y` REGEXP '-383.434' AND `position_z` REGEXP '-3.89501' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1982.27' AND `position_y` REGEXP '-383.434' AND `position_z` REGEXP '-3.89501' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2008.98' AND `position_y` REGEXP '-398.876' AND `position_z` REGEXP '-2.45246' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2008.98' AND `position_y` REGEXP '-398.876' AND `position_z` REGEXP '-2.45246' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1952.2' AND `position_y` REGEXP '-484.972' AND `position_z` REGEXP '-8.02604' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1952.2' AND `position_y` REGEXP '-484.972' AND `position_z` REGEXP '-8.02604' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1950.73' AND `position_y` REGEXP '-417.127' AND `position_z` REGEXP '-5.31422' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1950.73' AND `position_y` REGEXP '-417.127' AND `position_z` REGEXP '-5.31422' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1810.21' AND `position_y` REGEXP '-133.596' AND `position_z` REGEXP '-7.01389' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1810.21' AND `position_y` REGEXP '-133.596' AND `position_z` REGEXP '-7.01389' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1917.66' AND `position_y` REGEXP '-183.583' AND `position_z` REGEXP '-3.51672' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1917.66' AND `position_y` REGEXP '-183.583' AND `position_z` REGEXP '-3.51672' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1862.15' AND `position_y` REGEXP '-101.946' AND `position_z` REGEXP '-9.04992' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1862.15' AND `position_y` REGEXP '-101.946' AND `position_z` REGEXP '-9.04992' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1789.28' AND `position_y` REGEXP '-47.9551' AND `position_z` REGEXP '-5.70967' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1789.28' AND `position_y` REGEXP '-47.9551' AND `position_z` REGEXP '-5.70967' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1789.25' AND `position_y` REGEXP '116.346' AND `position_z` REGEXP '10.1555' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1789.25' AND `position_y` REGEXP '116.346' AND `position_z` REGEXP '10.1555' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1378.15' AND `position_y` REGEXP '290.947' AND `position_z` REGEXP '5.21507' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1378.15' AND `position_y` REGEXP '290.947' AND `position_z` REGEXP '5.21507' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1342.59' AND `position_y` REGEXP '331.137' AND `position_z` REGEXP '11.8271' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1342.59' AND `position_y` REGEXP '331.137' AND `position_z` REGEXP '11.8271' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1263.18' AND `position_y` REGEXP '274.966' AND `position_z` REGEXP '17.0532' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1263.18' AND `position_y` REGEXP '274.966' AND `position_z` REGEXP '17.0532' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1123.58' AND `position_y` REGEXP '274.179' AND `position_z` REGEXP '35.9854' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1123.58' AND `position_y` REGEXP '274.179' AND `position_z` REGEXP '35.9854' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1525.42' AND `position_y` REGEXP '74.5188' AND `position_z` REGEXP '3.51263' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1525.42' AND `position_y` REGEXP '74.5188' AND `position_z` REGEXP '3.51263' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1545.36' AND `position_y` REGEXP '51.4068' AND `position_z` REGEXP '5.53909' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1545.36' AND `position_y` REGEXP '51.4068' AND `position_z` REGEXP '5.53909' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1760.46' AND `position_y` REGEXP '58.3398' AND `position_z` REGEXP '-0.230339' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1760.46' AND `position_y` REGEXP '58.3398' AND `position_z` REGEXP '-0.230339' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1677.66' AND `position_y` REGEXP '-93.8546' AND `position_z` REGEXP '-7.95567' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1677.66' AND `position_y` REGEXP '-93.8546' AND `position_z` REGEXP '-7.95567' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1647.75' AND `position_y` REGEXP '-56.1456' AND `position_z` REGEXP '-11.1751' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1647.75' AND `position_y` REGEXP '-56.1456' AND `position_z` REGEXP '-11.1751' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1861.58' AND `position_y` REGEXP '-115.316' AND `position_z` REGEXP '-8.27452' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1861.58' AND `position_y` REGEXP '-115.316' AND `position_z` REGEXP '-8.27452' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1784.04' AND `position_y` REGEXP '-54.7264' AND `position_z` REGEXP '-6.36899' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1784.04' AND `position_y` REGEXP '-54.7264' AND `position_z` REGEXP '-6.36899' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1923.34' AND `position_y` REGEXP '-257.264' AND `position_z` REGEXP '-6.02414' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1923.34' AND `position_y` REGEXP '-257.264' AND `position_z` REGEXP '-6.02414' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1915.33' AND `position_y` REGEXP '-182.388' AND `position_z` REGEXP '-3.62365' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1915.33' AND `position_y` REGEXP '-182.388' AND `position_z` REGEXP '-3.62365' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2292.16' AND `position_y` REGEXP '-806.598' AND `position_z` REGEXP '-6.32592' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2292.16' AND `position_y` REGEXP '-806.598' AND `position_z` REGEXP '-6.32592' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2332.81' AND `position_y` REGEXP '-802.904' AND `position_z` REGEXP '-8.35691' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2332.81' AND `position_y` REGEXP '-802.904' AND `position_z` REGEXP '-8.35691' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2358.09' AND `position_y` REGEXP '-932.205' AND `position_z` REGEXP '-5.98156' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2358.09' AND `position_y` REGEXP '-932.205' AND `position_z` REGEXP '-5.98156' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2316.04' AND `position_y` REGEXP '-983.688' AND `position_z` REGEXP '-5.8447' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2316.04' AND `position_y` REGEXP '-983.688' AND `position_z` REGEXP '-5.8447' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2344.51' AND `position_y` REGEXP '-870.783' AND `position_z` REGEXP '-5.67776' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2344.51' AND `position_y` REGEXP '-870.783' AND `position_z` REGEXP '-5.67776' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2331.17' AND `position_y` REGEXP '-966.432' AND `position_z` REGEXP '-4.82281' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2331.17' AND `position_y` REGEXP '-966.432' AND `position_z` REGEXP '-4.82281' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2350.39' AND `position_y` REGEXP '-947.449' AND `position_z` REGEXP '-4.03242' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2350.39' AND `position_y` REGEXP '-947.449' AND `position_z` REGEXP '-4.03242' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2188.52' AND `position_y` REGEXP '-1126.2' AND `position_z` REGEXP '10.7465' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2188.52' AND `position_y` REGEXP '-1126.2' AND `position_z` REGEXP '10.7465' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.28' AND `position_y` REGEXP '-974.237' AND `position_z` REGEXP '19.9861' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.28' AND `position_y` REGEXP '-974.237' AND `position_z` REGEXP '19.9861' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2153.5' AND `position_y` REGEXP '-1024.58' AND `position_z` REGEXP '14.991' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2153.5' AND `position_y` REGEXP '-1024.58' AND `position_z` REGEXP '14.991' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2184.91' AND `position_y` REGEXP '-977.741' AND `position_z` REGEXP '7.67898' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2184.91' AND `position_y` REGEXP '-977.741' AND `position_z` REGEXP '7.67898' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2318.04' AND `position_y` REGEXP '-849.944' AND `position_z` REGEXP '-3.3408' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2318.04' AND `position_y` REGEXP '-849.944' AND `position_z` REGEXP '-3.3408' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2194.57' AND `position_y` REGEXP '-796.175' AND `position_z` REGEXP '-6.35053' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2194.57' AND `position_y` REGEXP '-796.175' AND `position_z` REGEXP '-6.35053' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1948.07' AND `position_y` REGEXP '-484.409' AND `position_z` REGEXP '-7.89079' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1948.07' AND `position_y` REGEXP '-484.409' AND `position_z` REGEXP '-7.89079' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1916.85' AND `position_y` REGEXP '-588.57' AND `position_z` REGEXP '-3.47727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1916.85' AND `position_y` REGEXP '-588.57' AND `position_z` REGEXP '-3.47727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1855.44' AND `position_y` REGEXP '-750.076' AND `position_z` REGEXP '-9.19438' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1855.44' AND `position_y` REGEXP '-750.076' AND `position_z` REGEXP '-9.19438' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1913.73' AND `position_y` REGEXP '-844.863' AND `position_z` REGEXP '4.80866' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1913.73' AND `position_y` REGEXP '-844.863' AND `position_z` REGEXP '4.80866' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1919.77' AND `position_y` REGEXP '-788.115' AND `position_z` REGEXP '-7.63469' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1919.77' AND `position_y` REGEXP '-788.115' AND `position_z` REGEXP '-7.63469' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1986.35' AND `position_y` REGEXP '-784.383' AND `position_z` REGEXP '-9.10336' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1986.35' AND `position_y` REGEXP '-784.383' AND `position_z` REGEXP '-9.10336' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2284.19' AND `position_y` REGEXP '-1016.49' AND `position_z` REGEXP '-8.53457' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2284.19' AND `position_y` REGEXP '-1016.49' AND `position_z` REGEXP '-8.53457' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2329.51' AND `position_y` REGEXP '-1023.81' AND `position_z` REGEXP '-9.06052' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2329.51' AND `position_y` REGEXP '-1023.81' AND `position_z` REGEXP '-9.06052' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2067.96' AND `position_y` REGEXP '-934.092' AND `position_z` REGEXP '9.08586' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2067.96' AND `position_y` REGEXP '-934.092' AND `position_z` REGEXP '9.08586' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1989.86' AND `position_y` REGEXP '-982.504' AND `position_z` REGEXP '14.3803' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1989.86' AND `position_y` REGEXP '-982.504' AND `position_z` REGEXP '14.3803' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2085.14' AND `position_y` REGEXP '-1017.59' AND `position_z` REGEXP '17.4336' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2085.14' AND `position_y` REGEXP '-1017.59' AND `position_z` REGEXP '17.4336' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2311.57' AND `position_y` REGEXP '-1247.12' AND `position_z` REGEXP '5.30217' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2311.57' AND `position_y` REGEXP '-1247.12' AND `position_z` REGEXP '5.30217' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2291.02' AND `position_y` REGEXP '-1205.41' AND `position_z` REGEXP '-0.821815' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2291.02' AND `position_y` REGEXP '-1205.41' AND `position_z` REGEXP '-0.821815' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2285.77' AND `position_y` REGEXP '-1085.89' AND `position_z` REGEXP '-5.03026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2285.77' AND `position_y` REGEXP '-1085.89' AND `position_z` REGEXP '-5.03026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2243.94' AND `position_y` REGEXP '-1136.81' AND `position_z` REGEXP '-0.796627' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2243.94' AND `position_y` REGEXP '-1136.81' AND `position_z` REGEXP '-0.796627' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2180.46' AND `position_y` REGEXP '-1119.28' AND `position_z` REGEXP '11.726' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2180.46' AND `position_y` REGEXP '-1119.28' AND `position_z` REGEXP '11.726' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2112.58' AND `position_y` REGEXP '-987.094' AND `position_z` REGEXP '18.2945' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2112.58' AND `position_y` REGEXP '-987.094' AND `position_z` REGEXP '18.2945' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2145.46' AND `position_y` REGEXP '-1020.96' AND `position_z` REGEXP '17.1161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2145.46' AND `position_y` REGEXP '-1020.96' AND `position_z` REGEXP '17.1161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2258.8' AND `position_y` REGEXP '-947.358' AND `position_z` REGEXP '-6.66387' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2258.8' AND `position_y` REGEXP '-947.358' AND `position_z` REGEXP '-6.66387' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2183.35' AND `position_y` REGEXP '-983.203' AND `position_z` REGEXP '8.7698' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2183.35' AND `position_y` REGEXP '-983.203' AND `position_z` REGEXP '8.7698' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.72' AND `position_y` REGEXP '-827.086' AND `position_z` REGEXP '-7.65282' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2124.72' AND `position_y` REGEXP '-827.086' AND `position_z` REGEXP '-7.65282' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2197.54' AND `position_y` REGEXP '-829.136' AND `position_z` REGEXP '-7.50271' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2197.54' AND `position_y` REGEXP '-829.136' AND `position_z` REGEXP '-7.50271' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2251.47' AND `position_y` REGEXP '-824.41' AND `position_z` REGEXP '-5.92501' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2251.47' AND `position_y` REGEXP '-824.41' AND `position_z` REGEXP '-5.92501' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2293.72' AND `position_y` REGEXP '-952.258' AND `position_z` REGEXP '-5.62284' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2293.72' AND `position_y` REGEXP '-952.258' AND `position_z` REGEXP '-5.62284' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2366.53' AND `position_y` REGEXP '-993.026' AND `position_z` REGEXP '-9.21292' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2366.53' AND `position_y` REGEXP '-993.026' AND `position_z` REGEXP '-9.21292' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2319.86' AND `position_y` REGEXP '-889.458' AND `position_z` REGEXP '-5.19079' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2319.86' AND `position_y` REGEXP '-889.458' AND `position_z` REGEXP '-5.19079' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2020.52' AND `position_y` REGEXP '-385.43' AND `position_z` REGEXP '-2.19658' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2020.52' AND `position_y` REGEXP '-385.43' AND `position_z` REGEXP '-2.19658' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1907.93' AND `position_y` REGEXP '-256.079' AND `position_z` REGEXP '-8.73605' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1907.93' AND `position_y` REGEXP '-256.079' AND `position_z` REGEXP '-8.73605' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1922.67' AND `position_y` REGEXP '-178.219' AND `position_z` REGEXP '-4.00817' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1922.67' AND `position_y` REGEXP '-178.219' AND `position_z` REGEXP '-4.00817' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1877.04' AND `position_y` REGEXP '-284.663' AND `position_z` REGEXP '-6.84573' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1877.04' AND `position_y` REGEXP '-284.663' AND `position_z` REGEXP '-6.84573' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1809.13' AND `position_y` REGEXP '-126.112' AND `position_z` REGEXP '-6.1741' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1809.13' AND `position_y` REGEXP '-126.112' AND `position_z` REGEXP '-6.1741' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.56' AND `position_y` REGEXP '-116.49' AND `position_z` REGEXP '-8.79992' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.56' AND `position_y` REGEXP '-116.49' AND `position_z` REGEXP '-8.79992' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1710.94' AND `position_y` REGEXP '-163.893' AND `position_z` REGEXP '-8.38481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1710.94' AND `position_y` REGEXP '-163.893' AND `position_z` REGEXP '-8.38481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1650.08' AND `position_y` REGEXP '-116.849' AND `position_z` REGEXP '-8.83942' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1650.08' AND `position_y` REGEXP '-116.849' AND `position_z` REGEXP '-8.83942' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1646.35' AND `position_y` REGEXP '-53.6465' AND `position_z` REGEXP '-11.1751' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1646.35' AND `position_y` REGEXP '-53.6465' AND `position_z` REGEXP '-11.1751' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1685.42' AND `position_y` REGEXP '-88.2232' AND `position_z` REGEXP '-8.5067' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1685.42' AND `position_y` REGEXP '-88.2232' AND `position_z` REGEXP '-8.5067' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1717.88' AND `position_y` REGEXP '-50.5209' AND `position_z` REGEXP '-2.53785' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1717.88' AND `position_y` REGEXP '-50.5209' AND `position_z` REGEXP '-2.53785' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1613.52' AND `position_y` REGEXP '-88.1751' AND `position_z` REGEXP '-0.127444' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1613.52' AND `position_y` REGEXP '-88.1751' AND `position_z` REGEXP '-0.127444' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1515.33' AND `position_y` REGEXP '86.7874' AND `position_z` REGEXP '3.40662' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1515.33' AND `position_y` REGEXP '86.7874' AND `position_z` REGEXP '3.40662' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1545' AND `position_y` REGEXP '49.0922' AND `position_z` REGEXP '6.34737' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1545' AND `position_y` REGEXP '49.0922' AND `position_z` REGEXP '6.34737' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 2959;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('2959', '117', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2959', '159', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2959', '765', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(765): Silverleaf, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2959', '766', '0', '0.34', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('2959', '767', '0', '0.24', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('2959', '768', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('2959', '774', '0', '1.14', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '818', '0', '0.38', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2406', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2407', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2447', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(2447): Peacebloom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2959', '2449', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2449): Earthroot, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('2959', '2553', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2553): Recipe: Elixir of Minor Agility, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2555', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2589', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2959', '2598', '0', '0.24', '0', '1', '0', '1', '1', '') /* Item(2598): Pattern: Red Linen Robe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '2672', '0', '76.7986', '0', '1', '0', '1', '1', '') /* Item(2672): Stringy Wolf Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2959', '2835', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2835): Rough Stone, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('2959', '3189', '0', '0.32', '0', '1', '0', '1', '1', '') /* Item(3189): Wood Chopper, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('2959', '3190', '0', '0.3', '0', '1', '0', '1', '1', '') /* Item(3190): Beatstick, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('2959', '3299', '0', '12.7584', '0', '1', '0', '1', '1', '') /* Item(3299): Fractured Canine, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('2959', '3300', '0', '27.84', '0', '1', '0', '1', '1', '') /* Item(3300): Rabbit's Foot, ItemLevel: 5, RequiredLevel: 5, ItemQuality: GREY_POOR        */, 
('2959', '3609', '0', '0.2', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '3610', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3610): Plans: Gemmed Copper Gauntlets, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '4408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4408): Schematic: Mechanical Squirrel Box, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '4560', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(4560): Fine Scimitar, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('2959', '4563', '0', '0.16', '0', '1', '0', '1', '1', '') /* Item(4563): Billy Club, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('2959', '4565', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('2959', '4758', '0', '80', '1', '1', '0', '1', '1', '') /* Item(4758): Prairie Wolf Paw, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2959', '4801', '0', '80', '1', '1', '0', '1', '1', '') /* Item(4801): Stalker Claws, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2959', '4804', '0', '100', '1', '1', '0', '1', '1', '') /* Item(4804): Prairie Wolf Heart, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('2959', '6271', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '6342', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6342): Formula: Enchant Chest - Minor Mana, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '6508', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6508): Infantry Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('2959', '7288', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(7288): Pattern: Rugged Leather Pants, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('2959', '8177', '0', '0.36', '0', '1', '0', '1', '1', '') /* Item(8177): Practice Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('2959', '8179', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(8179): Cadet's Bow, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('2959', '8181', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(8181): Hunting Rifle, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('2959', '8182', '0', '0.3', '0', '1', '0', '1', '1', '') /* Item(8182): Pellet Rifle, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('2959', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('2959', '24073', '24073', '5', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('2959', '24074', '24074', '1', '0', '1', '1', '1', '1', '') /* Item(24074): Fel Iron Blood Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '2318', '0', '39.7046', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '2934', '0', '60.2954', '0', '1', '1', '1', '1', ''); 


/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
765  1  WAIHT_COMMON      0g 0s 10c  5  0  Silverleaf
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2407  2  GREEN_UNCOMMON    0g 1s 62c  13  0  Pattern: White Leather Jerkin
2408  2  GREEN_UNCOMMON    0g 1s 25c  15  0  Pattern: Fine Leather Gloves
2447  1  WAIHT_COMMON      0g 0s 10c  5  0  Peacebloom
2449  1  WAIHT_COMMON      0g 0s 20c  10  0  Earthroot
2553  2  GREEN_UNCOMMON    0g 0s 25c  12  0  Recipe: Elixir of Minor Agility
2555  2  GREEN_UNCOMMON    0g 0s 40c  15  0  Recipe: Swiftness Potion
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2598  2  GREEN_UNCOMMON    0g 0s 30c  10  0  Pattern: Red Linen Robe
2672  1  WAIHT_COMMON      0g 0s 4c  5  0  Stringy Wolf Meat
2835  1  WAIHT_COMMON      0g 0s 2c  5  0  Rough Stone
3189  1  WAIHT_COMMON      0g 0s 99c  8  3  Wood Chopper
3190  1  WAIHT_COMMON      0g 0s 99c  8  3  Beatstick
3299  0  GREY_POOR         0g 0s 48c  1  0  Fractured Canine
3300  0  GREY_POOR         0g 0s 9c  5  0  Rabbit's Foot
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
3610  2  GREEN_UNCOMMON    0g 0s 50c  15  0  Plans: Gemmed Copper Gauntlets
4408  2  GREEN_UNCOMMON    0g 1s 62c  15  0  Schematic: Mechanical Squirrel Box
4560  1  WAIHT_COMMON      0g 0s 37c  6  1  Fine Scimitar
4563  1  WAIHT_COMMON      0g 1s 10c  9  4  Billy Club
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4758  1  WAIHT_COMMON      1  0  Prairie Wolf Paw
4801  1  WAIHT_COMMON      1  0  Stalker Claws
4804  1  WAIHT_COMMON      1  0  Prairie Wolf Heart
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6342  2  GREEN_UNCOMMON    0g 0s 75c  12  0  Formula: Enchant Chest - Minor Mana
6508  1  WAIHT_COMMON      0g 0s 60c  9  4  Infantry Cloak
7288  2  GREEN_UNCOMMON    0g 1s 25c  11  0  Pattern: Rugged Leather Pants
8177  1  WAIHT_COMMON      0g 0s 71c  7  2  Practice Sword
8179  1  WAIHT_COMMON      0g 0s 48c  6  1  Cadet's Bow
8181  1  WAIHT_COMMON      0g 1s 32c  9  4  Hunting Rifle
8182  1  WAIHT_COMMON      0g 0s 68c  7  2  Pellet Rifle
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
24073  3  BLUE_RARE         1g 90s 84c  85  60  Garrote-String Necklace
24074  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Fel Iron Blood Ring
*/
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*
2318  1  WAIHT_COMMON      0g 0s 15c  10  0  Light Leather
2934  1  WAIHT_COMMON      0g 0s 7c  5  0  Ruined Leather Scraps


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 2959;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 2959;

