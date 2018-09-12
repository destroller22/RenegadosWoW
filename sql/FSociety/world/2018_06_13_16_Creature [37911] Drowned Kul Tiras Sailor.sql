/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 12/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Drowned Kul Tiras Sailor';
SET @ENTRY 		:= '37911';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3734',  '3735',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '5',  '6',  '0',  '0',  '0',  '35',  '0',  '1',  '0.857143',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '570720256',  '2049',  '0',  '32',  '0',  '0',  '0',  '0',  '7',  '1024',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '100',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 37911 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(18689, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-172.161', '-5196.27', '1.61876', '2.35619', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18690, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-222.852', '-5198.54', '2.59911', '1.8675', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18691, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-185.84', '-5201.33', '0.0808063', '1.13446', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18692, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-136.111', '-5111.69', '18.8211', '0.715585', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18693, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-155.517', '-5085.33', '21.1957', '0.715585', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18694, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-208.411', '-5102.44', '19.993', '1.55334', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18695, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-171.49', '-5075.87', '20.1104', '2.46091', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18696, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-271.58', '-5051.61', '20.2371', '1.55334', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18697, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-193.87', '-5059.88', '19.4841', '1.55334', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18698, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-176.516', '-5037.01', '20.4172', '0.994838', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18699, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-215.205', '-5024.46', '21.4519', '2.51327', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18700, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-219.102', '-5008.89', '20.0014', '1.32645', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18701, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '54.0191', '-5011.35', '9.17585', '2.44346', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18500, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '73.9913', '-4995.73', '10.0198', '4.46804', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18703, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '81.2413', '-5055.07', '5.16385', '0.907571', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18704, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-2.47049', '-4995.63', '22.727', '2.28638', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18705, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-14.901', '-5009.3', '12.1546', '0.0349066', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18706, @ENTRY, '1', '14', '372', '1', '0', '0', '0', '-1', '0', '0', '-0.605903', '-5021.47', '10.9641', '1.48353', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18707, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-79.5764', '-5188.75', '0.669705', '2.47837', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18708, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-131.819', '-5236.65', '-5.83661', '3.66519', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18709, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-100.773', '-5202.15', '0.0840023', '1.8675', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18710, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-121.311', '-5224.9', '-3.49733', '2.19912', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18711, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-123.668', '-5208.07', '0.0445443', '1.13446', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18712, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-74.4375', '-5175.77', '0.969783', '2.00713', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18713, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-59.9809', '-5183.5', '0.0982533', '2.47837', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18714, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-50.7587', '-5114.65', '4.81185', '2.93215', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18715, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '-7.24653', '-5174.4', '-1.97481', '0.436332', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18716, @ENTRY, '1', '14', '14', '1', '0', '0', '0', '-1', '0', '0', '38.1632', '-5072.32', '4.51321', '2.28638', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18717, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '29.1198', '-5135.65', '0.409243', '1.91986', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18718, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '47.7656', '-5127.88', '-0.0656047', '2.21657', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18719, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '61.2969', '-5112.38', '2.29318', '1.20428', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18720, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '80.5226', '-5197.13', '-3.72895', '0.523599', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(18499, @ENTRY, '1', '14', '373', '1', '0', '0', '0', '-1', '0', '0', '190.344', '-5145.27', '3.19403', '3.57792', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-172.161' AND `position_y` REGEXP '-5196.27' AND `position_z` REGEXP '1.61876' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-172.161' AND `position_y` REGEXP '-5196.27' AND `position_z` REGEXP '1.61876' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-222.852' AND `position_y` REGEXP '-5198.54' AND `position_z` REGEXP '2.59911' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-222.852' AND `position_y` REGEXP '-5198.54' AND `position_z` REGEXP '2.59911' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-185.84' AND `position_y` REGEXP '-5201.33' AND `position_z` REGEXP '0.0808063' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-185.84' AND `position_y` REGEXP '-5201.33' AND `position_z` REGEXP '0.0808063' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-136.111' AND `position_y` REGEXP '-5111.69' AND `position_z` REGEXP '18.8211' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-136.111' AND `position_y` REGEXP '-5111.69' AND `position_z` REGEXP '18.8211' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-155.517' AND `position_y` REGEXP '-5085.33' AND `position_z` REGEXP '21.1957' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-155.517' AND `position_y` REGEXP '-5085.33' AND `position_z` REGEXP '21.1957' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-208.411' AND `position_y` REGEXP '-5102.44' AND `position_z` REGEXP '19.993' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-208.411' AND `position_y` REGEXP '-5102.44' AND `position_z` REGEXP '19.993' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-171.49' AND `position_y` REGEXP '-5075.87' AND `position_z` REGEXP '20.1104' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-171.49' AND `position_y` REGEXP '-5075.87' AND `position_z` REGEXP '20.1104' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-271.58' AND `position_y` REGEXP '-5051.61' AND `position_z` REGEXP '20.2371' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-271.58' AND `position_y` REGEXP '-5051.61' AND `position_z` REGEXP '20.2371' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-193.87' AND `position_y` REGEXP '-5059.88' AND `position_z` REGEXP '19.4841' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-193.87' AND `position_y` REGEXP '-5059.88' AND `position_z` REGEXP '19.4841' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-176.516' AND `position_y` REGEXP '-5037.01' AND `position_z` REGEXP '20.4172' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-176.516' AND `position_y` REGEXP '-5037.01' AND `position_z` REGEXP '20.4172' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-215.205' AND `position_y` REGEXP '-5024.46' AND `position_z` REGEXP '21.4519' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-215.205' AND `position_y` REGEXP '-5024.46' AND `position_z` REGEXP '21.4519' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-219.102' AND `position_y` REGEXP '-5008.89' AND `position_z` REGEXP '20.0014' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-219.102' AND `position_y` REGEXP '-5008.89' AND `position_z` REGEXP '20.0014' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '54.0191' AND `position_y` REGEXP '-5011.35' AND `position_z` REGEXP '9.17585' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '54.0191' AND `position_y` REGEXP '-5011.35' AND `position_z` REGEXP '9.17585' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '73.9913' AND `position_y` REGEXP '-4995.73' AND `position_z` REGEXP '10.0198' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '73.9913' AND `position_y` REGEXP '-4995.73' AND `position_z` REGEXP '10.0198' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '81.2413' AND `position_y` REGEXP '-5055.07' AND `position_z` REGEXP '5.16385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '81.2413' AND `position_y` REGEXP '-5055.07' AND `position_z` REGEXP '5.16385' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2.47049' AND `position_y` REGEXP '-4995.63' AND `position_z` REGEXP '22.727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-2.47049' AND `position_y` REGEXP '-4995.63' AND `position_z` REGEXP '22.727' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-14.901' AND `position_y` REGEXP '-5009.3' AND `position_z` REGEXP '12.1546' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-14.901' AND `position_y` REGEXP '-5009.3' AND `position_z` REGEXP '12.1546' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-0.605903' AND `position_y` REGEXP '-5021.47' AND `position_z` REGEXP '10.9641' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-0.605903' AND `position_y` REGEXP '-5021.47' AND `position_z` REGEXP '10.9641' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-79.5764' AND `position_y` REGEXP '-5188.75' AND `position_z` REGEXP '0.669705' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-79.5764' AND `position_y` REGEXP '-5188.75' AND `position_z` REGEXP '0.669705' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-131.819' AND `position_y` REGEXP '-5236.65' AND `position_z` REGEXP '-5.83661' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-131.819' AND `position_y` REGEXP '-5236.65' AND `position_z` REGEXP '-5.83661' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-100.773' AND `position_y` REGEXP '-5202.15' AND `position_z` REGEXP '0.0840023' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-100.773' AND `position_y` REGEXP '-5202.15' AND `position_z` REGEXP '0.0840023' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-121.311' AND `position_y` REGEXP '-5224.9' AND `position_z` REGEXP '-3.49733' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-121.311' AND `position_y` REGEXP '-5224.9' AND `position_z` REGEXP '-3.49733' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-123.668' AND `position_y` REGEXP '-5208.07' AND `position_z` REGEXP '0.0445443' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-123.668' AND `position_y` REGEXP '-5208.07' AND `position_z` REGEXP '0.0445443' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-74.4375' AND `position_y` REGEXP '-5175.77' AND `position_z` REGEXP '0.969783' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-74.4375' AND `position_y` REGEXP '-5175.77' AND `position_z` REGEXP '0.969783' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-59.9809' AND `position_y` REGEXP '-5183.5' AND `position_z` REGEXP '0.0982533' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-59.9809' AND `position_y` REGEXP '-5183.5' AND `position_z` REGEXP '0.0982533' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-50.7587' AND `position_y` REGEXP '-5114.65' AND `position_z` REGEXP '4.81185' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-50.7587' AND `position_y` REGEXP '-5114.65' AND `position_z` REGEXP '4.81185' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-7.24653' AND `position_y` REGEXP '-5174.4' AND `position_z` REGEXP '-1.97481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-7.24653' AND `position_y` REGEXP '-5174.4' AND `position_z` REGEXP '-1.97481' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '38.1632' AND `position_y` REGEXP '-5072.32' AND `position_z` REGEXP '4.51321' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '38.1632' AND `position_y` REGEXP '-5072.32' AND `position_z` REGEXP '4.51321' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '29.1198' AND `position_y` REGEXP '-5135.65' AND `position_z` REGEXP '0.409243' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '29.1198' AND `position_y` REGEXP '-5135.65' AND `position_z` REGEXP '0.409243' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '47.7656' AND `position_y` REGEXP '-5127.88' AND `position_z` REGEXP '-0.0656047' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '47.7656' AND `position_y` REGEXP '-5127.88' AND `position_z` REGEXP '-0.0656047' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '61.2969' AND `position_y` REGEXP '-5112.38' AND `position_z` REGEXP '2.29318' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '61.2969' AND `position_y` REGEXP '-5112.38' AND `position_z` REGEXP '2.29318' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '80.5226' AND `position_y` REGEXP '-5197.13' AND `position_z` REGEXP '-3.72895' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '80.5226' AND `position_y` REGEXP '-5197.13' AND `position_z` REGEXP '-3.72895' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '190.344' AND `position_y` REGEXP '-5145.27' AND `position_z` REGEXP '3.19403' AND `PhaseId` = '0' AND `map` = '1');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '190.344' AND `position_y` REGEXP '-5145.27' AND `position_z` REGEXP '3.19403' AND `PhaseId` = '0' AND `map` = '1');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 37911;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('37911', '1', '1897', '0', '0', '0', '0', '0', '0', '0', '18019');

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
DELETE FROM creature_template_scaling WHERE  `Entry` = 37911;

