/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 14/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Scarlet Friar';
SET @ENTRY 		:= '1538';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '2466',  '2477',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '9',  '10',  '0',  '0',  '0',  '67',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '2',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '1538',  '1538',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '665',  '9',  '17',  'SmartAI',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '4097', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', '12', '0', '100', '0', '0', '0', '2628', '0', 'Scarlet1'), 
(@ENTRY, '0', '1', 'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.', '12', '0', '100', '0', '0', '0', '2626', '0', 'Scarlet1'), 
(@ENTRY, '0', '2', 'The Light condemns all who harbor evil. Now you will die!', '12', '0', '100', '0', '0', '0', '2627', '0', 'Scarlet1'), 
(@ENTRY, '0', '3', 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', '12', '0', '100', '0', '0', '0', '2625', '0', 'Scarlet1'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1538 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1538', '0', '0', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Friar - On Aggro - Say Line 0'), 
('1538', '0', '1', '0', '2', '0', '100', '0', '0', '15', '0', '0', '', '25', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Friar - Between 0-15% Health - Flee For Assist'), 
('1538', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '20000', '25000', '', '11', '75967', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Friar - In Combat - Cast \'Whirlwind\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1054, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2985.34', '-533.891', '111.998', '5.3058', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1055, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2814.89', '-511.951', '104.53', '0.872665', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1056, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2184.19', '-450.619', '75.4925', '2.49582', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1057, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2149.27', '-513.366', '81.8476', '2.1293', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1058, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2143.57', '-529.984', '81.7805', '5.60251', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1059, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2165.17', '-556.663', '79.3422', '5.44543', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1060, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2143.28', '-554.631', '81.5568', '5.79449', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1061, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2750.02', '-531.186', '104.635', '2.79253', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1063, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2896.56', '-537.532', '106.566', '3.24631', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1064, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2924.75', '-542.059', '108.463', '5.3058', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1065, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '2956.95', '-562.66', '110.595', '1.36136', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1066, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3026.9', '-563.031', '119.64', '2.89725', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1067, @ENTRY, '0', '85', '459', '1', '0', '0', '0', '-1', '0', '1', '3037.14', '-549.451', '121.397', '3.26377', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1068, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2147.25', '-641.061', '94.1245', '4.4855', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1069, @ENTRY, '0', '85', '167', '1', '0', '0', '0', '-1', '0', '1', '2123.34', '-632.033', '93.4112', '5.07891', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2985.34' AND `position_y` REGEXP '-533.891' AND `position_z` REGEXP '111.998' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2985.34' AND `position_y` REGEXP '-533.891' AND `position_z` REGEXP '111.998' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2814.89' AND `position_y` REGEXP '-511.951' AND `position_z` REGEXP '104.53' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2814.89' AND `position_y` REGEXP '-511.951' AND `position_z` REGEXP '104.53' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2184.19' AND `position_y` REGEXP '-450.619' AND `position_z` REGEXP '75.4925' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2184.19' AND `position_y` REGEXP '-450.619' AND `position_z` REGEXP '75.4925' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2149.27' AND `position_y` REGEXP '-513.366' AND `position_z` REGEXP '81.8476' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2149.27' AND `position_y` REGEXP '-513.366' AND `position_z` REGEXP '81.8476' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2143.57' AND `position_y` REGEXP '-529.984' AND `position_z` REGEXP '81.7805' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2143.57' AND `position_y` REGEXP '-529.984' AND `position_z` REGEXP '81.7805' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2165.17' AND `position_y` REGEXP '-556.663' AND `position_z` REGEXP '79.3422' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2165.17' AND `position_y` REGEXP '-556.663' AND `position_z` REGEXP '79.3422' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2143.28' AND `position_y` REGEXP '-554.631' AND `position_z` REGEXP '81.5568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2143.28' AND `position_y` REGEXP '-554.631' AND `position_z` REGEXP '81.5568' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2750.02' AND `position_y` REGEXP '-531.186' AND `position_z` REGEXP '104.635' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2750.02' AND `position_y` REGEXP '-531.186' AND `position_z` REGEXP '104.635' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2896.56' AND `position_y` REGEXP '-537.532' AND `position_z` REGEXP '106.566' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2896.56' AND `position_y` REGEXP '-537.532' AND `position_z` REGEXP '106.566' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2924.75' AND `position_y` REGEXP '-542.059' AND `position_z` REGEXP '108.463' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2924.75' AND `position_y` REGEXP '-542.059' AND `position_z` REGEXP '108.463' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2956.95' AND `position_y` REGEXP '-562.66' AND `position_z` REGEXP '110.595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2956.95' AND `position_y` REGEXP '-562.66' AND `position_z` REGEXP '110.595' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3026.9' AND `position_y` REGEXP '-563.031' AND `position_z` REGEXP '119.64' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3026.9' AND `position_y` REGEXP '-563.031' AND `position_z` REGEXP '119.64' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3037.14' AND `position_y` REGEXP '-549.451' AND `position_z` REGEXP '121.397' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '3037.14' AND `position_y` REGEXP '-549.451' AND `position_z` REGEXP '121.397' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2147.25' AND `position_y` REGEXP '-641.061' AND `position_z` REGEXP '94.1245' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2147.25' AND `position_y` REGEXP '-641.061' AND `position_z` REGEXP '94.1245' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2123.34' AND `position_y` REGEXP '-632.033' AND `position_z` REGEXP '93.4112' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '2123.34' AND `position_y` REGEXP '-632.033' AND `position_z` REGEXP '93.4112' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 1538;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('1538', '11111', '11111', '0.1', '0', '1', '0', '1', '1', '') /* Item(11111): Broken Sprite Darter Egg, ItemLevel: 37, RequiredLevel: 37, ItemQuality: WAIHT_COMMON     */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '118', '0', '3.6364', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '774', '0', '1.8182', '0', '1', '0', '1', '1', '')  /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
(@ENTRY, '2070', '0', '3.6364', '0', '1', '0', '1', '1', '')  /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '4540', '0', '7.2727', '0', '1', '0', '1', '1', '')  /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5363', '0', '7.2727', '0', '1', '0', '1', '1', '')  /* Item(5363): Folded Handkerchief, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */, 
(@ENTRY, '6150', '0', '3.6364', '0', '1', '0', '1', '1', '')  /* Item(6150): A Frayed Knot, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
11111  1  WAIHT_COMMON      0g 1s 34c  37  0  Broken Sprite Darter Egg
*/
/*
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
5363  0  GREY_POOR         0g 0s 20c  1  0  Folded Handkerchief
6150  0  GREY_POOR         0g 0s 22c  1  0  A Frayed Knot
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1538;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1538', '1', '1907', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 1538;

