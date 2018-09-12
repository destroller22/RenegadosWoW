/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 7/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Stormwind City Patroller';
SET @ENTRY 		:= '37944';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3167',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '0',  '0',  '-1',  '0',  '0',  '11',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1.5',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 37944 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984415, @ENTRY, '0', '1519', '5150', '1', '0', '169', '0', '-1', '0', '0', '-8382.99', '593.616', '92.7383', '1.06465', '120', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23360'), 
(984416, @ENTRY, '0', '1519', '5148', '1', '0', '169', '0', '-1', '0', '0', '-8826.18', '622.109', '94.3733', '1.06465', '120', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23360'), 
(984417, @ENTRY, '0', '1519', '5149', '1', '0', '169', '0', '-1', '0', '0', '-8699.84', '400.495', '101.403', '1.06465', '120', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23360'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8382.99' AND `position_y` REGEXP '593.616' AND `position_z` REGEXP '92.7383' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8382.99' AND `position_y` REGEXP '593.616' AND `position_z` REGEXP '92.7383' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8394.99', '603.211', '94.2071', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8391.47', '611.093', '94.9021', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8386.33', '616.134', '95.3394', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8375.59', '625.552', '95.2375', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8374.69', '637.427', '94.9856', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8387.23', '654.543', '95.3779', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8395.72', '666.536', '94.8136', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8403.93', '672.526', '95.1865', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8413.65', '673.823', '95.1521', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8424.3', '664.953', '94.5813', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8440.39', '654.566', '93.0554', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8459.27', '640.773', '92.2396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8474.05', '626.993', '93.9298', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8476.11', '620.795', '94.7313', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8466.74', '607.575', '94.6349', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8454.6', '589.918', '94.6231', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8457.07', '582.198', '94.8731', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8469', '573.215', '96.5188', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8487.57', '562.257', '97.7864', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8502.45', '552.898', '97.9888', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8506.19', '537.477', '97.9705', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8492.6', '539.856', '97.8199', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8481.46', '556.812', '97.9449', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8473.15', '566.471', '97.0359', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8457.76', '578.517', '95.0135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8445.57', '585.203', '94.6536', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8435.99', '576.08', '94.5559', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8424.63', '567.255', '93.8277', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8416.42', '565.358', '93.0731', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8394', '576.257', '91.9218', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8391.53', '578.422', '91.7968', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8394.06', '590.131', '92.7598', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8382.99' AND `position_y` REGEXP '593.616' AND `position_z` REGEXP '92.7383' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8826.18' AND `position_y` REGEXP '622.109' AND `position_z` REGEXP '94.3733' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8826.18' AND `position_y` REGEXP '622.109' AND `position_z` REGEXP '94.3733' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8826.18', '622.109', '94.3733', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8810.63', '605.208', '96.3282', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8802.59', '596.066', '97.3512', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8824.47', '568.592', '94.3151', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8837.69', '549.722', '96.5008', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8831.21', '544.908', '96.7859', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8819.26', '559.097', '94.7083', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8805.76', '578.973', '96.0651', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8789.56', '592.404', '97.8092', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8762.77', '617.512', '99.1953', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8759.37', '637.5', '103.327', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8763.72', '653.63', '103.866', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8775.69', '668.575', '103.369', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8787.93', '681.747', '102.38', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8806.57', '684.743', '100.607', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8824.73', '678.443', '97.727', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8840.86', '669.757', '98.2011', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8855.31', '658.285', '96.7698', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8865.2', '652.073', '96.2195', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8866.9', '645.188', '96.1664', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8860.37', '641.533', '96.391', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8849.08', '645.167', '96.5945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8839.25', '627.384', '94.3459', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8841.55', '615.731', '92.9753', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8867.57', '596.154', '92.8125', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8886.89', '583.863', '93.4386', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8882.18', '574.151', '93.3125', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8863.26', '587.642', '93.107', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8848.56', '601.116', '92.8894', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8834.63', '616.608', '93.5771', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8826.18' AND `position_y` REGEXP '622.109' AND `position_z` REGEXP '94.3733' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8699.84' AND `position_y` REGEXP '400.495' AND `position_z` REGEXP '101.403' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8699.84' AND `position_y` REGEXP '400.495' AND `position_z` REGEXP '101.403' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8699.84', '400.495', '101.403', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8717.94', '405.618', '97.9802', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8726.63', '409.311', '97.8208', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8725.01', '422.017', '98.0254', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8720.86', '438.92', '97.5835', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8714.59', '454.148', '97.3911', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8703.43', '467.049', '96.321', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8694.27', '474.139', '95.5775', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8678.47', '488.859', '97.885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8667.53', '497.276', '100.549', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8659.89', '495.3', '101.132', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8651.6', '485.135', '102.473', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8644.7', '475.655', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8637.25', '466.55', '102.376', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8632.4', '456.715', '102.457', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8633.11', '446.684', '102.582', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8649.33', '424.266', '101.758', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8664.07', '409.922', '103.359', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8678.2', '400.224', '103.246', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8688.3', '395.705', '102.312', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8699.84' AND `position_y` REGEXP '400.495' AND `position_z` REGEXP '101.403' AND `PhaseId` = '169' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 37944;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('37944', '1', '1899', '0', '143', '0', '0', '0', '0', '0', '18019');

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

