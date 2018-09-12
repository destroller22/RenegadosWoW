/* Delete a repeat of the Garr boss because it is repeated in the instance */
DELETE FROM `creature` WHERE `id` = 12057;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`) VALUES (56609, 12057, 409, 2717, 2717, 262656, 169, 0, 12110, 0, 691.018, -498.387, -214.266, 6.02004, 604800, 10, 0, 1500840, 0, 1, 0, 0, 0);

UPDATE gameobject SET spawntimesecs = -100 WHERE id = 179703;
UPDATE creature_template set gossip_menu_id = 0 WHERE entry = 12018;

/* Delete all adds that fight against the Majordomo Executus that should be created when he is created */
DELETE FROM creature WHERE id = 11663 OR id = 11662 OR id = 11664 AND (position_x > 700 and position_x < 800);

/* Delete the Majordomo Executus that should not be until the rest of the bosses are killed */
DELETE FROM creature WHERE id = 12018;

/* Delete the Majordomo Executus Dummy that invokes Ragnaros, since it is only invoked when the original Majordomo is removed */
DELETE FROM creature WHERE id = 54404;
UPDATE creature_template SET ScriptName = 'boss_majordomo_ragnaros' WHERE entry = 54404;

/* Delete the texts and sounds associated with the Majordomo Executus, since they are executed by the Dummy when invoking Ragnaros */
DELETE FROM creature_text WHERE (GroupID = 5 OR GroupID = 6) and CreatureID = 12018;

/*Missing Texts*/
DELETE FROM `creature_text` WHERE `CreatureID`=54404;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('54404', '0', '0', 'Behold Ragnaros - the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!', '14', '0', '100', '0', '0', '8040', '7657', '0', 'majordomo SAY_SUMMON_MAJ'),
('54404', '1', '0', 'These mortal infidels, my lord! They have invaded your sanctum and seek to steal your secrets!', '14', '0', '100', '0', '0', '8041', '7661', '0', 'majordomo SAY_ARRIVAL2_MAJ');

UPDATE gossip_menu_option SET OptionText = "Nos retaste y hemos venido. ¿Dónde está el maestro del que hablas?" WHERE MenuId = 4093;

/* Delete the text associated with Mayordomo Executus */
DELETE FROM `npc_text` WHERE ID = 930000;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES ('930000', '100', '0', '0', '0', '0', '0', '0', '0', '1924', '0', '0', '0', '0', '0', '0', '0', '0');

/* Delete the intro associated with Mayordomo Executus that is charged when talking to him */
DELETE FROM `gossip_menu` WHERE MenuId = 4093;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES ('4093', '930000', '0');