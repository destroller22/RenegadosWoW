-- quest 26329 NPC que recoge la Mision 42317 (High Tinker Mekkatorque)


DELETE FROM `creature_questender` WHERE `id`=42317 AND `quest`=26329;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (42317, 26329);