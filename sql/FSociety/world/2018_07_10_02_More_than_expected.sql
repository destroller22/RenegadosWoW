DELETE FROM `smart_scripts` WHERE `entryorguid`=38966;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3896600;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38938;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38953;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=38953;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=38938;

DELETE FROM `creature` WHERE `guid`=251569;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(251569, 38966, 1, 6453, 4866, 1, 0, 0, 0, -1, 31232, 0, -1318.08, -5603.77, 23.8027, 0.837758, 300, 0, 0, 68713600, 66290, 0, 0, 0, 0, 0, 0, '', 0);


INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38966, 0, 0, 0, 11,0, 100, 0, 0, 0, 0, 0, '', 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Quest \'More Than Expected\' Rewarded - Start Script'),
(38966, 0, 1, 0, 20, 1, 100, 0, 0, 0, 0, 0, '', 80, 3896600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Quest \'More Than Expected\' Rewarded - Start Script'),
(3896600, 9, 0, 0, 0, 1, 100, 0, 0, 0, 0, 0, '', 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Orientation'),
(3896600, 9, 1, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.0195, 'Vol\'jin - On Script - Set NPC Flag 2'),
(3896600, 9, 2, 0, 0, 2, 100, 0, 1000, 1000, 0, 0, '', 11, 73169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Cast \'Rites of Vision\''),
(3896600, 9, 3, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 75, 73158, 0, 0, 0, 0, 0, 10, 380030, 38003, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Add Aura To Trigger (Vol\'jin\'s Vision Smoke)'),
(3896600, 9, 4, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 0'),
(3896600, 9, 5, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Visibility On'),
(3896600, 9, 6, 0, 0, 2, 100, 0, 6000, 6000, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 0'),
(3896600, 9, 7, 0, 0, 2, 100, 0, 5000, 5000, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Visibility On'),
(3896600, 9, 8, 0, 0, 2, 100, 0, 6500, 6500, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 0'),
(3896600, 9, 9, 0, 0, 2, 100, 0, 11500, 11500, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 1'),
(3896600, 9, 10, 0, 0, 2, 100, 0, 8300, 8300, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 1'),
(3896600, 9, 11, 0, 0, 2, 100, 0, 9500, 9500, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 2'),
(3896600, 9, 12, 0, 0, 2, 100, 0, 9500, 9500, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 2'),
(3896600, 9, 13, 0, 0, 2, 100, 0, 15500, 15500, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 3'),
(3896600, 9, 14, 0, 0, 2, 100, 0, 16500, 16500, 0, 0, '', 1, 4, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 4'),
(3896600, 9, 15, 0, 0, 2, 100, 0, 14500, 14500, 0, 0, '', 1, 5, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 5'),
(3896600, 9, 16, 0, 0, 2, 100, 0, 18000, 18000, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 3'),
(3896600, 9, 17, 0, 0, 2, 100, 0, 4000, 4000, 0, 0, '', 1, 4, 0, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 4'),
(3896600, 9, 18, 0, 0, 2, 100, 0, 2000, 2000, 0, 0, '', 1, 6, 0, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 6'),
(3896600, 9, 19, 0, 0, 2, 100, 0, 5000, 5000, 0, 0, '', 45, 1, 2, 0, 0, 0, 0, 10, 389530, 38953, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Visibility Off'),
(3896600, 9, 20, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 45, 1, 2, 0, 0, 0, 0, 10, 389380, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Visibility Off'),
(3896600, 9, 21, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 28, 73169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Remove Aura \'Rites of Vision\''),
(3896600, 9, 22, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 32, 0, 0, 0, 0, 0, 0, 14, 181859, 202444, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Activate Gameobject'),
(3896600, 9, 23, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 28, 73158, 0, 0, 0, 0, 0, 10, 380030, 38003, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Remove Aura From Trigger (Vol\'jin\'s Vision Smoke)'),
(3896600, 9, 24, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Orientation Home Pos'),
(3896600, 9, 25, 0, 0, 2, 100, 0, 2000, 2000, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 10, 251569, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 1'),
(3896600, 9, 26, 0, 0, 2, 100, 0, 9000, 9000, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 10, 251569, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 2'),
(3896600, 9, 27, 0, 0, 2, 100, 0, 15000, 15000, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 10, 251569, 38938, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Say Line 3'),
(3896600, 9, 28, 0, 0, 2, 100, 0, 0, 0, 0, 0, '', 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - On Script - Set Event Phase 1');

-- Text
DELETE FROM `creature_text` WHERE `CreatureID`=38938;
DELETE FROM `creature_text` WHERE `CreatureID`=38953;
DELETE FROM `creature_text` WHERE `CreatureID`=38966 ;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextid`, `TextRange`, `comment`) VALUES (38938, 4, 0, '%s spits at Vol\'jin\'s feet.', 16, 0, 100, 0, 0, 0, 0, 0, 'Vision of Garrosh Hellscream'),
(38938, 3, 0, 'You have sealed your fate, troll.', 12, 0, 100, 1, 0, 20510, 0, 0, 'Vision of Garrosh Hellscream'),
(38938, 2, 0, 'And what exactly do you think that you are going to do about it?  Your threats are hollow.  Go slink away with the rest of your kind to the slums, I will endure your filth in my throne room no longer.', 12, 0, 100, 1, 0, 20509, 0, 0, 'Vision of Garrosh Hellscream'),
(38938, 1, 0, 'You are lucky that I don\'t gut you right here, whelp.  You are foolish to think that you can speak to your Warchief in such ways.', 12, 0, 100, 5, 0, 20512, 0, 0, 'Vision of Garrosh Hellscream'),
(38938, 0, 0, 'Don\'t talk back to me, troll.  You know who was left in charge here.  Haven\'t you stopped to ask yourself why Thrall chose me instead of you?', 12, 0, 100, 25, 0, 20508, 0, 0, 'Vision of Garrosh Hellscream'),
(38953, 6, 0, 'And you yours, "Warchief."', 12, 0, 100, 1, 0, 20104, 0, 0, 'Vision of Vol\'jin'),
(38953, 5, 0, 'Ya will spend ya reign glancin\' over ya shoulda and fearin\' tha shadows, for when tha time comes and ya blood be slowly drainin\' out, ya will know exactly who fired tha arrow dat pierced ya black heart.', 12, 0, 100, 1, 0, 20103, 0, 0, 'Vision of Vol\'jin'),
(38953, 4, 0, 'And when tha time comes dat ya failure is complete and ya "power" is meaningless, I will be dere to end ya rule swiftly and silently.', 12, 0, 100, 1, 0, 20102, 0, 0, 'Vision of Vol\'jin'),
(38953, 3, 0, 'I know exactly what I\'ll be doin\' about it, son of Hellscream.  I\'ll watch and wait as ya people slowly become aware of ya ineptitude.  I\'ll laugh as dey grow ta despise ya as I do.', 12, 0, 100, 1, 0, 20101, 0, 0, 'Vision of Vol\'jin'),
(38953, 2, 0, 'Ya be no Warchief of mine.  Ya not earned my respect and I\'ll not be seein\' tha Horde destroyed by ya foolish thirst for war.', 12, 0, 100, 1, 0, 20100, 0, 0, 'Vision of Vol\'jin'),
(38953, 1, 0, 'I tink ya be even more like ya father den ya thought, even witout da demon blood.', 12, 0, 100, 1, 0, 20099, 0, 0, 'Vision of Vol\'jin'),
(38953, 0, 0, 'Dere be no question why, Garrosh.  He gave ya tha title because ya be Grom\'s son and because tha people be wantin\' a war hero.', 12, 0, 100, 5, 0, 20098, 0, 0, 'Vision of Vol\'jin'),
(38966, 0, 0, 'I have sometin\' to show ya. It be easier to understand if ya see it yourself.', 12, 0, 100, 1, 0, 20097, 0, 0, 'Vol\'jin'),(38966, 1, 0, 'Tha Darkspear are \'ere because I led dem here.  Orgrimmar be no home as long as it be under Hellscream\'s hand. ', 12, 0, 100, 1, 0, 20105, 0, 0, 'Vol\'jin'),
(38966, 2, 0, 'Still, I fear I was lettin\' my temper drive me ta bein\' rash. Thrall devoted himself to makin\' the Horde what it is, so I\'ve no eagerness to be leavin\' it on a whim.  Dis will be needin\' much more thought.', 12, 0, 100, 1, 0, 20106, 0, 0, 'Vol\'jin'),
(38966, 3, 0, 'But dese be worries for older minds.  Ya still have much to learn.  Go help tha people of tha Darkspear.  I am sure we\'ll be speakin\' again real soon.', 12, 0, 100, 1, 0, 20107, 0, 0, 'Vol\'jin'),
(38966, 4, 0, 'Still, I be hopin\' Thrall will return to us one day. Tha future right now be lookin\' very grim... and very bloody.', 12, 0, 100, 1, 0, 20117, 0, 0, 'Vol\'jin to Player'),
(38966, 5, 0, 'Go now. Make tha Darkspear proud. Dere are many wars ahead of us, an\' I\'m sure ya be havin\' a part to play in all of dem.', 12, 0, 100, 1, 0, 20118, 0, 0, 'Vol\'jin to Player'),(38966, 6, 0, 'Tha Sea Witch is dead, our home is reclaimed, but our future still be uncertain.', 12, 0, 100, 1, 0, 20108, 0, 0, 'Vol\'jin to Player'),
(38966, 7, 0, 'I\'ve no love for Garrosh, dat much is sure, but leavin\' tha Horde is not a decision I be takin\' lightly.', 12, 0, 100, 1, 0, 20109, 0, 0, 'Vol\'jin to Player'),(38966, 8, 0, 'Dere\'s only one with tha answers I seek. Ya can stay and watch if ya like.', 12, 0, 100, 1, 0, 20110, 0, 0, 'Vol\'jin to Player'),
(38966, 9, 0, 'Thrall!  I am glad ya be well.  Dere were rumors otherwise.', 12, 0, 100, 1, 0, 20111, 0, 0, 'Vol\'jin to Player'),
(38966, 10, 0, 'I must beg ya council, my friend.  I can\'t be standin\' by Garrosh while he be turnin\' our people against each other for tha sake of war.  My respect for you does not extend to dis new Horde... I am tinkin\' of leadin\' my people away.', 12, 0, 100, 1, 0, 20112, 0, 0, 'Vol\'jin to Player'),
(38966, 11, 0, 'I understand, brotha. I will tink on this and be troublin\' ya no furtha. You have a world to be savin\'.', 12, 0, 100, 6, 0, 20113, 0, 0, 'Vol\'jin to Player'),
(38966, 12, 0, 'Ya be strong and proud, youngblood.  Tha Darkspear will be honored ta have you fight beside d\'em.', 12, 0, 100, 1, 0, 20114, 0, 0, 'Vol\'jin to Player'),
(38966, 13, 0, 'Dese be dark times, but our people will be stayin\' with tha Horde for tha good of all.  ', 12, 0, 100, 1, 0, 20115, 0, 0, 'Vol\'jin to Player'),
(38966, 14, 0, 'Thrall\'s words be true. Dey always be. The Horde is much more den a few old, stubborn leaders and a handful of heroes from Northrend. The people be cryin\' Garrosh\'s name... at least for now.', 12, 0, 100, 1, 0, 20116, 0, 0, 'Vol\'jin to Player');



DELETE FROM `creature` WHERE `guid`=210115655;
DELETE FROM `creature` WHERE `guid`=210115693;
DELETE FROM `creature` WHERE `guid`=210115656;
DELETE FROM `creature` WHERE `guid`=210115692;

DELETE FROM `creature` WHERE `guid`=389380;
DELETE FROM `creature` WHERE `guid`=389530;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`) VALUES 
(389380, 38938, 1, 14, 4866, 1, 169, 0, 0, 0, -1321.64, -5610.25, 25.052404, 2.46091, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(389530, 38953, 1, 14, 4866, 1, 169, 0, 0, 0, -1323.86, -5608.56,25.052404, 5.48033, 120, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=380030;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`) VALUES 
(380030, 38003, 1, 14, 4875, 1, 169, 0, 0, 0, -1310.83, -5451.65, 17.5977, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=38938 ;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38938, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, '0', 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Garrosh Hellscream - On Respawn - Set Visibility Off'),
(38938, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, '0', 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Garrosh Hellscream - On Respawn - Set Visibility Off'),
(38938, 0, 2, 0, 38, 0, 100, 0, 1, 2, 0, 0, '0', 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Garrosh Hellscream - On Respawn - Set Visibility Off');


DELETE FROM `smart_scripts` WHERE `entryorguid`=38953;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38953, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, '0', 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Vol\'jin - On Respawn - Set Visibility Off'),
(38953, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, '0', 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Vol\'jin - On Respawn - Set Visibility Off'),
(38953, 0, 2, 0, 38, 0, 100, 0, 1, 2, 0, 0, '0', 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vision of Vol\'jin - On Respawn - Set Visibility Off');
