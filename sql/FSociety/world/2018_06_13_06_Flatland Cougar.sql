/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Flatland Cougar';
SET @ENTRY 		:= '3035';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1059',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '7',  '8',  '0',  '0',  '0',  '14',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '2',  '0',  '0',  '0',  '1',  '1',  '0',  '3035',  '0',  '3035',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3035 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18797, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2051.21', '-983.896', '10.8737', '4.95545', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18798, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1988.16', '-917.832', '8.10436', '2.80317', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18799, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1942.32', '-922.099', '18.064', '0.313336', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18800, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2026.41', '-807.682', '-7.95749', '3.57274', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18801, @ENTRY, '1', '215', '223', '1', '0', '0', '0', '-1', '0', '0', '-2076.07', '-819.768', '-6.41106', '0.316837', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18802, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1856.04', '-341.675', '-8.32206', '4.6342', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18803, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1925.9', '-387.017', '-2.11487', '0.61861', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18804, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1914.31', '-327.744', '-3.83232', '4.89008', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18805, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1915.21', '-517.417', '-9.38041', '2.1456', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18806, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1891.3', '-480.675', '-7.51049', '0.277258', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18807, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1852.34', '-316.912', '-6.55008', '0.816478', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18808, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1968.53', '-266.442', '-5.76072', '2.06575', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18809, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1969.53', '-214.546', '-9.77785', '4.15232', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18810, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1861.12', '-178.575', '-9.45128', '0.490785', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18811, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1886.71', '-147.589', '-4.43856', '0.238161', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18812, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1816.26', '-80.0414', '-8.8364', '3.17414', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18813, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1825.74', '187.028', '35.2604', '2.72952', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18814, @ENTRY, '1', '1638', '5345', '1', '0', '0', '0', '-1', '0', '0', '-1346.19', '221.37', '11.5896', '1.73177', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18815, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1312.69', '288.185', '4.49754', '1.25275', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18816, @ENTRY, '1', '1638', '5345', '1', '0', '0', '0', '-1', '0', '0', '-1355.64', '239.893', '5.08757', '2.28295', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18817, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1192.47', '274.609', '28.3315', '0.562646', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18818, @ENTRY, '1', '1638', '5345', '1', '0', '0', '0', '-1', '0', '0', '-1151.12', '255.237', '36.5202', '0.990455', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18819, @ENTRY, '1', '1638', '5345', '1', '0', '0', '0', '-1', '0', '0', '-1118.58', '219.428', '48.7926', '3.56228', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18820, @ENTRY, '1', '1638', '5345', '1', '0', '0', '0', '-1', '0', '0', '-1346', '221.87', '11.1654', '4.87432', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18821, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1599.5', '22.3738', '-1.94701', '2.62899', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18822, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1716.45', '-121.764', '-7.46894', '6.17555', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18823, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1744.33', '-80.6007', '-6.58603', '5.79583', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18824, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1819.28', '-84.9385', '-9.17485', '2.92138', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18825, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1887.31', '-154.692', '-4.61532', '4.22902', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18826, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1945.98', '-214.442', '-7.48681', '3.99912', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18827, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2016.4', '-222.582', '-9.30744', '1.20448', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18828, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1953.07', '-279.599', '-5.44789', '2.14777', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18829, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2263.56', '-850.907', '-7.84901', '3.59485', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18830, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2215.96', '-1079.98', '0.0458702', '1.1718', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18831, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2180.35', '-1048.33', '6.27504', '4.13143', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18832, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2176.37', '-1081.78', '7.3917', '3.81633', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18833, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2183.21', '-915.355', '3.55127', '2.11925', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18834, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2226.09', '-941.959', '-0.979026', '5.60781', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18835, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2157.71', '-804.273', '-2.82026', '2.11598', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18836, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2237.14', '-874.871', '-7.5939', '5.69332', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18837, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1851.23', '-486.392', '-2.2964', '1.72313', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18838, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1898.23', '-567.874', '-5.07525', '3.96937', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18839, @ENTRY, '1', '215', '224', '1', '0', '0', '0', '-1', '0', '0', '-1881.56', '-750.363', '-8.52427', '3.71289', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18840, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1949.16', '-884.434', '1.17891', '4.61224', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18841, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2041.82', '-844.992', '-7.14283', '2.29696', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18842, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2080.42', '-853.66', '-5.56255', '1.13408', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18843, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2149.99', '-949.39', '14.8409', '4.27523', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18844, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2038.35', '-985.104', '9.92115', '0.00039469', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18845, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2280.65', '-1280.85', '16.6479', '3.44858', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18846, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2357.74', '-1178.93', '-4.15365', '3.28757', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18847, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2226.67', '-1202.6', '16.3514', '5.45839', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18848, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2181.34', '-1087.51', '6.11142', '4.6092', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18849, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2219.56', '-1085.59', '-0.750385', '3.03201', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18850, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2252.98', '-1049.94', '-4.22398', '3.50962', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18851, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2187.19', '-1043.57', '4.91875', '2.66983', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18852, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2251.48', '-985.216', '-3.72962', '0.475011', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18853, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2157.14', '-951.093', '13.4585', '3.72838', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18854, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2187.38', '-916.644', '3.31552', '3.65328', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18855, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2223.2', '-943.341', '-0.409934', '4.15341', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18856, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2221.08', '-837.768', '-9.26351', '2.61063', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18857, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2166.16', '-843.874', '-6.98161', '0.0384495', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18858, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-2017.97', '-221.355', '-9.43244', '5.19372', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18859, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1985.24', '-318.448', '-3.91414', '2.86921', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18860, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1889.24', '-149.211', '-4.2806', '5.1499', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18861, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1944.75', '-212.916', '-7.3391', '1.00559', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18862, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1897.6', '-159.185', '-3.6556', '4.82816', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18863, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1853.56', '-324.519', '-7.09793', '5.14118', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18864, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1813.38', '-86.1772', '-9.20366', '5.72606', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18865, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1748.15', '-218.632', '-9.29984', '1.68756', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18866, @ENTRY, '1', '215', '397', '1', '0', '0', '0', '-1', '0', '0', '-1848.44', '-181.933', '-9.32628', '1.03566', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18867, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1581.48', '-47.7724', '7.57806', '1.70488', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18868, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1717.27', '-114.819', '-8.08755', '1.11189', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18869, @ENTRY, '1', '215', '215', '1', '0', '0', '0', '-1', '0', '0', '-1755.25', '-83.864', '-5.58505', '1.90087', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2051.21' AND `position_y` REGEXP '-983.896' AND `position_z` REGEXP '10.8737' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2051.21' AND `position_y` REGEXP '-983.896' AND `position_z` REGEXP '10.8737' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1988.16' AND `position_y` REGEXP '-917.832' AND `position_z` REGEXP '8.10436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1988.16' AND `position_y` REGEXP '-917.832' AND `position_z` REGEXP '8.10436' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1942.32' AND `position_y` REGEXP '-922.099' AND `position_z` REGEXP '18.064' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1942.32' AND `position_y` REGEXP '-922.099' AND `position_z` REGEXP '18.064' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2026.41' AND `position_y` REGEXP '-807.682' AND `position_z` REGEXP '-7.95749' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2026.41' AND `position_y` REGEXP '-807.682' AND `position_z` REGEXP '-7.95749' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2076.07' AND `position_y` REGEXP '-819.768' AND `position_z` REGEXP '-6.41106' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2076.07' AND `position_y` REGEXP '-819.768' AND `position_z` REGEXP '-6.41106' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1856.04' AND `position_y` REGEXP '-341.675' AND `position_z` REGEXP '-8.32206' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1856.04' AND `position_y` REGEXP '-341.675' AND `position_z` REGEXP '-8.32206' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1925.9' AND `position_y` REGEXP '-387.017' AND `position_z` REGEXP '-2.11487' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1925.9' AND `position_y` REGEXP '-387.017' AND `position_z` REGEXP '-2.11487' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1914.31' AND `position_y` REGEXP '-327.744' AND `position_z` REGEXP '-3.83232' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1914.31' AND `position_y` REGEXP '-327.744' AND `position_z` REGEXP '-3.83232' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1915.21' AND `position_y` REGEXP '-517.417' AND `position_z` REGEXP '-9.38041' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1915.21' AND `position_y` REGEXP '-517.417' AND `position_z` REGEXP '-9.38041' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1891.3' AND `position_y` REGEXP '-480.675' AND `position_z` REGEXP '-7.51049' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1891.3' AND `position_y` REGEXP '-480.675' AND `position_z` REGEXP '-7.51049' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1852.34' AND `position_y` REGEXP '-316.912' AND `position_z` REGEXP '-6.55008' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1852.34' AND `position_y` REGEXP '-316.912' AND `position_z` REGEXP '-6.55008' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1968.53' AND `position_y` REGEXP '-266.442' AND `position_z` REGEXP '-5.76072' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1968.53' AND `position_y` REGEXP '-266.442' AND `position_z` REGEXP '-5.76072' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1969.53' AND `position_y` REGEXP '-214.546' AND `position_z` REGEXP '-9.77785' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1969.53' AND `position_y` REGEXP '-214.546' AND `position_z` REGEXP '-9.77785' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1861.12' AND `position_y` REGEXP '-178.575' AND `position_z` REGEXP '-9.45128' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1861.12' AND `position_y` REGEXP '-178.575' AND `position_z` REGEXP '-9.45128' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1886.71' AND `position_y` REGEXP '-147.589' AND `position_z` REGEXP '-4.43856' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1886.71' AND `position_y` REGEXP '-147.589' AND `position_z` REGEXP '-4.43856' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1816.26' AND `position_y` REGEXP '-80.0414' AND `position_z` REGEXP '-8.8364' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1816.26' AND `position_y` REGEXP '-80.0414' AND `position_z` REGEXP '-8.8364' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1825.74' AND `position_y` REGEXP '187.028' AND `position_z` REGEXP '35.2604' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1825.74' AND `position_y` REGEXP '187.028' AND `position_z` REGEXP '35.2604' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1346.19' AND `position_y` REGEXP '221.37' AND `position_z` REGEXP '11.5896' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1346.19' AND `position_y` REGEXP '221.37' AND `position_z` REGEXP '11.5896' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1312.69' AND `position_y` REGEXP '288.185' AND `position_z` REGEXP '4.49754' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1312.69' AND `position_y` REGEXP '288.185' AND `position_z` REGEXP '4.49754' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1355.64' AND `position_y` REGEXP '239.893' AND `position_z` REGEXP '5.08757' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1355.64' AND `position_y` REGEXP '239.893' AND `position_z` REGEXP '5.08757' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1192.47' AND `position_y` REGEXP '274.609' AND `position_z` REGEXP '28.3315' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1192.47' AND `position_y` REGEXP '274.609' AND `position_z` REGEXP '28.3315' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1151.12' AND `position_y` REGEXP '255.237' AND `position_z` REGEXP '36.5202' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1151.12' AND `position_y` REGEXP '255.237' AND `position_z` REGEXP '36.5202' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1118.58' AND `position_y` REGEXP '219.428' AND `position_z` REGEXP '48.7926' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1118.58' AND `position_y` REGEXP '219.428' AND `position_z` REGEXP '48.7926' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1346' AND `position_y` REGEXP '221.87' AND `position_z` REGEXP '11.1654' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1346' AND `position_y` REGEXP '221.87' AND `position_z` REGEXP '11.1654' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1599.5' AND `position_y` REGEXP '22.3738' AND `position_z` REGEXP '-1.94701' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1599.5' AND `position_y` REGEXP '22.3738' AND `position_z` REGEXP '-1.94701' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1716.45' AND `position_y` REGEXP '-121.764' AND `position_z` REGEXP '-7.46894' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1716.45' AND `position_y` REGEXP '-121.764' AND `position_z` REGEXP '-7.46894' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1744.33' AND `position_y` REGEXP '-80.6007' AND `position_z` REGEXP '-6.58603' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1744.33' AND `position_y` REGEXP '-80.6007' AND `position_z` REGEXP '-6.58603' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1819.28' AND `position_y` REGEXP '-84.9385' AND `position_z` REGEXP '-9.17485' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1819.28' AND `position_y` REGEXP '-84.9385' AND `position_z` REGEXP '-9.17485' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1887.31' AND `position_y` REGEXP '-154.692' AND `position_z` REGEXP '-4.61532' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1887.31' AND `position_y` REGEXP '-154.692' AND `position_z` REGEXP '-4.61532' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1945.98' AND `position_y` REGEXP '-214.442' AND `position_z` REGEXP '-7.48681' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1945.98' AND `position_y` REGEXP '-214.442' AND `position_z` REGEXP '-7.48681' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2016.4' AND `position_y` REGEXP '-222.582' AND `position_z` REGEXP '-9.30744' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2016.4' AND `position_y` REGEXP '-222.582' AND `position_z` REGEXP '-9.30744' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1953.07' AND `position_y` REGEXP '-279.599' AND `position_z` REGEXP '-5.44789' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1953.07' AND `position_y` REGEXP '-279.599' AND `position_z` REGEXP '-5.44789' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2263.56' AND `position_y` REGEXP '-850.907' AND `position_z` REGEXP '-7.84901' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2263.56' AND `position_y` REGEXP '-850.907' AND `position_z` REGEXP '-7.84901' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2215.96' AND `position_y` REGEXP '-1079.98' AND `position_z` REGEXP '0.0458702' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2215.96' AND `position_y` REGEXP '-1079.98' AND `position_z` REGEXP '0.0458702' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2180.35' AND `position_y` REGEXP '-1048.33' AND `position_z` REGEXP '6.27504' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2180.35' AND `position_y` REGEXP '-1048.33' AND `position_z` REGEXP '6.27504' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2176.37' AND `position_y` REGEXP '-1081.78' AND `position_z` REGEXP '7.3917' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2176.37' AND `position_y` REGEXP '-1081.78' AND `position_z` REGEXP '7.3917' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2183.21' AND `position_y` REGEXP '-915.355' AND `position_z` REGEXP '3.55127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2183.21' AND `position_y` REGEXP '-915.355' AND `position_z` REGEXP '3.55127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2226.09' AND `position_y` REGEXP '-941.959' AND `position_z` REGEXP '-0.979026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2226.09' AND `position_y` REGEXP '-941.959' AND `position_z` REGEXP '-0.979026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2157.71' AND `position_y` REGEXP '-804.273' AND `position_z` REGEXP '-2.82026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2157.71' AND `position_y` REGEXP '-804.273' AND `position_z` REGEXP '-2.82026' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2237.14' AND `position_y` REGEXP '-874.871' AND `position_z` REGEXP '-7.5939' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2237.14' AND `position_y` REGEXP '-874.871' AND `position_z` REGEXP '-7.5939' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.23' AND `position_y` REGEXP '-486.392' AND `position_z` REGEXP '-2.2964' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.23' AND `position_y` REGEXP '-486.392' AND `position_z` REGEXP '-2.2964' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1898.23' AND `position_y` REGEXP '-567.874' AND `position_z` REGEXP '-5.07525' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1898.23' AND `position_y` REGEXP '-567.874' AND `position_z` REGEXP '-5.07525' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1881.56' AND `position_y` REGEXP '-750.363' AND `position_z` REGEXP '-8.52427' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1881.56' AND `position_y` REGEXP '-750.363' AND `position_z` REGEXP '-8.52427' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1949.16' AND `position_y` REGEXP '-884.434' AND `position_z` REGEXP '1.17891' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1949.16' AND `position_y` REGEXP '-884.434' AND `position_z` REGEXP '1.17891' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2041.82' AND `position_y` REGEXP '-844.992' AND `position_z` REGEXP '-7.14283' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2041.82' AND `position_y` REGEXP '-844.992' AND `position_z` REGEXP '-7.14283' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2080.42' AND `position_y` REGEXP '-853.66' AND `position_z` REGEXP '-5.56255' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2080.42' AND `position_y` REGEXP '-853.66' AND `position_z` REGEXP '-5.56255' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2149.99' AND `position_y` REGEXP '-949.39' AND `position_z` REGEXP '14.8409' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2149.99' AND `position_y` REGEXP '-949.39' AND `position_z` REGEXP '14.8409' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2038.35' AND `position_y` REGEXP '-985.104' AND `position_z` REGEXP '9.92115' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2038.35' AND `position_y` REGEXP '-985.104' AND `position_z` REGEXP '9.92115' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2280.65' AND `position_y` REGEXP '-1280.85' AND `position_z` REGEXP '16.6479' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2280.65' AND `position_y` REGEXP '-1280.85' AND `position_z` REGEXP '16.6479' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2357.74' AND `position_y` REGEXP '-1178.93' AND `position_z` REGEXP '-4.15365' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2357.74' AND `position_y` REGEXP '-1178.93' AND `position_z` REGEXP '-4.15365' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2226.67' AND `position_y` REGEXP '-1202.6' AND `position_z` REGEXP '16.3514' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2226.67' AND `position_y` REGEXP '-1202.6' AND `position_z` REGEXP '16.3514' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2181.34' AND `position_y` REGEXP '-1087.51' AND `position_z` REGEXP '6.11142' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2181.34' AND `position_y` REGEXP '-1087.51' AND `position_z` REGEXP '6.11142' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2219.56' AND `position_y` REGEXP '-1085.59' AND `position_z` REGEXP '-0.750385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2219.56' AND `position_y` REGEXP '-1085.59' AND `position_z` REGEXP '-0.750385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2252.98' AND `position_y` REGEXP '-1049.94' AND `position_z` REGEXP '-4.22398' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2252.98' AND `position_y` REGEXP '-1049.94' AND `position_z` REGEXP '-4.22398' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2187.19' AND `position_y` REGEXP '-1043.57' AND `position_z` REGEXP '4.91875' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2187.19' AND `position_y` REGEXP '-1043.57' AND `position_z` REGEXP '4.91875' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2251.48' AND `position_y` REGEXP '-985.216' AND `position_z` REGEXP '-3.72962' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2251.48' AND `position_y` REGEXP '-985.216' AND `position_z` REGEXP '-3.72962' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2157.14' AND `position_y` REGEXP '-951.093' AND `position_z` REGEXP '13.4585' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2157.14' AND `position_y` REGEXP '-951.093' AND `position_z` REGEXP '13.4585' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2187.38' AND `position_y` REGEXP '-916.644' AND `position_z` REGEXP '3.31552' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2187.38' AND `position_y` REGEXP '-916.644' AND `position_z` REGEXP '3.31552' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2223.2' AND `position_y` REGEXP '-943.341' AND `position_z` REGEXP '-0.409934' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2223.2' AND `position_y` REGEXP '-943.341' AND `position_z` REGEXP '-0.409934' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2221.08' AND `position_y` REGEXP '-837.768' AND `position_z` REGEXP '-9.26351' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2221.08' AND `position_y` REGEXP '-837.768' AND `position_z` REGEXP '-9.26351' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2166.16' AND `position_y` REGEXP '-843.874' AND `position_z` REGEXP '-6.98161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2166.16' AND `position_y` REGEXP '-843.874' AND `position_z` REGEXP '-6.98161' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2017.97' AND `position_y` REGEXP '-221.355' AND `position_z` REGEXP '-9.43244' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2017.97' AND `position_y` REGEXP '-221.355' AND `position_z` REGEXP '-9.43244' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1985.24' AND `position_y` REGEXP '-318.448' AND `position_z` REGEXP '-3.91414' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1985.24' AND `position_y` REGEXP '-318.448' AND `position_z` REGEXP '-3.91414' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1889.24' AND `position_y` REGEXP '-149.211' AND `position_z` REGEXP '-4.2806' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1889.24' AND `position_y` REGEXP '-149.211' AND `position_z` REGEXP '-4.2806' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1944.75' AND `position_y` REGEXP '-212.916' AND `position_z` REGEXP '-7.3391' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1944.75' AND `position_y` REGEXP '-212.916' AND `position_z` REGEXP '-7.3391' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1897.6' AND `position_y` REGEXP '-159.185' AND `position_z` REGEXP '-3.6556' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1897.6' AND `position_y` REGEXP '-159.185' AND `position_z` REGEXP '-3.6556' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1853.56' AND `position_y` REGEXP '-324.519' AND `position_z` REGEXP '-7.09793' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1853.56' AND `position_y` REGEXP '-324.519' AND `position_z` REGEXP '-7.09793' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1813.38' AND `position_y` REGEXP '-86.1772' AND `position_z` REGEXP '-9.20366' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1813.38' AND `position_y` REGEXP '-86.1772' AND `position_z` REGEXP '-9.20366' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1748.15' AND `position_y` REGEXP '-218.632' AND `position_z` REGEXP '-9.29984' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1748.15' AND `position_y` REGEXP '-218.632' AND `position_z` REGEXP '-9.29984' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1848.44' AND `position_y` REGEXP '-181.933' AND `position_z` REGEXP '-9.32628' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1848.44' AND `position_y` REGEXP '-181.933' AND `position_z` REGEXP '-9.32628' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1581.48' AND `position_y` REGEXP '-47.7724' AND `position_z` REGEXP '7.57806' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1581.48' AND `position_y` REGEXP '-47.7724' AND `position_z` REGEXP '7.57806' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1717.27' AND `position_y` REGEXP '-114.819' AND `position_z` REGEXP '-8.08755' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1717.27' AND `position_y` REGEXP '-114.819' AND `position_z` REGEXP '-8.08755' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1755.25' AND `position_y` REGEXP '-83.864' AND `position_z` REGEXP '-5.58505' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1755.25' AND `position_y` REGEXP '-83.864' AND `position_z` REGEXP '-5.58505' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3035;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3035', '765', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(765): Silverleaf, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3035', '766', '0', '0.3', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('3035', '767', '0', '0.22', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3035', '768', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3035', '774', '0', '1.2', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '818', '0', '0.34', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2406', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2407', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2447', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(2447): Peacebloom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3035', '2449', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2449): Earthroot, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3035', '2553', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2553): Recipe: Elixir of Minor Agility, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2555', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2598', '0', '0.22', '0', '1', '0', '1', '1', '') /* Item(2598): Pattern: Red Linen Robe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '2835', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2835): Rough Stone, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3035', '3189', '0', '0.3', '0', '1', '0', '1', '1', '') /* Item(3189): Wood Chopper, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3035', '3190', '0', '0.32', '0', '1', '0', '1', '1', '') /* Item(3190): Beatstick, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3035', '3609', '0', '0.2', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '3610', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3610): Plans: Gemmed Copper Gauntlets, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '4408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4408): Schematic: Mechanical Squirrel Box, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '4560', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(4560): Fine Scimitar, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('3035', '4563', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(4563): Billy Club, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3035', '4565', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('3035', '4802', '0', '80', '1', '1', '0', '1', '1', '') /* Item(4802): Cougar Claws, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3035', '4805', '0', '100', '1', '1', '0', '1', '1', '') /* Item(4805): Flatland Cougar Femur, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3035', '4813', '0', '20.2362', '0', '1', '0', '1', '1', '') /* Item(4813): Small Leather Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('3035', '4814', '0', '61.7089', '0', '1', '0', '1', '1', '') /* Item(4814): Discolored Fang, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('3035', '6271', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '6342', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6342): Formula: Enchant Chest - Minor Mana, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '7288', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(7288): Pattern: Rugged Leather Pants, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '8177', '0', '0.3', '0', '1', '0', '1', '1', '') /* Item(8177): Practice Sword, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('3035', '8179', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(8179): Cadet's Bow, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('3035', '8181', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(8181): Hunting Rifle, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3035', '8182', '0', '0.32', '0', '1', '0', '1', '1', '') /* Item(8182): Pellet Rifle, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('3035', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('3035', '24074', '24074', '1', '0', '1', '1', '1', '1', '') /* Item(24074): Fel Iron Blood Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('3035', '44007', '44007', '0.5', '0', '1', '0', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '2318', '0', '39.6707', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '2934', '0', '60.3293', '0', '1', '1', '1', '1', ''); 


/*
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
2598  2  GREEN_UNCOMMON    0g 0s 30c  10  0  Pattern: Red Linen Robe
2835  1  WAIHT_COMMON      0g 0s 2c  5  0  Rough Stone
3189  1  WAIHT_COMMON      0g 0s 99c  8  3  Wood Chopper
3190  1  WAIHT_COMMON      0g 0s 99c  8  3  Beatstick
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
3610  2  GREEN_UNCOMMON    0g 0s 50c  15  0  Plans: Gemmed Copper Gauntlets
4408  2  GREEN_UNCOMMON    0g 1s 62c  15  0  Schematic: Mechanical Squirrel Box
4560  1  WAIHT_COMMON      0g 0s 37c  6  1  Fine Scimitar
4563  1  WAIHT_COMMON      0g 1s 10c  9  4  Billy Club
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
4802  1  WAIHT_COMMON      1  0  Cougar Claws
4805  1  WAIHT_COMMON      1  0  Flatland Cougar Femur
4813  0  GREY_POOR         0g 0s 33c  1  0  Small Leather Collar
4814  0  GREY_POOR         0g 0s 6c  1  0  Discolored Fang
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6342  2  GREEN_UNCOMMON    0g 0s 75c  12  0  Formula: Enchant Chest - Minor Mana
7288  2  GREEN_UNCOMMON    0g 1s 25c  11  0  Pattern: Rugged Leather Pants
8177  1  WAIHT_COMMON      0g 0s 71c  7  2  Practice Sword
8179  1  WAIHT_COMMON      0g 0s 48c  6  1  Cadet's Bow
8181  1  WAIHT_COMMON      0g 1s 32c  9  4  Hunting Rifle
8182  1  WAIHT_COMMON      0g 0s 68c  7  2  Pellet Rifle
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
24074  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Fel Iron Blood Ring
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3035;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3035;

