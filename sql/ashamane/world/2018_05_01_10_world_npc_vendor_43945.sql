-- NPC 43945 Innkeeper Kritzle
DELETE FROM creature_template WHERE entry =43945;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(43945, 0, 0, 0, 0, 0, 33582, 0, 0, 0, 'Innkeeper Kritzle', '', 'Innkeeper', NULL, '', 349, 15, 15, 0, 0, 0, 29, 66179, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.05, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'npc_innkeeper', 25549);

-- NPC 43945
DELETE FROM npc_vendor WHERE entry =43945;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `OverrideGoldCost`, `type`, `BonusListIDs`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(43945, 0, 159, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 787, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 1179, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 1205, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 1645, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 1708, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4536, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4537, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4538, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4539, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4592, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4593, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4594, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 4602, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 8766, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 8953, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 8957, 0, 0, 0,-1, 1, NULL, 0, 0, 0),
(43945, 0, 21552, 0, 0, 0,-1, 1, NULL, 0, 0, 0);
