/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Drowned Thunder Lizard';
SET @ENTRY 		:= '39464';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '2179',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '9',  '10',  '0',  '0',  '0',  '35',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2049',  '0',  '0',  '0',  '0',  '0',  '0',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 39464 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('39464', '0', '0', '0', '0', '0', '100', '0', '4000', '7000', '22000', '25000', '', '11', '73958', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Drowned Thunder Lizard - In Combat - Cast \'Lightning Discharge\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18634, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '758.122', '-4104.22', '-4.78993', '2.04204', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18635, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '818.233', '-4090.59', '-8.59201', '5.93412', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18636, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '814.505', '-4039.33', '-8.04167', '1.58825', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18637, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '821.962', '-4062.08', '-8.82292', '2.44346', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18638, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '760.368', '-4031.88', '2.92882', '5.53269', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18641, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '883.267', '-4025.21', '-12.5521', '2.16421', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18642, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '858.227', '-4051.76', '-5.16146', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18643, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '833.089', '-4023.16', '-4.72569', '3.31613', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18644, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '975.793', '-4054.02', '-12.9677', '0.628318', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18645, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '925.238', '-4023.33', '-13.1996', '5.91667', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18646, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '927.391', '-4052.13', '-13.0347', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18647, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '955.788', '-4105.59', '-11.5178', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18648, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '943.597', '-4142.97', '-9.2934', '6.12611', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18649, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '923.158', '-4164.33', '-6.08507', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18650, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '933.939', '-4264.92', '-6.03819', '1.81514', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18651, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '953.646', '-4212.15', '-8.11703', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18652, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '964.826', '-4179.11', '-8.16493', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18653, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '962.168', '-4271.32', '-8.41319', '0.383972', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18654, @ENTRY, '1', '14', '369', '1', '0', '0', '0', '-1', '0', '0', '708.512', '-4034.9', '6.69097', '1.23918', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '758.122' AND `position_y` REGEXP '-4104.22' AND `position_z` REGEXP '-4.78993' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '758.122' AND `position_y` REGEXP '-4104.22' AND `position_z` REGEXP '-4.78993' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '818.233' AND `position_y` REGEXP '-4090.59' AND `position_z` REGEXP '-8.59201' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '818.233' AND `position_y` REGEXP '-4090.59' AND `position_z` REGEXP '-8.59201' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '814.505' AND `position_y` REGEXP '-4039.33' AND `position_z` REGEXP '-8.04167' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '814.505' AND `position_y` REGEXP '-4039.33' AND `position_z` REGEXP '-8.04167' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '821.962' AND `position_y` REGEXP '-4062.08' AND `position_z` REGEXP '-8.82292' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '821.962' AND `position_y` REGEXP '-4062.08' AND `position_z` REGEXP '-8.82292' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '760.368' AND `position_y` REGEXP '-4031.88' AND `position_z` REGEXP '2.92882' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '760.368' AND `position_y` REGEXP '-4031.88' AND `position_z` REGEXP '2.92882' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '883.267' AND `position_y` REGEXP '-4025.21' AND `position_z` REGEXP '-12.5521' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '883.267' AND `position_y` REGEXP '-4025.21' AND `position_z` REGEXP '-12.5521' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '858.227' AND `position_y` REGEXP '-4051.76' AND `position_z` REGEXP '-5.16146' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '858.227' AND `position_y` REGEXP '-4051.76' AND `position_z` REGEXP '-5.16146' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '833.089' AND `position_y` REGEXP '-4023.16' AND `position_z` REGEXP '-4.72569' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '833.089' AND `position_y` REGEXP '-4023.16' AND `position_z` REGEXP '-4.72569' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '975.793' AND `position_y` REGEXP '-4054.02' AND `position_z` REGEXP '-12.9677' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '975.793' AND `position_y` REGEXP '-4054.02' AND `position_z` REGEXP '-12.9677' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '925.238' AND `position_y` REGEXP '-4023.33' AND `position_z` REGEXP '-13.1996' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '925.238' AND `position_y` REGEXP '-4023.33' AND `position_z` REGEXP '-13.1996' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '927.391' AND `position_y` REGEXP '-4052.13' AND `position_z` REGEXP '-13.0347' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '927.391' AND `position_y` REGEXP '-4052.13' AND `position_z` REGEXP '-13.0347' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '955.788' AND `position_y` REGEXP '-4105.59' AND `position_z` REGEXP '-11.5178' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '955.788' AND `position_y` REGEXP '-4105.59' AND `position_z` REGEXP '-11.5178' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '943.597' AND `position_y` REGEXP '-4142.97' AND `position_z` REGEXP '-9.2934' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '943.597' AND `position_y` REGEXP '-4142.97' AND `position_z` REGEXP '-9.2934' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '923.158' AND `position_y` REGEXP '-4164.33' AND `position_z` REGEXP '-6.08507' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '923.158' AND `position_y` REGEXP '-4164.33' AND `position_z` REGEXP '-6.08507' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '933.939' AND `position_y` REGEXP '-4264.92' AND `position_z` REGEXP '-6.03819' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '933.939' AND `position_y` REGEXP '-4264.92' AND `position_z` REGEXP '-6.03819' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '953.646' AND `position_y` REGEXP '-4212.15' AND `position_z` REGEXP '-8.11703' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '953.646' AND `position_y` REGEXP '-4212.15' AND `position_z` REGEXP '-8.11703' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '964.826' AND `position_y` REGEXP '-4179.11' AND `position_z` REGEXP '-8.16493' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '964.826' AND `position_y` REGEXP '-4179.11' AND `position_z` REGEXP '-8.16493' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '962.168' AND `position_y` REGEXP '-4271.32' AND `position_z` REGEXP '-8.41319' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '962.168' AND `position_y` REGEXP '-4271.32' AND `position_z` REGEXP '-8.41319' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '708.512' AND `position_y` REGEXP '-4034.9' AND `position_z` REGEXP '6.69097' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '708.512' AND `position_y` REGEXP '-4034.9' AND `position_z` REGEXP '6.69097' AND `PhaseId` = '0' AND `map` = '1');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 39464;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 39464;

