/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 11/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Deviate Viper';
SET @ENTRY 		:= '5755';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '4312',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '19',  '19',  '0',  '0',  '0',  '270',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32832',  '2048',  '0',  '0',  '35',  '0',  '0',  '0',  '1',  '73',  '0',  '5755',  '0',  '5755',  '0',  '0',  '0',  '0',  '0',  '0',  '7947',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '1',  '3',  '1',  '5',  '1',  '1',  '1',  '1',  '1.7',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 5755 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('5755', '0', '0', '0', '0', '0', '85', '2', '9000', '13000', '9000', '13000', '', '11', '7947', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Deviate Viper - In Combat - Cast \'Localized Toxin\' (Normal Dungeon)'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(19078, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '19.111', '437.575', '-81.6335', '1.4276', '7200', '5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '', '23420'), 
(19079, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '0.22567', '451.517', '-75.7955', '1.90527', '7200', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23420'), 
(19080, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '5.55962', '453.529', '-77.7103', '6.12057', '7200', '5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '', '23420'), 
(19081, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '-96.4348', '460.222', '-71.0965', '5.08983', '7200', '5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '', '23420'), 
(18488, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '-32.1243', '409.982', '-60.0445', '3.402', '7200', '5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '', '23420'), 
(18487, @ENTRY, '43', '718', '718', '2', '0', '169', '0', '-1', '0', '0', '-9.61068', '497.323', '-55.959', '5.49389', '7200', '5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '', '23420'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '19.111' AND `position_y` REGEXP '437.575' AND `position_z` REGEXP '-81.6335' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '19.111' AND `position_y` REGEXP '437.575' AND `position_z` REGEXP '-81.6335' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '0.22567' AND `position_y` REGEXP '451.517' AND `position_z` REGEXP '-75.7955' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '0.22567' AND `position_y` REGEXP '451.517' AND `position_z` REGEXP '-75.7955' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '0.22567', '451.517', '-75.7955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-1.32136', '440.495', '-72.4094', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '5.96165', '436.001', '-73.31', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '1.58209', '423.403', '-68.0525', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-7.16193', '416.655', '-65.4178', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-16.3681', '409.747', '-60.8307', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-7.16193', '416.655', '-65.4178', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '1.58209', '423.403', '-68.0525', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '5.9266', '435.9', '-73.2573', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-1.32136', '440.495', '-72.4094', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '0.22567', '451.517', '-75.7955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '7.4276', '457.043', '-78.7238', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '12.762', '441.611', '-79.4776', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '20.4272', '431.471', '-81.619', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '27.261', '430.405', '-82.7235', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '32.7651', '442.071', '-84.7334', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '27.2926', '459.188', '-86.4822', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '19.1296', '470.929', '-87.9551', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '27.2926', '459.188', '-86.4822', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '32.7651', '442.071', '-84.7334', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '27.261', '430.405', '-82.7235', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '20.4272', '431.471', '-81.619', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '12.8151', '441.54', '-79.485', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '7.4276', '457.043', '-78.7238', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '0.22567' AND `position_y` REGEXP '451.517' AND `position_z` REGEXP '-75.7955' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '5.55962' AND `position_y` REGEXP '453.529' AND `position_z` REGEXP '-77.7103' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '5.55962' AND `position_y` REGEXP '453.529' AND `position_z` REGEXP '-77.7103' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-96.4348' AND `position_y` REGEXP '460.222' AND `position_z` REGEXP '-71.0965' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-96.4348' AND `position_y` REGEXP '460.222' AND `position_z` REGEXP '-71.0965' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-32.1243' AND `position_y` REGEXP '409.982' AND `position_z` REGEXP '-60.0445' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-32.1243' AND `position_y` REGEXP '409.982' AND `position_z` REGEXP '-60.0445' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9.61068' AND `position_y` REGEXP '497.323' AND `position_z` REGEXP '-55.959' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9.61068' AND `position_y` REGEXP '497.323' AND `position_z` REGEXP '-55.959' AND `PhaseId` = '169' AND `map` = '43');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 5755;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('5755', '414', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(414): Dalaran Sharp, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '765', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(765): Silverleaf, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '785', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(785): Mageroyal, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('5755', '818', '0', '0.54', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '856', '0', '0.0423', '0', '1', '0', '1', '1', '') /* Item(856): Blue Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '858', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(858): Lesser Healing Potion, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('5755', '1179', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(1179): Ice Cold Milk, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '1206', '0', '0.52', '0', '1', '0', '1', '1', '') /* Item(1206): Moss Agate, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '1210', '0', '1.58', '0', '1', '0', '1', '1', '') /* Item(1210): Shadowgem, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '1705', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(1705): Lesser Moonstone, ItemLevel: 30, RequiredLevel: 30, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2287', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2287): Haunch of Meat, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '2406', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2407', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2409', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(2409): Pattern: Dark Leather Tunic, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2449', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2449): Earthroot, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('5755', '2450', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2450): Briarthorn, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2452', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2452): Swiftthistle, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2453', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2453): Bruiseweed, ItemLevel: 20, RequiredLevel: 20, ItemQuality: WAIHT_COMMON     */, 
('5755', '2455', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2455): Minor Mana Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2553', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2553): Recipe: Elixir of Minor Agility, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2555', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2589', '0', '0.0071', '0', '1', '0', '5', '5', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '2592', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2592): Wool Cloth, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2601', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2601): Pattern: Gray Woolen Robe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2657', '0', '0.0282', '0', '1', '0', '1', '1', '') /* Item(2657): Red Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2835', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(2835): Rough Stone, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '2836', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(2836): Coarse Stone, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '2881', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(2881): Plans: Runed Copper Breastplate, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2882', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2882): Plans: Silvered Bronze Shoulders, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '2883', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(2883): Plans: Deadly Bronze Poniard, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '3356', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3356): Kingsblood, ItemLevel: 24, RequiredLevel: 24, ItemQuality: WAIHT_COMMON     */, 
('5755', '3394', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3394): Recipe: Potion of Curing, ItemLevel: 24, RequiredLevel: 24, ItemQuality: WAIHT_COMMON     */, 
('5755', '3610', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(3610): Plans: Gemmed Copper Gauntlets, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4292', '0', '0.1', '0', '1', '0', '1', '1', '') /* Item(4292): Pattern: Green Woolen Bag, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4293', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4293): Pattern: Hillman's Leather Vest, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4294', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4294): Pattern: Hillman's Belt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4345', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4345): Pattern: Red Woolen Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4346', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4346): Pattern: Heavy Woolen Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4347', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4347): Pattern: Reinforced Woolen Shoulders, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4348', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4348): Pattern: Phoenix Gloves, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4349', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4349): Pattern: Phoenix Pants, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4408', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4408): Schematic: Mechanical Squirrel Box, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4409', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(4409): Schematic: Small Seaforium Charge, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4410', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4410): Schematic: Shadow Goggles, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '4537', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4537): Tel'Abim Banana, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '4541', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(4541): Freshly Baked Bread, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '4605', '0', '0.0071', '0', '1', '0', '2', '2', '') /* Item(4605): Red-Speckled Mushroom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('5755', '5503', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(5503): Clam Meat, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('5755', '5573', '0', '0.0212', '0', '1', '0', '1', '1', '') /* Item(5573): Green Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '5574', '0', '0.0282', '0', '1', '0', '1', '1', '') /* Item(5574): White Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('5755', '5578', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(5578): Plans: Silvered Bronze Breastplate, ItemLevel: 26, RequiredLevel: 26, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '5972', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(5972): Pattern: Fine Leather Pants, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6271', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6271): Pattern: Red Linen Vest, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6342', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6342): Formula: Enchant Chest - Minor Mana, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6344', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(6344): Formula: Enchant Bracer - Minor Versatility, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6347', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(6347): Formula: Enchant Bracer - Minor Strength, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6348', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(6348): Formula: Enchant Weapon - Minor Beastslayer, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6375', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6375): Formula: Enchant Bracer - Lesser Versatility, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6390', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6390): Pattern: Stylish Blue Shirt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6391', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(6391): Pattern: Stylish Green Shirt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '6443', '0', '80', '1', '1', '0', '1', '1', '') /* Item(6443): Deviate Hide, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('5755', '6444', '0', '67.0169', '0', '1', '0', '1', '1', '') /* Item(6444): Forked Tongue, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('5755', '6445', '0', '23.3145', '0', '1', '0', '1', '1', '') /* Item(6445): Brittle Molting, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('5755', '6470', '0', '6.5374', '0', '1', '0', '1', '1', '') /* Item(6470): Deviate Scale, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('5755', '6471', '0', '1.6432', '0', '1', '0', '1', '1', '') /* Item(6471): Perfect Deviate Scale, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('5755', '6716', '0', '0.04', '0', '1', '0', '1', '1', '') /* Item(6716): Schematic: EZ-Thro Dynamite, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '7288', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(7288): Pattern: Rugged Leather Pants, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '10316', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(10316): Pattern: Colorful Kilt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '11038', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(11038): Formula: Enchant 2H Weapon - Lesser Versatility, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '11039', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(11039): Formula: Enchant Cloak - Minor Agility, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '11081', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(11081): Formula: Enchant Shield - Lesser Protection, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '14126', '0', '0.0212', '0', '1', '0', '1', '1', '') /* Item(14126): Ritual Amice, ItemLevel: 23, RequiredLevel: 23, ItemQuality: WAIHT_COMMON     */, 
('5755', '14169', '0', '0.0494', '0', '1', '0', '1', '1', '') /* Item(14169): Aboriginal Shoulder Pads, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('5755', '14368', '0', '0.08', '0', '1', '0', '1', '1', '') /* Item(14368): Mystic's Shoulder Pads, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('5755', '14728', '0', '0.0212', '0', '1', '0', '1', '1', '') /* Item(14728): War Paint Shoulder Pads, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('5755', '15019', '0', '0.0705', '0', '1', '0', '1', '1', '') /* Item(15019): Lupine Mantle, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('5755', '15496', '0', '0.0776', '0', '1', '0', '1', '1', '') /* Item(15496): Bloodspattered Shoulder Pads, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('5755', '15505', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15505): Outrunner's Pauldrons, ItemLevel: 23, RequiredLevel: 23, ItemQuality: WAIHT_COMMON     */, 
('5755', '24060', '24060', '1', '0', '1', '1', '1', '1', '') /* Item(24060): Reckless Noble Topaz, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('5755', '24061', '24061', '0.5', '0', '1', '1', '1', '1', '') /* Item(24061): Glinting Nightseye, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('5755', '24062', '24062', '1', '0', '1', '1', '1', '1', '') /* Item(24062): Regal Talasite, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('5755', '24063', '24063', '0.5', '0', '1', '1', '1', '1', '') /* Item(24063): Shifting Sash of Midnight, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('5755', '24064', '24064', '1', '0', '1', '1', '1', '1', '') /* Item(24064): Ironsole Clompers, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('5755', '24065', '24065', '0.05', '0', '1', '1', '1', '1', '') /* Item(24065): Purified Nightseye, ItemLevel: 70, RequiredLevel: 70, ItemQuality: BLUE_RARE        */, 
('5755', '24070', '24070', '5', '0', '1', '1', '1', '1', '') /* Item(24070): THIS ITEM DONT EXIST, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('5755', '24077', '24077', '1', '0', '1', '1', '1', '1', '') /* Item(24077): Thick Adamantite Necklace, ItemLevel: 83, RequiredLevel: 83, ItemQuality: GREEN_UNCOMMON   */, 
('5755', '24078', '24078', '1', '0', '1', '1', '1', '1', '') /* Item(24078): Heavy Adamantite Ring, ItemLevel: 83, RequiredLevel: 83, ItemQuality: GREEN_UNCOMMON   */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '783', '0', '7.1772', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '2318', '0', '50.9615', '0', '1', '1', '1', '2', ''), 
(@ENTRY, '2319', '0', '25.6868', '0', '1', '1', '1', '2', ''), 
(@ENTRY, '4232', '0', '2.7816', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '6470', '0', '9.8901', '0', '1', '1', '1', '1', ''), 
(@ENTRY, '6471', '0', '3.5027', '0', '1', '1', '1', '1', ''); 


/*
414  1  WAIHT_COMMON      0g 0s 6c  5  5  Dalaran Sharp
765  1  WAIHT_COMMON      0g 0s 10c  5  0  Silverleaf
785  1  WAIHT_COMMON      0g 0s 20c  10  0  Mageroyal
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
856  1  WAIHT_COMMON      0g 8s 75c  15  0  Blue Leather Bag
858  1  WAIHT_COMMON      0g 0s 25c  13  3  Lesser Healing Potion
1179  1  WAIHT_COMMON      0g 0s 6c  5  5  Ice Cold Milk
1206  2  GREEN_UNCOMMON    0g 4s 0c  25  0  Moss Agate
1210  2  GREEN_UNCOMMON    0g 2s 50c  20  0  Shadowgem
1705  2  GREEN_UNCOMMON    0g 6s 0c  30  0  Lesser Moonstone
2287  1  WAIHT_COMMON      0g 0s 6c  5  5  Haunch of Meat
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2407  2  GREEN_UNCOMMON    0g 1s 62c  13  0  Pattern: White Leather Jerkin
2408  2  GREEN_UNCOMMON    0g 1s 25c  15  0  Pattern: Fine Leather Gloves
2409  2  GREEN_UNCOMMON    0g 3s 50c  20  0  Pattern: Dark Leather Tunic
2449  1  WAIHT_COMMON      0g 0s 20c  10  0  Earthroot
2450  1  WAIHT_COMMON      0g 0s 25c  15  0  Briarthorn
2452  1  WAIHT_COMMON      0g 0s 15c  15  0  Swiftthistle
2453  1  WAIHT_COMMON      0g 0s 25c  20  0  Bruiseweed
2455  1  WAIHT_COMMON      0g 0s 10c  15  5  Minor Mana Potion
2553  2  GREEN_UNCOMMON    0g 0s 25c  12  0  Recipe: Elixir of Minor Agility
2555  2  GREEN_UNCOMMON    0g 0s 40c  15  0  Recipe: Swiftness Potion
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2592  1  WAIHT_COMMON      0g 0s 33c  15  0  Wool Cloth
2601  2  GREEN_UNCOMMON    0g 1s 0c  21  0  Pattern: Gray Woolen Robe
2657  1  WAIHT_COMMON      0g 8s 75c  15  0  Red Leather Bag
2835  1  WAIHT_COMMON      0g 0s 2c  5  0  Rough Stone
2836  1  WAIHT_COMMON      0g 0s 15c  15  0  Coarse Stone
2881  2  GREEN_UNCOMMON    0g 1s 50c  18  0  Plans: Runed Copper Breastplate
2882  2  GREEN_UNCOMMON    0g 3s 0c  25  0  Plans: Silvered Bronze Shoulders
2883  2  GREEN_UNCOMMON    0g 3s 75c  25  0  Plans: Deadly Bronze Poniard
3356  1  WAIHT_COMMON      0g 0s 30c  24  0  Kingsblood
3394  1  WAIHT_COMMON      0g 2s 50c  24  0  Recipe: Potion of Curing
3610  2  GREEN_UNCOMMON    0g 0s 50c  15  0  Plans: Gemmed Copper Gauntlets
4292  2  GREEN_UNCOMMON    0g 2s 0c  19  0  Pattern: Green Woolen Bag
4293  2  GREEN_UNCOMMON    0g 1s 62c  20  0  Pattern: Hillman's Leather Vest
4294  2  GREEN_UNCOMMON    0g 4s 0c  24  0  Pattern: Hillman's Belt
4345  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Pattern: Red Woolen Boots
4346  2  GREEN_UNCOMMON    0g 1s 0c  20  0  Pattern: Heavy Woolen Cloak
4347  2  GREEN_UNCOMMON    0g 1s 50c  24  0  Pattern: Reinforced Woolen Shoulders
4348  2  GREEN_UNCOMMON    0g 1s 75c  25  0  Pattern: Phoenix Gloves
4349  2  GREEN_UNCOMMON    0g 1s 75c  25  0  Pattern: Phoenix Pants
4408  2  GREEN_UNCOMMON    0g 1s 62c  15  0  Schematic: Mechanical Squirrel Box
4409  2  GREEN_UNCOMMON    0g 2s 0c  20  0  Schematic: Small Seaforium Charge
4410  2  GREEN_UNCOMMON    0g 2s 50c  24  0  Schematic: Shadow Goggles
4537  1  WAIHT_COMMON      0g 0s 6c  5  5  Tel'Abim Banana
4541  1  WAIHT_COMMON      0g 0s 6c  5  5  Freshly Baked Bread
4605  1  WAIHT_COMMON      0g 0s 6c  5  5  Red-Speckled Mushroom
5503  1  WAIHT_COMMON      0g 0s 16c  14  0  Clam Meat
5573  1  WAIHT_COMMON      0g 8s 75c  15  0  Green Leather Bag
5574  1  WAIHT_COMMON      0g 8s 75c  15  0  White Leather Bag
5578  2  GREEN_UNCOMMON    0g 3s 0c  26  0  Plans: Silvered Bronze Breastplate
5972  2  GREEN_UNCOMMON    0g 3s 75c  21  0  Pattern: Fine Leather Pants
6271  2  GREEN_UNCOMMON    0g 0s 50c  12  0  Pattern: Red Linen Vest
6342  2  GREEN_UNCOMMON    0g 0s 75c  12  0  Formula: Enchant Chest - Minor Mana
6344  2  GREEN_UNCOMMON    0g 1s 0c  17  0  Formula: Enchant Bracer - Minor Versatility
6347  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Formula: Enchant Bracer - Minor Strength
6348  2  GREEN_UNCOMMON    0g 1s 25c  20  0  Formula: Enchant Weapon - Minor Beastslayer
6375  2  GREEN_UNCOMMON    0g 2s 50c  24  0  Formula: Enchant Bracer - Lesser Versatility
6390  2  GREEN_UNCOMMON    0g 1s 50c  24  0  Pattern: Stylish Blue Shirt
6391  2  GREEN_UNCOMMON    0g 1s 50c  24  0  Pattern: Stylish Green Shirt
6443  1  WAIHT_COMMON      1  0  Deviate Hide
6444  0  GREY_POOR         0g 2s 28c  1  0  Forked Tongue
6445  0  GREY_POOR         0g 0s 88c  1  0  Brittle Molting
6470  1  WAIHT_COMMON      0g 0s 20c  1  0  Deviate Scale
6471  1  WAIHT_COMMON      0g 5s 0c  1  0  Perfect Deviate Scale
6716  2  GREEN_UNCOMMON    0g 2s 0c  20  0  Schematic: EZ-Thro Dynamite
7288  2  GREEN_UNCOMMON    0g 1s 25c  11  0  Pattern: Rugged Leather Pants
10316  2  GREEN_UNCOMMON    0g 2s 0c  24  0  Pattern: Colorful Kilt
11038  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant 2H Weapon - Lesser Versatility
11039  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant Cloak - Minor Agility
11081  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant Shield - Lesser Protection
14126  1  WAIHT_COMMON      0g 6s 93c  23  18  Ritual Amice
14169  1  WAIHT_COMMON      0g 5s 1c  21  16  Aboriginal Shoulder Pads
14368  1  WAIHT_COMMON      0g 6s 4c  22  17  Mystic's Shoulder Pads
14728  1  WAIHT_COMMON      0g 5s 63c  22  17  War Paint Shoulder Pads
15019  1  WAIHT_COMMON      0g 5s 12c  21  16  Lupine Mantle
15496  1  WAIHT_COMMON      0g 5s 35c  21  16  Bloodspattered Shoulder Pads
15505  1  WAIHT_COMMON      0g 6s 51c  23  18  Outrunner's Pauldrons
24060  3  BLUE_RARE         3g 0s 0c  70  0  Reckless Noble Topaz
24061  3  BLUE_RARE         3g 0s 0c  70  0  Glinting Nightseye
24062  3  BLUE_RARE         3g 0s 0c  70  0  Regal Talasite
24063  3  BLUE_RARE         2g 15s 90c  85  60  Shifting Sash of Midnight
24064  3  BLUE_RARE         3g 22s 59c  85  60  Ironsole Clompers
24065  3  BLUE_RARE         3g 0s 0c  70  0  Purified Nightseye
24077  2  GREEN_UNCOMMON    2g 73s 88c  83  66  Thick Adamantite Necklace
24078  2  GREEN_UNCOMMON    2g 73s 88c  83  66  Heavy Adamantite Ring
*/
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*
783  1  WAIHT_COMMON      0g 0s 50c  10  0  Light Hide
2318  1  WAIHT_COMMON      0g 0s 15c  10  0  Light Leather
2319  1  WAIHT_COMMON      0g 0s 50c  20  0  Medium Leather
4232  1  WAIHT_COMMON      0g 1s 25c  20  0  Medium Hide
6470  1  WAIHT_COMMON      0g 0s 20c  1  0  Deviate Scale
6471  1  WAIHT_COMMON      0g 5s 0c  1  0  Perfect Deviate Scale


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 5755;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 5755;

