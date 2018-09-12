/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 9/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Erich Lohan';
SET @ENTRY 		:= '3627';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1694',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '5',  '0',  '0',  '0',  '12',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '2',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'Magical studies stressing your brain? Relax at the Blue Recluse!', '12', '7', '100', '0', '0', '0', '1197', '0', 'Erich Lohan'), 
(@ENTRY, '0', '1', 'Best drinks in Stormwind!', '12', '7', '100', '0', '0', '0', '1195', '0', 'Erich Lohan'), 
(@ENTRY, '0', '2', 'Come for the beer, stay for the atmosphere!', '12', '7', '100', '0', '0', '0', '1196', '0', 'Erich Lohan'), 
(@ENTRY, '0', '3', 'The only place in Stormwind where magic and spirits mix, come to the Blue Recluse!', '12', '7', '100', '0', '0', '0', '1198', '0', 'Erich Lohan'), 
(@ENTRY, '0', '4', 'Free drinks at the Blue Recluse!', '12', '7', '100', '0', '0', '0', '1193', '0', 'Erich Lohan'), 
(@ENTRY, '0', '5', 'Feeling blue? Come on down to the Blue Recluse for a good time!', '12', '7', '100', '0', '0', '0', '1199', '0', 'Erich Lohan'), 
(@ENTRY, '0', '6', 'Head on over to the Blue Recluse. Where everybody knows your name!', '12', '7', '100', '0', '0', '0', '1194', '0', 'Erich Lohan'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3627 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3627', '0', '0', '0', '1', '0', '100', '0', '10000', '15000', '10000', '15000', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Erich Lohan - Out of Combat - Say Line 0'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984496, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '0', '-8946.34', '955.156', '117.303', '4.25311', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8946.34' AND `position_y` REGEXP '955.156' AND `position_z` REGEXP '117.303' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8946.34' AND `position_y` REGEXP '955.156' AND `position_z` REGEXP '117.303' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8946.34', '955.156', '117.303', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8931.82', '949.712', '117.334', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8920.72', '949.932', '117.41', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8913.2', '939.514', '117.144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8901.96', '921.168', '113.794', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8890.08', '901.207', '107.318', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8888.37', '891.648', '103.944', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8892.75', '874.561', '99.4078', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8899.43', '861.026', '96.3471', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8907.07', '849.471', '96.4374', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8915.04', '852.247', '96.8521', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8926.08', '858.524', '99.4964', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8938.8', '860.787', '102.86', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8953.07', '862.751', '105.089', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8966.06', '861.092', '106.18', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8975.82', '856.072', '105.993', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8981.12', '845.075', '105.744', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8989.81', '836.377', '105.879', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8996.65', '835.302', '105.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9003.76', '831.366', '106.008', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9009.39', '825.172', '105.483', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9016.1', '823.658', '105.457', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9024.59', '832.59', '105.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-9029.76', '838.67', '107.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9035.24', '850.519', '107.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9035.67', '862.028', '107.294', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9034.72', '850.753', '107.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9029.3', '839.135', '107.19', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-9024.16', '832.837', '105.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-9015.76', '824.061', '105.466', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-9009.5', '825.49', '105.509', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-9004.04', '831.708', '106.026', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8996.78', '835.625', '105.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8989.51', '837.212', '105.874', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8981.63', '844.155', '105.696', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8975.93', '855.598', '105.955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8966.67', '860.416', '106.187', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8953.06', '862.613', '105.071', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8938.81', '860.599', '102.839', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8926.22', '857.832', '99.4457', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8915.43', '851.781', '96.8423', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8907.62', '843.404', '95.9022', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8899.59', '830.214', '93.3722', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8898.68', '814.703', '89.5586', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8900.7', '798.953', '87.6264', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8910.1', '791.141', '87.5646', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8919.98', '783.404', '87.4396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8926.74', '775.866', '87.7315', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8938.85', '771.217', '89.6567', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8955.76', '770.68', '93.1899', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-8967.86', '773.323', '95.5025', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8974.04', '779.862', '96.9222', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8984.65', '788.981', '99.7972', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8988.55', '796.936', '102.055', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8991.43', '807.837', '103.761', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8994.06', '821.083', '104.626', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8993.15', '830.415', '105.508', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-8987.82', '839.111', '105.848', '0', '0', '0', '0', '100', '0'), 
(@GUID, '59', '-8981.39', '845.755', '105.769', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-8975.97', '856.024', '105.979', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-8975.45', '869.411', '106.773', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-8976.62', '878.186', '106.615', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-8984.57', '888.146', '105.816', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-8995', '896.654', '105.865', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-9004.23', '902.503', '106.295', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-9013.13', '918.07', '107.052', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-9013.9', '933.969', '108.432', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-9008.54', '946.627', '109.502', '0', '0', '0', '0', '100', '0'), 
(@GUID, '69', '-9005.53', '954.108', '110.457', '0', '0', '0', '0', '100', '0'), 
(@GUID, '70', '-8996.82', '958.717', '113.094', '0', '0', '0', '0', '100', '0'), 
(@GUID, '71', '-8984.31', '960.562', '115.987', '0', '0', '0', '0', '100', '0'), 
(@GUID, '72', '-8974.76', '959.021', '117.133', '0', '0', '0', '0', '100', '0'), 
(@GUID, '73', '-8959.59', '956.266', '117.742', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8946.34' AND `position_y` REGEXP '955.156' AND `position_z` REGEXP '117.303' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3627;
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

