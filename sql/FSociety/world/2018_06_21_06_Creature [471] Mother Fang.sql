/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Mother Fang';
SET @ENTRY 		:= '471';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '36505',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '9',  '9',  '0',  '0',  '0',  '22',  '0',  '1',  '1.14286',  '1',  '4',  '0',  '1730',  '1730',  '0',  '0',  '1',  '72',  '2048',  '0',  '0',  '1',  '0',  '0',  '0',  '0',  '1',  '0',  '471',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '12023',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '1',  '1',  '1',  '1.5',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '1',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', '11919'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 471 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('471', '0', '0', '0', '0', '0', '100', '0', '6700', '6700', '22900', '22900', '', '11', '12023', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Web'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1040, @ENTRY, '0', '12', '54', '1', '0', '0', '0', '-1', '36505', '0', '-9051.83', '-621.321', '53.5769', '4.24115', '28800', '3', '0', '264', '100', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9051.83' AND `position_y` REGEXP '-621.321' AND `position_z` REGEXP '53.5769' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9051.83' AND `position_y` REGEXP '-621.321' AND `position_z` REGEXP '53.5769' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 471;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('471', '727', '727', '1.95', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('471', '1476', '0', '45.3233', '0', '1', '0', '1', '4', '') /* Item(1476): Snapped Spider Limb, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
('471', '2075', '2075', '0.68', '0', '1', '0', '1', '1', '') /* Item(2075): Heavy Mace, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('471', '2140', '2140', '0.74', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '2406', '2406', '0.3139', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('471', '3000', '0', '10.5461', '0', '1', '0', '1', '1', '') /* Item(3000): Brood Mother Carapace, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '3174', '0', '29.3785', '0', '1', '0', '1', '4', '') /* Item(3174): Spider Ichor, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('471', '3213', '3213', '0.7', '0', '1', '0', '1', '1', '') /* Item(3213): Veteran Bracers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('471', '3283', '3283', '0.13', '0', '1', '0', '1', '1', '') /* Item(3283): Battle Chain Tunic, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('471', '4663', '4663', '0.7', '0', '1', '0', '1', '1', '') /* Item(4663): Journeyman's Belt, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('471', '4677', '4677', '0.7', '0', '1', '0', '1', '1', '') /* Item(4677): Veteran Cloak, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('471', '5465', '0', '100', '0', '1', '0', '1', '4', '') /* Item(5465): Small Spider Leg, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('471', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('471', '6148', '0', '86.8801', '0', '1', '0', '1', '1', '') /* Item(6148): Web-Covered Boots, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('471', '6506', '6506', '2.4', '0', '1', '0', '1', '1', '') /* Item(6506): Infantry Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('471', '6514', '6514', '2.4', '0', '1', '0', '1', '1', '') /* Item(6514): Disciple's Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('471', '68743', '0', '13.0105', '0', '1', '0', '1', '1', '') /* Item(68743): Imbued Infantry Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68744', '0', '13.4316', '0', '1', '0', '1', '1', '') /* Item(68744): Imbued Pioneer Cloak, ItemLevel: 9, RequiredLevel: 9, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68747', '0', '1.1368', '0', '1', '0', '1', '1', '') /* Item(68747): Imbued Disciple's Sash, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68748', '0', '1.2632', '0', '1', '0', '1', '1', '') /* Item(68748): Imbued Disciple's Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68749', '0', '1.5158', '0', '1', '0', '1', '1', '') /* Item(68749): Imbued Disciple's Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68750', '0', '1.4737', '0', '1', '0', '1', '1', '') /* Item(68750): Imbued Pioneer Belt, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68751', '0', '1.4737', '0', '1', '0', '1', '1', '') /* Item(68751): Imbued Pioneer Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68752', '0', '1.4737', '0', '1', '0', '1', '1', '') /* Item(68752): Imbued Infantry Belt, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68753', '0', '1.1789', '0', '1', '0', '1', '1', '') /* Item(68753): Imbued Infantry Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68754', '0', '1.0105', '0', '1', '0', '1', '1', '') /* Item(68754): Imbued Disciple's Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68755', '0', '0.5474', '0', '1', '0', '1', '1', '') /* Item(68755): Imbued Disciple's Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68757', '0', '0.5053', '0', '1', '0', '1', '1', '') /* Item(68757): Imbued Pioneer Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68758', '0', '1.5158', '0', '1', '0', '1', '1', '') /* Item(68758): Imbued Pioneer Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68759', '0', '1.3474', '0', '1', '0', '1', '1', '') /* Item(68759): Imbued Gypsy Cloak, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68760', '0', '0.6737', '0', '1', '0', '1', '1', '') /* Item(68760): Imbued Infantry Gauntlets, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68761', '0', '1.3474', '0', '1', '0', '1', '1', '') /* Item(68761): Imbued Infantry Boots, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('471', '68762', '0', '0.4632', '0', '1', '0', '1', '1', '') /* Item(68762): Imbued Cadet Cloak, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
1476  0  GREY_POOR         0g 0s 6c  1  0  Snapped Spider Limb
2075  2  GREEN_UNCOMMON    0g 3s 86c  12  7  Heavy Mace
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
3000  2  GREEN_UNCOMMON    0g 1s 67c  10  5  Brood Mother Carapace
3174  0  GREY_POOR         0g 0s 16c  10  0  Spider Ichor
3213  1  WAIHT_COMMON      0g 1s 5c  13  8  Veteran Bracers
3283  2  GREEN_UNCOMMON    0g 3s 44c  13  8  Battle Chain Tunic
4663  1  WAIHT_COMMON      0g 0s 41c  9  4  Journeyman's Belt
4677  1  WAIHT_COMMON      0g 1s 22c  12  7  Veteran Cloak
5465  1  WAIHT_COMMON      0g 0s 3c  5  0  Small Spider Leg
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
6148  1  WAIHT_COMMON      0g 0s 78c  10  5  Web-Covered Boots
6506  1  WAIHT_COMMON      0g 1s 1c  11  6  Infantry Boots
6514  1  WAIHT_COMMON      0g 0s 74c  10  5  Disciple's Cloak
68743  2  GREEN_UNCOMMON    0g 0s 92c  9  4  Imbued Infantry Cloak
68744  2  GREEN_UNCOMMON    0g 0s 93c  9  4  Imbued Pioneer Cloak
68747  2  GREEN_UNCOMMON    0g 0s 82c  10  5  Imbued Disciple's Sash
68748  2  GREEN_UNCOMMON    0g 1s 23c  10  5  Imbued Disciple's Cloak
68749  2  GREEN_UNCOMMON    0g 0s 82c  10  5  Imbued Disciple's Bracers
68750  2  GREEN_UNCOMMON    0g 0s 83c  10  5  Imbued Pioneer Belt
68751  2  GREEN_UNCOMMON    0g 0s 83c  10  5  Imbued Pioneer Bracers
68752  2  GREEN_UNCOMMON    0g 0s 83c  10  5  Imbued Infantry Belt
68753  2  GREEN_UNCOMMON    0g 0s 84c  10  5  Imbued Infantry Bracers
68754  2  GREEN_UNCOMMON    0g 1s 63c  11  6  Imbued Disciple's Boots
68755  2  GREEN_UNCOMMON    0g 1s 10c  11  6  Imbued Disciple's Gloves
68757  2  GREEN_UNCOMMON    0g 1s 11c  11  6  Imbued Pioneer Gloves
68758  2  GREEN_UNCOMMON    0g 1s 65c  11  6  Imbued Pioneer Boots
68759  2  GREEN_UNCOMMON    0g 1s 66c  11  6  Imbued Gypsy Cloak
68760  2  GREEN_UNCOMMON    0g 1s 15c  11  6  Imbued Infantry Gauntlets
68761  2  GREEN_UNCOMMON    0g 1s 72c  11  6  Imbued Infantry Boots
68762  2  GREEN_UNCOMMON    0g 1s 72c  11  6  Imbued Cadet Cloak
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 471;
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
DELETE FROM creature_template_scaling WHERE  `Entry` = 471;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('471', '4', '20', '2', '2', '25996');



