-- Correction for Aysa in the Shamber And Fix The Script for boss_zhao_ren

UPDATE creature_template SET ScriptName = "boss_zhao_ren" WHERE ScriptName = "npc_zhaoren";
UPDATE creature_template SET ScriptName = "npc_aysa_in_wind_temple" ,AIName = "" WHERE  entry = 55595; 


-- Aysa Cloudsinger SAI
SET @ENTRY := 55595;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;