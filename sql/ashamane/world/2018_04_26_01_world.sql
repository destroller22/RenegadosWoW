-- Remove SAI form DB implemented in C++

UPDATE`creature_template` SET AIName = "" ,ScriptName= "mob_tushui_trainee" WHERE entry = 54587;
UPDATE`creature_template` SET AIName = "" ,ScriptName= "mob_tushui_trainee" WHERE entry = 65471;
UPDATE`creature_template` SET AIName = "" ,ScriptName= "mob_instructor_zhi" WHERE entry = 61411;

-- Tushui Trainee SAI
SET @ENTRY := 54587;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5356500,5356501,5356502,5356503,@ENTRY*100+00,@ENTRY*100+05,@ENTRY*100+06,@ENTRY*100+07,@ENTRY*100+08) AND `source_type`=9;

-- Tushui Trainee SAI
SET @ENTRY := 65471;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5356500,5356501,5356502,5356503,5458700,5458705,5458706,5458707,5458708) AND `source_type`=9;

-- Instructor Zhi SAI
SET @ENTRY := 61411;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100+00,@ENTRY*100+01,@ENTRY*100+02,@ENTRY*100+03) AND `source_type`=9;
