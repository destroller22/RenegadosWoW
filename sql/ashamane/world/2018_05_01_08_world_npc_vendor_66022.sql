
-- NPC 66022 Turtlemaster Odai

DELETE FROM `creature_template` WHERE `entry`=66022;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(66022, 0, 0, 0, 0, 0, 44740, 0, 0, 0, 'Turtlemaster Odai', '', 'Dragon Turtle Breeder', NULL, '', 0, 90, 90, 4, 0, 0, 35, 128, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'npc_mount_vendor', 25996);


-- NPC 66022 Turtlemaster Odai
DELETE FROM `npc_vendor` WHERE `entry`=66022;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `OverrideGoldCost`, `type`, `BonusListIDs`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES 
(66022, 0, 82765, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 82811, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87795, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87796, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87797, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87799, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87800, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87801, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87802, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87803, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87804, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 87805, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91004, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91005, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91006, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91007, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91008, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91009, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91010, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91011, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91012, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91013, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91014, 0, 0, 0, -1, 1, NULL, 0, 0, 0),
(66022, 0, 91015, 0, 0, 0, -1, 1, NULL, 0, 0, 0);