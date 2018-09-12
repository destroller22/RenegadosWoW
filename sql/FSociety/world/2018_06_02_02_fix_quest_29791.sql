-- Shang Xi's Hot Air Balloon SAI
SET @ENTRY := 55649;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100+00,@ENTRY*100+01,@ENTRY*100+02) AND `source_type`=9;


/* DELETE SAI

-- Shang Xi's Hot Air Balloon SAI
SET @ENTRY := 55649;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100+00,@ENTRY*100+01,@ENTRY*100+02) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,59,1,3,1,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Just Spawned - Set Run"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Just Spawned - Run Script"),
(@ENTRY,0,2,0,31,0,100,0,82721,0,0,0,85,46598,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On Spellhit Target - Invoker Cast Ride Vehicle Hardcoded"),
(@ENTRY,0,3,0,40,0,100,0,1,55649,0,0,59,1,9,1,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Run"),
(@ENTRY,0,4,0,40,0,100,0,2,55649,0,0,45,2,2,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,5,0,40,0,100,0,4,55649,0,0,45,2,3,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,6,7,40,0,100,0,5,55649,0,0,86,114898,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su + Talk Anim 0"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Run Script"),
(@ENTRY,0,8,9,40,0,100,0,6,55649,0,0,86,118571,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Run Script"),
(@ENTRY,0,10,11,40,0,100,0,9,55649,0,0,45,2,5,0,0,0,0,29,2,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,59,1,16,1,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Run"),
(@ENTRY,0,12,0,40,0,100,0,11,55649,0,0,59,1,36,1,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Run"),
(@ENTRY,0,13,0,40,0,100,0,12,55649,0,0,45,2,7,0,0,0,0,29,2,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,14,0,40,0,100,0,14,55649,0,0,45,2,8,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,15,0,40,0,100,0,15,55649,0,0,11,105010,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cast Speak to Shen-zin Su Credit"),
(@ENTRY,0,16,0,40,0,100,0,18,55649,0,0,45,2,9,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,17,18,58,0,100,0,21,55649,0,0,11,60603,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Cast Eject Passenger 1"),
(@ENTRY,0,18,19,61,0,100,0,0,0,0,0,11,45472,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Cast Parachute"),
(@ENTRY,0,19,20,61,0,100,0,0,0,0,0,45,3,1,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Set Data"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Despawn"),
(@ENTRY,0,21,0,28,0,100,0,0,0,0,0,28,105002,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On Passenger Removed - Remove Aura"),
(@ENTRY*100+00,9,0,0,0,0,100,0,1000,1000,0,0,11,105895,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Hot Air Balloon Credit"),
(@ENTRY*100+00,9,1,0,0,0,100,0,0,0,0,0,44,1885,0,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Remove Phase"),
(@ENTRY*100+00,9,2,0,0,0,100,0,0,0,0,0,11,82721,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Reverse Cast Ride Vehicle (HC) on Demon Creator"),
(@ENTRY*100+00,9,3,0,0,0,100,0,0,0,0,0,18,34816,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Unit Flags 2"),
(@ENTRY*100+00,9,4,0,0,0,100,0,2000,2000,0,0,11,106617,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Reverse Cast Ride Vehicle, Seat 2"),
(@ENTRY*100+00,9,5,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.244346,"Shang Xi's Hot Air Balloon - Set Orientation"),
(@ENTRY*100+00,9,6,0,0,0,100,0,0,0,0,0,19,32768,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Remove Unit Flags 2"),
(@ENTRY*100+00,9,7,0,0,0,100,0,2000,2000,0,0,53,1,55649,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Start WP"),
(@ENTRY*100+00,9,8,0,0,0,100,0,0,0,0,0,45,2,1,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Data"),
(@ENTRY*100+00,9,9,0,0,0,100,0,0,0,0,0,4,33099,0,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Play Sound"),
(@ENTRY*100+01,9,0,0,0,0,100,0,14000,14000,0,0,86,106759,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su"),
(@ENTRY*100+02,9,0,0,0,0,100,0,14000,14000,0,0,86,118571,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1"),
(@ENTRY*100+02,9,1,0,0,0,100,0,15000,15000,0,0,45,2,4,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Data");

*/