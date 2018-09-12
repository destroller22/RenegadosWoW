/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Marshal McBride';
SET @ENTRY 		:= '197';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '1859',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '4048',  '20',  '20',  '0',  '0',  '0',  '12',  '3',  '1',  '1.14286',  '1',  '0',  '0',  '1500',  '2000',  '1',  '1',  '1',  '768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '2',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '0', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'You are dismissed, $n.', '12', '0', '100', '113', '0', '0', '1242', '0', 'Marshal McBride'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 197 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('197', '0', '0', '0', '19', '0', '100', '0', '54', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Marshal McBride - On Quest \'Report to Goldshire\' Taken - Say Line 0 (No Repeat)'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1, @ENTRY, '0', '6170', '24', '1', '0', '0', '0', '-1', '0', '1', '-8913.07', '-137.406', '80.9012', '1.97222', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8913.07' AND `position_y` REGEXP '-137.406' AND `position_z` REGEXP '80.9012' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8913.07' AND `position_y` REGEXP '-137.406' AND `position_z` REGEXP '80.9012' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM gossip_menu WHERE  `MenuId` = 4048;
INSERT INTO `gossip_menu` (`MenuId`,`TextId`,`VerifiedBuild`) VALUES 
(4048,4938, 0); 
/* Step 4.6 Table  `npc_text` */
DELETE FROM npc_text WHERE `ID` = 4938;
INSERT INTO `npc_text` (`ID`,`Probability0`,`Probability1`,`Probability2`,`Probability3`,`Probability4`,`Probability5`,`Probability6`,`Probability7`,`BroadcastTextID0`,`BroadcastTextID1`,`BroadcastTextID2`,`BroadcastTextID3`,`BroadcastTextID4`,`BroadcastTextID5`,`BroadcastTextID6`,`BroadcastTextID7`,`VerifiedBuild`) VALUES 
('4938', '1', '0', '0', '0', '0', '0', '0', '0', '7590', '0', '0', '0', '0', '0', '0', '0', '1'); 




/* Step 2.7 Table  `gossip_menu_option */
DELETE FROM gossip_menu_option WHERE  `MenuId` = 4048;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 4048;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 197;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('197', '1', '1899', '0', '143', '0', '0', '0', '0', '0', '18019');

DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('197', '54'),  /* Quest(54): Report to Goldshire ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '26389'),  /* Quest(26389): Blackrock Invasion ,QuestMinLevel: 2 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '26390'),  /* Quest(26390): Ending the Invasion! ,QuestMinLevel: 2 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28757'),  /* Quest(28757): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28759'),  /* Quest(28759): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28762'),  /* Quest(28762): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28763'),  /* Quest(28763): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28764'),  /* Quest(28764): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28765'),  /* Quest(28765): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28766'),  /* Quest(28766): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28767'),  /* Quest(28767): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28769'),  /* Quest(28769): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28770'),  /* Quest(28770): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28771'),  /* Quest(28771): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28772'),  /* Quest(28772): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28773'),  /* Quest(28773): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28774'),  /* Quest(28774): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28780'),  /* Quest(28780): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28784'),  /* Quest(28784): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28785'),  /* Quest(28785): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28786'),  /* Quest(28786): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28787'),  /* Quest(28787): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28788'),  /* Quest(28788): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28789'),  /* Quest(28789): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29078'),  /* Quest(29078): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29079'),  /* Quest(29079): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29080'),  /* Quest(29080): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31139'),  /* Quest(31139): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31140'),  /* Quest(31140): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31143');  /* Quest(31143): Join the Battle! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 


/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('197', '26389'),  /* Quest(26389): Blackrock Invasion ,QuestMinLevel: 2 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '26390'),  /* Quest(26390): Ending the Invasion! ,QuestMinLevel: 2 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28757'),  /* Quest(28757): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28759'),  /* Quest(28759): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28762'),  /* Quest(28762): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28763'),  /* Quest(28763): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28764'),  /* Quest(28764): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28765'),  /* Quest(28765): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28766'),  /* Quest(28766): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28767'),  /* Quest(28767): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28769'),  /* Quest(28769): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28770'),  /* Quest(28770): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28771'),  /* Quest(28771): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28772'),  /* Quest(28772): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28773'),  /* Quest(28773): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28774'),  /* Quest(28774): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28817'),  /* Quest(28817): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28818'),  /* Quest(28818): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28819'),  /* Quest(28819): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28820'),  /* Quest(28820): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28821'),  /* Quest(28821): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28822'),  /* Quest(28822): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '28823'),  /* Quest(28823): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29078'),  /* Quest(29078): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29079'),  /* Quest(29079): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '29083'),  /* Quest(29083): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31139'),  /* Quest(31139): Beating Them Back! ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31140'),  /* Quest(31140): Lions for Lambs ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('197', '31145');  /* Quest(31145): The Rear is Clear ,QuestMinLevel: 1 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 


/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 197;

