/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Burning Blade Cultist';
SET @ENTRY 		:= '3199';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '4194',  '4195',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '8',  '9',  '0',  '0',  '0',  '554',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '8',  '32768',  '2048',  '0',  '4',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '3199',  '3199',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '11962',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '8',  '8',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', '%s attempts to run away in fear!', '16', '0', '100', '0', '0', '0', '0', '0', 'combat Flee'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3199 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3199', '0', '0', '0', '0', '0', '100', '0', '0', '0', '3400', '4700', '', '11', '79938', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast bolt'), 
('3199', '0', '1', '2', '2', '0', '100', '1', '0', '15', '0', '0', '', '25', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Flee at 15% HP'), 
('3199', '0', '2', '0', '61', '0', '100', '1', '0', '15', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Say Text at 15% HP'), 
('3199', '0', '3', '0', '1', '0', '100', '1', '3000', '5000', '0', '0', '', '11', '11939', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Summon Imp on Spawn'), 
('3199', '0', '4', '0', '0', '0', '100', '0', '6000', '8000', '60000', '65000', '', '11', '80174', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Felblood'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(19092, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4194', '0', '947.129', '-4722.08', '22.2561', '1.06967', '300', '3', '0', '160', '319', '1', '0', '0', '0', '0', '0', '', '0'), 
(18486, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4195', '0', '912.19', '-4748.17', '19.8627', '3.14391', '300', '3', '0', '160', '319', '1', '0', '0', '0', '0', '0', '', '0'), 
(19094, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4195', '0', '930.918', '-4734.68', '21.4098', '1.36789', '300', '3', '0', '160', '319', '1', '0', '0', '0', '0', '0', '', '0'), 
(18485, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4195', '0', '915.817', '-4712.4', '23.4236', '4.58579', '300', '3', '0', '160', '319', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '947.129' AND `position_y` REGEXP '-4722.08' AND `position_z` REGEXP '22.2561' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '947.129' AND `position_y` REGEXP '-4722.08' AND `position_z` REGEXP '22.2561' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '912.19' AND `position_y` REGEXP '-4748.17' AND `position_z` REGEXP '19.8627' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '912.19' AND `position_y` REGEXP '-4748.17' AND `position_z` REGEXP '19.8627' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '930.918' AND `position_y` REGEXP '-4734.68' AND `position_z` REGEXP '21.4098' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '930.918' AND `position_y` REGEXP '-4734.68' AND `position_z` REGEXP '21.4098' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '915.817' AND `position_y` REGEXP '-4712.4' AND `position_z` REGEXP '23.4236' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '915.817' AND `position_y` REGEXP '-4712.4' AND `position_z` REGEXP '23.4236' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3199;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3199', '117', '0', '8.3939', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '118', '0', '2.6434', '0', '1', '0', '1', '4', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3199', '159', '0', '4.2201', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '727', '727', '0.53', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('3199', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3199', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('3199', '1498', '1498', '15', '0', '1', '0', '1', '1', '') /* Item(1498): Calico Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREY_POOR        */, 
('3199', '2073', '2073', '0.05', '0', '1', '0', '1', '1', '') /* Item(2073): Dwarven Hatchet, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '2075', '2075', '0.45', '0', '1', '0', '1', '1', '') /* Item(2075): Heavy Mace, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '2140', '2140', '0.97', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '2406', '2406', '0.232', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '2409', '2409', '0.0155', '0', '1', '0', '1', '1', '') /* Item(2409): Pattern: Dark Leather Tunic, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '2589', '0', '33.3746', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3199', '2632', '2632', '0.11', '0', '1', '0', '1', '1', '') /* Item(2632): Curved Dagger, ItemLevel: 14, RequiredLevel: 14, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '3279', '3279', '0.7', '0', '1', '0', '1', '1', '') /* Item(3279): Battle Chain Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3199', '3280', '3280', '0.8', '0', '1', '0', '1', '1', '') /* Item(3280): Battle Chain Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3199', '3281', '3281', '0.4', '0', '1', '0', '1', '1', '') /* Item(3281): Battle Chain Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3199', '3283', '3283', '0.31', '0', '1', '0', '1', '1', '') /* Item(3283): Battle Chain Tunic, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('3199', '3285', '3285', '1', '0', '1', '0', '1', '1', '') /* Item(3285): Tribal Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3199', '3304', '3304', '0.6', '0', '1', '0', '1', '1', '') /* Item(3304): Brackwater Gauntlets, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3199', '3312', '3312', '0.6', '0', '1', '0', '1', '1', '') /* Item(3312): Ceremonial Leather Bracers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3199', '4536', '0', '0.0155', '0', '1', '0', '1', '2', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '4540', '0', '0.0155', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '4871', '0', '70', '1', '1', '0', '1', '1', '') /* Item(4871): Searing Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3199', '5574', '5574', '0.3', '0', '1', '0', '1', '1', '') /* Item(5574): White Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('3199', '6652', '0', '100', '1', '1', '0', '1', '1', '') /* Item(6652): Reagent Pouch, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '14087', '14087', '0.5', '0', '1', '0', '1', '1', '') /* Item(14087): Beaded Cuffs, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3199', '52080', '0', '0.0111', '1', '1', '0', '1', '1', '') /* Item(52080): Fresh Crawler Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3199', '52564', '0', '64', '1', '1', '0', '1', '1', '') /* Item(52564): Burning Blade Spellscroll, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '4540', '0', '11.1111', '0', '1', '0', '1', '1', '')  /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5367', '0', '22.2222', '0', '1', '0', '1', '1', '')  /* Item(5367): Primitive Rock Tool, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
1498  0  GREY_POOR         0g 1s 0c  15  10  Calico Gloves
2073  2  GREEN_UNCOMMON    0g 7s 42c  15  10  Dwarven Hatchet
2075  2  GREEN_UNCOMMON    0g 3s 86c  12  7  Heavy Mace
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2409  2  GREEN_UNCOMMON    0g 3s 50c  20  0  Pattern: Dark Leather Tunic
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2632  2  GREEN_UNCOMMON    0g 6s 5c  14  9  Curved Dagger
3279  1  WAIHT_COMMON      0g 1s 22c  12  7  Battle Chain Boots
3280  1  WAIHT_COMMON      0g 0s 38c  9  4  Battle Chain Bracers
3281  1  WAIHT_COMMON      0g 0s 66c  11  6  Battle Chain Gloves
3283  2  GREEN_UNCOMMON    0g 3s 44c  13  8  Battle Chain Tunic
3285  1  WAIHT_COMMON      0g 0s 51c  10  5  Tribal Bracers
3304  1  WAIHT_COMMON      0g 1s 25c  14  9  Brackwater Gauntlets
3312  1  WAIHT_COMMON      0g 0s 99c  13  8  Ceremonial Leather Bracers
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4871  1  WAIHT_COMMON      1  0  Searing Collar
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
5574  1  WAIHT_COMMON      0g 8s 75c  15  0  White Leather Bag
6652  1  WAIHT_COMMON      1  0  Reagent Pouch
14087  1  WAIHT_COMMON      0g 0s 29c  8  3  Beaded Cuffs
52080  1  WAIHT_COMMON      1  0  Fresh Crawler Meat
52564  1  WAIHT_COMMON      1  1  Burning Blade Spellscroll
*/
/*
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
5367  0  GREY_POOR         0g 0s 22c  1  0  Primitive Rock Tool
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3199;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('3199', '1', '1907', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3199;

