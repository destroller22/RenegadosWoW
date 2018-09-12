-- quest 26205 http://www.wowhead.com/quest=26205/a-job-for-the-multi-bot


-- FULL `creature_template` of entry 42598
DELETE FROM `creature_template` WHERE `entry`=42598;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(42598, 0, 0, 0, 0, 0, 37146, 0, 0, 0, 'GS-9x Multi-Bot', '', '', NULL, '', 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 16384, 0, '', 25549);

-- SAI NPC 42598

/* Table creature_template */ UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42598; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42598);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42598, 0, 0, 1, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk on data set 1'),
(42598, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 203975, 10, 0, 0, 0, 0, 0, 'Activate Object'),
(42598, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 42563, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Give Killcredit'),
(42598, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 79424, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Toxic Cleanup');




-- FULL `creature_template` of entry 42563

DELETE FROM `creature_template` WHERE `entry`=42563;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(42563, 0, 0, 0, 0, 0, 20570, 21072, 0, 0, 'Toxic Pool', '', '', NULL, '', 0, 1, 1, 0, 0, 0, 35, 2, 1.6, 2, 1, 0, 0, 2000, 2000, 0, 0, 1, 33587968, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 183, 1, 0, 0, '', 25549);

-- SAI NPC 42563

/* Table creature_template */ UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42563; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42563);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42563, 0, 0, 1, 10, 0, 100, 0, 1, 10, 1000, 1000, 45, 0, 1, 0, 0, 0, 0, 9, 42598, 1, 10, 0, 0, 0, 0, 'Send data 1 to Multibot'),
(42563, 0, 1, 0, 61, 0, 100, 0, 1, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn self');