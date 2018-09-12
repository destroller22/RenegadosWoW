/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 18/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Helix Gearbreaker';
SET @ENTRY 		:= '47296';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '33002',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '16',  '16',  '0',  '0',  '0',  '17',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '500',  '500',  '0',  '0',  '1',  '32832',  '2048',  '0',  '12',  '0',  '0',  '0',  '0',  '7',  '104',  '0',  '47296',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '88352',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '13404',  '13404',  '',  '0',  '3',  '1',  '10',  '1',  '1',  '1',  '1',  '57.5',  '1',  '0',  '0',  '1',  '617299967',  '1',  'boss_helix_gearbreaker',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', '90546'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 47296 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1353, @ENTRY, '36', '1581', '1581', '6', '0', '0', '0', '-1', '33002', '0', '-303.025', '-516.463', '55.8199', '0.174533', '86400', '0', '0', '3560', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-303.025' AND `position_y` REGEXP '-516.463' AND `position_z` REGEXP '55.8199' AND `PhaseId` = '0' AND `map` = '36');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '90546'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-303.025' AND `position_y` REGEXP '-516.463' AND `position_z` REGEXP '55.8199' AND `PhaseId` = '0' AND `map` = '36');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 47296;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('47296', '5191', '0', '0', '0', '1', '1', '1', '1', '') /* Item(5191): Cruel Barb, ItemLevel: 20, RequiredLevel: 20, ItemQuality: BLUE_RARE        */, 
('47296', '5199', '0', '0', '0', '1', '1', '1', '1', '') /* Item(5199): Smelting Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: BLUE_RARE        */, 
('47296', '5200', '0', '0', '0', '1', '1', '1', '1', '') /* Item(5200): Impaling Harpoon, ItemLevel: 20, RequiredLevel: 20, ItemQuality: BLUE_RARE        */, 
('47296', '5443', '0', '0', '0', '1', '1', '1', '1', '') /* Item(5443): Gold-Plated Buckler, ItemLevel: 20, RequiredLevel: 20, ItemQuality: BLUE_RARE        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
5191  3  BLUE_RARE         0g 17s 55c  20  15  Cruel Barb
5199  3  BLUE_RARE         0g 11s 76c  20  15  Smelting Pants
5200  3  BLUE_RARE         0g 21s 8c  20  15  Impaling Harpoon
5443  3  BLUE_RARE         0g 10s 67c  20  15  Gold-Plated Buckler
*/
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 47296;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 47296;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('47296', '15', '60', '1', '1', '26365');



