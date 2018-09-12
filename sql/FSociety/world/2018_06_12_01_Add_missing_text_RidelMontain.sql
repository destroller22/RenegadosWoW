-- := 'Bridge Worker Trent';
/* Step 1.6 Table  `creature_text */
SET @ENTRY 		:= '648';
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'HO!', '12', '0', '100', '0', '0', '0', '43183', '0', 'Bridge Worker Trent'); 

/* Step 1.6 Table  `creature_text */
-- SET @CREATURE  	:= 'Redridge Citizen';
SET @ENTRY 		:= '43222';
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'My spouse has gone missing! Please help!', '12', '7', '100', '22', '0', '0', '43745', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '1', 'Townspeople are disappearing, Solomon. What are you going to do about it?', '12', '7', '100', '22', '0', '0', '43746', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '2', 'It\'s time to wake up, magistrate! These aren\'t ordinary gnoll attacks!', '12', '7', '100', '25', '0', '0', '43747', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '3', 'Where is the help that we requested from Stormwind?', '12', '7', '100', '4', '0', '0', '43748', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '4', 'What are we paying our taxes for if your guards can\'t even keep gnolls out?', '12', '7', '100', '53', '0', '0', '43749', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '5', 'My children were kidnapped while they slept! I WANT ANSWERS, SOLOMON!', '12', '7', '100', '5', '0', '0', '43750', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '6', 'You better do something quick or you\'ll have a riot on your hands, Solomon!', '12', '7', '100', '53', '0', '0', '43751', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '7', 'The gnolls have never been this aggressive. What\'s going on, Solomon? Tell us!', '12', '7', '100', '25', '0', '0', '43752', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '8', 'How long must we stand here before our pleas are heard?', '12', '7', '100', '53', '0', '0', '43753', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '9', 'Get this damned line moving!', '12', '7', '100', '15', '0', '0', '43754', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '10', 'You\'re good for nothing, Solomon!', '12', '7', '100', '14', '0', '0', '43755', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '11', 'You can forget about re-election, magistrate!', '12', '7', '100', '274', '0', '0', '43756', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '12', 'No justice, no peace!', '12', '7', '100', '22', '0', '0', '43757', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '13', 'If you don\'t do something about these gnolls, we will!', '12', '7', '100', '25', '0', '0', '43758', '0', 'Redridge Citizen'), 
(@ENTRY, '0', '14', 'Please help me! I\'m the last member of my family left. Everyone else has been kidnapped!', '12', '7', '100', '15', '0', '0', '43759', '0', 'Redridge Citizen'), 
(@ENTRY, '1', '0', 'Forget you, Solomon. I\'ll find my family by myself.', '12', '7', '100', '14', '0', '0', '43760', '0', 'Redridge Citizen'); 

-- SET @CREATURE  	:= 'Bridge Worker Alex';
SET @ENTRY 		:= '653';
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'PUT YOUR BACKS INTO IT, BOYS!', '12', '0', '100', '0', '0', '0', '43181', '0', 'Bridge Worker Alex'), 
(@ENTRY, '1', '0', 'HEAVE!', '12', '0', '100', '0', '0', '0', '43182', '0', 'Bridge Worker Alex'), 
(@ENTRY, '2', '0', 'DAMN ROCK WON\'T BUDGE!', '12', '0', '100', '0', '0', '0', '43184', '0', 'Bridge Worker Alex'), 
(@ENTRY, '3', '0', 'We\'ll get you out of there, Foreman, just HANG ON!', '12', '0', '100', '0', '0', '0', '43187', '0', 'Bridge Worker Alex'), 
(@ENTRY, '4', '0', 'PUSH HARDER!', '12', '0', '100', '0', '0', '0', '43185', '0', 'Bridge Worker Alex'); 

/* Step 1.6 Table  `creature_text */
-- SET @CREATURE  	:= 'Bridge Worker Matthew';
SET @ENTRY 		:= '652';
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'HO!', '12', '0', '100', '0', '0', '0', '43183', '0', 'Bridge Worker Matthew'), 
(@ENTRY, '1', '0', 'I\'M PUSHIN\' AS HARD AS I CAN! THING WEIGHS A TON!', '12', '0', '100', '0', '0', '0', '43186', '0', 'Bridge Worker Matthew'); 


/* Step 1.6 Table  `creature_text */
-- SET @CREATURE  	:= 'Bridge Worker Daniel';
SET @ENTRY 		:= '651';
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'HO!', '12', '0', '100', '0', '0', '0', '43183', '0', 'Bridge Worker Daniel'); 

