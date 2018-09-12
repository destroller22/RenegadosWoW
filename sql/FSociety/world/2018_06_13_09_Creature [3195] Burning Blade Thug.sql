/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Burning Blade Thug';
SET @ENTRY 		:= '3195';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '4188',  '4189',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '8',  '9',  '0',  '0',  '0',  '554',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '3100',  '3100',  '0',  '0',  '1',  '32768',  '2048',  '0',  '12',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '3195',  '3195',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '8',  '8',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3195 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3195', '0', '0', '0', '0', '0', '100', '0', '5000', '5000', '15000', '18000', '', '11', '80146', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Bonk'), 
('3195', '0', '1', '0', '0', '0', '100', '0', '6000', '8000', '60000', '65000', '', '11', '80174', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Felblood'), 
('3195', '0', '2', '0', '0', '0', '100', '0', '2000', '4000', '25000', '26000', '', '11', '80182', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Uppercut'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18999, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '4189', '0', '807.177', '-4752.64', '39.7473', '3.52556', '300', '3', '0', '176', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19000, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '4189', '0', '780.788', '-4768.17', '36.8964', '2.6529', '300', '3', '0', '176', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19026, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '4189', '0', '781.127', '-4746.77', '38.2975', '3.61283', '300', '3', '0', '176', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19050, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4188', '0', '858.273', '-4786.22', '37.4826', '2.50765', '300', '3', '0', '176', '0', '1', '0', '0', '0', '0', '0', '', '0'), 
(19051, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '4188', '0', '827.99', '-4760.1', '38.8289', '3.22767', '300', '3', '0', '176', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '807.177' AND `position_y` REGEXP '-4752.64' AND `position_z` REGEXP '39.7473' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '807.177' AND `position_y` REGEXP '-4752.64' AND `position_z` REGEXP '39.7473' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '780.788' AND `position_y` REGEXP '-4768.17' AND `position_z` REGEXP '36.8964' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '780.788' AND `position_y` REGEXP '-4768.17' AND `position_z` REGEXP '36.8964' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '781.127' AND `position_y` REGEXP '-4746.77' AND `position_z` REGEXP '38.2975' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '781.127' AND `position_y` REGEXP '-4746.77' AND `position_z` REGEXP '38.2975' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '858.273' AND `position_y` REGEXP '-4786.22' AND `position_z` REGEXP '37.4826' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '858.273' AND `position_y` REGEXP '-4786.22' AND `position_z` REGEXP '37.4826' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '827.99' AND `position_y` REGEXP '-4760.1' AND `position_z` REGEXP '38.8289' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '827.99' AND `position_y` REGEXP '-4760.1' AND `position_z` REGEXP '38.8289' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3195;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3195', '117', '0', '8.7872', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '118', '0', '2.4531', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3195', '159', '0', '4.2105', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '727', '727', '0.35', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3195', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('3195', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3195', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3195', '774', '0', '0.8604', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('3195', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('3195', '2075', '2075', '0.14', '0', '1', '0', '1', '1', '') /* Item(2075): Heavy Mace, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3195', '2140', '2140', '0.35', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('3195', '2406', '2406', '0.2289', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3195', '2589', '0', '33.6018', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3195', '3279', '3279', '0.7', '0', '1', '0', '1', '1', '') /* Item(3279): Battle Chain Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3195', '3280', '3280', '0.8', '0', '1', '0', '1', '1', '') /* Item(3280): Battle Chain Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3195', '3281', '3281', '0.4', '0', '1', '0', '1', '1', '') /* Item(3281): Battle Chain Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3195', '3285', '3285', '1', '0', '1', '0', '1', '1', '') /* Item(3285): Tribal Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3195', '4540', '0', '0.0092', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '4663', '4663', '0.7', '0', '1', '0', '1', '1', '') /* Item(4663): Journeyman's Belt, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3195', '4871', '0', '70', '1', '1', '0', '1', '1', '') /* Item(4871): Searing Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3195', '14087', '14087', '0.5', '0', '1', '0', '1', '1', '') /* Item(14087): Beaded Cuffs, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3195', '49535', '0', '0.0029', '1', '1', '0', '1', '1', '') /* Item(49535): Stolen Rifle, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '50222', '0', '0.0382', '1', '1', '0', '1', '1', '') /* Item(50222): Wildmane Cat Pelt, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '52080', '0', '0.0059', '1', '1', '0', '1', '1', '') /* Item(52080): Fresh Crawler Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '52564', '0', '43', '1', '1', '0', '1', '1', '') /* Item(52564): Burning Blade Spellscroll, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '55983', '0', '0.0059', '0', '1', '0', '1', '1', '') /* Item(55983): Inert Elemental Scintilla, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('3195', '56151', '0', '0.0059', '0', '1', '0', '1', '1', '') /* Item(56151): Broken Hoof Piece, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('3195', '60615', '0', '0.0029', '1', '1', '0', '1', '1', '') /* Item(60615): Durotar Crocolisk Tooth, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3195', '62514', '0', '0.0294', '0', '1', '0', '1', '1', '') /* Item(62514): Cracked Pincer, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('3195', '67229', '0', '0.0029', '0', '1', '0', '1', '1', '') /* Item(67229): Stag Flank, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '4540', '0', '8.3333', '0', '1', '0', '1', '1', '')  /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5367', '0', '8.3333', '0', '1', '0', '1', '1', '')  /* Item(5367): Primitive Rock Tool, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
2075  2  GREEN_UNCOMMON    0g 3s 86c  12  7  Heavy Mace
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
3279  1  WAIHT_COMMON      0g 1s 22c  12  7  Battle Chain Boots
3280  1  WAIHT_COMMON      0g 0s 38c  9  4  Battle Chain Bracers
3281  1  WAIHT_COMMON      0g 0s 66c  11  6  Battle Chain Gloves
3285  1  WAIHT_COMMON      0g 0s 51c  10  5  Tribal Bracers
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4663  1  WAIHT_COMMON      0g 0s 41c  9  4  Journeyman's Belt
4871  1  WAIHT_COMMON      1  0  Searing Collar
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
14087  1  WAIHT_COMMON      0g 0s 29c  8  3  Beaded Cuffs
49535  1  WAIHT_COMMON      1  1  Stolen Rifle
50222  1  WAIHT_COMMON      1  0  Wildmane Cat Pelt
52080  1  WAIHT_COMMON      1  0  Fresh Crawler Meat
52564  1  WAIHT_COMMON      1  1  Burning Blade Spellscroll
55983  0  GREY_POOR         0g 0s 7c  1  0  Inert Elemental Scintilla
56151  0  GREY_POOR         0g 0s 16c  1  0  Broken Hoof Piece
60615  1  WAIHT_COMMON      1  1  Durotar Crocolisk Tooth
62514  0  GREY_POOR         0g 0s 1c  1  0  Cracked Pincer
67229  1  WAIHT_COMMON      0g 0s 15c  11  0  Stag Flank
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3195;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('3195', '1', '2695', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3195;

