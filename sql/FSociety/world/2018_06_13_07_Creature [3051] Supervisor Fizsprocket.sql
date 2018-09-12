/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 11/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Supervisor Fizsprocket';
SET @ENTRY 		:= '3051';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '7134',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '8',  '8',  '0',  '0',  '0',  '47',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '0',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '2147483648',  '0',  '3051',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '13',  '21',  'SmartAI',  '1',  '1',  '1',  '2',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3051 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3051', '0', '0', '0', '4', '0', '100', '1', '0', '0', '0', '0', '', '11', '7973', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Supervisor Fizsprocket - On Aggro - Cast \'Summon Deviate Viper\' (No Repeat)'), 
('3051', '0', '1', '0', '0', '0', '100', '0', '2000', '4500', '21000', '25000', '', '11', '81767', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Supervisor Fizsprocket - In Combat - Cast \'Lantern Blaze\''), 
('3051', '0', '2', '0', '0', '0', '100', '0', '8000', '9000', '15000', '22000', '', '11', '81754', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Supervisor Fizsprocket - In Combat - Cast \'Motivate\''), 
('3051', '0', '3', '0', '0', '0', '100', '0', '4000', '15000', '12000', '33000', '', '11', '81764', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Supervisor Fizsprocket - In Combat - Cast \'Throw Lantern\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18483, @ENTRY, '1', '215', '360', '1', '0', '0', '0', '-1', '0', '1', '-1851.15', '-1131.23', '96.961', '5.32718', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.15' AND `position_y` REGEXP '-1131.23' AND `position_z` REGEXP '96.961' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1851.15' AND `position_y` REGEXP '-1131.23' AND `position_z` REGEXP '96.961' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3051;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3051', '117', '0', '5.6218', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3051', '118', '0', '0.6814', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3051', '159', '0', '2.7257', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3051', '774', '0', '0.16', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '818', '0', '0.68', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '856', '0', '0.75', '0', '1', '0', '1', '1', '') /* Item(856): Blue Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('3051', '1181', '0', '1.3', '0', '1', '0', '1', '1', '') /* Item(1181): Scroll of Versatility, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3051', '1210', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(1210): Shadowgem, ItemLevel: 20, RequiredLevel: 20, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '2407', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(2407): Pattern: White Leather Jerkin, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '2553', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(2553): Recipe: Elixir of Minor Agility, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '2555', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(2555): Recipe: Swiftness Potion, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '2589', '0', '24.5315', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3051', '3013', '0', '1.3', '0', '1', '0', '1', '1', '') /* Item(3013): Scroll of Protection, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3051', '3279', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(3279): Battle Chain Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3281', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(3281): Battle Chain Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '3284', '0', '0.3407', '0', '1', '0', '1', '1', '') /* Item(3284): Tribal Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3286', '0', '0.5111', '0', '1', '0', '1', '1', '') /* Item(3286): Tribal Gloves, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3290', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(3290): Ancestral Gloves, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3303', '0', '0.07', '0', '1', '0', '1', '1', '') /* Item(3303): Brackwater Bracers, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3311', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(3311): Ceremonial Leather Ankleguards, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('3051', '3312', '0', '0.32', '0', '1', '0', '1', '1', '') /* Item(3312): Ceremonial Leather Bracers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '3609', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(3609): Plans: Copper Chain Vest, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '3644', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(3644): Barbaric Cloth Bracers, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '3649', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(3649): Tribal Buckler, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '4680', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(4680): Brackwater Cloak, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '4681', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4681): Brackwater Girdle, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '4686', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(4686): Barbaric Cloth Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '4687', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(4687): Barbaric Cloth Belt, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '4692', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(4692): Ceremonial Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '4693', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(4693): Ceremonial Leather Belt, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '4819', '0', '100', '1', '1', '0', '1', '1', '') /* Item(4819): Fizsprocket's Clipboard, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3051', '5573', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(5573): Green Leather Bag, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */, 
('3051', '7288', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(7288): Pattern: Rugged Leather Pants, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '14095', '0', '0.24', '0', '1', '0', '1', '1', '') /* Item(14095): Native Bands, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '14099', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(14099): Native Sash, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3051', '14102', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(14102): Native Handwraps, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '14110', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(14110): Native Sandals, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '14115', '0', '0.06', '0', '1', '0', '1', '1', '') /* Item(14115): Aboriginal Bands, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '14116', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(14116): Aboriginal Cape, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '15013', '0', '0.18', '0', '1', '0', '1', '1', '') /* Item(15013): Lupine Cuffs, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '15015', '0', '0.05', '0', '1', '0', '1', '1', '') /* Item(15015): Lupine Cloak, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '15297', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(15297): Grizzly Bracers, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '15300', '0', '0.02', '0', '1', '0', '1', '1', '') /* Item(15300): Grizzly Gloves, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '15301', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(15301): Grizzly Slippers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '15302', '0', '0.18', '0', '1', '0', '1', '1', '') /* Item(15302): Grizzly Belt, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '15480', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(15480): War Torn Girdle, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '15481', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(15481): War Torn Greaves, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3051', '15482', '0', '0.1704', '0', '1', '0', '1', '1', '') /* Item(15482): War Torn Bands, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3051', '15490', '0', '0.12', '0', '1', '0', '1', '1', '') /* Item(15490): Bloodspattered Cloak, ItemLevel: 14, RequiredLevel: 14, ItemQuality: WAIHT_COMMON     */, 
('3051', '24071', '24071', '5', '0', '1', '1', '1', '1', '') /* Item(24071): THIS ITEM IS JUST VISUAL, DONT HAVE TEMPLATE, ItemLevel: THIS ITEM DONT EXIST, RequiredLevel: THIS ITEM DONT EXIST, ItemQuality: <unknown> */, 
('3051', '24074', '24074', '1', '0', '1', '1', '1', '1', '') /* Item(24074): Fel Iron Blood Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '24075', '24075', '1', '0', '1', '1', '1', '1', '') /* Item(24075): Golden Draenite Ring, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('3051', '24076', '24076', '1', '0', '1', '1', '1', '1', '') /* Item(24076): Azure Moonstone Ring, ItemLevel: 99, RequiredLevel: 99, ItemQuality: GREEN_UNCOMMON   */; 


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
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
856  1  WAIHT_COMMON      0g 8s 75c  15  0  Blue Leather Bag
1181  1  WAIHT_COMMON      0g 0s 25c  1  1  Scroll of Versatility
1210  2  GREEN_UNCOMMON    0g 2s 50c  20  0  Shadowgem
2407  2  GREEN_UNCOMMON    0g 1s 62c  13  0  Pattern: White Leather Jerkin
2553  2  GREEN_UNCOMMON    0g 0s 25c  12  0  Recipe: Elixir of Minor Agility
2555  2  GREEN_UNCOMMON    0g 0s 40c  15  0  Recipe: Swiftness Potion
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
3013  1  WAIHT_COMMON      0g 0s 25c  1  1  Scroll of Protection
3279  1  WAIHT_COMMON      0g 1s 22c  12  7  Battle Chain Boots
3281  1  WAIHT_COMMON      0g 0s 66c  11  6  Battle Chain Gloves
3284  1  WAIHT_COMMON      0g 1s 24c  12  7  Tribal Boots
3286  1  WAIHT_COMMON      0g 0s 84c  12  7  Tribal Gloves
3290  1  WAIHT_COMMON      0g 0s 85c  12  7  Ancestral Gloves
3303  1  WAIHT_COMMON      0g 0s 83c  12  7  Brackwater Bracers
3311  1  WAIHT_COMMON      0g 2s 13c  15  10  Ceremonial Leather Ankleguards
3312  1  WAIHT_COMMON      0g 0s 99c  13  8  Ceremonial Leather Bracers
3609  2  GREEN_UNCOMMON    0g 0s 25c  10  0  Plans: Copper Chain Vest
3644  1  WAIHT_COMMON      0g 0s 83c  12  7  Barbaric Cloth Bracers
3649  1  WAIHT_COMMON      0g 1s 15c  11  6  Tribal Buckler
4680  1  WAIHT_COMMON      0g 1s 59c  13  8  Brackwater Cloak
4681  1  WAIHT_COMMON      0g 1s 28c  14  9  Brackwater Girdle
4686  1  WAIHT_COMMON      0g 1s 17c  12  7  Barbaric Cloth Cloak
4687  1  WAIHT_COMMON      0g 1s 19c  14  9  Barbaric Cloth Belt
4692  1  WAIHT_COMMON      0g 1s 20c  12  7  Ceremonial Cloak
4693  1  WAIHT_COMMON      0g 1s 21c  14  9  Ceremonial Leather Belt
4819  1  WAIHT_COMMON      1  0  Fizsprocket's Clipboard
5573  1  WAIHT_COMMON      0g 8s 75c  15  0  Green Leather Bag
7288  2  GREEN_UNCOMMON    0g 1s 25c  11  0  Pattern: Rugged Leather Pants
14095  1  WAIHT_COMMON      0g 0s 64c  11  6  Native Bands
14099  1  WAIHT_COMMON      0g 0s 83c  12  7  Native Sash
14102  1  WAIHT_COMMON      0g 1s 6c  13  8  Native Handwraps
14110  1  WAIHT_COMMON      0g 1s 46c  13  8  Native Sandals
14115  1  WAIHT_COMMON      0g 1s 24c  14  9  Aboriginal Bands
14116  1  WAIHT_COMMON      0g 1s 85c  14  9  Aboriginal Cape
15013  1  WAIHT_COMMON      0g 1s 21c  14  9  Lupine Cuffs
15015  1  WAIHT_COMMON      0g 1s 51c  13  8  Lupine Cloak
15297  1  WAIHT_COMMON      0g 0s 64c  11  6  Grizzly Bracers
15300  1  WAIHT_COMMON      0g 1s 21c  14  9  Grizzly Gloves
15301  1  WAIHT_COMMON      0g 1s 51c  13  8  Grizzly Slippers
15302  1  WAIHT_COMMON      0g 0s 67c  11  6  Grizzly Belt
15480  1  WAIHT_COMMON      0g 0s 99c  13  8  War Torn Girdle
15481  1  WAIHT_COMMON      0g 1s 48c  13  8  War Torn Greaves
15482  1  WAIHT_COMMON      0g 0s 63c  11  6  War Torn Bands
15490  1  WAIHT_COMMON      0g 1s 83c  14  9  Bloodspattered Cloak
24074  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Fel Iron Blood Ring
24075  2  GREEN_UNCOMMON    2g 44s 91c  93  61  Golden Draenite Ring
24076  2  GREEN_UNCOMMON    2g 56s 50c  99  63  Azure Moonstone Ring
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3051;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('3051', '1', '30670', '0', '13610', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3051;

