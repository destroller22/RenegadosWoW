-- quest 25905 http://www.wowhead.com/quest=25905/rams-on-the-lam



DELETE FROM `creature_queststarter` WHERE `id`=1261 AND `quest`=25905;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (1261, 25905);

DELETE FROM `creature_questender` WHERE `id`=1261 AND `quest`=25905;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (1261, 25905);


DELETE FROM `creature_template` WHERE `entry`=43064;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(43064, 0, 0, 0, 0, 0, 10001, 10002, 10003, 0, 'Stolen Ram Recovery Credit', '', '', NULL, '', 0, 1, 1, 0, 0, 0, 7, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 25549);


DELETE FROM `creature` WHERE `id`=43064;
INSERT INTO `creature`  VALUES 
(210112083, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5720.74, -1263.51, 388.547, 2.24256, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112082, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5735.1, -1310.06, 390.702, 5.82004, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112081, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5813.21, -1225.7, 379.809, 4.44403, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112080, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5769.53, -1070.09, 385.22, 4.61289, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112079, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5779.6, -1111.23, 382.506, 6.11536, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112087, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5848.65, -1351.16, 391.348, 1.64208, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112085, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5832.81, -1068.25, 389.355, 1.23839, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112086, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5711.37, -1136.6, 384.534, 5.78349, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210112084, 43064, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -5875.32, -1202.97, 390.865, 5.78627, 300, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 0);
