/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Burning Blade Neophyte';
SET @ENTRY 		:= '3196';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '4186',  '4187',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '8',  '9',  '0',  '0',  '0',  '554',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '2',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '3196',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '348',  '20798',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '9',  '16',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3196 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3196', '0', '0', '0', '0', '0', '100', '0', '0', '0', '3400', '4700', '', '11', '79932', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Burning Blade Neophyte - In Combat - Cast \'Shadow Bolt\''), 
('3196', '0', '1', '0', '2', '0', '100', '1', '0', '15', '0', '0', '', '25', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Burning Blade Neophyte - Between 0-15% Health - Flee For Assist (No Repeat)'), 
('3196', '0', '2', '0', '1', '0', '100', '0', '500', '1000', '600000', '600000', '', '11', '79954', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Burning Blade Neophyte - Out of Combat - Cast \'Fel Armor\''), 
('3196', '0', '3', '0', '0', '0', '100', '0', '6000', '8000', '60000', '65000', '', '11', '80174', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Burning Blade Neophyte - In Combat - Cast \'Felblood\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18758, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '0', '1', '867.909', '-4753.44', '39.0127', '6.07094', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18498, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '0', '1', '847.622', '-4772.06', '37.8445', '1.46544', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18760, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '0', '1', '860.028', '-4722.42', '32.9926', '5.53185', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18761, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '0', '1', '891.558', '-4706.81', '26.1481', '4.55559', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18762, @ENTRY, '1', '14', '371', '1', '0', '0', '0', '-1', '0', '1', '939.978', '-4706.33', '21.9184', '4.88659', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '867.909' AND `position_y` REGEXP '-4753.44' AND `position_z` REGEXP '39.0127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '867.909' AND `position_y` REGEXP '-4753.44' AND `position_z` REGEXP '39.0127' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '847.622' AND `position_y` REGEXP '-4772.06' AND `position_z` REGEXP '37.8445' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '847.622' AND `position_y` REGEXP '-4772.06' AND `position_z` REGEXP '37.8445' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '860.028' AND `position_y` REGEXP '-4722.42' AND `position_z` REGEXP '32.9926' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '860.028' AND `position_y` REGEXP '-4722.42' AND `position_z` REGEXP '32.9926' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '891.558' AND `position_y` REGEXP '-4706.81' AND `position_z` REGEXP '26.1481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '891.558' AND `position_y` REGEXP '-4706.81' AND `position_z` REGEXP '26.1481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '939.978' AND `position_y` REGEXP '-4706.33' AND `position_z` REGEXP '21.9184' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '939.978' AND `position_y` REGEXP '-4706.33' AND `position_z` REGEXP '21.9184' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3196;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3196', '117', '0', '8.0451', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '118', '0', '2.5342', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3196', '159', '0', '3.2582', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '767', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '768', '0', '0.42', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '774', '0', '1.32', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '818', '0', '0.42', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '1181', '0', '1.3', '0', '1', '0', '1', '1', '') /* Item(1181): Scroll of Versatility, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '1210', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(1210): Shadowgem, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2070', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '2406', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2407', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2447', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2447): Peacebloom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3196', '2553', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2553): Recipe: Elixir of Minor Agility, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2555', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2589', '0', '31.5768', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3196', '2598', '0', '0.26', '0', '1', '0', '1', '1', '') /* Item(2598): Pattern: Red Linen Robe, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '2835', '0', '0.18', '0', '1', '0', '1', '1', '') /* Item(2835): Rough Stone, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3196', '2959', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2959): Journeyman's Boots, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '2964', '0', '5.7', '0', '1', '0', '1', '1', '') /* Item(2964): Burnt Leather Gloves, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '3013', '0', '1.38', '0', '1', '0', '1', '1', '') /* Item(3013): Scroll of Protection, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '3189', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(3189): Wood Chopper, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '3190', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(3190): Beatstick, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '3279', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3279): Battle Chain Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3280', '0', '0.2414', '0', '1', '0', '1', '1', '') /* Item(3280): Battle Chain Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '3281', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(3281): Battle Chain Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '3284', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(3284): Tribal Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3285', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(3285): Tribal Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '3286', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(3286): Tribal Gloves, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3289', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(3289): Ancestral Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '3290', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(3290): Ancestral Gloves, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3303', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(3303): Brackwater Bracers, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3312', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(3312): Ceremonial Leather Bracers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '3609', '0', '0.2', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '3610', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3610): Plans: Gemmed Copper Gauntlets, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '3642', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(3642): Ancestral Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '3644', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(3644): Barbaric Cloth Bracers, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '3649', '0', '0.14', '0', '1', '0', '1', '1', '') /* Item(3649): Tribal Buckler, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '3650', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(3650): Battle Shield, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '4408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4408): Schematic: Mechanical Squirrel Box, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '4536', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '4540', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '4563', '0', '0.4', '0', '1', '0', '1', '1', '') /* Item(4563): Billy Club, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '4604', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4604): Forest Mushroom Cap, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '4665', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4665): Burnt Cloak, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '4668', '0', '0.2011', '0', '1', '0', '1', '1', '') /* Item(4668): Battle Chain Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '4669', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(4669): Battle Chain Girdle, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '4671', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(4671): Ancestral Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '4672', '0', '0.1609', '0', '1', '0', '1', '1', '') /* Item(4672): Ancestral Belt, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '4674', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(4674): Tribal Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '4675', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(4675): Tribal Belt, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '4680', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4680): Brackwater Cloak, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '4686', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(4686): Barbaric Cloth Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '4692', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4692): Ceremonial Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '4871', '0', '80', '1', '1', '0', '1', '1', '') /* Item(4871): Searing Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3196', '6271', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '6342', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6342): Formula: Enchant Chest - Minor Mana, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '6508', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6508): Infantry Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '6514', '0', '5.7', '0', '1', '0', '1', '1', '') /* Item(6514): Disciple's Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '8181', '0', '0.46', '0', '1', '0', '1', '1', '') /* Item(8181): Hunting Rifle, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */, 
('3196', '14086', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(14086): Beaded Sandals, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '14087', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(14087): Beaded Cuffs, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '14088', '0', '0.1609', '0', '1', '0', '1', '1', '') /* Item(14088): Beaded Cloak, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '14089', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(14089): Beaded Gloves, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '14093', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(14093): Beaded Cord, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '14095', '0', '0.1609', '0', '1', '0', '1', '1', '') /* Item(14095): Native Bands, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '14098', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(14098): Native Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '14099', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(14099): Native Sash, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '14102', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(14102): Native Handwraps, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '14110', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(14110): Native Sandals, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '15003', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(15003): Primal Belt, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '15004', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(15004): Primal Boots, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '15005', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(15005): Primal Bands, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '15006', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(15006): Primal Buckler, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '15007', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(15007): Primal Cape, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '15008', '0', '0.1207', '0', '1', '0', '1', '1', '') /* Item(15008): Primal Mitts, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '15015', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(15015): Lupine Cloak, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '15297', '0', '0.0805', '0', '1', '0', '1', '1', '') /* Item(15297): Grizzly Bracers, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '15299', '0', '0.32', '0', '1', '0', '1', '1', '') /* Item(15299): Grizzly Cape, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '15301', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(15301): Grizzly Slippers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '15302', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(15302): Grizzly Belt, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '15472', '0', '0.26', '0', '1', '0', '1', '1', '') /* Item(15472): Charger's Belt, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3196', '15473', '0', '0.18', '0', '1', '0', '1', '1', '') /* Item(15473): Charger's Boots, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '15474', '0', '0.22', '0', '1', '0', '1', '1', '') /* Item(15474): Charger's Bindings, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '15475', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(15475): Charger's Cloak, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '15476', '0', '0.28', '0', '1', '0', '1', '1', '') /* Item(15476): Charger's Handwraps, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '15478', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(15478): Charger's Shield, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3196', '15480', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15480): War Torn Girdle, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '15481', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15481): War Torn Greaves, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3196', '15482', '0', '0.0402', '0', '1', '0', '1', '1', '') /* Item(15482): War Torn Bands, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3196', '15483', '0', '0.1609', '0', '1', '0', '1', '1', '') /* Item(15483): War Torn Cape, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3196', '15484', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(15484): War Torn Handgrips, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3196', '24073', '24073', '5', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('3196', '24074', '24074', '1', '0', '1', '1', '1', '1', '') /* Item(24074): Fel Iron Blood Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '24075', '24075', '1', '0', '1', '1', '1', '1', '') /* Item(24075): Golden Draenite Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '24076', '24076', '1', '0', '1', '1', '1', '1', '') /* Item(24076): Azure Moonstone Ring, ItemLevel: 99, RequiredLevel: 99, ItemQuality: GREEN_UNCOMMON   */, 
('3196', '44007', '44007', '0.5', '0', '1', '0', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */, 
('3196', '52564', '0', '86', '1', '1', '0', '1', '1', '') /* Item(52564): Burning Blade Spellscroll, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
1181  1  WAIHT_COMMON      0g 0s 25c  1  1  Scroll of Versatility
1210  2  GREEN_UNCOMMON    0g 2s 50c  20  0  Shadowgem
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2407  2  GREEN_UNCOMMON    0g 1s 62c  13  0  Pattern: White Leather Jerkin
2408  2  GREEN_UNCOMMON    0g 1s 25c  15  0  Pattern: Fine Leather Gloves
2447  1  WAIHT_COMMON      0g 0s 10c  5  0  Peacebloom
2553  2  GREEN_UNCOMMON    0g 0s 25c  12  0  Recipe: Elixir of Minor Agility
2555  2  GREEN_UNCOMMON    0g 0s 40c  15  0  Recipe: Swiftness Potion
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2598  2  GREEN_UNCOMMON    0g 0s 30c  10  0  Pattern: Red Linen Robe
2835  1  WAIHT_COMMON      0g 0s 2c  5  0  Rough Stone
2959  1  WAIHT_COMMON      0g 0s 57c  9  4  Journeyman's Boots
2964  1  WAIHT_COMMON      0g 0s 51c  10  5  Burnt Leather Gloves
3013  1  WAIHT_COMMON      0g 0s 25c  1  1  Scroll of Protection
3189  1  WAIHT_COMMON      0g 0s 99c  8  3  Wood Chopper
3190  1  WAIHT_COMMON      0g 0s 99c  8  3  Beatstick
3279  1  WAIHT_COMMON      0g 1s 22c  12  7  Battle Chain Boots
3280  1  WAIHT_COMMON      0g 0s 38c  9  4  Battle Chain Bracers
3281  1  WAIHT_COMMON      0g 0s 66c  11  6  Battle Chain Gloves
3284  1  WAIHT_COMMON      0g 1s 24c  12  7  Tribal Boots
3285  1  WAIHT_COMMON      0g 0s 51c  10  5  Tribal Bracers
3286  1  WAIHT_COMMON      0g 0s 84c  12  7  Tribal Gloves
3289  1  WAIHT_COMMON      0g 1s 1c  11  6  Ancestral Boots
3290  1  WAIHT_COMMON      0g 0s 85c  12  7  Ancestral Gloves
3303  1  WAIHT_COMMON      0g 0s 83c  12  7  Brackwater Bracers
3312  1  WAIHT_COMMON      0g 0s 99c  13  8  Ceremonial Leather Bracers
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
3610  2  GREEN_UNCOMMON    0g 0s 50c  15  0  Plans: Gemmed Copper Gauntlets
3642  1  WAIHT_COMMON      0g 0s 39c  9  4  Ancestral Bracers
3644  1  WAIHT_COMMON      0g 0s 83c  12  7  Barbaric Cloth Bracers
3649  1  WAIHT_COMMON      0g 1s 15c  11  6  Tribal Buckler
3650  1  WAIHT_COMMON      0g 0s 68c  9  4  Battle Shield
4408  2  GREEN_UNCOMMON    0g 1s 62c  15  0  Schematic: Mechanical Squirrel Box
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4563  1  WAIHT_COMMON      0g 1s 10c  9  4  Billy Club
4604  1  WAIHT_COMMON      0g 0s 1c  1  1  Forest Mushroom Cap
4665  1  WAIHT_COMMON      0g 0s 39c  8  3  Burnt Cloak
4668  1  WAIHT_COMMON      0g 0s 56c  9  4  Battle Chain Cloak
4669  1  WAIHT_COMMON      0g 0s 49c  10  5  Battle Chain Girdle
4671  1  WAIHT_COMMON      0g 0s 56c  9  4  Ancestral Cloak
4672  1  WAIHT_COMMON      0g 0s 49c  10  5  Ancestral Belt
4674  1  WAIHT_COMMON      0g 0s 57c  9  4  Tribal Cloak
4675  1  WAIHT_COMMON      0g 0s 50c  10  5  Tribal Belt
4680  1  WAIHT_COMMON      0g 1s 59c  13  8  Brackwater Cloak
4686  1  WAIHT_COMMON      0g 1s 17c  12  7  Barbaric Cloth Cloak
4692  1  WAIHT_COMMON      0g 1s 20c  12  7  Ceremonial Cloak
4871  1  WAIHT_COMMON      1  0  Searing Collar
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6342  2  GREEN_UNCOMMON    0g 0s 75c  12  0  Formula: Enchant Chest - Minor Mana
6508  1  WAIHT_COMMON      0g 0s 60c  9  4  Infantry Cloak
6514  1  WAIHT_COMMON      0g 0s 74c  10  5  Disciple's Cloak
8181  1  WAIHT_COMMON      0g 1s 32c  9  4  Hunting Rifle
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
14086  1  WAIHT_COMMON      0g 0s 78c  10  5  Beaded Sandals
14087  1  WAIHT_COMMON      0g 0s 29c  8  3  Beaded Cuffs
14088  1  WAIHT_COMMON      0g 0s 43c  8  3  Beaded Cloak
14089  1  WAIHT_COMMON      0g 0s 53c  10  5  Beaded Gloves
14093  1  WAIHT_COMMON      0g 0s 37c  9  4  Beaded Cord
14095  1  WAIHT_COMMON      0g 0s 64c  11  6  Native Bands
14098  1  WAIHT_COMMON      0g 0s 76c  10  5  Native Cloak
14099  1  WAIHT_COMMON      0g 0s 83c  12  7  Native Sash
14102  1  WAIHT_COMMON      0g 1s 6c  13  8  Native Handwraps
14110  1  WAIHT_COMMON      0g 1s 46c  13  8  Native Sandals
15003  1  WAIHT_COMMON      0g 0s 28c  8  3  Primal Belt
15004  1  WAIHT_COMMON      0g 0s 59c  9  4  Primal Boots
15005  1  WAIHT_COMMON      0g 0s 40c  9  4  Primal Bands
15006  1  WAIHT_COMMON      0g 0s 73c  9  4  Primal Buckler
15007  1  WAIHT_COMMON      0g 0s 42c  8  3  Primal Cape
15008  1  WAIHT_COMMON      0g 0s 52c  10  5  Primal Mitts
15015  1  WAIHT_COMMON      0g 1s 51c  13  8  Lupine Cloak
15297  1  WAIHT_COMMON      0g 0s 64c  11  6  Grizzly Bracers
15299  1  WAIHT_COMMON      0g 0s 74c  10  5  Grizzly Cape
15301  1  WAIHT_COMMON      0g 1s 51c  13  8  Grizzly Slippers
15302  1  WAIHT_COMMON      0g 0s 67c  11  6  Grizzly Belt
15472  1  WAIHT_COMMON      0g 0s 39c  9  4  Charger's Belt
15473  1  WAIHT_COMMON      0g 0s 76c  10  5  Charger's Boots
15474  1  WAIHT_COMMON      0g 0s 28c  8  3  Charger's Bindings
15475  1  WAIHT_COMMON      0g 0s 42c  8  3  Charger's Cloak
15476  1  WAIHT_COMMON      0g 0s 51c  10  5  Charger's Handwraps
15478  1  WAIHT_COMMON      0g 0s 52c  8  3  Charger's Shield
15480  1  WAIHT_COMMON      0g 0s 99c  13  8  War Torn Girdle
15481  1  WAIHT_COMMON      0g 1s 48c  13  8  War Torn Greaves
15482  1  WAIHT_COMMON      0g 0s 63c  11  6  War Torn Bands
15483  1  WAIHT_COMMON      0g 0s 73c  10  5  War Torn Cape
15484  1  WAIHT_COMMON      0g 0s 80c  12  7  War Torn Handgrips
24073  3  BLUE_RARE         1g 90s 84c  85  60  Garrote-String Necklace
24074  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Fel Iron Blood Ring
24075  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Golden Draenite Ring
24076  2  GREEN_UNCOMMON    2g 56s 50c  99  63  Azure Moonstone Ring
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
52564  1  WAIHT_COMMON      1  1  Burning Blade Spellscroll
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3196;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('3196', '1', '2809', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3196;

