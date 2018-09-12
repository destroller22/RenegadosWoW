/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Myrla Stoneround';
SET @ENTRY 		:= '44236';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '33740',  '0',  '0',  '0',   @CREATURE,  '',  'Barmaid',  '',  '',  '0',  '30',  '30',  '0',  '0',  '0',  '12',  '640',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '512',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 44236 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984452, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '0', '-8366.56', '575.859', '97.0977', '1.62316', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8366.56' AND `position_y` REGEXP '575.859' AND `position_z` REGEXP '97.0977' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8366.56' AND `position_y` REGEXP '575.859' AND `position_z` REGEXP '97.0977' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8366.56', '575.859', '97.0977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8366.56', '575.859', '97.0977', '1.62316', '2000', '0', '0', '100', '0'), 
(@GUID, '3', '-8357.94', '582.795', '97.001', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8362.4', '588.651', '96.9994', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8370.89', '582.118', '97.0017', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8370.89', '582.118', '97.0017', '1.37881', '2000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8366.56' AND `position_y` REGEXP '575.859' AND `position_z` REGEXP '97.0977' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 44236;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('44236', '1', '2716', '0', '2703', '0', '0', '0', '0', '0', '18019');

DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`,`OverrideGoldCost`,`type`,`BonusListIDs`,`PlayerConditionID`,`IgnoreFiltering`,`VerifiedBuild`) VALUES 
(@ENTRY, '10', '159', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '11', '1179', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(1179): Ice Cold Milk, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '12', '1205', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(1205): Melon Juice, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '14', '1645', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(1645): Moonberry Juice, ItemLevel: 35, RequiredLevel: 35, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '13', '1708', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(1708): Sweet Nectar, ItemLevel: 25, RequiredLevel: 25, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '2', '2593', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(2593): Flask of Stormwind Tawny, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '4', '2594', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(2594): Flagon of Dwarven Mead, ItemLevel: 25, RequiredLevel: 25, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '5', '2595', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(2595): Jug of Badlands Bourbon, ItemLevel: 35, RequiredLevel: 35, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '3', '2596', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(2596): Skin of Dwarven Stout, ItemLevel: 15, RequiredLevel: 15, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '1', '2723', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(2723): Bottle of Dalaran Noir, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '15', '8766', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(8766): Morning Glory Dew, ItemLevel: 45, RequiredLevel: 45, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '7', '82343', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(82343): Lordaeron Lambic, ItemLevel: 85, RequiredLevel: 85, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '9', '82344', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(82344): Hearthglen Ambrosia, ItemLevel: 90, RequiredLevel: 90, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '8', '83094', '0', '0', '0', '-1', '1', '', '0', '0', '19865'),   /* Item(83094): Foote Tripel, ItemLevel: 90, RequiredLevel: 90, ItemQuality: WAIHT_COMMON     */
(@ENTRY, '6', '83095', '0', '0', '0', '-1', '1', '', '0', '0', '19865');   /* Item(83095): Lagrave Stout, ItemLevel: 85, RequiredLevel: 85, ItemQuality: WAIHT_COMMON     */


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

