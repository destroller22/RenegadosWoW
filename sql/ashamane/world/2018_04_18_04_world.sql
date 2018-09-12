-- quest 26102 http://www.wowhead.com/quest=26102/grimaxes-demise

-- NPC 42010 General Grimaxe slain

DELETE FROM `creature_template` WHERE `entry`=42010;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (42010, 0, 0, 0, 0, 0, 8749, 0, 0, 0, 'General Grimaxe', '', '', NULL, '', 0, 11, 11, 0, 0, 0, 2270, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53824, 33239, 83016, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 25549);


-- SAI 42010 General Grimaxe slain

/* Table creature_template */ UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42010; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42010);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42010, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, 11, 53824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'General Grimaxe - In Combat - Cast \'Throw\'');