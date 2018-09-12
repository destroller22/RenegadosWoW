-- NPC 43637 Marrok
DELETE FROM creature_template WHERE entry =43637;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(43637, 0, 0, 0, 0, 0, 33439, 0, 0, 0, 'Marrok', '', 'General Goods', NULL, '', 0, 30, 30, 0, 0, 0, 1981, 128, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.05, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 25549);

DELETE FROM npc_vendor WHERE entry =43637;
-- NPC 43637 Marrok
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `OverrideGoldCost`, `type`, `BonusListIDs`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(43637, 0, 159, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 1179, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 1205, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 1645, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 1708, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4470, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4496, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4497, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4498, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4499, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4540, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4541, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4542, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 4601, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 5042, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(43637, 0, 5048, 0, 0, 0, -1, 1, NULL, 0, 0, 0);