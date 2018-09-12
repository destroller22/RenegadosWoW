/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 3/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Tushui Monk';
SET @ENTRY 		:= '65468';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '55019',  '0',  '44069',  '44070',  '44071',  '44072',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '5',  '4',  '0',  '0',  '2263',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '109308',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  'npc_tushui_monk_on_pole',  '0');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 65468 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(21000859, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '902.495', '3179.36', '108.355', '5.21853', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000832, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '919.953', '3205.84', '108.355', '0.0698132', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000780, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '895.915', '3245.04', '115.898', '2.96706', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000766, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '924.604', '3252.7', '115.898', '3.66519', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000764, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '904.156', '3264.56', '115.898', '0.314159', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000754, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '917.606', '3268.73', '115.898', '3.26377', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000745, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '916.924', '3292.9', '116.366', '0.0763623', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000740, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '910.7', '3314.94', '116.605', '4.86313', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000689, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '915.382', '3370.43', '116.605', '2.705', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000658, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '953.771', '3310.21', '116.605', '2.83129', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000642, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '963.062', '3354.55', '116.605', '2.28661', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000637, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '970.226', '3330.39', '116.687', '5.90745', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000575, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '996.877', '3305.76', '116.605', '0.0828024', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(21000569, @ENTRY, '860', '5736', '5826', '1', '0', '0', '0', '-1', '0', '0', '977.889', '3291.9', '116.874', '0.163576', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '902.495' AND `position_y` REGEXP '3179.36' AND `position_z` REGEXP '108.355' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '902.495' AND `position_y` REGEXP '3179.36' AND `position_z` REGEXP '108.355' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '919.953' AND `position_y` REGEXP '3205.84' AND `position_z` REGEXP '108.355' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '919.953' AND `position_y` REGEXP '3205.84' AND `position_z` REGEXP '108.355' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '895.915' AND `position_y` REGEXP '3245.04' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '895.915' AND `position_y` REGEXP '3245.04' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '924.604' AND `position_y` REGEXP '3252.7' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '924.604' AND `position_y` REGEXP '3252.7' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '904.156' AND `position_y` REGEXP '3264.56' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '904.156' AND `position_y` REGEXP '3264.56' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '917.606' AND `position_y` REGEXP '3268.73' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '917.606' AND `position_y` REGEXP '3268.73' AND `position_z` REGEXP '115.898' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '916.924' AND `position_y` REGEXP '3292.9' AND `position_z` REGEXP '116.366' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '916.924' AND `position_y` REGEXP '3292.9' AND `position_z` REGEXP '116.366' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '910.7' AND `position_y` REGEXP '3314.94' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '910.7' AND `position_y` REGEXP '3314.94' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '915.382' AND `position_y` REGEXP '3370.43' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '915.382' AND `position_y` REGEXP '3370.43' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '953.771' AND `position_y` REGEXP '3310.21' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '953.771' AND `position_y` REGEXP '3310.21' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '963.062' AND `position_y` REGEXP '3354.55' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '963.062' AND `position_y` REGEXP '3354.55' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '970.226' AND `position_y` REGEXP '3330.39' AND `position_z` REGEXP '116.687' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '970.226' AND `position_y` REGEXP '3330.39' AND `position_z` REGEXP '116.687' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '996.877' AND `position_y` REGEXP '3305.76' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '996.877' AND `position_y` REGEXP '3305.76' AND `position_z` REGEXP '116.605' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '977.889' AND `position_y` REGEXP '3291.9' AND `position_z` REGEXP '116.874' AND `PhaseId` = '0' AND `map` = '860');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '977.889' AND `position_y` REGEXP '3291.9' AND `position_z` REGEXP '116.874' AND `PhaseId` = '0' AND `map` = '860');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 65468;
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

