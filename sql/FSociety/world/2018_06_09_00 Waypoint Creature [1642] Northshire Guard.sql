/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Northshire Guard';
SET @ENTRY 		:= '1642';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3167',  '3257',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '5',  '-1',  '0',  '0',  '11',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '15',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', '18950'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1642 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1642', '0', '0', '0', '0', '0', '100', '0', '0', '0', '2300', '3900', '', '11', '95826', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Northshire Guard - In Combat - Cast \'Shoot\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(177733, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '1', '-9020.05', '3.06044', '88.7444', '1.56489', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(177734, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '1', '-9047.58', '-101.24', '88.3071', '1.98968', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177735, @ENTRY, '0', '12', '12', '1', '0', '0', '0', '-1', '0', '1', '-9034.7', '7.06125', '88.0874', '5.06145', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177736, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '1', '-9051.29', '-86.4453', '88.1007', '1.50867', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(177737, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '1', '-9060.47', '-39.1945', '88.3069', '4.71239', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(177738, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '1', '-9061.28', '-46.7949', '88.9064', '1.5708', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9020.05' AND `position_y` REGEXP '3.06044' AND `position_z` REGEXP '88.7444' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9020.05' AND `position_y` REGEXP '3.06044' AND `position_z` REGEXP '88.7444' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9020.05', '3.06044', '88.7444', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9011.91', '-14.6955', '88.5538', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9010.09', '-43.5972', '87.7658', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9007.95', '-67.3993', '87.1092', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9007.35', '-70.337', '86.9608', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9008.72', '-63.4717', '87.1712', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9009.35', '-39.1975', '87.9846', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9009.51', '-31.4374', '88.4366', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9023.48', '3.32865', '88.5879', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9024.75', '4.29737', '88.6268', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9041.18', '-21.4523', '88.545', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9043.26', '-34.891', '88.3575', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9043.86', '-30.389', '88.3358', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9043.57', '-30.134', '88.5772', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9007.96', '-67.4795', '87.1114', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9007.36', '-70.4705', '86.9617', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9008.72', '-63.4717', '87.1712', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9009.35', '-39.2099', '87.9843', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9009.51', '-31.4325', '88.4368', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9023.47', '3.55137', '88.5874', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9024.74', '4.29042', '88.6273', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9035.12', '2.4027', '88.5669', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9039.96', '-7.5952', '88.5514', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-9041.18', '-21.636', '88.545', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9043.27', '-34.9095', '88.3575', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9043.86', '-30.389', '88.3358', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9043.57', '-30.1415', '88.5773', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9040.07', '-11.1329', '88.3622', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9020.05' AND `position_y` REGEXP '3.06044' AND `position_z` REGEXP '88.7444' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9047.58' AND `position_y` REGEXP '-101.24' AND `position_z` REGEXP '88.3071' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9047.58' AND `position_y` REGEXP '-101.24' AND `position_z` REGEXP '88.3071' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9034.7' AND `position_y` REGEXP '7.06125' AND `position_z` REGEXP '88.0874' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9034.7' AND `position_y` REGEXP '7.06125' AND `position_z` REGEXP '88.0874' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9051.29' AND `position_y` REGEXP '-86.4453' AND `position_z` REGEXP '88.1007' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9051.29' AND `position_y` REGEXP '-86.4453' AND `position_z` REGEXP '88.1007' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9051.29', '-86.4453', '88.1007', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9047.26', '-96.0121', '88.2242', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9037.19', '-101.449', '88.1318', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9016.59', '-93.0607', '87.0423', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9013.71', '-90.6391', '86.6923', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9021.59', '-96.3924', '86.9877', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9031.63', '-100.313', '87.8569', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9035.83', '-101.892', '87.9373', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9046.91', '-96.5212', '88.2585', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9051.93', '-86.2443', '88.0882', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9047.58', '-67.4796', '88.2371', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9046.43', '-51.013', '88.619', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9047.81', '-66.2465', '88.17', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9047.79', '-66.2009', '88.3699', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-9051.29', '-86.4539', '88.1006', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-9047.26', '-96.0084', '88.2241', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-9037.17', '-101.457', '88.1313', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-9016.65', '-93.0705', '87.0445', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-9013.56', '-90.7257', '86.7022', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-9021.59', '-96.3924', '86.9877', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-9031.64', '-100.327', '87.8573', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-9035.83', '-101.893', '87.9373', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-9047.58', '-67.488', '88.237', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-9046.43', '-51.0392', '88.6188', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-9047.81', '-66.2465', '88.17', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-9047.79', '-66.1748', '88.3702', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-9051.29', '-86.4516', '88.1006', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-9047.26', '-96.0108', '88.2242', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-9037.19', '-101.448', '88.1318', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-9016.66', '-93.0713', '87.0447', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-9013.59', '-90.746', '86.7045', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-9021.59', '-96.3924', '86.9877', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-9031.62', '-100.3', '87.8566', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-9035.89', '-101.917', '87.9385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-9046.97', '-96.4933', '88.2604', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-9051.95', '-86.1955', '88.0873', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-9047.55', '-67.5798', '88.2389', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9051.29' AND `position_y` REGEXP '-86.4453' AND `position_z` REGEXP '88.1007' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9060.47' AND `position_y` REGEXP '-39.1945' AND `position_z` REGEXP '88.3069' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9060.47' AND `position_y` REGEXP '-39.1945' AND `position_z` REGEXP '88.3069' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9061.28' AND `position_y` REGEXP '-46.7949' AND `position_z` REGEXP '88.9064' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9061.28' AND `position_y` REGEXP '-46.7949' AND `position_z` REGEXP '88.9064' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1642;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1642', '1', '1899', '0', '143', '0', '0', '2551', '0', '0', '18019');

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

