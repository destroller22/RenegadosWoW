/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Kobold Geomancer';
SET @ENTRY 		:= '476';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '163',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '7',  '8',  '0',  '0',  '0',  '26',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '8',  '0',  '2048',  '0',  '4',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '476',  '476',  '0',  '0',  '24',  '0',  '0',  '0',  '0',  '12544',  '20793',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '8',  '8',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', '%s attempts to run away in fear!', '16', '0', '100', '0', '0', '0', '0', '0', 'combat Flee'), 
(@ENTRY, '1', '0', 'You no take candle!', '12', '0', '50', '0', '0', '0', '0', '0', 'combat Say'), 
(@ENTRY, '1', '1', 'Yiieeeee! Me run!', '12', '0', '50', '0', '0', '0', '0', '0', 'combat Say'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 476 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('476', '0', '0', '0', '0', '0', '100', '0', '0', '0', '3400', '4700', '', '11', '20793', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Frostbolt'), 
('476', '0', '1', '2', '2', '0', '100', '1', '0', '15', '0', '0', '', '25', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Flee at 15% HP'), 
('476', '0', '2', '0', '61', '0', '100', '1', '0', '15', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Say Text at 15% HP'), 
('476', '0', '3', '0', '1', '0', '100', '0', '500', '1000', '600000', '600000', '', '11', '12544', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Frost Armor on Spawn'), 
('476', '0', '4', '0', '4', '0', '25', '1', '0', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Say on Aggro'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(178168, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9243.44', '-577.769', '66.7337', '6.02662', '300', '0', '0', '126', '289', '0', '0', '0', '0', '0', '0', '', '0'), 
(178384, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9152.69', '-592.453', '58.4866', '3.36905', '300', '3', '0', '126', '289', '1', '0', '0', '0', '0', '0', '', '0'), 
(178389, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9194.4', '-637.063', '64.0953', '6.14017', '300', '3', '0', '126', '289', '1', '0', '0', '0', '0', '0', '', '0'), 
(178495, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9225.46', '-624.453', '61.7223', '3.3688', '300', '3', '0', '126', '289', '1', '0', '0', '0', '0', '0', '', '0'), 
(178693, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9282.76', '-627.69', '65.2177', '4.27951', '300', '0', '0', '126', '289', '0', '0', '0', '0', '0', '0', '', '0'), 
(178758, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9295.43', '-666.443', '64.7327', '2.22702', '300', '3', '0', '126', '289', '1', '0', '0', '0', '0', '0', '', '0'), 
(178760, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '163', '0', '-9135.25', '-590.705', '57.6318', '4.92183', '300', '3', '0', '126', '289', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9243.44' AND `position_y` REGEXP '-577.769' AND `position_z` REGEXP '66.7337' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9243.44' AND `position_y` REGEXP '-577.769' AND `position_z` REGEXP '66.7337' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9152.69' AND `position_y` REGEXP '-592.453' AND `position_z` REGEXP '58.4866' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9152.69' AND `position_y` REGEXP '-592.453' AND `position_z` REGEXP '58.4866' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9194.4' AND `position_y` REGEXP '-637.063' AND `position_z` REGEXP '64.0953' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9194.4' AND `position_y` REGEXP '-637.063' AND `position_z` REGEXP '64.0953' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9225.46' AND `position_y` REGEXP '-624.453' AND `position_z` REGEXP '61.7223' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9225.46' AND `position_y` REGEXP '-624.453' AND `position_z` REGEXP '61.7223' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9282.76' AND `position_y` REGEXP '-627.69' AND `position_z` REGEXP '65.2177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9282.76' AND `position_y` REGEXP '-627.69' AND `position_z` REGEXP '65.2177' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9295.43' AND `position_y` REGEXP '-666.443' AND `position_z` REGEXP '64.7327' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9295.43' AND `position_y` REGEXP '-666.443' AND `position_z` REGEXP '64.7327' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9135.25' AND `position_y` REGEXP '-590.705' AND `position_z` REGEXP '57.6318' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9135.25' AND `position_y` REGEXP '-590.705' AND `position_z` REGEXP '57.6318' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 476;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('476', '118', '0', '2.4406', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('476', '159', '0', '4.3261', '0', '1', '0', '1', '2', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('476', '727', '727', '0.19', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('476', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('476', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('476', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('476', '772', '0', '35', '1', '1', '0', '1', '1', '') /* Item(772): Large Candle, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('476', '773', '0', '35', '1', '1', '0', '1', '1', '') /* Item(773): Gold Dust, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('476', '774', '0', '2.5945', '0', '1', '0', '1', '2', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('476', '778', '0', '3.4081', '0', '1', '0', '1', '1', '') /* Item(778): Kobold Excavation Pick, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('476', '818', '0', '0.7861', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('476', '1399', '0', '22.3175', '0', '1', '0', '1', '3', '') /* Item(1399): Magic Candle, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('476', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('476', '2140', '2140', '0.04', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('476', '2406', '2406', '0.2694', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('476', '2589', '0', '32.7726', '0', '1', '0', '1', '3', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('476', '4536', '0', '8.4872', '0', '1', '0', '1', '3', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('476', '4565', '4565', '0.3', '0', '1', '0', '1', '1', '') /* Item(4565): Simple Dagger, ItemLevel: 6, RequiredLevel: 6, ItemQuality: WAIHT_COMMON     */, 
('476', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('476', '58361', '0', '0.204', '1', '1', '0', '1', '1', '') /* Item(58361): Blackrock Orc Weapon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('476', '60401', '0', '0.048', '1', '1', '0', '1', '1', '') /* Item(60401): Tender Boar Meat, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '117', '0', '4.7619', '0', '1', '0', '1', '1', '')  /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '118', '0', '9.5238', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5364', '0', '4.7619', '0', '1', '0', '1', '1', '')  /* Item(5364): Dry Salt Lick, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
772  1  WAIHT_COMMON      1  0  Large Candle
773  1  WAIHT_COMMON      1  0  Gold Dust
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
778  1  WAIHT_COMMON      0g 0s 55c  7  2  Kobold Excavation Pick
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
1399  1  WAIHT_COMMON      0g 0s 12c  8  1  Magic Candle
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4565  1  WAIHT_COMMON      0g 0s 38c  6  1  Simple Dagger
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
58361  1  WAIHT_COMMON      1  1  Blackrock Orc Weapon
60401  1  WAIHT_COMMON      1  0  Tender Boar Meat
*/
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
5364  0  GREY_POOR         0g 0s 27c  1  0  Dry Salt Lick
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 476;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('476', '1', '1907', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 476;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('476', '4', '20', '0', '1', '25996');



