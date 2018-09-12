/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 18/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Corpse Eater';
SET @ENTRY 		:= '47134';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '25001',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '19',  '19',  '0',  '0',  '0',  '16',  '0',  '0.8',  '0.992063',  '1',  '1',  '0',  '2000',  '2000',  '0',  '0',  '1',  '32832',  '2048',  '0',  '12',  '0',  '0',  '0',  '0',  '6',  '72',  '0',  '47134',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '91088',  '91099',  '0',  '0',  '0',  '0',  '0',  '0',  '8286',  '8286',  'SmartAI',  '0',  '3',  '1',  '4',  '1',  '2',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '8388624',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 47134 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('47134', '0', '0', '0', '0', '0', '100', '0', '2000', '4500', '12000', '20000', '', '11', '91088', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Consume Flesh'), 
('47134', '0', '1', '0', '0', '0', '100', '4', '2000', '4500', '12000', '20000', '', '11', '91088', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Consume Flesh'), 
('47134', '0', '2', '0', '0', '0', '100', '4', '6000', '8000', '18000', '24000', '', '11', '91099', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Rotting Bile'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1396, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-192.794', '2131.69', '81.5017', '6.08341', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1397, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-237.131', '2125.62', '87.0079', '4.45415', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1398, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-243.304', '2117.8', '87.0086', '1.5478', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1399, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-205.292', '2139.58', '86.4973', '4.07459', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1400, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-239.466', '2140.64', '87.0129', '2.32175', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1401, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-196.863', '2119.65', '81.5017', '0.0613464', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1402, @ENTRY, '33', '209', '209', '6', '0', '0', '0', '-1', '25001', '0', '-220.136', '2142.07', '90.624', '1.33861', '7200', '0', '0', '1796', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-192.794' AND `position_y` REGEXP '2131.69' AND `position_z` REGEXP '81.5017' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-192.794' AND `position_y` REGEXP '2131.69' AND `position_z` REGEXP '81.5017' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-237.131' AND `position_y` REGEXP '2125.62' AND `position_z` REGEXP '87.0079' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-237.131' AND `position_y` REGEXP '2125.62' AND `position_z` REGEXP '87.0079' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-243.304' AND `position_y` REGEXP '2117.8' AND `position_z` REGEXP '87.0086' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-243.304' AND `position_y` REGEXP '2117.8' AND `position_z` REGEXP '87.0086' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-205.292' AND `position_y` REGEXP '2139.58' AND `position_z` REGEXP '86.4973' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-205.292' AND `position_y` REGEXP '2139.58' AND `position_z` REGEXP '86.4973' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-239.466' AND `position_y` REGEXP '2140.64' AND `position_z` REGEXP '87.0129' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-239.466' AND `position_y` REGEXP '2140.64' AND `position_z` REGEXP '87.0129' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-196.863' AND `position_y` REGEXP '2119.65' AND `position_z` REGEXP '81.5017' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-196.863' AND `position_y` REGEXP '2119.65' AND `position_z` REGEXP '81.5017' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.136' AND `position_y` REGEXP '2142.07' AND `position_z` REGEXP '90.624' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-220.136' AND `position_y` REGEXP '2142.07' AND `position_z` REGEXP '90.624' AND `PhaseId` = '0' AND `map` = '33');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 47134;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('47134', '789', '0', '0.5059', '0', '1', '0', '1', '1', '') /* Item(789): Stout Battlehammer, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '858', '0', '2.4845', '0', '1', '0', '1', '1', '') /* Item(858): Lesser Healing Potion, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('47134', '929', '0', '2', '0', '1', '0', '1', '1', '') /* Item(929): Healing Potion, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47134', '1205', '0', '3.7', '0', '1', '0', '1', '1', '') /* Item(1205): Melon Juice, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47134', '1206', '0', '0.2335', '0', '1', '0', '1', '1', '') /* Item(1206): Moss Agate, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '1210', '0', '0.7297', '0', '1', '0', '1', '1', '') /* Item(1210): Shadowgem, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '1483', '0', '0.0063', '0', '1', '0', '1', '1', '') /* Item(1483): Face Smasher, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47134', '1484', '0', '0.0139', '0', '1', '0', '1', '1', '') /* Item(1484): Witching Stave, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47134', '1743', '0', '1.7086', '0', '1', '0', '1', '1', '') /* Item(1743): Laced Mail Pants, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREY_POOR        */, 
('47134', '1974', '0', '0.0049', '0', '1', '0', '1', '1', '') /* Item(1974): Mindthrust Bracers, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47134', '2078', '0', '0.1091', '0', '1', '0', '1', '1', '') /* Item(2078): Northern Shortsword, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2406', '0', '1.2422', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2409', '0', '0.0233', '0', '1', '0', '1', '1', '') /* Item(2409): Pattern: Dark Leather Tunic, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2589', '0', '10.8', '0', '1', '0', '2', '5', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('47134', '2592', '0', '32.7', '0', '1', '0', '2', '4', '') /* Item(2592): Wool Cloth, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47134', '2881', '0', '0.1527', '0', '1', '0', '1', '1', '') /* Item(2881): Plans: Runed Copper Breastplate, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2882', '0', '0.0038', '0', '1', '0', '1', '1', '') /* Item(2882): Plans: Silvered Bronze Shoulders, ItemLevel: 25, RequiredLevel: 25, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2981', '0', '0.0174', '0', '1', '0', '1', '1', '') /* Item(2981): Seer's Robe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2982', '0', '0.057', '0', '1', '0', '1', '1', '') /* Item(2982): Seer's Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2984', '0', '0.1313', '0', '1', '0', '1', '1', '') /* Item(2984): Seer's Gloves, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2985', '0', '0.0431', '0', '1', '0', '1', '1', '') /* Item(2985): Inscribed Leather Breastplate, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2986', '0', '0.0389', '0', '1', '0', '1', '1', '') /* Item(2986): Inscribed Leather Pants, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2987', '0', '0.1282', '0', '1', '0', '1', '1', '') /* Item(2987): Inscribed Leather Boots, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2988', '0', '0.1452', '0', '1', '0', '1', '1', '') /* Item(2988): Inscribed Leather Gloves, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2989', '0', '0.032', '0', '1', '0', '1', '1', '') /* Item(2989): Burnished Tunic, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2990', '0', '0.0525', '0', '1', '0', '1', '1', '') /* Item(2990): Burnished Leggings, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2991', '0', '0.0379', '0', '1', '0', '1', '1', '') /* Item(2991): Burnished Boots, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '2992', '0', '0.0386', '0', '1', '0', '1', '1', '') /* Item(2992): Burnished Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3040', '0', '0.173', '0', '1', '0', '1', '1', '') /* Item(3040): Hunter's Muzzle Loader, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3184', '0', '0.0778', '0', '1', '0', '1', '1', '') /* Item(3184): Hook Dagger, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3193', '0', '0.0601', '0', '1', '0', '1', '1', '') /* Item(3193): Oak Mallet, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3194', '0', '0.0073', '0', '1', '0', '1', '1', '') /* Item(3194): Black Malice, ItemLevel: 21, RequiredLevel: 21, ItemQuality: BLUE_RARE        */, 
('47134', '3195', '0', '0.0938', '0', '1', '0', '1', '1', '') /* Item(3195): Barbaric Battle Axe, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3196', '0', '0.1115', '0', '1', '0', '1', '1', '') /* Item(3196): Edged Bastard Sword, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3211', '0', '0.1126', '0', '1', '0', '1', '1', '') /* Item(3211): Burnished Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '3376', '0', '0.2234', '0', '1', '0', '1', '1', '') /* Item(3376): Canvas Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREY_POOR        */, 
('47134', '3655', '0', '0.0552', '0', '1', '0', '1', '1', '') /* Item(3655): Burnished Shield, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4292', '0', '0.0243', '0', '1', '0', '1', '1', '') /* Item(4292): Pattern: Green Woolen Bag, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4293', '0', '0.0205', '0', '1', '0', '1', '1', '') /* Item(4293): Pattern: Hillman's Leather Vest, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4345', '0', '0.0198', '0', '1', '0', '1', '1', '') /* Item(4345): Pattern: Red Woolen Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4346', '0', '0.0205', '0', '1', '0', '1', '1', '') /* Item(4346): Pattern: Heavy Woolen Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4409', '0', '0.0226', '0', '1', '0', '1', '1', '') /* Item(4409): Schematic: Small Seaforium Charge, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4410', '0', '0.105', '0', '1', '0', '1', '1', '') /* Item(4410): Schematic: Shadow Goggles, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4568', '0', '0.0605', '0', '1', '0', '1', '1', '') /* Item(4568): Grunt Axe, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4575', '0', '0.214', '0', '1', '0', '1', '1', '') /* Item(4575): Medicine Staff, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4576', '0', '0.0525', '0', '1', '0', '1', '1', '') /* Item(4576): Light Bow, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4605', '0', '17.3913', '0', '1', '0', '1', '1', '') /* Item(4605): Red-Speckled Mushroom, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('47134', '4606', '0', '2.2421', '0', '1', '0', '1', '1', '') /* Item(4606): Spongy Morel, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('47134', '4694', '0', '0.0142', '0', '1', '0', '1', '1', '') /* Item(4694): Burnished Pauldrons, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47134', '4695', '0', '0.0949', '0', '1', '0', '1', '1', '') /* Item(4695): Burnished Cloak, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4697', '0', '0.0615', '0', '1', '0', '1', '1', '') /* Item(4697): Burnished Girdle, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4698', '0', '0.0268', '0', '1', '0', '1', '1', '') /* Item(4698): Seer's Mantle, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47134', '4699', '0', '0.1199', '0', '1', '0', '1', '1', '') /* Item(4699): Seer's Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '4700', '0', '0.0264', '0', '1', '0', '1', '1', '') /* Item(4700): Inscribed Leather Spaulders, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47134', '4710', '0', '0.025', '0', '1', '0', '1', '1', '') /* Item(4710): Forest Cloak, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '5207', '0', '0.0869', '0', '1', '0', '1', '1', '') /* Item(5207): Opaque Wand, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '5370', '0', '18.6335', '0', '1', '0', '1', '1', '') /* Item(5370): Bent Spoon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('47134', '5578', '0', '0.0048', '0', '1', '0', '1', '1', '') /* Item(5578): Plans: Silvered Bronze Breastplate, ItemLevel: 26, RequiredLevel: 26, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6344', '0', '0.0288', '0', '1', '0', '1', '1', '') /* Item(6344): Formula: Enchant Bracer - Minor Versatility, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6347', '0', '0.0219', '0', '1', '0', '1', '1', '') /* Item(6347): Formula: Enchant Bracer - Minor Strength, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6348', '0', '0.0226', '0', '1', '0', '1', '1', '') /* Item(6348): Formula: Enchant Weapon - Minor Beastslayer, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6375', '0', '0.0056', '0', '1', '0', '1', '1', '') /* Item(6375): Formula: Enchant Bracer - Lesser Versatility, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6380', '0', '0.0132', '0', '1', '0', '1', '1', '') /* Item(6380): Inscribed Buckler, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6383', '0', '0.0069', '0', '1', '0', '1', '1', '') /* Item(6383): Forest Buckler, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6391', '0', '0.0057', '0', '1', '0', '1', '1', '') /* Item(6391): Pattern: Stylish Green Shirt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6536', '0', '0.0691', '0', '1', '0', '1', '1', '') /* Item(6536): Willow Vest, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6538', '0', '0.0723', '0', '1', '0', '1', '1', '') /* Item(6538): Willow Robe, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6540', '0', '0.0959', '0', '1', '0', '1', '1', '') /* Item(6540): Willow Pants, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6545', '0', '0.0938', '0', '1', '0', '1', '1', '') /* Item(6545): Soldier's Armor, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6552', '0', '0.1699', '0', '1', '0', '1', '1', '') /* Item(6552): Bard's Tunic, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6553', '0', '0.114', '0', '1', '0', '1', '1', '') /* Item(6553): Bard's Trousers, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6559', '0', '0.0195', '0', '1', '0', '1', '1', '') /* Item(6559): Bard's Buckler, ItemLevel: 16, RequiredLevel: 16, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6560', '0', '0.016', '0', '1', '0', '1', '1', '') /* Item(6560): Soldier's Shield, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6561', '0', '0.0146', '0', '1', '0', '1', '1', '') /* Item(6561): Seer's Padded Armor, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6562', '0', '0.0528', '0', '1', '0', '1', '1', '') /* Item(6562): Shimmering Boots, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6563', '0', '0.0657', '0', '1', '0', '1', '1', '') /* Item(6563): Shimmering Bracers, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6564', '0', '0.0337', '0', '1', '0', '1', '1', '') /* Item(6564): Shimmering Cloak, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6565', '0', '0.0229', '0', '1', '0', '1', '1', '') /* Item(6565): Shimmering Gloves, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6570', '0', '0.0247', '0', '1', '0', '1', '1', '') /* Item(6570): Shimmering Sash, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6571', '0', '0.0052', '0', '1', '0', '1', '1', '') /* Item(6571): Scouting Buckler, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6572', '0', '0.009', '0', '1', '0', '1', '1', '') /* Item(6572): Defender Shield, ItemLevel: 23, RequiredLevel: 23, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6574', '0', '0.0208', '0', '1', '0', '1', '1', '') /* Item(6574): Defender Bracers, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6575', '0', '0.0636', '0', '1', '0', '1', '1', '') /* Item(6575): Defender Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6576', '0', '0.0188', '0', '1', '0', '1', '1', '') /* Item(6576): Defender Girdle, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6581', '0', '0.0361', '0', '1', '0', '1', '1', '') /* Item(6581): Scouting Belt, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6582', '0', '0.0295', '0', '1', '0', '1', '1', '') /* Item(6582): Scouting Boots, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6583', '0', '0.032', '0', '1', '0', '1', '1', '') /* Item(6583): Scouting Bracers, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '6585', '0', '0.0618', '0', '1', '0', '1', '1', '') /* Item(6585): Scouting Cloak, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '7554', '0', '0.041', '0', '1', '0', '1', '1', '') /* Item(7554): Willow Branch, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '7608', '0', '0.0452', '0', '1', '0', '1', '1', '') /* Item(7608): Seer's Fine Stein, ItemLevel: 21, RequiredLevel: 21, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9775', '0', '0.1473', '0', '1', '0', '1', '1', '') /* Item(9775): Bandit Cinch, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9776', '0', '0.0681', '0', '1', '0', '1', '1', '') /* Item(9776): Bandit Boots, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9777', '0', '0.1643', '0', '1', '0', '1', '1', '') /* Item(9777): Bandit Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9778', '0', '0.057', '0', '1', '0', '1', '1', '') /* Item(9778): Bandit Buckler, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9779', '0', '0.0973', '0', '1', '0', '1', '1', '') /* Item(9779): Bandit Cloak, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9780', '0', '0.0643', '0', '1', '0', '1', '1', '') /* Item(9780): Bandit Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9781', '0', '0.0306', '0', '1', '0', '1', '1', '') /* Item(9781): Bandit Pants, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9783', '0', '0.0413', '0', '1', '0', '1', '1', '') /* Item(9783): Raider's Chestpiece, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9784', '0', '0.1154', '0', '1', '0', '1', '1', '') /* Item(9784): Raider's Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9787', '0', '0.1094', '0', '1', '0', '1', '1', '') /* Item(9787): Raider's Gauntlets, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9788', '0', '0.0789', '0', '1', '0', '1', '1', '') /* Item(9788): Raider's Belt, ItemLevel: 18, RequiredLevel: 18, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9789', '0', '0.1122', '0', '1', '0', '1', '1', '') /* Item(9789): Raider's Legguards, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9790', '0', '0.0462', '0', '1', '0', '1', '1', '') /* Item(9790): Raider's Shield, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '9812', '0', '0.0236', '0', '1', '0', '1', '1', '') /* Item(9812): Fortified Cloak, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '10316', '0', '0.0382', '0', '1', '0', '1', '1', '') /* Item(10316): Pattern: Colorful Kilt, ItemLevel: 24, RequiredLevel: 24, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '10405', '0', '0.0177', '0', '1', '0', '1', '1', '') /* Item(10405): Bandit Shoulders, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47134', '10407', '0', '0.0146', '0', '1', '0', '1', '1', '') /* Item(10407): Raider's Shoulderpads, ItemLevel: 21, RequiredLevel: 21, ItemQuality: WAIHT_COMMON     */, 
('47134', '11038', '0', '0.0382', '0', '1', '0', '1', '1', '') /* Item(11038): Formula: Enchant 2H Weapon - Lesser Versatility, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14166', '0', '0.1643', '0', '1', '0', '1', '1', '') /* Item(14166): Buccaneer's Bracers, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14167', '0', '0.1546', '0', '1', '0', '1', '1', '') /* Item(14167): Buccaneer's Cape, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14168', '0', '0.0612', '0', '1', '0', '1', '1', '') /* Item(14168): Buccaneer's Gloves, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14170', '0', '0.0174', '0', '1', '0', '1', '1', '') /* Item(14170): Buccaneer's Mantle, ItemLevel: 22, RequiredLevel: 22, ItemQuality: WAIHT_COMMON     */, 
('47134', '14171', '0', '0.0233', '0', '1', '0', '1', '1', '') /* Item(14171): Buccaneer's Pants, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14173', '0', '0.0605', '0', '1', '0', '1', '1', '') /* Item(14173): Buccaneer's Cord, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '14174', '0', '0.1616', '0', '1', '0', '1', '1', '') /* Item(14174): Buccaneer's Boots, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '15211', '0', '0.0353', '0', '1', '0', '1', '1', '') /* Item(15211): Militant Shortsword, ItemLevel: 22, RequiredLevel: 22, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '15222', '0', '0.1769', '0', '1', '0', '1', '1', '') /* Item(15222): Barbed Club, ItemLevel: 19, RequiredLevel: 19, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '15248', '0', '0.0775', '0', '1', '0', '1', '1', '') /* Item(15248): Gleaming Claymore, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '15912', '0', '0.0056', '0', '1', '0', '1', '1', '') /* Item(15912): Buccaneer's Orb, ItemLevel: 23, RequiredLevel: 23, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '15926', '0', '0.0233', '0', '1', '0', '1', '1', '') /* Item(15926): Spellbinder Orb, ItemLevel: 17, RequiredLevel: 17, ItemQuality: GREEN_UNCOMMON   */, 
('47134', '59230', '0', '2.4315', '0', '1', '0', '1', '1', '') /* Item(59230): Fungus Squeezings, ItemLevel: 80, RequiredLevel: 80, ItemQuality: WAIHT_COMMON     */, 
('47134', '60874', '0', '20', '1', '1', '0', '1', '1', '') /* Item(60874): Deathless Sinew, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
789  2  GREEN_UNCOMMON    0g 19s 69c  22  17  Stout Battlehammer
858  1  WAIHT_COMMON      0g 0s 25c  13  3  Lesser Healing Potion
929  1  WAIHT_COMMON      0g 0s 75c  22  12  Healing Potion
1205  1  WAIHT_COMMON      0g 0s 25c  15  15  Melon Juice
1206  2  GREEN_UNCOMMON    0g 4s 0c  25  0  Moss Agate
1210  2  GREEN_UNCOMMON    0g 2s 50c  20  0  Shadowgem
1483  3  BLUE_RARE         0g 20s 25c  21  16  Face Smasher
1484  3  BLUE_RARE         0g 25s 41c  21  16  Witching Stave
1743  0  GREY_POOR         0g 3s 49c  19  14  Laced Mail Pants
1974  3  BLUE_RARE         0g 7s 10c  21  16  Mindthrust Bracers
2078  2  GREEN_UNCOMMON    0g 10s 70c  18  13  Northern Shortsword
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2409  2  GREEN_UNCOMMON    0g 3s 50c  20  0  Pattern: Dark Leather Tunic
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2592  1  WAIHT_COMMON      0g 0s 33c  15  0  Wool Cloth
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
3655  2  GREEN_UNCOMMON    0g 10s 22c  21  16  Burnished Shield
4292  2  GREEN_UNCOMMON    0g 2s 0c  19  0  Pattern: Green Woolen Bag
4293  2  GREEN_UNCOMMON    0g 1s 62c  20  0  Pattern: Hillman's Leather Vest
4345  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Pattern: Red Woolen Boots
4346  2  GREEN_UNCOMMON    0g 1s 0c  20  0  Pattern: Heavy Woolen Cloak
4409  2  GREEN_UNCOMMON    0g 2s 0c  20  0  Schematic: Small Seaforium Charge
4410  2  GREEN_UNCOMMON    0g 2s 50c  24  0  Schematic: Shadow Goggles
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
5370  0  GREY_POOR         0g 0s 37c  1  0  Bent Spoon
5578  2  GREEN_UNCOMMON    0g 3s 0c  26  0  Plans: Silvered Bronze Breastplate
6344  2  GREEN_UNCOMMON    0g 1s 0c  17  0  Formula: Enchant Bracer - Minor Versatility
6347  2  GREEN_UNCOMMON    0g 1s 0c  19  0  Formula: Enchant Bracer - Minor Strength
6348  2  GREEN_UNCOMMON    0g 1s 25c  20  0  Formula: Enchant Weapon - Minor Beastslayer
6375  2  GREEN_UNCOMMON    0g 2s 50c  24  0  Formula: Enchant Bracer - Lesser Versatility
6380  2  GREEN_UNCOMMON    0g 6s 54c  18  13  Inscribed Buckler
6383  2  GREEN_UNCOMMON    0g 15s 19c  24  19  Forest Buckler
6391  2  GREEN_UNCOMMON    0g 1s 50c  24  0  Pattern: Stylish Green Shirt
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
10316  2  GREEN_UNCOMMON    0g 2s 0c  24  0  Pattern: Colorful Kilt
10405  1  WAIHT_COMMON      0g 5s 71c  22  17  Bandit Shoulders
10407  1  WAIHT_COMMON      0g 5s 0c  21  16  Raider's Shoulderpads
11038  2  GREEN_UNCOMMON    0g 2s 0c  22  0  Formula: Enchant 2H Weapon - Lesser Versatility
14166  2  GREEN_UNCOMMON    0g 4s 19c  19  14  Buccaneer's Bracers
14167  2  GREEN_UNCOMMON    0g 6s 26c  19  14  Buccaneer's Cape
14168  2  GREEN_UNCOMMON    0g 4s 86c  20  15  Buccaneer's Gloves
14170  1  WAIHT_COMMON      0g 5s 78c  22  17  Buccaneer's Mantle
14171  2  GREEN_UNCOMMON    0g 12s 92c  22  17  Buccaneer's Pants
14173  2  GREEN_UNCOMMON    0g 4s 95c  20  15  Buccaneer's Cord
14174  2  GREEN_UNCOMMON    0g 6s 43c  19  14  Buccaneer's Boots
15211  2  GREEN_UNCOMMON    0g 19s 16c  22  17  Militant Shortsword
15222  2  GREEN_UNCOMMON    0g 12s 19c  19  14  Barbed Club
15248  2  GREEN_UNCOMMON    0g 17s 92c  20  15  Gleaming Claymore
15912  2  GREEN_UNCOMMON    0g 12s 19c  23  18  Buccaneer's Orb
15926  2  GREEN_UNCOMMON    0g 5s 65c  17  12  Spellbinder Orb
59230  1  WAIHT_COMMON      0g 6s 18c  80  80  Fungus Squeezings
60874  1  WAIHT_COMMON      1  1  Deathless Sinew
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 47134;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 47134;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('47134', '17', '60', '0', '0', '26365');



