DELETE FROM `page_text` WHERE `ID`=3614;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES 
('3614', 'Citizens of Orgrimmar, beware the soothsayers and prophets of doom that have taken over our streets. Do not be taken in by their mad raving. They only want to weaken us in the face of our true enemies!', '0', '0', '0', '12340');

UPDATE `gameobject_template` SET `Data12`=1  WHERE `entry` IN (213571,
213572,
213579,
213574,
213576,
213575,
213580,
213581,
213577,
213582,
213578,
213588,
213583,
213590,
213589,
213587,
213586,
213591,
213584,
213585);