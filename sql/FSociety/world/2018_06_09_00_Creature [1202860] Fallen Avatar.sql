/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 5/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Fallen Avatar Promo';
SET @ENTRY 		:= '1202860';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '75723',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '1',  '1',  '1.14286',  '0.12',  '0',  '0',  '0',  '0',  '0',  '0',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '0',  '0',  '0',  'npc_promotion_blue_equip',  '0');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1202860 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(2101165293, @ENTRY, '0', '6170', '9', '1', '0', '0', '0', '-1', '0', '0', '-8930.3', '-134.983', '82.0608', '0.7791', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165294, @ENTRY, '0', '6176', '132', '1', '0', '0', '0', '-1', '0', '0', '-6213.21', '333.645', '383.736', '3.25155', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165295, @ENTRY, '1', '6450', '188', '1', '0', '0', '0', '-1', '0', '0', '10338.9', '833.482', '1326.06', '2.25313', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165296, @ENTRY, '0', '1', '1', '1', '0', '0', '0', '-1', '0', '0', '-4989.33', '870.325', '274.31', '6.19374', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165297, @ENTRY, '530', '6456', '3526', '1', '0', '0', '0', '-1', '0', '0', '-3966.42', '-13918.2', '100.139', '4.90874', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165298, @ENTRY, '609', '4298', '4356', '1', '0', '0', '0', '-1', '0', '0', '2372.87', '-5673.76', '426.097', '2.83137', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165299, @ENTRY, '654', '4755', '4756', '1', '0', '0', '0', '-1', '0', '0', '-1455.27', '1416.05', '35.5561', '6.28318', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165300, @ENTRY, '1', '6451', '363', '1', '0', '0', '0', '-1', '0', '0', '-606.693', '-4246.73', '38.9563', '3.67174', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165301, @ENTRY, '0', '6454', '5692', '1', '0', '0', '0', '-1', '0', '0', '1692.75', '1711.86', '138.214', '5.47744', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165302, @ENTRY, '1', '6452', '221', '1', '0', '0', '0', '-1', '0', '0', '-2927.97', '-246.204', '59.9134', '5.15614', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165305, @ENTRY, '1', '6453', '5691', '1', '0', '0', '0', '-1', '0', '0', '-1156.88', '-5270.69', '0.847067', '2.54576', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(2101165210, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '0', '-8845.48', '624.83', '94.3128', '0.347233', '300', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8930.3' AND `position_y` REGEXP '-134.983' AND `position_z` REGEXP '82.0608' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8930.3' AND `position_y` REGEXP '-134.983' AND `position_z` REGEXP '82.0608' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-6213.21' AND `position_y` REGEXP '333.645' AND `position_z` REGEXP '383.736' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-6213.21' AND `position_y` REGEXP '333.645' AND `position_z` REGEXP '383.736' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '10338.9' AND `position_y` REGEXP '833.482' AND `position_z` REGEXP '1326.06' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '10338.9' AND `position_y` REGEXP '833.482' AND `position_z` REGEXP '1326.06' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4989.33' AND `position_y` REGEXP '870.325' AND `position_z` REGEXP '274.31' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-4989.33' AND `position_y` REGEXP '870.325' AND `position_z` REGEXP '274.31' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3966.42' AND `position_y` REGEXP '-13918.2' AND `position_z` REGEXP '100.139' AND `PhaseId` = '0' AND `map` = '530');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-3966.42' AND `position_y` REGEXP '-13918.2' AND `position_z` REGEXP '100.139' AND `PhaseId` = '0' AND `map` = '530');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2372.87' AND `position_y` REGEXP '-5673.76' AND `position_z` REGEXP '426.097' AND `PhaseId` = '0' AND `map` = '609');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2372.87' AND `position_y` REGEXP '-5673.76' AND `position_z` REGEXP '426.097' AND `PhaseId` = '0' AND `map` = '609');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1455.27' AND `position_y` REGEXP '1416.05' AND `position_z` REGEXP '35.5561' AND `PhaseId` = '0' AND `map` = '654');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1455.27' AND `position_y` REGEXP '1416.05' AND `position_z` REGEXP '35.5561' AND `PhaseId` = '0' AND `map` = '654');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-606.693' AND `position_y` REGEXP '-4246.73' AND `position_z` REGEXP '38.9563' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-606.693' AND `position_y` REGEXP '-4246.73' AND `position_z` REGEXP '38.9563' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1692.75' AND `position_y` REGEXP '1711.86' AND `position_z` REGEXP '138.214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1692.75' AND `position_y` REGEXP '1711.86' AND `position_z` REGEXP '138.214' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2927.97' AND `position_y` REGEXP '-246.204' AND `position_z` REGEXP '59.9134' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2927.97' AND `position_y` REGEXP '-246.204' AND `position_z` REGEXP '59.9134' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1156.88' AND `position_y` REGEXP '-5270.69' AND `position_z` REGEXP '0.847067' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1156.88' AND `position_y` REGEXP '-5270.69' AND `position_z` REGEXP '0.847067' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8845.48' AND `position_y` REGEXP '624.83' AND `position_z` REGEXP '94.3128' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8845.48' AND `position_y` REGEXP '624.83' AND `position_z` REGEXP '94.3128' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1202860;
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

