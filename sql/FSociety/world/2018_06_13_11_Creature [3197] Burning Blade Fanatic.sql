/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 10/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Burning Blade Fanatic';
SET @ENTRY 		:= '3197';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '4192',  '4193',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '9',  '10',  '0',  '0',  '0',  '554',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '2',  '32768',  '2048',  '0',  '4',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '3197',  '3197',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '5262',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '9',  '9',  'SmartAI',  '1',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 3197 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('3197', '0', '0', '0', '0', '0', '100', '0', '1000', '11000', '16000', '22000', '', '11', '5262', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Fanatic Blade'), 
('3197', '0', '1', '0', '0', '0', '100', '0', '6000', '8000', '60000', '65000', '', '11', '80174', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Felblood'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18484, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1458.76', '-4888.67', '12.1906', '3.12707', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19116, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1448.2', '-4864.67', '12.9341', '0.441479', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19117, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1467.71', '-4807.25', '10.9774', '4.88425', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19138, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1487.59', '-4749.31', '8.93563', '6.18383', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19139, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1514.29', '-4726.83', '13.6481', '1.18162', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19140, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1502.67', '-4681.13', '12.2327', '4.03147', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19141, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1461.83', '-4875.04', '12.919', '3.27469', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19143, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1457.77', '-4888.36', '12.1228', '2.68847', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19144, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1504.28', '-4854', '10.3406', '0.40739', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19145, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1445.59', '-4785.39', '8.61892', '5.91699', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19146, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1483.67', '-4733.46', '-3.02397', '4.92455', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19155, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1451.21', '-4740.1', '-2.02229', '5.1284', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19156, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4193', '0', '1434.94', '-4703.98', '-6.77942', '6.21746', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'), 
(19157, @ENTRY, '1', '14', '817', '1', '0', '0', '0', '-1', '4192', '0', '1522.11', '-4777.93', '9.92821', '0.0696698', '300', '3', '0', '166', '178', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1458.76' AND `position_y` REGEXP '-4888.67' AND `position_z` REGEXP '12.1906' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1458.76' AND `position_y` REGEXP '-4888.67' AND `position_z` REGEXP '12.1906' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1448.2' AND `position_y` REGEXP '-4864.67' AND `position_z` REGEXP '12.9341' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1448.2' AND `position_y` REGEXP '-4864.67' AND `position_z` REGEXP '12.9341' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1467.71' AND `position_y` REGEXP '-4807.25' AND `position_z` REGEXP '10.9774' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1467.71' AND `position_y` REGEXP '-4807.25' AND `position_z` REGEXP '10.9774' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1487.59' AND `position_y` REGEXP '-4749.31' AND `position_z` REGEXP '8.93563' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1487.59' AND `position_y` REGEXP '-4749.31' AND `position_z` REGEXP '8.93563' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1514.29' AND `position_y` REGEXP '-4726.83' AND `position_z` REGEXP '13.6481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1514.29' AND `position_y` REGEXP '-4726.83' AND `position_z` REGEXP '13.6481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1502.67' AND `position_y` REGEXP '-4681.13' AND `position_z` REGEXP '12.2327' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1502.67' AND `position_y` REGEXP '-4681.13' AND `position_z` REGEXP '12.2327' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1461.83' AND `position_y` REGEXP '-4875.04' AND `position_z` REGEXP '12.919' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1461.83' AND `position_y` REGEXP '-4875.04' AND `position_z` REGEXP '12.919' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1457.77' AND `position_y` REGEXP '-4888.36' AND `position_z` REGEXP '12.1228' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1457.77' AND `position_y` REGEXP '-4888.36' AND `position_z` REGEXP '12.1228' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1504.28' AND `position_y` REGEXP '-4854' AND `position_z` REGEXP '10.3406' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1504.28' AND `position_y` REGEXP '-4854' AND `position_z` REGEXP '10.3406' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1445.59' AND `position_y` REGEXP '-4785.39' AND `position_z` REGEXP '8.61892' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1445.59' AND `position_y` REGEXP '-4785.39' AND `position_z` REGEXP '8.61892' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1483.67' AND `position_y` REGEXP '-4733.46' AND `position_z` REGEXP '-3.02397' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1483.67' AND `position_y` REGEXP '-4733.46' AND `position_z` REGEXP '-3.02397' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1451.21' AND `position_y` REGEXP '-4740.1' AND `position_z` REGEXP '-2.02229' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1451.21' AND `position_y` REGEXP '-4740.1' AND `position_z` REGEXP '-2.02229' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1434.94' AND `position_y` REGEXP '-4703.98' AND `position_z` REGEXP '-6.77942' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1434.94' AND `position_y` REGEXP '-4703.98' AND `position_z` REGEXP '-6.77942' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1522.11' AND `position_y` REGEXP '-4777.93' AND `position_z` REGEXP '9.92821' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '1522.11' AND `position_y` REGEXP '-4777.93' AND `position_z` REGEXP '9.92821' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 1.3 Table  `creature_loot_template */
DELETE FROM `creature_loot_template` WHERE `entry` = 3197;
INSERT INTO `creature_loot_template` (`entry`, `item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('3197', '117', '0', '8.7552', '0', '1', '0', '1', '1', '') /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '118', '0', '2.672', '0', '1', '0', '1', '2', '') /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3197', '159', '0', '4.3368', '0', '1', '0', '1', '2', '') /* Item(159): Refreshing Spring Water, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '727', '727', '0.63', '0', '1', '0', '1', '1', '') /* Item(727): Notched Shortsword, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '767', '767', '0.6', '0', '1', '0', '1', '1', '') /* Item(767): Long Bo Staff, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3197', '768', '768', '0.4', '0', '1', '0', '1', '1', '') /* Item(768): Lumberjack Axe, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3197', '774', '0', '0.9151', '0', '1', '0', '1', '1', '') /* Item(774): Malachite, ItemLevel: 7, RequiredLevel: 7, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '818', '0', '0.2539', '0', '1', '0', '1', '1', '') /* Item(818): Tigerseye, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '1421', '1421', '20', '0', '1', '0', '1', '1', '') /* Item(1421): Worn Hide Cloak, ItemLevel: 10, RequiredLevel: 10, ItemQuality: GREY_POOR        */, 
('3197', '2070', '0', '0.0024', '0', '1', '0', '1', '1', '') /* Item(2070): Darnassian Bleu, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '2073', '2073', '0.01', '0', '1', '0', '1', '1', '') /* Item(2073): Dwarven Hatchet, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '2075', '2075', '0.42', '0', '1', '0', '1', '1', '') /* Item(2075): Heavy Mace, ItemLevel: 12, RequiredLevel: 12, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '2140', '2140', '0.64', '0', '1', '0', '1', '1', '') /* Item(2140): Carving Knife, ItemLevel: 11, RequiredLevel: 11, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '2406', '2406', '0.2172', '0', '1', '0', '1', '1', '') /* Item(2406): Pattern: Fine Leather Boots, ItemLevel: 15, RequiredLevel: 15, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '2589', '0', '32.8788', '0', '1', '0', '1', '2', '') /* Item(2589): Linen Cloth, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3197', '3279', '3279', '0.7', '0', '1', '0', '1', '1', '') /* Item(3279): Battle Chain Boots, ItemLevel: 12, RequiredLevel: 12, ItemQuality: WAIHT_COMMON     */, 
('3197', '3280', '3280', '0.8', '0', '1', '0', '1', '1', '') /* Item(3280): Battle Chain Bracers, ItemLevel: 9, RequiredLevel: 9, ItemQuality: WAIHT_COMMON     */, 
('3197', '3281', '3281', '0.4', '0', '1', '0', '1', '1', '') /* Item(3281): Battle Chain Gloves, ItemLevel: 11, RequiredLevel: 11, ItemQuality: WAIHT_COMMON     */, 
('3197', '3283', '3283', '0.13', '0', '1', '0', '1', '1', '') /* Item(3283): Battle Chain Tunic, ItemLevel: 13, RequiredLevel: 13, ItemQuality: GREEN_UNCOMMON   */, 
('3197', '3285', '3285', '1', '0', '1', '0', '1', '1', '') /* Item(3285): Tribal Bracers, ItemLevel: 10, RequiredLevel: 10, ItemQuality: WAIHT_COMMON     */, 
('3197', '3312', '3312', '0.6', '0', '1', '0', '1', '1', '') /* Item(3312): Ceremonial Leather Bracers, ItemLevel: 13, RequiredLevel: 13, ItemQuality: WAIHT_COMMON     */, 
('3197', '4540', '0', '0.0012', '0', '1', '0', '1', '2', '') /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '4871', '0', '70', '1', '1', '0', '1', '1', '') /* Item(4871): Searing Collar, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '5571', '5571', '0.3', '0', '1', '0', '1', '1', '') /* Item(5571): Small Black Pouch, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
('3197', '14087', '14087', '0.5', '0', '1', '0', '1', '1', '') /* Item(14087): Beaded Cuffs, ItemLevel: 8, RequiredLevel: 8, ItemQuality: WAIHT_COMMON     */, 
('3197', '14544', '0', '80', '1', '1', '0', '1', '1', '') /* Item(14544): Lieutenant's Insignia, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
('3197', '62328', '0', '0.0121', '0', '1', '0', '1', '1', '') /* Item(62328): Shed Fur, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(@ENTRY, '117', '0', '6.5089', '0', '1', '0', '1', '1', '')  /* Item(117): Tough Jerky, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '118', '0', '1.7751', '0', '1', '0', '1', '1', '')  /* Item(118): Minor Healing Potion, ItemLevel: 5, RequiredLevel: 5, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '4540', '0', '5.3254', '0', '1', '0', '1', '1', '')  /* Item(4540): Tough Hunk of Bread, ItemLevel: 1, RequiredLevel: 1, ItemQuality: WAIHT_COMMON     */, 
(@ENTRY, '5367', '0', '11.2426', '0', '1', '0', '1', '1', '')  /* Item(5367): Primitive Rock Tool, ItemLevel: 1, RequiredLevel: 1, ItemQuality: GREY_POOR        */; 


/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
159  1  WAIHT_COMMON      0g 0s 1c  1  1  Refreshing Spring Water
727  2  GREEN_UNCOMMON    0g 2s 44c  10  5  Notched Shortsword
767  1  WAIHT_COMMON      0g 1s 1c  8  3  Long Bo Staff
768  1  WAIHT_COMMON      0g 1s 13c  9  4  Lumberjack Axe
774  2  GREEN_UNCOMMON    0g 0s 50c  7  0  Malachite
818  2  GREEN_UNCOMMON    0g 1s 0c  15  0  Tigerseye
1421  0  GREY_POOR         0g 0s 50c  10  5  Worn Hide Cloak
2070  1  WAIHT_COMMON      0g 0s 1c  1  1  Darnassian Bleu
2073  2  GREEN_UNCOMMON    0g 7s 42c  15  10  Dwarven Hatchet
2075  2  GREEN_UNCOMMON    0g 3s 86c  12  7  Heavy Mace
2140  2  GREEN_UNCOMMON    0g 3s 23c  11  6  Carving Knife
2406  2  GREEN_UNCOMMON    0g 0s 25c  15  0  Pattern: Fine Leather Boots
2589  1  WAIHT_COMMON      0g 0s 13c  5  0  Linen Cloth
3279  1  WAIHT_COMMON      0g 1s 22c  12  7  Battle Chain Boots
3280  1  WAIHT_COMMON      0g 0s 38c  9  4  Battle Chain Bracers
3281  1  WAIHT_COMMON      0g 0s 66c  11  6  Battle Chain Gloves
3283  2  GREEN_UNCOMMON    0g 3s 44c  13  8  Battle Chain Tunic
3285  1  WAIHT_COMMON      0g 0s 51c  10  5  Tribal Bracers
3312  1  WAIHT_COMMON      0g 0s 99c  13  8  Ceremonial Leather Bracers
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
4871  1  WAIHT_COMMON      1  0  Searing Collar
5571  1  WAIHT_COMMON      0g 2s 50c  5  0  Small Black Pouch
14087  1  WAIHT_COMMON      0g 0s 29c  8  3  Beaded Cuffs
14544  1  WAIHT_COMMON      1  0  Lieutenant's Insignia
62328  0  GREY_POOR         0g 0s 1c  1  0  Shed Fur
*/
/*
117  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Jerky
118  1  WAIHT_COMMON      0g 0s 5c  5  1  Minor Healing Potion
4540  1  WAIHT_COMMON      0g 0s 1c  1  1  Tough Hunk of Bread
5367  0  GREY_POOR         0g 0s 22c  1  0  Primitive Rock Tool
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 3197;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('3197', '1', '1983', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 3197;

