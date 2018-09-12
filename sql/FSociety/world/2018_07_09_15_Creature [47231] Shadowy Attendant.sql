/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 18/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Shadowy Attendant';
SET @ENTRY 		:= '47231';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '37297',  '37298',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '19',  '19',  '0',  '0',  '0',  '16',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '2000',  '2000',  '0',  '0',  '8',  '32832',  '2048',  '0',  '12',  '0',  '0',  '0',  '0',  '6',  '72',  '0',  '47231',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '12739',  '91325',  '91324',  '0',  '0',  '0',  '0',  '0',  '0',  '7463',  '7463',  'SmartAI',  '0',  '3',  '1',  '4',  '1',  '3',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '8388624',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 47231 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('47231', '0', '0', '0', '0', '0', '100', '0', '0', '0', '3400', '4700', '', '11', '12739', '64', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast bolt'), 
('47231', '0', '1', '0', '0', '0', '100', '4', '7000', '9000', '22000', '25000', '', '11', '91325', '1', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', 'Cast Shadow Vortex'), 
('47231', '0', '2', '0', '0', '0', '100', '4', '6000', '12000', '20000', '27000', '', '11', '91324', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Shadowy Touch'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1390, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37298', '0', '-232.012', '2293.16', '95.9498', '1.09956', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'), 
(1391, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37297', '0', '-252.372', '2321.25', '96.9055', '4.18879', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'), 
(1392, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37298', '0', '-249.335', '2307.69', '95.9498', '1.74533', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'), 
(1393, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37298', '0', '-249.97', '2279.36', '75.0826', '1.76278', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'), 
(1394, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37298', '0', '-234.648', '2277.38', '75.0827', '4.13643', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'), 
(1395, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '37297', '0', '-182.099', '2234.45', '76.3246', '0.279253', '7200', '0', '0', '1516', '3354', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-232.012' AND `position_y` REGEXP '2293.16' AND `position_z` REGEXP '95.9498' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-232.012' AND `position_y` REGEXP '2293.16' AND `position_z` REGEXP '95.9498' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-252.372' AND `position_y` REGEXP '2321.25' AND `position_z` REGEXP '96.9055' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-252.372' AND `position_y` REGEXP '2321.25' AND `position_z` REGEXP '96.9055' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-249.335' AND `position_y` REGEXP '2307.69' AND `position_z` REGEXP '95.9498' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-249.335' AND `position_y` REGEXP '2307.69' AND `position_z` REGEXP '95.9498' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-249.97' AND `position_y` REGEXP '2279.36' AND `position_z` REGEXP '75.0826' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-249.97' AND `position_y` REGEXP '2279.36' AND `position_z` REGEXP '75.0826' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-234.648' AND `position_y` REGEXP '2277.38' AND `position_z` REGEXP '75.0827' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-234.648' AND `position_y` REGEXP '2277.38' AND `position_z` REGEXP '75.0827' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-182.099' AND `position_y` REGEXP '2234.45' AND `position_z` REGEXP '76.3246' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '37816'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-182.099' AND `position_y` REGEXP '2234.45' AND `position_z` REGEXP '76.3246' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 47231;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('47231', '789', '0', '0.5039', '0', '1', '0', '1', '1', '') /* Item(789): Stout Battlehammer, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '929', '0', '2.2', '0', '1', '0', '1', '1', '') /* Item(929): Healing Potion, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47231', '1205', '0', '3.7', '0', '1', '0', '1', '1', '') /* Item(1205): Melon Juice, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47231', '1206', '0', '0.2709', '0', '1', '0', '1', '1', '') /* Item(1206): Moss Agate, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '1210', '0', '0.8169', '0', '1', '0', '1', '1', '') /* Item(1210): Shadowgem, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '1483', '0', '0.0112', '0', '1', '0', '1', '1', '') /* Item(1483): Face Smasher, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47231', '1484', '0', '0.0061', '0', '1', '0', '1', '1', '') /* Item(1484): Witching Stave, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47231', '1738', '0', '1.6841', '0', '1', '0', '1', '1', '') /* Item(1738): Laced Mail Belt, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1739', '0', '0.1632', '0', '1', '0', '1', '1', '') /* Item(1739): Laced Mail Boots, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1740', '0', '1.7239', '0', '1', '0', '1', '1', '') /* Item(1740): Laced Mail Bracers, ItemLevel: 16, RequiredLevel: 16, ItemQuality: GREY_POOR        */, 
('47231', '1742', '0', '1.8432', '0', '1', '0', '1', '1', '') /* Item(1742): Laced Mail Gloves, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47231', '1743', '0', '2.0421', '0', '1', '0', '1', '1', '') /* Item(1743): Laced Mail Pants, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1744', '0', '0.1596', '0', '1', '0', '1', '1', '') /* Item(1744): Laced Mail Shoulderpads, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1745', '0', '0.1835', '0', '1', '0', '1', '1', '') /* Item(1745): Laced Mail Vest, ItemLevel: 16, RequiredLevel: 16, ItemQuality: GREY_POOR        */, 
('47231', '1768', '0', '0.2413', '0', '1', '0', '1', '1', '') /* Item(1768): Canvas Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1769', '0', '0.1952', '0', '1', '0', '1', '1', '') /* Item(1769): Canvas Shoulderpads, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1787', '0', '2.4797', '0', '1', '0', '1', '1', '') /* Item(1787): Patched Leather Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47231', '1788', '0', '2.2278', '0', '1', '0', '1', '1', '') /* Item(1788): Patched Leather Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1789', '0', '2.4532', '0', '1', '0', '1', '1', '') /* Item(1789): Patched Leather Bracers, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1793', '0', '0.2303', '0', '1', '0', '1', '1', '') /* Item(1793): Patched Leather Shoulderpads, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1794', '0', '2.4001', '0', '1', '0', '1', '1', '') /* Item(1794): Patched Leather Jerkin, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREY_POOR        */, 
('47231', '1812', '0', '0.3514', '0', '1', '0', '1', '1', '') /* Item(1812): Short-Handled Battle Axe, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREY_POOR        */, 
('47231', '1813', '0', '0.3589', '0', '1', '0', '1', '1', '') /* Item(1813): Chipped Quarterstaff, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47231', '1814', '0', '3.6864', '0', '1', '0', '1', '1', '') /* Item(1814): Battered Mallet, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1815', '0', '0.3527', '0', '1', '0', '1', '1', '') /* Item(1815): Ornamental Mace, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREY_POOR        */, 
('47231', '1816', '0', '0.3567', '0', '1', '0', '1', '1', '') /* Item(1816): Unbalanced Axe, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1817', '0', '0.3991', '0', '1', '0', '1', '1', '') /* Item(1817): Stock Shortsword, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '1974', '0', '0.0061', '0', '1', '0', '1', '1', '') /* Item(1974): Mindthrust Bracers, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47231', '2078', '0', '0.1276', '0', '1', '0', '1', '1', '') /* Item(2078): Northern Shortsword, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2216', '0', '0.2481', '0', '1', '0', '1', '1', '') /* Item(2216): Simple Buckler, ItemLevel: 16, RequiredLevel: 16, ItemQuality: GREY_POOR        */, 
('47231', '2217', '0', '0.2055', '0', '1', '0', '1', '1', '') /* Item(2217): Rectangular Shield, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREY_POOR        */, 
('47231', '2406', '0', '0.0265', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2408', '0', '0.0186', '0', '1', '0', '1', '1', '') /* Item(2408): Pattern: Fine Leather Gloves, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2409', '0', '0.0269', '0', '1', '0', '1', '1', '') /* Item(2409): Pattern: Dark Leather Tunic, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2589', '0', '11.9', '0', '1', '0', '2', '5', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('47231', '2592', '0', '37.8', '0', '1', '0', '2', '4', '') /* Item(2592): Wool Cloth, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47231', '2601', '0', '0.0053', '0', '1', '0', '1', '1', '') /* Item(2601): Pattern: Gray Woolen Robe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2781', '0', '0.3236', '0', '1', '0', '1', '1', '') /* Item(2781): Dirty Blunderbuss, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47231', '2881', '0', '0.03', '0', '1', '0', '1', '1', '') /* Item(2881): Plans: Runed Copper Breastplate, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2882', '0', '0.0066', '0', '1', '0', '1', '1', '') /* Item(2882): Plans: Silvered Bronze Shoulders, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2981', '0', '0.028', '0', '1', '0', '1', '1', '') /* Item(2981): Seer's Robe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2982', '0', '0.0717', '0', '1', '0', '1', '1', '') /* Item(2982): Seer's Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2984', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(2984): Seer's Gloves, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2985', '0', '0.0483', '0', '1', '0', '1', '1', '') /* Item(2985): Inscribed Leather Breastplate, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2986', '0', '0.0788', '0', '1', '0', '1', '1', '') /* Item(2986): Inscribed Leather Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2987', '0', '0.1352', '0', '1', '0', '1', '1', '') /* Item(2987): Inscribed Leather Boots, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2988', '0', '0.1677', '0', '1', '0', '1', '1', '') /* Item(2988): Inscribed Leather Gloves, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2989', '0', '0.0432', '0', '1', '0', '1', '1', '') /* Item(2989): Burnished Tunic, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2990', '0', '0.0427', '0', '1', '0', '1', '1', '') /* Item(2990): Burnished Leggings, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2991', '0', '0.0361', '0', '1', '0', '1', '1', '') /* Item(2991): Burnished Boots, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '2992', '0', '0.0498', '0', '1', '0', '1', '1', '') /* Item(2992): Burnished Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3040', '0', '0.2348', '0', '1', '0', '1', '1', '') /* Item(3040): Hunter's Muzzle Loader, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3184', '0', '0.0803', '0', '1', '0', '1', '1', '') /* Item(3184): Hook Dagger, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3193', '0', '0.0534', '0', '1', '0', '1', '1', '') /* Item(3193): Oak Mallet, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3194', '0', '0.0081', '0', '1', '0', '1', '1', '') /* Item(3194): Black Malice, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47231', '3195', '0', '0.124', '0', '1', '0', '1', '1', '') /* Item(3195): Barbaric Battle Axe, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3196', '0', '0.1428', '0', '1', '0', '1', '1', '') /* Item(3196): Edged Bastard Sword, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3211', '0', '0.1342', '0', '1', '0', '1', '1', '') /* Item(3211): Burnished Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '3376', '0', '0.2387', '0', '1', '0', '1', '1', '') /* Item(3376): Canvas Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47231', '3377', '0', '0.2211', '0', '1', '0', '1', '1', '') /* Item(3377): Canvas Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47231', '3394', '0', '0.004', '0', '1', '0', '1', '1', '') /* Item(3394): Recipe: Potion of Curing, ItemLevel: 24, RequiredLevel: 24, ItemQuality: WAIHT_COMMON     */, 
('47231', '3655', '0', '0.0671', '0', '1', '0', '1', '1', '') /* Item(3655): Burnished Shield, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4292', '0', '0.032', '0', '1', '0', '1', '1', '') /* Item(4292): Pattern: Green Woolen Bag, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4293', '0', '0.0407', '0', '1', '0', '1', '1', '') /* Item(4293): Pattern: Hillman's Leather Vest, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4345', '0', '0.0239', '0', '1', '0', '1', '1', '') /* Item(4345): Pattern: Red Woolen Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4346', '0', '0.0198', '0', '1', '0', '1', '1', '') /* Item(4346): Pattern: Heavy Woolen Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4347', '0', '0.0081', '0', '1', '0', '1', '1', '') /* Item(4347): Pattern: Reinforced Woolen Shoulders, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4348', '0', '0.0663', '0', '1', '0', '1', '1', '') /* Item(4348): Pattern: Phoenix Gloves, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4349', '0', '0.0091', '0', '1', '0', '1', '1', '') /* Item(4349): Pattern: Phoenix Pants, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4409', '0', '0.0285', '0', '1', '0', '1', '1', '') /* Item(4409): Schematic: Small Seaforium Charge, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4568', '0', '0.0666', '0', '1', '0', '1', '1', '') /* Item(4568): Grunt Axe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4575', '0', '0.2272', '0', '1', '0', '1', '1', '') /* Item(4575): Medicine Staff, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4576', '0', '0.0671', '0', '1', '0', '1', '1', '') /* Item(4576): Light Bow, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4605', '0', '0.001', '0', '1', '0', '1', '1', '') /* Item(4605): Red-Speckled Mushroom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('47231', '4606', '0', '2.9711', '0', '1', '0', '1', '1', '') /* Item(4606): Spongy Morel, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47231', '4694', '0', '0.0117', '0', '1', '0', '1', '1', '') /* Item(4694): Burnished Pauldrons, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47231', '4695', '0', '0.0945', '0', '1', '0', '1', '1', '') /* Item(4695): Burnished Cloak, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4697', '0', '0.0503', '0', '1', '0', '1', '1', '') /* Item(4697): Burnished Girdle, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4698', '0', '0.028', '0', '1', '0', '1', '1', '') /* Item(4698): Seer's Mantle, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47231', '4699', '0', '0.1591', '0', '1', '0', '1', '1', '') /* Item(4699): Seer's Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '4700', '0', '0.032', '0', '1', '0', '1', '1', '') /* Item(4700): Inscribed Leather Spaulders, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47231', '4710', '0', '0.0229', '0', '1', '0', '1', '1', '') /* Item(4710): Forest Cloak, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '5207', '0', '0.0971', '0', '1', '0', '1', '1', '') /* Item(5207): Opaque Wand, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '5972', '0', '0.008', '0', '1', '0', '1', '1', '') /* Item(5972): Pattern: Fine Leather Pants, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6344', '0', '0.0224', '0', '1', '0', '1', '1', '') /* Item(6344): Formula: Enchant Bracer - Minor Versatility, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6347', '0', '0.0239', '0', '1', '0', '1', '1', '') /* Item(6347): Formula: Enchant Bracer - Minor Strength, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6348', '0', '0.0254', '0', '1', '0', '1', '1', '') /* Item(6348): Formula: Enchant Weapon - Minor Beastslayer, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6375', '0', '0.004', '0', '1', '0', '1', '1', '') /* Item(6375): Formula: Enchant Bracer - Lesser Versatility, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6380', '0', '0.0234', '0', '1', '0', '1', '1', '') /* Item(6380): Inscribed Buckler, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6383', '0', '0.0066', '0', '1', '0', '1', '1', '') /* Item(6383): Forest Buckler, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6536', '0', '0.0686', '0', '1', '0', '1', '1', '') /* Item(6536): Willow Vest, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6538', '0', '0.0793', '0', '1', '0', '1', '1', '') /* Item(6538): Willow Robe, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6540', '0', '0.1367', '0', '1', '0', '1', '1', '') /* Item(6540): Willow Pants, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6545', '0', '0.1144', '0', '1', '0', '1', '1', '') /* Item(6545): Soldier's Armor, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6552', '0', '0.1921', '0', '1', '0', '1', '1', '') /* Item(6552): Bard's Tunic, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6553', '0', '0.15', '0', '1', '0', '1', '1', '') /* Item(6553): Bard's Trousers, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6559', '0', '0.0152', '0', '1', '0', '1', '1', '') /* Item(6559): Bard's Buckler, ItemLevel: 16, RequiredLevel: 16, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6560', '0', '0.0483', '0', '1', '0', '1', '1', '') /* Item(6560): Soldier's Shield, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6561', '0', '0.0193', '0', '1', '0', '1', '1', '') /* Item(6561): Seer's Padded Armor, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6562', '0', '0.0595', '0', '1', '0', '1', '1', '') /* Item(6562): Shimmering Boots, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6563', '0', '0.0574', '0', '1', '0', '1', '1', '') /* Item(6563): Shimmering Bracers, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6564', '0', '0.063', '0', '1', '0', '1', '1', '') /* Item(6564): Shimmering Cloak, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6565', '0', '0.0361', '0', '1', '0', '1', '1', '') /* Item(6565): Shimmering Gloves, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6570', '0', '0.0361', '0', '1', '0', '1', '1', '') /* Item(6570): Shimmering Sash, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6571', '0', '0.0036', '0', '1', '0', '1', '1', '') /* Item(6571): Scouting Buckler, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6572', '0', '0.0046', '0', '1', '0', '1', '1', '') /* Item(6572): Defender Shield, ItemLevel: 23, RequiredLevel: 23, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6574', '0', '0.0234', '0', '1', '0', '1', '1', '') /* Item(6574): Defender Bracers, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6575', '0', '0.0752', '0', '1', '0', '1', '1', '') /* Item(6575): Defender Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6576', '0', '0.0264', '0', '1', '0', '1', '1', '') /* Item(6576): Defender Girdle, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6581', '0', '0.0529', '0', '1', '0', '1', '1', '') /* Item(6581): Scouting Belt, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6582', '0', '0.0386', '0', '1', '0', '1', '1', '') /* Item(6582): Scouting Boots, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6583', '0', '0.0468', '0', '1', '0', '1', '1', '') /* Item(6583): Scouting Bracers, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6585', '0', '0.0768', '0', '1', '0', '1', '1', '') /* Item(6585): Scouting Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '6716', '0', '0.0224', '0', '1', '0', '1', '1', '') /* Item(6716): Schematic: EZ-Thro Dynamite, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '7554', '0', '0.061', '0', '1', '0', '1', '1', '') /* Item(7554): Willow Branch, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '7608', '0', '0.0488', '0', '1', '0', '1', '1', '') /* Item(7608): Seer's Fine Stein, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9775', '0', '0.1657', '0', '1', '0', '1', '1', '') /* Item(9775): Bandit Cinch, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9776', '0', '0.0666', '0', '1', '0', '1', '1', '') /* Item(9776): Bandit Boots, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9777', '0', '0.1886', '0', '1', '0', '1', '1', '') /* Item(9777): Bandit Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9778', '0', '0.061', '0', '1', '0', '1', '1', '') /* Item(9778): Bandit Buckler, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9779', '0', '0.1139', '0', '1', '0', '1', '1', '') /* Item(9779): Bandit Cloak, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9780', '0', '0.0579', '0', '1', '0', '1', '1', '') /* Item(9780): Bandit Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9781', '0', '0.031', '0', '1', '0', '1', '1', '') /* Item(9781): Bandit Pants, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9783', '0', '0.0554', '0', '1', '0', '1', '1', '') /* Item(9783): Raider's Chestpiece, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9784', '0', '0.1413', '0', '1', '0', '1', '1', '') /* Item(9784): Raider's Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9787', '0', '0.1357', '0', '1', '0', '1', '1', '') /* Item(9787): Raider's Gauntlets, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9788', '0', '0.1047', '0', '1', '0', '1', '1', '') /* Item(9788): Raider's Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9789', '0', '0.1266', '0', '1', '0', '1', '1', '') /* Item(9789): Raider's Legguards, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9790', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(9790): Raider's Shield, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '9812', '0', '0.03', '0', '1', '0', '1', '1', '') /* Item(9812): Fortified Cloak, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '10405', '0', '0.0234', '0', '1', '0', '1', '1', '') /* Item(10405): Bandit Shoulders, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47231', '10407', '0', '0.0264', '0', '1', '0', '1', '1', '') /* Item(10407): Raider's Shoulderpads, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47231', '11038', '0', '0.0066', '0', '1', '0', '1', '1', '') /* Item(11038): Formula: Enchant 2H Weapon - Lesser Versatility, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '11039', '0', '0.0398', '0', '1', '0', '1', '1', '') /* Item(11039): Formula: Enchant Cloak - Minor Agility, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '11081', '0', '0.0056', '0', '1', '0', '1', '1', '') /* Item(11081): Formula: Enchant Shield - Lesser Protection, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '11965', '0', '0.0005', '0', '1', '0', '1', '1', '') /* Item(11965): Quartz Ring, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14048', '0', '0.0005', '0', '1', '0', '1', '1', '') /* Item(14048): Bolt of Runecloth, ItemLevel: 55, RequiredLevel: 55, ItemQuality: WAIHT_COMMON     */, 
('47231', '14166', '0', '0.1774', '0', '1', '0', '1', '1', '') /* Item(14166): Buccaneer's Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14167', '0', '0.1718', '0', '1', '0', '1', '1', '') /* Item(14167): Buccaneer's Cape, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14168', '0', '0.0966', '0', '1', '0', '1', '1', '') /* Item(14168): Buccaneer's Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14170', '0', '0.0249', '0', '1', '0', '1', '1', '') /* Item(14170): Buccaneer's Mantle, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47231', '14171', '0', '0.0361', '0', '1', '0', '1', '1', '') /* Item(14171): Buccaneer's Pants, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14173', '0', '0.0818', '0', '1', '0', '1', '1', '') /* Item(14173): Buccaneer's Cord, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '14174', '0', '0.2323', '0', '1', '0', '1', '1', '') /* Item(14174): Buccaneer's Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '15222', '0', '0.2104', '0', '1', '0', '1', '1', '') /* Item(15222): Barbed Club, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '15248', '0', '0.0818', '0', '1', '0', '1', '1', '') /* Item(15248): Gleaming Claymore, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '15912', '0', '0.0091', '0', '1', '0', '1', '1', '') /* Item(15912): Buccaneer's Orb, ItemLevel: 23, RequiredLevel: 23, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '15926', '0', '0.0219', '0', '1', '0', '1', '1', '') /* Item(15926): Spellbinder Orb, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47231', '59230', '0', '2.3113', '0', '1', '0', '1', '1', '') /* Item(59230): Fungus Squeezings, ItemLevel: 80, RequiredLevel: 80, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
789  2  GREEN_UNCOMMON    0g 19s 69c  22  17  Stout Battlehammer
929  1  WAIHT_COMMON      0g 0s 75c  22  12  Healing Potion
1205  1  WAIHT_COMMON      0g 0s 25c  15  15  Melon Juice
1206  2  GREEN_UNCOMMON    0g 4s 0c  25  0  Moss Agate
1210  2  GREEN_UNCOMMON    0g 2s 50c  20  0  Shadowgem
1483  3  BLUE_RARE         0g 20s 25c  21  16  Face Smasher
1484  3  BLUE_RARE         0g 25s 41c  21  16  Witching Stave
1738  0  GREY_POOR         0g 1s 72c  19  14  Laced Mail Belt
1739  0  GREY_POOR         0g 2s 96c  20  15  Laced Mail Boots
1740  0  GREY_POOR         0g 1s 14c  16  11  Laced Mail Bracers
1742  0  GREY_POOR         0g 1s 52c  18  13  Laced Mail Gloves
1743  0  GREY_POOR         0g 3s 49c  19  14  Laced Mail Pants
1744  0  GREY_POOR         0g 3s 2c  20  15  Laced Mail Shoulderpads
1745  0  GREY_POOR         0g 2s 31c  16  11  Laced Mail Vest
1768  0  GREY_POOR         0g 3s 80c  20  15  Canvas Pants
1769  0  GREY_POOR         0g 2s 85c  20  15  Canvas Shoulderpads
1787  0  GREY_POOR         0g 1s 43c  18  13  Patched Leather Belt
1788  0  GREY_POOR         0g 2s 47c  19  14  Patched Leather Boots
1789  0  GREY_POOR         0g 1s 91c  20  15  Patched Leather Bracers
1793  0  GREY_POOR         0g 2s 90c  20  15  Patched Leather Shoulderpads
1794  0  GREY_POOR         0g 3s 88c  20  15  Patched Leather Jerkin
1812  0  GREY_POOR         0g 4s 53c  17  12  Short-Handled Battle Axe
1813  0  GREY_POOR         0g 5s 23c  18  13  Chipped Quarterstaff
1814  0  GREY_POOR         0g 6s 3c  19  14  Battered Mallet
1815  0  GREY_POOR         0g 3s 66c  17  12  Ornamental Mace
1816  0  GREY_POOR         0g 4s 86c  19  14  Unbalanced Axe
1817  0  GREY_POOR         0g 5s 1c  19  14  Stock Shortsword
1974  3  BLUE_RARE         0g 7s 10c  21  16  Mindthrust Bracers
2078  2  GREEN_UNCOMMON    0g 10s 70c  18  13  Northern Shortsword
2216  0  GREY_POOR         0g 2s 11c  16  11  Simple Buckler
2217  0  GREY_POOR         0g 2s 43c  17  12  Rectangular Shield
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2408  2  GREEN_UNCOMMON    0g 1s 25c  15  0  Pattern: Fine Leather Gloves
2409  2  GREEN_UNCOMMON    0g 3s 50c  20  0  Pattern: Dark Leather Tunic
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2592  1  WAIHT_COMMON      0g 0s 33c  15  0  Wool Cloth
2601  2  GREEN_UNCOMMON    0g 1s 0c  21  0  Pattern: Gray Woolen Robe
2781  0  GREY_POOR         0g 5s 59c  18  13  Dirty Blunderbuss
2881  2  GREEN_UNCOMMON    0g 1s 50c  18  0  Plans: Runed Copper Breastplate
2882  2  GREEN_UNCOMMON    0g 3s 0c  25  0  Plans: Silvered Bronze Shoulders
2981  2  GREEN_UNCOMMON    0g 11s 35c  21  16  Seer's Robe
2982  2  GREEN_UNCOMMON    0g 9s 90c  20  15  Seer's Pants
2984  2  GREEN_UNCOMMON    0g 3s 79c  18  13  Seer's Gloves
2985  2  GREEN_UNCOMMON    0g 11s 51c  21  16  Inscribed Leather Breastplate
2986  2  GREEN_UNCOMMON    0g 10s 5c  20  15  Inscribed Leather Pants
2987  2  GREEN_UNCOMMON    0g 5s 71c  18  13  Inscribed Leather Boots
2988  2  GREEN_UNCOMMON    0g 4s 42c  19  14  Inscribed Leather Gloves
2989  2  GREEN_UNCOMMON    0g 11s 68c  21  16  Burnished Tunic
2990  2  GREEN_UNCOMMON    0g 10s 88c  21  16  Burnished Leggings
2991  2  GREEN_UNCOMMON    0g 8s 18c  21  16  Burnished Boots
2992  2  GREEN_UNCOMMON    0g 4s 79c  20  15  Burnished Gloves
3040  2  GREEN_UNCOMMON    0g 15s 67c  19  14  Hunter's Muzzle Loader
3184  2  GREEN_UNCOMMON    0g 13s 94c  20  15  Hook Dagger
3193  2  GREEN_UNCOMMON    0g 20s 72c  21  16  Oak Mallet
3194  3  BLUE_RARE         0g 24s 95c  21  16  Black Malice
3195  2  GREEN_UNCOMMON    0g 13s 72c  18  13  Barbaric Battle Axe
3196  2  GREEN_UNCOMMON    0g 13s 77c  18  13  Edged Bastard Sword
3211  2  GREEN_UNCOMMON    0g 4s 38c  19  14  Burnished Bracers
3376  0  GREY_POOR         0g 1s 51c  18  13  Canvas Belt
3377  0  GREY_POOR         0g 1s 75c  19  14  Canvas Bracers
3394  1  WAIHT_COMMON      0g 2s 50c  24  0  Recipe: Potion of Curing
3655  2  GREEN_UNCOMMON    0g 10s 22c  21  16  Burnished Shield
4292  2  GREEN_UNCOMMON    0g 2s 0c  19  0  Pattern: Green Woolen Bag
4293  2  GREEN_UNCOMMON    0g 1s 62c  20  0  Pattern: Hillman's Leather Vest
4345  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Pattern: Red Woolen Boots
4346  2  GREEN_UNCOMMON    0g 1s 0c  20  0  Pattern: Heavy Woolen Cloak
4347  2  GREEN_UNCOMMON    0g 1s 50c  24  0  Pattern: Reinforced Woolen Shoulders
4348  2  GREEN_UNCOMMON    0g 1s 75c  25  0  Pattern: Phoenix Gloves
4349  2  GREEN_UNCOMMON    0g 1s 75c  25  0  Pattern: Phoenix Pants
4409  2  GREEN_UNCOMMON    0g 2s 0c  20  0  Schematic: Small Seaforium Charge
4568  2  GREEN_UNCOMMON    0g 16s 94c  21  16  Grunt Axe
4575  2  GREEN_UNCOMMON    0g 14s 87c  19  14  Medicine Staff
4576  2  GREEN_UNCOMMON    0g 19s 74c  21  16  Light Bow
4605  1  WAIHT_COMMON      0g 0s 6c  5  5  Red-Speckled Mushroom
4606  1  WAIHT_COMMON      0g 0s 25c  15  15  Spongy Morel
4694  1  WAIHT_COMMON      0g 5s 97c  22  17  Burnished Pauldrons
4695  2  GREEN_UNCOMMON    0g 5s 71c  18  13  Burnished Cloak
4697  2  GREEN_UNCOMMON    0g 5s 11c  20  15  Burnished Girdle
4698  1  WAIHT_COMMON      0g 5s 27c  21  16  Seer's Mantle
4699  2  GREEN_UNCOMMON    0g 3s 89c  18  13  Seer's Belt
4700  1  WAIHT_COMMON      0g 5s 30c  21  16  Inscribed Leather Spaulders
4710  2  GREEN_UNCOMMON    0g 9s 81c  22  17  Forest Cloak
5207  2  GREEN_UNCOMMON    0g 18s 2c  20  15  Opaque Wand
5972  2  GREEN_UNCOMMON    0g 3s 75c  21  0  Pattern: Fine Leather Pants
6344  2  GREEN_UNCOMMON    0g 1s 0c  17  0  Formula: Enchant Bracer - Minor Versatility
6347  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Formula: Enchant Bracer - Minor Strength
6348  2  GREEN_UNCOMMON    0g 1s 25c  20  0  Formula: Enchant Weapon - Minor Beastslayer
6375  2  GREEN_UNCOMMON    0g 2s 50c  24  0  Formula: Enchant Bracer - Lesser Versatility
6380  2  GREEN_UNCOMMON    0g 6s 54c  18  13  Inscribed Buckler
6383  2  GREEN_UNCOMMON    0g 15s 19c  24  19  Forest Buckler
6536  2  GREEN_UNCOMMON    0g 8s 55c  19  14  Willow Vest
6538  2  GREEN_UNCOMMON    0g 8s 62c  19  14  Willow Robe
6540  2  GREEN_UNCOMMON    0g 7s 54c  18  13  Willow Pants
6545  2  GREEN_UNCOMMON    0g 7s 88c  18  13  Soldier's Armor
6552  2  GREEN_UNCOMMON    0g 8s 42c  19  14  Bard's Tunic
6553  2  GREEN_UNCOMMON    0g 7s 35c  18  13  Bard's Trousers
6559  2  GREEN_UNCOMMON    0g 5s 33c  16  11  Bard's Buckler
6560  2  GREEN_UNCOMMON    0g 6s 16c  17  12  Soldier's Shield
6561  2  GREEN_UNCOMMON    0g 11s 82c  21  16  Seer's Padded Armor
6562  2  GREEN_UNCOMMON    0g 8s 88c  21  16  Shimmering Boots
6563  2  GREEN_UNCOMMON    0g 5s 20c  20  15  Shimmering Bracers
6564  2  GREEN_UNCOMMON    0g 8s 94c  21  16  Shimmering Cloak
6565  2  GREEN_UNCOMMON    0g 6s 93c  22  17  Shimmering Gloves
6570  2  GREEN_UNCOMMON    0g 6s 39c  22  17  Shimmering Sash
6571  2  GREEN_UNCOMMON    0g 11s 67c  22  17  Scouting Buckler
6572  2  GREEN_UNCOMMON    0g 13s 23c  23  18  Defender Shield
6574  2  GREEN_UNCOMMON    0g 6s 66c  22  17  Defender Bracers
6575  2  GREEN_UNCOMMON    0g 7s 53c  20  15  Defender Cloak
6576  2  GREEN_UNCOMMON    0g 6s 71c  22  17  Defender Girdle
6581  2  GREEN_UNCOMMON    0g 5s 94c  21  16  Scouting Belt
6582  2  GREEN_UNCOMMON    0g 10s 21c  22  17  Scouting Boots
6583  2  GREEN_UNCOMMON    0g 5s 98c  21  16  Scouting Bracers
6585  2  GREEN_UNCOMMON    0g 7s 80c  20  15  Scouting Cloak
6716  2  GREEN_UNCOMMON    0g 2s 0c  20  0  Schematic: EZ-Thro Dynamite
7554  2  GREEN_UNCOMMON    0g 7s 36c  19  14  Willow Branch
7608  2  GREEN_UNCOMMON    0g 9s 77c  21  16  Seer's Fine Stein
9775  2  GREEN_UNCOMMON    0g 4s 45c  19  14  Bandit Cinch
9776  2  GREEN_UNCOMMON    0g 7s 64c  20  15  Bandit Boots
9777  2  GREEN_UNCOMMON    0g 4s 48c  19  14  Bandit Bracers
9778  2  GREEN_UNCOMMON    0g 9s 40c  20  15  Bandit Buckler
9779  2  GREEN_UNCOMMON    0g 5s 84c  18  13  Bandit Cloak
9780  2  GREEN_UNCOMMON    0g 5s 21c  20  15  Bandit Gloves
9781  2  GREEN_UNCOMMON    0g 13s 75c  22  17  Bandit Pants
9783  2  GREEN_UNCOMMON    0g 9s 47c  20  15  Raider's Chestpiece
9784  2  GREEN_UNCOMMON    0g 6s 19c  19  14  Raider's Boots
9787  2  GREEN_UNCOMMON    0g 4s 20c  19  14  Raider's Gauntlets
9788  2  GREEN_UNCOMMON    0g 3s 67c  18  13  Raider's Belt
9789  2  GREEN_UNCOMMON    0g 8s 65c  19  14  Raider's Legguards
9790  2  GREEN_UNCOMMON    0g 7s 94c  19  14  Raider's Shield
9812  2  GREEN_UNCOMMON    0g 9s 96c  22  17  Fortified Cloak
10405  1  WAIHT_COMMON      0g 5s 71c  22  17  Bandit Shoulders
10407  1  WAIHT_COMMON      0g 5s 0c  21  16  Raider's Shoulderpads
11038  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant 2H Weapon - Lesser Versatility
11039  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant Cloak - Minor Agility
11081  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant Shield - Lesser Protection
11965  2  GREEN_UNCOMMON    0g 4s 64c  20  15  Quartz Ring
14048  1  WAIHT_COMMON      0g 20s 0c  55  0  Bolt of Runecloth
14166  2  GREEN_UNCOMMON    0g 4s 19c  19  14  Buccaneer's Bracers
14167  2  GREEN_UNCOMMON    0g 6s 26c  19  14  Buccaneer's Cape
14168  2  GREEN_UNCOMMON    0g 4s 86c  20  15  Buccaneer's Gloves
14170  1  WAIHT_COMMON      0g 5s 78c  22  17  Buccaneer's Mantle
14171  2  GREEN_UNCOMMON    0g 12s 92c  22  17  Buccaneer's Pants
14173  2  GREEN_UNCOMMON    0g 4s 95c  20  15  Buccaneer's Cord
14174  2  GREEN_UNCOMMON    0g 6s 43c  19  14  Buccaneer's Boots
15222  2  GREEN_UNCOMMON    0g 12s 19c  19  14  Barbed Club
15248  2  GREEN_UNCOMMON    0g 17s 92c  20  15  Gleaming Claymore
15912  2  GREEN_UNCOMMON    0g 12s 19c  23  18  Buccaneer's Orb
15926  2  GREEN_UNCOMMON    0g 5s 65c  17  12  Spellbinder Orb
59230  1  WAIHT_COMMON      0g 6s 18c  80  80  Fungus Squeezings
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 47231;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 47231;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('47231', '17', '60', '0', '0', '26365');



