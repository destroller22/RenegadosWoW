/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 2/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Shang Xi\'s Hot Air Balloon';
SET @ENTRY 		:= '55649';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '39457',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '10',  '10',  '4',  '0',  '0',  '2395',  '0',  '1',  '1.1',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32776',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '9',  '1075052544',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '1820',  '0',  '0',  '',  '0',  '4',  '1',  '30',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  'npc_bloom',  '0');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '50331648', '1', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 55649 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('55649', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '', '59', '1', '3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Shang Xi\'s Hot Air Balloon - On Just Summoned - Set Run On'), 
('55649', '0', '1', '5', '61', '0', '100', '0', '0', '0', '0', '0', '', '80', '5564900', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Shang Xi\'s Hot Air Balloon - On Just Summoned - Run Script'), 
('55649', '0', '2', '0', '31', '0', '100', '0', '82721', '0', '0', '0', '', '85', '46598', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Shang Xi\'s Hot Air Balloon - On Target Spellhit \'<Spell not found!>\' - Invoker Cast \'Ride Vehicle Hardcoded\''), 
('55649', '0', '3', '0', '40', '0', '100', '0', '1', '55649', '0', '0', '', '59', '1', '9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Shang Xi\'s Hot Air Balloon - On Waypoint 1 Reached - Set Run On'), 
('55649', '0', '4', '0', '28', '0', '100', '0', '0', '0', '0', '0', '', '28', '105002', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Shang Xi\'s Hot Air Balloon - On Passenger Removed - Remove Aura \'<Spell not found!>\''), 
('55649', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '62', '105002', '0', '0', '0', '0', '0', '23', '0', '0', '0', '750366', '366464', '161399', '2000', 'Shang Xi\'s Hot Air Balloon - On Just Summoned - Teleport'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 55649;
DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES 
(@ENTRY, '1', '934.24', '4571.04', '233.652', ''), 
(@ENTRY, '2', '1015.72', '4604.33', '216.549', ''), 
(@ENTRY, '3', '1056.45', '4658.65', '187.737', ''), 
(@ENTRY, '4', '1081.42', '4796.38', '157.662', ''), 
(@ENTRY, '5', '1091.85', '4926.62', '137.927', ''), 
(@ENTRY, '6', '1026.33', '5137.1', '138.055', ''), 
(@ENTRY, '7', '818.293', '5216.31', '134.64', ''), 
(@ENTRY, '8', '621.715', '5132.56', '142.15', ''), 
(@ENTRY, '9', '547.255', '5035.91', '130.494', ''), 
(@ENTRY, '10', '440.752', '4867.26', '117.579', ''), 
(@ENTRY, '11', '403.521', '4650.16', '81.1364', ''), 
(@ENTRY, '12', '341.304', '4475.94', '75.5014', ''), 
(@ENTRY, '13', '222.557', '4369.27', '93.2141', ''), 
(@ENTRY, '14', '164.759', '4297.13', '112.243', ''), 
(@ENTRY, '15', '131.752', '4156.71', '124.638', 'Quest Credit'), 
(@ENTRY, '16', '123.951', '4109.05', '124.638', ''), 
(@ENTRY, '17', '112.047', '3931.91', '128.342', ''), 
(@ENTRY, '18', '218.5', '3824.77', '137.575', ''), 
(@ENTRY, '19', '388.924', '3765.6', '159.465', ''), 
(@ENTRY, '20', '596.571', '3689.25', '183.042', ''), 
(@ENTRY, '21', '745.186', '3664.53', '194.05', 'Despawn'); 


/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES 
(@ENTRY, '46598', '0', '0'); 


/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;

