/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Scarlet Neophyte';
SET @ENTRY 		:= '1539';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '2469',  '2480',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '10',  '11',  '0',  '0',  '0',  '67',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '2',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '1539',  '1539',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '12544',  '13322',  '0',  '0',  '0',  '0',  '0',  '0',  '665',  '10',  '18',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', '12', '0', '100', '0', '0', '0', '2628', '0', 'Scarlet1'), 
(@ENTRY, '0', '1', 'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.', '12', '0', '100', '0', '0', '0', '2626', '0', 'Scarlet1'), 
(@ENTRY, '0', '2', 'The Light condemns all who harbor evil. Now you will die!', '12', '0', '100', '0', '0', '0', '2627', '0', 'Scarlet1'), 
(@ENTRY, '0', '3', 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', '12', '0', '100', '0', '0', '0', '2625', '0', 'Scarlet1'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1539 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1539', '0', '0', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet - On Aggro - talk'), 
('1539', '0', '1', '0', '0', '0', '100', '0', '1000', '1000', '10000', '10000', '', '11', '64431', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Scarlet3 - IC - CAST'), 
('1539', '0', '2', '0', '0', '0', '100', '0', '2000', '2000', '30000', '30000', '', '11', '12544', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Scarlet3 - IC - CAST'), 
('1539', '0', '3', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '11', '13322', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Scarlet3 - IC - CAST'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1044, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2977.94', '-537.432', '112.447', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1045, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3021.42', '-541.854', '119.423', '2.86234', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1046, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2858.72', '-512.137', '107.074', '3.52556', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1047, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2821.63', '-479.163', '98.5227', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1048, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2747.28', '-512.097', '103.957', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1049, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2916.13', '-557.312', '108.363', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1050, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2875.97', '-547.045', '109.183', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1051, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2931.26', '-546.493', '109.42', '2.56563', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1052, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2989.39', '-555.075', '114.856', '5.61996', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2977.94' AND `position_y` REGEXP '-537.432' AND `position_z` REGEXP '112.447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2977.94' AND `position_y` REGEXP '-537.432' AND `position_z` REGEXP '112.447' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3021.42' AND `position_y` REGEXP '-541.854' AND `position_z` REGEXP '119.423' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3021.42' AND `position_y` REGEXP '-541.854' AND `position_z` REGEXP '119.423' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2858.72' AND `position_y` REGEXP '-512.137' AND `position_z` REGEXP '107.074' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2858.72' AND `position_y` REGEXP '-512.137' AND `position_z` REGEXP '107.074' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2821.63' AND `position_y` REGEXP '-479.163' AND `position_z` REGEXP '98.5227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2821.63' AND `position_y` REGEXP '-479.163' AND `position_z` REGEXP '98.5227' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2747.28' AND `position_y` REGEXP '-512.097' AND `position_z` REGEXP '103.957' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2747.28' AND `position_y` REGEXP '-512.097' AND `position_z` REGEXP '103.957' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2916.13' AND `position_y` REGEXP '-557.312' AND `position_z` REGEXP '108.363' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2916.13' AND `position_y` REGEXP '-557.312' AND `position_z` REGEXP '108.363' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2875.97' AND `position_y` REGEXP '-547.045' AND `position_z` REGEXP '109.183' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2875.97' AND `position_y` REGEXP '-547.045' AND `position_z` REGEXP '109.183' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2931.26' AND `position_y` REGEXP '-546.493' AND `position_z` REGEXP '109.42' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2931.26' AND `position_y` REGEXP '-546.493' AND `position_z` REGEXP '109.42' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2989.39' AND `position_y` REGEXP '-555.075' AND `position_z` REGEXP '114.856' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2989.39' AND `position_y` REGEXP '-555.075' AND `position_z` REGEXP '114.856' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1539;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1539', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '4536', '0', '3.5714', '0', '1', '0', '1', '1', '')  /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5363', '0', '7.1429', '0', '1', '0', '1', '1', '')  /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
(@ENTRY, '6150', '0', '10.7143', '0', '1', '0', '1', '1', '')  /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
*/
/*
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
5363  0  GREY_POOR         0g 0s 20c  1  0  Folded Handkerchief
6150  0  GREY_POOR         0g 0s 22c  1  0  A Frayed Knot
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1539;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1539', '1', '1908', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1539;

