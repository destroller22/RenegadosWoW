DELETE FROM `spell_script_names` WHERE `ScriptName` LIKE 'spell_warr_ravager_periodic_dummy' OR `ScriptName` LIKE 'spell_warr_ravager';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(152277, 'spell_warr_ravager_periodic_dummy'), 
(152277, 'spell_warr_ravager'),
(228920, 'spell_warr_ravager');