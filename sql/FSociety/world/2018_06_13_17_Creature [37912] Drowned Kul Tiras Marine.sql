/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Drowned Kul Tiras Marine';
SET @ENTRY 		:= '37912';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1860',  '1862',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '6',  '0',  '0',  '0',  '35',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '570720256',  '2049',  '0',  '32',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 37912 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18503, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-222.071', '-5214.93', '0.835913', '2.79253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18504, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-211.918', '-5206.32', '0.0450613', '2.14675', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18505, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-86.5642', '-5088.4', '14.0496', '3.45575', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18502, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-93.0139', '-5123.85', '9.77951', '1.97222', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18507, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-74.9028', '-5217.39', '-4.27265', '1.46608', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18508, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-137.257', '-5208.05', '-0.823854', '4.18879', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18509, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-45.6267', '-5211.76', '-7.07727', '0.436332', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18510, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-53.7969', '-5155.69', '2.10766', '2.79253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18511, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-29.2326', '-5050.22', '9.16944', '2.37365', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18512, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-36.2309', '-5189.42', '-2.53246', '0.436332', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18513, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-25.5885', '-5088.11', '5.74402', '2.79253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18514, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '5.36285', '-5131.03', '0.00793534', '0.872665', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18515, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '11.8333', '-5102.79', '2.8559', '2.79253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18516, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '79.9896', '-5147.87', '1.04547', '1.51844', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18501, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '169.964', '-5170.6', '-3.08987', '5.14872', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-222.071' AND `position_y` REGEXP '-5214.93' AND `position_z` REGEXP '0.835913' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-222.071' AND `position_y` REGEXP '-5214.93' AND `position_z` REGEXP '0.835913' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-211.918' AND `position_y` REGEXP '-5206.32' AND `position_z` REGEXP '0.0450613' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-211.918' AND `position_y` REGEXP '-5206.32' AND `position_z` REGEXP '0.0450613' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-86.5642' AND `position_y` REGEXP '-5088.4' AND `position_z` REGEXP '14.0496' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-86.5642' AND `position_y` REGEXP '-5088.4' AND `position_z` REGEXP '14.0496' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-93.0139' AND `position_y` REGEXP '-5123.85' AND `position_z` REGEXP '9.77951' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-93.0139' AND `position_y` REGEXP '-5123.85' AND `position_z` REGEXP '9.77951' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-74.9028' AND `position_y` REGEXP '-5217.39' AND `position_z` REGEXP '-4.27265' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-74.9028' AND `position_y` REGEXP '-5217.39' AND `position_z` REGEXP '-4.27265' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-137.257' AND `position_y` REGEXP '-5208.05' AND `position_z` REGEXP '-0.823854' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-137.257' AND `position_y` REGEXP '-5208.05' AND `position_z` REGEXP '-0.823854' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-45.6267' AND `position_y` REGEXP '-5211.76' AND `position_z` REGEXP '-7.07727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-45.6267' AND `position_y` REGEXP '-5211.76' AND `position_z` REGEXP '-7.07727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-53.7969' AND `position_y` REGEXP '-5155.69' AND `position_z` REGEXP '2.10766' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-53.7969' AND `position_y` REGEXP '-5155.69' AND `position_z` REGEXP '2.10766' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-29.2326' AND `position_y` REGEXP '-5050.22' AND `position_z` REGEXP '9.16944' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-29.2326' AND `position_y` REGEXP '-5050.22' AND `position_z` REGEXP '9.16944' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-36.2309' AND `position_y` REGEXP '-5189.42' AND `position_z` REGEXP '-2.53246' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-36.2309' AND `position_y` REGEXP '-5189.42' AND `position_z` REGEXP '-2.53246' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-25.5885' AND `position_y` REGEXP '-5088.11' AND `position_z` REGEXP '5.74402' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-25.5885' AND `position_y` REGEXP '-5088.11' AND `position_z` REGEXP '5.74402' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '5.36285' AND `position_y` REGEXP '-5131.03' AND `position_z` REGEXP '0.00793534' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '5.36285' AND `position_y` REGEXP '-5131.03' AND `position_z` REGEXP '0.00793534' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '11.8333' AND `position_y` REGEXP '-5102.79' AND `position_z` REGEXP '2.8559' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '11.8333' AND `position_y` REGEXP '-5102.79' AND `position_z` REGEXP '2.8559' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '79.9896' AND `position_y` REGEXP '-5147.87' AND `position_z` REGEXP '1.04547' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '79.9896' AND `position_y` REGEXP '-5147.87' AND `position_z` REGEXP '1.04547' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '169.964' AND `position_y` REGEXP '-5170.6' AND `position_z` REGEXP '-3.08987' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '169.964' AND `position_y` REGEXP '-5170.6' AND `position_z` REGEXP '-3.08987' AND `PhaseId` = '0' AND `map` = '1');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 37912;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('37912', '1', '1897', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 37912;

