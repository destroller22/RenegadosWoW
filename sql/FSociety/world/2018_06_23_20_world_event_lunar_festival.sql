UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `id`=15879;

DELETE FROM `game_event_creature` WHERE `guid` IN (354634,354636,354638,354661,354684,354686,354689,354691,354863,354865,354867,355202,355204);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(7, 354634),
(7, 354636),
(7, 354638),
(7, 354661),
(7, 354684),
(7, 354686),
(7, 354689),
(7, 354691),
(7, 354863),
(7, 354865),
(7, 354867),
(7, 355202),
(7, 355204);

