-- http://www.wowhead.com/quest=25672/carcass-collection

UPDATE `creature_template` SET `unit_flags`='16777216' WHERE (`entry`='41099');
UPDATE `creature_template` SET `unit_flags`='16777216' WHERE (`entry`='41100');
UPDATE `creature_template` SET `unit_flags`='16777216' WHERE (`entry`='41104');
UPDATE `creature_template` SET `unit_flags`='16777216' WHERE (`entry`='41103');

DELETE FROM npc_spellclick_spells WHERE npc_entry IN (410990,41100,41104,41103);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('410990', '93455', '1', '0');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('41100', '93455', '1', '0');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('41104', '93455', '1', '0');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('41103', '93455', '1', '0');
-- Saltstone Crystalhide SAI
SET @ENTRY := 41099;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,11,93455,0,0,0,0,0,7,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Despawn In 500 ms");

-- Saltstone Crystalhide SAI
SET @ENTRY := 41100;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,11,93455,0,0,0,0,0,7,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Despawn In 500 ms");

-- Saltstone Crystalhide SAI
SET @ENTRY := 41104;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,11,93455,0,0,0,0,0,7,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Despawn In 500 ms");

SET @ENTRY := 41103;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,11,93455,0,0,0,0,0,7,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saltstone Crystalhide - On Spellclick - Despawn In 500 ms");

