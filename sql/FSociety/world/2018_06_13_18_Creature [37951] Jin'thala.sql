/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Jin\'thala';
SET @ENTRY 		:= '37951';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '30933',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '4',  '4',  '0',  '0',  '0',  '126',  '2',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '33536',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '4096',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', '$n. Zuni. Ya\'ll find ya trainer in the trainin\' grounds to the east. Bring pride to the Darkspear.', '12', '0', '100', '1', '0', '0', '37821', '0', 'Jin\'thala'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 37951 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('37951', '0', '0', '1', '19', '0', '100', '0', '24750', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '2', '3', '19', '0', '100', '0', '24758', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '4', '5', '19', '0', '100', '0', '24770', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '6', '7', '19', '0', '100', '0', '24776', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '7', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '8', '9', '19', '0', '100', '0', '24782', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '9', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '10', '11', '19', '0', '100', '0', '24607', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '11', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '12', '13', '19', '0', '100', '0', '24764', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '13', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '14', '15', '19', '0', '100', '0', '26272', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '15', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''), 
('37951', '0', '16', '17', '19', '0', '100', '0', '31159', '0', '0', '0', '', '1', '0', '0', '1', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Say 0'), 
('37951', '0', '17', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '11', '71035', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Jin\'\'thala - On Quest Accept - Invoker Cast \'Troll Introduction Tracking Quest\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(19084, @ENTRY, '1', '6453', '5691', '1', '0', '0', '0', '-1', '0', '0', '-1168.4', '-5265.22', '0.93219', '2.67035', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1168.4' AND `position_y` REGEXP '-5265.22' AND `position_z` REGEXP '0.93219' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-1168.4' AND `position_y` REGEXP '-5265.22' AND `position_z` REGEXP '0.93219' AND `PhaseId` = '0' AND `map` = '1');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 37951;
DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('37951', '24607'),  /* Quest(24607): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24750'),  /* Quest(24750): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24758'),  /* Quest(24758): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24764'),  /* Quest(24764): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24770'),  /* Quest(24770): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24776'),  /* Quest(24776): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '24782'),  /* Quest(24782): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('37951', '26272');  /* Quest(26272): The Rise of the Darkspear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 


/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 37951;

