/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Captain Melrache';
SET @ENTRY 		:= '1665';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1739',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '12',  '12',  '0',  '0',  '0',  '67',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '3000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '1665',  '1665',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '8258',  '11976',  '0',  '0',  '0',  '0',  '0',  '0',  '665',  '13',  '21',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
-- Captain Melrache SAI
SET @ENTRY := 1665;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,75,0,100,513,0,39038,30,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Benedictus - On creature distance - action list"),
(@ENTRY*100+00,9,0,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Benedictus - actionList - reactPassif"),
(@ENTRY*100+00,9,1,0,0,0,100,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,"Benedictus - actionList - UnitFlag");


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1053, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3080.58', '-560.293', '126.807', '2.60054', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3080.58' AND `position_y` REGEXP '-560.293' AND `position_z` REGEXP '126.807' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3080.58' AND `position_y` REGEXP '-560.293' AND `position_z` REGEXP '126.807' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1665;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1665', '118', '0', '3', '0', '1', '0', '1', '1', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('1665', '159', '0', '5', '0', '1', '0', '1', '1', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1665', '2070', '0', '10', '0', '1', '0', '1', '1', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1665', '2589', '0', '35', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('1665', '2875', '0', '40', '1', '1', '0', '1', '1', '') /* Item(2875): Scarlet Insignia Ring, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('1665', '3331', '0', '5', '0', '1', '1', '1', '1', '') /* Item(3331): Melrache's Cape, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('1665', '24073', '24073', '35', '0', '1', '1', '1', '1', '') /* Item(24073): Garrote-String Necklace, ItemLevel: 85, RequiredLevel: 85, ItemQuality: BLUE_RARE        */, 
('1665', '24100', '24100', '5', '0', '1', '1', '1', '1', '') /* Item(24100): Warder's Dagger, ItemLevel: 2, RequiredLevel: 2, ItemQuality: WAIHT_COMMON     */, 
('1665', '24730', '24730', '1', '0', '1', '1', '1', '1', '') /* Item(24730): Dementia Trousers, ItemLevel: 93, RequiredLevel: 93, ItemQuality: GREEN_UNCOMMON   */, 
('1665', '44007', '44007', '0.5', '0', '1', '1', '1', '1', '') /* Item(44007): Headpiece of Reconciliation, ItemLevel: 226, RequiredLevel: 226, ItemQuality: PURPULE_EPIC     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '858', '0', '10', '0', '1', '0', '1', '1', '')  /* Item(858): Lesser Healing Potion, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5370', '0', '10', '0', '1', '0', '1', '1', '')  /* Item(5370): Bent Spoon, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
2875  1  WAIHT_COMMON      1  0  Scarlet Insignia Ring
3331  1  WAIHT_COMMON      0g 1s 18c  12  7  Melrache's Cape
24073  3  BLUE_RARE         1g 90s 84c  85  60  Garrote-String Necklace
24100  1  WAIHT_COMMON      0g 0s 7c  2  1  Warder's Dagger
24730  2  GREEN_UNCOMMON    3g 93s 6c  93  61  Dementia Trousers
44007  4  PURPULE_EPIC      9g 19s 86c  226  80  Headpiece of Reconciliation
*/
/*
858  1  WAIHT_COMMON      0g 0s 25c  13  3  Lesser Healing Potion
5370  0  GREY_POOR         0g 0s 37c  1  0  Bent Spoon
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1665;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1665', '1', '6224', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1665;

