/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Injured Razor Hill Grunt';
SET @ENTRY 		:= '39270';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '9798',  '9800',  '9799',  '9801',   @CREATURE,  '',  '',  '',  'Speak',  '0',  '8',  '9',  '0',  '0',  '0',  '29',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '33024',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '1', '0', '0', '0', '0', '75511'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'H-help me!', '12', '0', '100', '0', '0', '0', '39329', '0', 'Injured Razor Hill Grunt'), 
(@ENTRY, '0', '1', 'I can\'t fight any longer...', '12', '0', '100', '0', '0', '0', '39330', '0', 'Injured Razor Hill Grunt'), 
(@ENTRY, '0', '2', 'I\'ll never see my wife again...', '12', '0', '100', '0', '0', '0', '39328', '0', 'Injured Razor Hill Grunt'), 
(@ENTRY, '0', '3', 'Somebody... anybody...', '12', '0', '100', '0', '0', '0', '39327', '0', 'Injured Razor Hill Grunt'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 39270 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('39270', '0', '0', '0', '1', '0', '100', '0', '2000', '5000', '6000', '25000', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Injured Razor Hill Grunt - Out of Combat - Say Line 0'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18655, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '217.521', '-5024.39', '6.79863', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18656, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '103.444', '-5063.67', '4.62673', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18657, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '31.75', '-5035.29', '7.60885', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18658, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-53.7448', '-5142.4', '1.92895', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18660, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-15.8941', '-5050.41', '8.14726', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18661, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '17.5573', '-5081.05', '3.84427', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18662, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '51.0382', '-5117.56', '1.1851', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18663, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '123.257', '-5103.76', '2.80786', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18664, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '165.823', '-5080.75', '1.97962', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18665, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '195.96', '-5125.93', '0.0584493', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18666, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '245.833', '-5126.49', '2.99166', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18667, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '279.017', '-5083.26', '3.60673', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18668, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '343.911', '-5118.9', '4.00046', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18669, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '329.656', '-5099.83', '5.14757', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18670, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '273.859', '-5050.13', '7.14083', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18671, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '340.967', '-5022.87', '15.4408', '0', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '217.521' AND `position_y` REGEXP '-5024.39' AND `position_z` REGEXP '6.79863' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '217.521' AND `position_y` REGEXP '-5024.39' AND `position_z` REGEXP '6.79863' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '103.444' AND `position_y` REGEXP '-5063.67' AND `position_z` REGEXP '4.62673' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '103.444' AND `position_y` REGEXP '-5063.67' AND `position_z` REGEXP '4.62673' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '31.75' AND `position_y` REGEXP '-5035.29' AND `position_z` REGEXP '7.60885' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '31.75' AND `position_y` REGEXP '-5035.29' AND `position_z` REGEXP '7.60885' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-53.7448' AND `position_y` REGEXP '-5142.4' AND `position_z` REGEXP '1.92895' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-53.7448' AND `position_y` REGEXP '-5142.4' AND `position_z` REGEXP '1.92895' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-15.8941' AND `position_y` REGEXP '-5050.41' AND `position_z` REGEXP '8.14726' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-15.8941' AND `position_y` REGEXP '-5050.41' AND `position_z` REGEXP '8.14726' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '17.5573' AND `position_y` REGEXP '-5081.05' AND `position_z` REGEXP '3.84427' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '17.5573' AND `position_y` REGEXP '-5081.05' AND `position_z` REGEXP '3.84427' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '51.0382' AND `position_y` REGEXP '-5117.56' AND `position_z` REGEXP '1.1851' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '51.0382' AND `position_y` REGEXP '-5117.56' AND `position_z` REGEXP '1.1851' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '123.257' AND `position_y` REGEXP '-5103.76' AND `position_z` REGEXP '2.80786' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '123.257' AND `position_y` REGEXP '-5103.76' AND `position_z` REGEXP '2.80786' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '165.823' AND `position_y` REGEXP '-5080.75' AND `position_z` REGEXP '1.97962' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '165.823' AND `position_y` REGEXP '-5080.75' AND `position_z` REGEXP '1.97962' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '195.96' AND `position_y` REGEXP '-5125.93' AND `position_z` REGEXP '0.0584493' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '195.96' AND `position_y` REGEXP '-5125.93' AND `position_z` REGEXP '0.0584493' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '245.833' AND `position_y` REGEXP '-5126.49' AND `position_z` REGEXP '2.99166' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '245.833' AND `position_y` REGEXP '-5126.49' AND `position_z` REGEXP '2.99166' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '279.017' AND `position_y` REGEXP '-5083.26' AND `position_z` REGEXP '3.60673' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '279.017' AND `position_y` REGEXP '-5083.26' AND `position_z` REGEXP '3.60673' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '343.911' AND `position_y` REGEXP '-5118.9' AND `position_z` REGEXP '4.00046' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '343.911' AND `position_y` REGEXP '-5118.9' AND `position_z` REGEXP '4.00046' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '329.656' AND `position_y` REGEXP '-5099.83' AND `position_z` REGEXP '5.14757' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '329.656' AND `position_y` REGEXP '-5099.83' AND `position_z` REGEXP '5.14757' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '273.859' AND `position_y` REGEXP '-5050.13' AND `position_z` REGEXP '7.14083' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '273.859' AND `position_y` REGEXP '-5050.13' AND `position_z` REGEXP '7.14083' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '340.967' AND `position_y` REGEXP '-5022.87' AND `position_z` REGEXP '15.4408' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '340.967' AND `position_y` REGEXP '-5022.87' AND `position_z` REGEXP '15.4408' AND `PhaseId` = '0' AND `map` = '1');
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
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 39270;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('39270', '1', '5289', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 39270;

