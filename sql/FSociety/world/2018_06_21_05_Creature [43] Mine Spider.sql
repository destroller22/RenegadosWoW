/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Mine Spider';
SET @ENTRY 		:= '43';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '368',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '8',  '9',  '0',  '0',  '0',  '22',  '0',  '1',  '1.48571',  '1',  '0',  '0',  '1818',  '1818',  '0',  '0',  '1',  '8',  '2048',  '0',  '4',  '3',  '0',  '0',  '0',  '1',  '1',  '0',  '43',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '744',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', '11959'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 43 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('43', '0', '0', '0', '0', '0', '100', '0', '4500', '4500', '18000', '28000', '', '11', '11918', '32', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Mine Spider - In Combat - Cast Poison'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1031, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9040.4', '-556.12', '55.2494', '0.706187', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1032, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9040.54', '-607.951', '52.9691', '3.32479', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1033, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9048.17', '-616.732', '52.966', '3.48325', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1034, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9034.07', '-585.789', '56.1795', '4.39873', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1035, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9024.69', '-565.198', '54.9999', '5.4856', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1036, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9024.25', '-602.87', '56.1307', '5.70181', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1038, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9029.61', '-612.755', '56.4003', '0.96589', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'), 
(1039, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '368', '0', '-9065.14', '-545.913', '58.2867', '4.21789', '300', '3', '0', '176', '100', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9040.4' AND `position_y` REGEXP '-556.12' AND `position_z` REGEXP '55.2494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9040.4' AND `position_y` REGEXP '-556.12' AND `position_z` REGEXP '55.2494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9040.54' AND `position_y` REGEXP '-607.951' AND `position_z` REGEXP '52.9691' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9040.54' AND `position_y` REGEXP '-607.951' AND `position_z` REGEXP '52.9691' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9048.17' AND `position_y` REGEXP '-616.732' AND `position_z` REGEXP '52.966' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9048.17' AND `position_y` REGEXP '-616.732' AND `position_z` REGEXP '52.966' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9034.07' AND `position_y` REGEXP '-585.789' AND `position_z` REGEXP '56.1795' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9034.07' AND `position_y` REGEXP '-585.789' AND `position_z` REGEXP '56.1795' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9024.69' AND `position_y` REGEXP '-565.198' AND `position_z` REGEXP '54.9999' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9024.69' AND `position_y` REGEXP '-565.198' AND `position_z` REGEXP '54.9999' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9024.25' AND `position_y` REGEXP '-602.87' AND `position_z` REGEXP '56.1307' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9024.25' AND `position_y` REGEXP '-602.87' AND `position_z` REGEXP '56.1307' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9029.61' AND `position_y` REGEXP '-612.755' AND `position_z` REGEXP '56.4003' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9029.61' AND `position_y` REGEXP '-612.755' AND `position_z` REGEXP '56.4003' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9065.14' AND `position_y` REGEXP '-545.913' AND `position_z` REGEXP '58.2867' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9065.14' AND `position_y` REGEXP '-545.913' AND `position_z` REGEXP '58.2867' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 43;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('43', '117', '0', '0.0118', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('43', '727', '727', '0.41', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('43', '766', '766', '0.5', '0', '1', '0', '1', '1', '') /* Item(766): Flanged Mace, ItemLevel: 7, RequiredLevel: 7, ItemQuality: WAIHT_COMMON     */, 
('43', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('43', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('43', '774', '0', '0.9171', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('43', '1476', '0', '66.9253', '0', '1', '0', '1', '3', '') /* Item(1476): Snapped Spider Limb, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('43', '2075', '2075', '0.22', '0', '1', '0', '1', '1', '') /* Item(2075): Heavy Mace, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('43', '2140', '2140', '0.29', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('43', '2406', '2406', '0.4352', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('43', '3200', '3200', '0.4', '0', '1', '0', '1', '1', '') /* Item(3200): Burnt Leather Bracers, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('43', '4536', '0', '0.0096', '0', '1', '0', '1', '1', '') /* Item(4536): Shiny Red Apple, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('43', '4663', '4663', '0.7', '0', '1', '0', '1', '1', '') /* Item(4663): Journeyman's Belt, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('43', '4677', '4677', '0.7', '0', '1', '0', '1', '1', '') /* Item(4677): Veteran Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('43', '5465', '0', '65.0558', '0', '1', '0', '1', '4', '') /* Item(5465): Small Spider Leg, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('43', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('43', '6506', '6506', '2.4', '0', '1', '0', '1', '1', '') /* Item(6506): Infantry Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('43', '6514', '6514', '2.4', '0', '1', '0', '1', '1', '') /* Item(6514): Disciple's Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('43', '58361', '0', '0.016', '1', '1', '0', '1', '1', '') /* Item(58361): Blackrock Orc Weapon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('43', '62328', '0', '0.008', '0', '1', '0', '1', '1', '') /* Item(62328): Shed Fur, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
766  1  WAIHT_COMMON      0g 0s 57c  7  2  Flanged Mace
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
1476  0  GREY_POOR         0g 0s 6c  1  0  Snapped Spider Limb
2075  2  GREEN_UNCOMMON    0g 3s 86c  12  7  Heavy Mace
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
3200  1  WAIHT_COMMON      0g 0s 27c  8  3  Burnt Leather Bracers
4536  1  WAIHT_COMMON      0g 0s 1c  1  1  Shiny Red Apple
4663  1  WAIHT_COMMON      0g 0s 41c  9  4  Journeyman's Belt
4677  1  WAIHT_COMMON      0g 1s 22c  12  7  Veteran Cloak
5465  1  WAIHT_COMMON      0g 0s 3c  5  0  Small Spider Leg
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
6506  1  WAIHT_COMMON      0g 1s 1c  11  6  Infantry Boots
6514  1  WAIHT_COMMON      0g 0s 74c  10  5  Disciple's Cloak
58361  1  WAIHT_COMMON      1  1  Blackrock Orc Weapon
62328  0  GREY_POOR         0g 0s 1c  1  0  Shed Fur
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 43;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 43;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('43', '4', '20', '0', '1', '25996');



