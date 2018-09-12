
DELETE FROM `quest_offer_reward` WHERE `ID` IN (41574 /*41574*/, 41541 /*41541*/, 40618 /*40618*/, 41415 /*41415*/, 44760 /*44760*/, 40384 /*40384*/, 44663 /*44663*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(41574, 603, 0, 0, 0, 0, 0, 0, 0, 'Quizás te sientas $Gmareado:mareada; después de pasar por el teletransportador. Las Islas Quebradas no están a la vuelta de la esquina, ¿eh?', 23420), -- 41574
(41541, 1, 1, 0, 0, 0, 0, 0, 0, '¡Ahí estás! Sabía que harías todo lo posible por encontrar a Titánica.$B$BNo le prestes atención al viejo Huey. La ciudad de los magos no es lugar para un grifo.', 23420), -- 41541
(40618, 1, 1, 0, 0, 0, 0, 0, 0, 'Ahora debes comenzar tu búsqueda del artefacto. No será fácil de obtener, pero estas armas así de poderosas casi nunca lo son.$b$bLuego de que tengas éxito, regresa aquí para que podamos hablar con más tiempo. ¡Tenemos mucho que hacer!', 23420), -- 40618
(41415, 1, 1, 0, 0, 0, 0, 0, 0, 'Cualquiera de las tres armas de las que oíste hablar sería de gran ayuda en la guerra contra la Legión.$b$bSin embargo, tu cruzada debe comenzar solo con una de ellas, así que debes elegir.', 23420), -- 41415
(44760, 0, 0, 0, 0, 0, 0, 0, 0, 'En las islas, la sangre misma de nuestro enemigo intenta corromper todas las cosas. Pero, como tal vez ya sepas, esa sangre puede extraerse.$b$bLos cazadores de demonios usamos esta sangre en nuestros propios rituales para poder combatir la invasión demoníaca.$b$bTráeme toda la sangre de Sargeras que encuentres y te la cambiaré por lo que pueda.', 23420), -- 44760
(40384, 1, 0, 0, 0, 0, 0, 0, 0, 'Tu reputación te precede, $n.$b$bEs importante que hablemos.', 23420), -- 40384
(44663, 1, 1, 0, 0, 0, 0, 0, 0, '¡Ah, $n, qué bueno verte en pie! Los miembros del Concejo de los Seis se están recuperando de su terrible experiencia.$b$bLa intensidad del hechizo de teletransportación puede ser desorientador. Parece que quedaste inconsciente un momento, ¡pero al menos no despertaste $Gpegado:pegada; a un muro!$b$bDalaran fue reubicado en Las Islas Quebradas. ¡Desde aquí, vamos a encabezar los esfuerzos por adquirir los Pilares de la creación y echar a la Legión de Azeroth de una vez por todas!', 23420); -- 44663

DELETE FROM creature_text WHERE creature_text.CreatureID IN (96778,96778,100786,102478,111109);
INSERT INTO `creature_text`  VALUES
(96778, 0, 0, 'Saludos.', 12, 0, 100, 3, 0, 0, 0,0, 'Aemara to Player'),
(96778, 1, 0, 'Saludos, $c.', 12, 0, 100, 3, 0, 0, 0,0, 'Aemara to Player'),
(100786, 0, 0, 'Plumanívea baja volando y planea con expectación. ¡Trae un mensaje!', 41, 0, 100, 0, 0, 0, 0,0, 'Plumanívea to Player'),
(102478, 0, 0, 'Ah, Plumanívea entregó el mensaje. ¡Bien! Te necesitamos.', 12, 0, 100, 1, 0, 64290, 0, 0,'Emmarel Velasombra to Player'),
(102478, 1, 0, 'Vuelve a hablar conmigo cuando regreses a Dalaran. Tenemos mucho de que hablar.', 12, 0, 100, 1, 0, 64291, 0,0, 'Emmarel Velasombra to Player'),
(111109, 0, 0, 'Los recursos de Dalaran están a tu disposición. ¡De aquí, los héroes de la Horda y la Alianza buscarán por igual los Pilares de la creación!', 12, 0, 100, 1, 0, 0, 0,0, 'Emisario Puenteviejo to Player'),
(111109, 1, 0, 'He escuchado rumores sobre poderosos artefactos que podrían serte de utilidad en tu misión. Mantén los ojos abiertos y alguna buena pista se presentará pronto.', 12, 0, 100, 1, 0, 0, 0,0, 'Emisario Puenteviejo to Player'),
(111109, 2, 0, 'Ahora, debo atender a otras visitas. ¡Buena suerte, $n!', 12, 0, 100, 1, 0, 0, 0,0, 'Emisario Puenteviejo to Player');

-- Emissary Auldbridge SAI
SET @ENTRY := 111109;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,44663,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Emissary Auldbridge - On Quest '' Finished - Run Script"),
(@ENTRY*100+00,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Emissary Auldbridge - On Script - Say Line 0"),
(@ENTRY*100+00,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Emissary Auldbridge - On Script - Say Line 1"),
(@ENTRY*100+00,9,2,0,0,0,100,0,10000,10000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Emissary Auldbridge - On Script - Say Line 2");

-- Corregido el spawn de Emissary Auldbridge
UPDATE creature SET position_x = -834.359, position_y = 4399.12, position_z = 737.613, orientation = 4.94856 WHERE guid = 20555653;