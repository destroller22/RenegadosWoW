




-- table `lfg_dungeon_template` contains coordinates for wrong dungeon 18
-- table `lfg_dungeon_template` contains coordinates for wrong dungeon 165

DELETE FROM `lfg_dungeon_template` WHERE  `dungeonId`=18;
DELETE FROM `lfg_dungeon_template` WHERE  `dungeonId`=165; 

-- Creature (ID: 12780): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 12780): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 12784): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 12784): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 31146): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 31146): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 46647): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 46647): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 59441): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 59441): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 1432): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 6174): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 6174): MaxLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 69975): MinLevel 0 is not within [1, 255], value has been set to 1.
-- Creature (ID: 69975): MaxLevel 0 is not within [1, 255], value has been set to 1.
UPDATE `creature_template` SET `minlevel`='55', `maxlevel`='55' WHERE  `entry`=12780;
UPDATE `creature_template` SET `minlevel`='55', `maxlevel`='55' WHERE  `entry`=12784;
UPDATE `creature_template` SET `minlevel`='1', `maxlevel`='1' WHERE  `entry`=31146;
UPDATE `creature_template` SET `minlevel`='85', `maxlevel`='85' WHERE  `entry`=46647;
UPDATE `creature_template` SET `minlevel`='88', `maxlevel`='88' WHERE  `entry`=59441;
UPDATE `creature_template` SET `minlevel`='45', `maxlevel`='45' WHERE  `entry`=1432;
UPDATE `creature_template` SET `minlevel`='5', `maxlevel`='5' WHERE  `entry`=6174;
UPDATE `creature_template` SET `minlevel`='65', `maxlevel`='65' WHERE  `entry`=69975;

-- Table `creature_queststarter` has creature entry (26905) for quest 13087, but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER
-- Table `creature_questender` has creature entry (26905) for quest 13087, but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER
-- Table `creature_questender` has creature entry (50432) for quest 25221, but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER
-- Table `creature_questender` has creature entry (50432) for quest 25597, but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER
-- Table `creature_questender` has creature entry (50432) for quest 25982, but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER

UPDATE `creature_template` SET `npcflag`='83' WHERE  `entry`=26905;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=50432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124270;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124264;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124269;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124268;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124263;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124257;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124253;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124278;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124277;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124284;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124285;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124279;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124283;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124282;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124296;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124311;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124306;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124330;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124339;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124345;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124359;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124350;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124361;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124349;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 124367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124366;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124378;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124386;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124387;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124381;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124402;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124401;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124408;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124417;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124436;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124437;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124438;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124433;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124454;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124449;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124455;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124473;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124476;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124480;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124489;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124502;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124512;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124511;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124515;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124516;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124530;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124539;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124533;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124543;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124545;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124544;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124550;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124551;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124552;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124548;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124564;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124568;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124575;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124578;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124590;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124587;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124591;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124592;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124614;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124622;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124619;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124626;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124617;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124632;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124629;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124627;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124633;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124637;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124645;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124649;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124653;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124660;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124659;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124668;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124677;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124682;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124696;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124690;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124711;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124735;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124739;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124736;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124746;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124754;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124763;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124761;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124777;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124769;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124771;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124772;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124791;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124803;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124815;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124816;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124822;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124825;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124833;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124840;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124837;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124864;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124872;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124884;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124894;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124893;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124901;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124902;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124911;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124913;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124908;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124920;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124929;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124936;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124941;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124945;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124955;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124971;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124974;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124973;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124975;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124970;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 124987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124988;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124977;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124990;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 124994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124989;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125008;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 124996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125013;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125017;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125018;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125014;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125026;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125027;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125036;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125024;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125028;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125040;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125039;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125051;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125050;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125056;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125048;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125055;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125057;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125058;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125052;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125062;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125066;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125064;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125089;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125122;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125124;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125147;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125155;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125169;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125172;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125190;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125197;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125196;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125220;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125222;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125234;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125238;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125237;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125230;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125232;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125249;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125247;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125255;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125258;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125257;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125264;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125269;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125283;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125272;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125285;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125277;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125284;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125296;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125289;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125306;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125336;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125331;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125337;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125342;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125350;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125353;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125389;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125387;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125391;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125396;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125398;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125401;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125425;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125417;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125414;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125433;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125430;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125442;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125443;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125436;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125437;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125454;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125461;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125449;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125473;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125476;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125464;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125478;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125480;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125469;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125483;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125503;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125498;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125496;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125502;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125513;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125512;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125514;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125520;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125509;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125510;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125518;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125511;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125508;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125521;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125519;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125515;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125527;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125532;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125535;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125545;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125565;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125574;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125582;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125589;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125590;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125617;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125622;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125679;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125682;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125683;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125678;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125704;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125734;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125777;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125815;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125816;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125837;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125823;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125840;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125822;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125842;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125850;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 125855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125839;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125872;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125864;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125884;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125883;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125885;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125882;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125878;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125879;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125894;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125893;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125887;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125876;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125897;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125902;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125908;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125911;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125910;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125912;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125904;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125903;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125913;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125909;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125921;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125920;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125926;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125936;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125938;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125941;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125975;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125980;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125979;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 125983;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 125992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126012;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126013;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126024;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126040;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126014;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126031;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126036;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126038;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126043;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126042;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126044;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126046;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126045;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 126047;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126050;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126048;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126051;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126057;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126062;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126066;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126052;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126054;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126072;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126086;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126118;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126124;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126133;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126144;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126151;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126159;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126172;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126173;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126171;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126168;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126169;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126186;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126183;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126196;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126194;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126197;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126190;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126191;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126205;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126209;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126221;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126227;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126228;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126247;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126237;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126249;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126244;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126250;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126257;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126258;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126255;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126265;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126266;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126268;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126263;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126264;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126279;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126283;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126278;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126285;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126284;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126289;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126306;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126308;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126327;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126333;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126311;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126331;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126361;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126365;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126367;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126375;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126391;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126376;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126373;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126387;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126401;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126405;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126409;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126413;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126408;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126414;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126417;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126418;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126425;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126436;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126437;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126433;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126445;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126443;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126449;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126454;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126455;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126480;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126487;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126489;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126496;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126500;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126502;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126511;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126519;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126521;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126535;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126530;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126539;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126541;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126551;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126544;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126550;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126545;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126552;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126565;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126575;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126564;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126574;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126591;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126590;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126594;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126608;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126601;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126619;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126614;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126623;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126630;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126632;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126627;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126633;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126629;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126637;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126642;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126645;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126649;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126653;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126660;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126659;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126661;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126662;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126680;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126668;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126699;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126690;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126696;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126708;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126736;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126739;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126763;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126772;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126811;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126808;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126815;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126822;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126864;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126872;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126884;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126893;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126894;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126908;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126911;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126926;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126943;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126944;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126945;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126947;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126951;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126946;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126941;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126953;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126972;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126975;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126970;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126963;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126977;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126965;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126981;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 126982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126989;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126990;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126993;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126994;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 126992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127008;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 126991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127018;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127013;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127028;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127015;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127036;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127045;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127051;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127043;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127057;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127048;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127056;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127062;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127064;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127065;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127096;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127114;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127122;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127118;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127140;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127155;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127147;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127156;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127171;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127173;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127169;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127183;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127172;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127186;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127191;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127190;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127187;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127197;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127196;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127209;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127220;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127234;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127237;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127242;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127257;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127247;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127255;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127270;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127264;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127272;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127269;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127265;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127280;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127268;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127283;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127277;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127279;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127285;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127278;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127296;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127308;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127306;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127311;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127331;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127317;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127330;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127318;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127327;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127345;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127350;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127361;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127370;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127401;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127408;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127402;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127414;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127443;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127433;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127437;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127455;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127454;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127461;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127449;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127473;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127476;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127480;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127489;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127500;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127502;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127510;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127511;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127499;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127518;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127521;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127520;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127535;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127515;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127533;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127534;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127539;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127543;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127541;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127548;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127545;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127565;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127568;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127575;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127601;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127608;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127617;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127619;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127614;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127637;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127659;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127660;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127661;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127662;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127649;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127680;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127708;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127713;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127711;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127735;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127763;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127754;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127751;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127752;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127761;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127777;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127793;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127811;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127808;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127803;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127816;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127815;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127830;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127837;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127862;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127849;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127868;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127866;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127867;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127864;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127865;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127872;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127880;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127878;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127882;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127869;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127873;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127877;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127890;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127879;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127893;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127892;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127894;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127896;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127897;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127898;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 127895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127911;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127908;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127909;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 127920;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127913;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127936;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127938;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127929;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127945;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127956;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127983;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127974;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127975;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127977;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127989;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 127992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128006;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128009;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128007;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128010;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128011;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128016;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128028;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128014;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128027;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128032;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128013;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128024;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128025;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128038;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128036;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128008;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128033;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128047;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128046;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128052;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128045;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128054;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128056;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128057;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128060;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128061;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128064;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128062;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128066;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128105;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128118;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128132;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128136;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128152;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128155;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128167;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128166;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128158;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128164;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128169;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128161;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128173;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128163;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128175;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128170;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128172;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128191;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128180;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128171;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128190;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128183;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128187;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128188;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128201;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128206;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128207;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128199;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128204;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128205;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128202;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128215;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128217;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128226;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128219;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128224;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128233;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128242;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128237;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128243;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128257;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128276;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128285;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128292;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128296;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128290;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128318;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128317;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128331;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128333;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128330;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128346;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128343;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128345;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 128359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128361;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128362;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128370;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128365;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128364;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128366;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128387;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128402;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128425;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128414;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128417;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128433;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128443;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128461;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128473;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128500;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128496;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128510;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128516;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128515;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128519;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128518;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128520;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128550;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128548;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128553;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128551;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128564;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128565;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128589;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128591;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128590;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128597;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128608;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128622;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128619;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128623;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128625;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128629;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128632;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128633;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128645;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128649;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128662;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128660;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128668;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128680;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128696;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128690;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128693;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128699;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128711;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128718;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128726;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128735;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128739;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128746;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128754;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128763;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128768;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128777;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128782;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128772;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128785;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128793;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128801;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128815;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128816;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128840;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128882;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128884;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128902;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128911;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128920;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128926;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128938;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128936;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 128949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128945;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128956;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128965;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128974;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128988;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 128983;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129008;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129013;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129024;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129026;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129028;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129031;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129027;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129036;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129043;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129045;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129046;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129051;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129047;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129048;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129052;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129054;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129057;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129056;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129066;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129124;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129143;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129155;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129183;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129209;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129211;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129247;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129250;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129255;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129263;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129268;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129264;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129272;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129270;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129278;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129277;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129279;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129282;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129284;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129285;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129289;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129296;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129306;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129308;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129311;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129327;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129330;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129333;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129345;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129350;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129392;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129391;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129402;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129401;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129436;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129433;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129437;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129449;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129473;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129489;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129496;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129500;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129504;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129511;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129516;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129515;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129518;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129517;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129519;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129521;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129534;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129533;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129535;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129539;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129545;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129543;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129541;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129544;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129548;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129553;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129551;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129552;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129564;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129575;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129574;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129591;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129592;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129594;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129601;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129604;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129597;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129617;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129614;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129629;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129633;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129637;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129645;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129659;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129653;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129660;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129661;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129662;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129668;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129696;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129711;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129708;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129736;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129735;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129746;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129772;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129793;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129803;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129801;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129808;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129822;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129811;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129860;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129861;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129872;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 129876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129864;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129897;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129884;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129894;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129893;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129908;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129929;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129938;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129956;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129977;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129975;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129988;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 129999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130014;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130008;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130018;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130026;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130024;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130031;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130027;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130028;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130043;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130045;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130047;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130052;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130062;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130056;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130057;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130064;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130118;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130122;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130143;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130147;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130169;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130171;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130173;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130183;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130172;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130186;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130187;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130196;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130205;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130197;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130191;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130213;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 130216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130209;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130234;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130237;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130242;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130255;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130258;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130257;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130274;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130272;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130270;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130268;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130302;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130308;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130317;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130318;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130330;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130333;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130338;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130350;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130359;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130361;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130387;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130391;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130399;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130401;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130414;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130425;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130436;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130452;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130485;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130474;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130496;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130511;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130502;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130510;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130521;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130535;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130541;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130543;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130545;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130550;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130553;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130568;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130589;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130590;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130594;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130601;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130623;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130627;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130622;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130633;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130640;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 130654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130652;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130649;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130653;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130660;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130679;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130690;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130708;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130712;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130741;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130746;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130754;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130797;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130801;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130808;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130811;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130816;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130822;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130815;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130818;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130840;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130872;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130884;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130882;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130894;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130893;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130897;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130902;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130909;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 130911;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130913;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130926;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130920;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130938;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130936;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130941;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130945;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130956;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130965;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130982;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130974;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130975;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130977;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130983;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130988;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 130995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131006;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 131013;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131014;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131018;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131043;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131048;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131052;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131054;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131062;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131118;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131115;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131122;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131124;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131144;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131143;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131155;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131159;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131171;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131173;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131196;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131186;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131205;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131220;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131234;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131242;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131256;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131250;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131249;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131257;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131258;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131260;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131264;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131277;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131272;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131270;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131278;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131271;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131269;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131279;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131283;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131282;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131284;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131289;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131288;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131297;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131308;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131309;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131311;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131306;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131313;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131317;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131314;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131318;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131320;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131324;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131345;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131327;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131344;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131333;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131331;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131343;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131348;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131352;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131350;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131354;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131356;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131362;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131374;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131379;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131390;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131401;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131406;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131398;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131402;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131396;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131408;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131416;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131417;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131419;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131421;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131425;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131427;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131428;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131420;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131434;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131433;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131443;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131441;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131445;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131453;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131461;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131478;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131470;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131469;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131472;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131476;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131477;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131480;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131486;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131484;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131488;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131492;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131493;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131495;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131497;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131494;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131498;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131499;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131500;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131489;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131502;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131505;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131509;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131507;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131503;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131510;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131508;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131513;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131514;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131518;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131516;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131512;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131519;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131520;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131533;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131536;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131521;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131531;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131534;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131540;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131522;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131525;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131538;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131530;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131524;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131547;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131543;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131555;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131541;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131546;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131535;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131551;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131548;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131552;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131558;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131544;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131556;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131557;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131561;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131560;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131559;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131567;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131575;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131573;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131564;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131574;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131576;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131577;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131579;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131582;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131589;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131594;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131588;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131598;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131601;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131608;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131613;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131614;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131622;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 131623;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131627;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131629;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131632;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131635;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131645;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131654;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131659;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131662;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131661;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131658;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131669;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131663;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131667;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131670;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131680;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131681;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131677;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131687;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131690;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131691;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131696;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131697;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131699;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131707;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131711;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131715;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131723;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131732;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131743;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131735;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131739;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131746;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131750;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131759;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131755;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131763;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131772;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131776;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131777;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131782;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131793;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131798;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131801;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131802;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131808;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131812;

UPDATE `creature_template` SET `faction` = '11' WHERE `entry` = 131814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131820;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131825;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131832;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 131838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131834;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131835;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 131839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131836;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 131837;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131840;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131864;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131872;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131889;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131874;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131882;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131897;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131894;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 131903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131902;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131915;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131907;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131913;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131911;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131928;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131917;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131912;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131926;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131914;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131941;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131933;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131940;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131929;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131936;

UPDATE `creature_template` SET `faction` = '11' WHERE `entry` = 131946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131938;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 131943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131945;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131949;

UPDATE `creature_template` SET `faction` = '11' WHERE `entry` = 131957;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131958;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131965;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131977;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131983;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131980;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131974;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131988;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131989;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131992;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 131998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132001;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132002;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132000;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132009;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132010;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132013;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132026;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132015;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132027;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132017;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132016;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132024;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132033;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132030;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 132042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132045;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132031;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132036;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132041;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132047;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132046;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132051;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 132055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132052;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132058;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132057;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 132062;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 132064;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132072;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132066;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132065;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132096;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132118;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132129;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132122;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132138;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132132;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132124;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132131;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132141;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132130;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132145;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132144;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132147;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132159;

UPDATE `creature_template` SET `faction` = '85' WHERE `entry` = 132164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132146;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132143;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132169;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132161;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132183;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132184;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132171;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132172;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132170;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132190;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132187;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132191;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132210;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132205;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132216;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132220;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132219;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132211;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132234;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132232;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132233;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132248;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132255;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132250;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132258;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132263;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132253;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132274;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 132281;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132264;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132272;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132268;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132269;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132273;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132275;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132276;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132287;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132280;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132278;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132279;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132277;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132290;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132282;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132289;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132293;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132291;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132286;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132292;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132294;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132295;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132298;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132296;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132301;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132299;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132300;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132305;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132304;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132303;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132307;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132323;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132325;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132310;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132311;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132328;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132317;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132316;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132315;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132318;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132312;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132319;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132322;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132326;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132327;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132321;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132340;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132329;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132331;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132334;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132335;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132332;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132337;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132336;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132339;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132341;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132342;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132345;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132353;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132346;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132358;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132357;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132349;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132347;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132351;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132360;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132361;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132366;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132355;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132363;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132364;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132371;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132365;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132368;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132367;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132380;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132369;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132382;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132370;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132373;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132385;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132375;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132372;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132376;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132381;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132384;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132387;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132377;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132378;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132386;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132383;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132397;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132388;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132389;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132400;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132393;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132392;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132407;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132394;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132395;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132402;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132401;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132403;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132404;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132405;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132415;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132418;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132411;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132408;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132412;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132409;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132413;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132410;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132424;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132435;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132426;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132423;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132422;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132429;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132430;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132431;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132438;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132432;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132439;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132440;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132442;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132444;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132448;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132446;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132447;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132457;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132450;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132458;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132459;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132460;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132462;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132456;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132463;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132464;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132451;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132465;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132467;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132466;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132461;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132483;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132468;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132471;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132475;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132479;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132482;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132481;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132487;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132490;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132491;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132501;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132502;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132506;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132517;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132520;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132528;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132523;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132527;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132537;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132529;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132530;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132533;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132526;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132532;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132542;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132550;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132549;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132552;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132554;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132553;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132563;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132562;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132566;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132565;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132568;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132569;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132578;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132570;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132571;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132572;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132584;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132580;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132593;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132594;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132591;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132583;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132585;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132581;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132587;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132586;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132596;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132595;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132606;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132597;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132599;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132600;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132601;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132604;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132602;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132605;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132616;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132603;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132610;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132607;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132611;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132609;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132612;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132620;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132621;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132622;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132615;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132623;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132617;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132627;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132619;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132632;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132618;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132626;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132624;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132625;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132628;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132630;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132634;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132636;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132638;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132631;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132648;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132637;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132640;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132641;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132642;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132644;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132643;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132639;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132646;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132647;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132650;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132651;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132653;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132655;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132657;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132672;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132659;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132662;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132666;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132668;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132676;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132675;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132671;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132656;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132664;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132674;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132673;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132661;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132665;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132682;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132678;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132680;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 132684;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132683;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132688;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132685;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132692;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132686;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132694;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132689;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132702;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132693;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132695;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132700;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132698;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132704;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132705;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132703;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132701;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132699;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132711;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132714;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132709;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132708;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132713;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132710;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132706;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132717;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132718;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132716;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132730;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132721;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132720;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132719;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132725;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132738;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132724;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132728;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132726;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132722;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132729;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132736;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132733;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132727;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132734;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132737;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132739;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132740;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132742;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132747;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132749;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132731;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132748;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132745;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132744;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132757;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132754;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132752;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132756;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132751;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132758;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132753;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132761;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132769;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132762;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132760;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132764;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132770;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132766;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132767;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132771;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132777;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132773;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132763;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132768;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132778;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132765;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132774;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132775;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132780;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132779;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132790;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132791;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132785;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132783;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132784;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132781;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132793;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132792;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132795;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132789;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132794;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132787;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132788;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132786;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132796;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132800;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132799;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132803;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132810;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132804;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132811;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132809;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132801;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132806;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132813;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132805;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132807;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132814;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132816;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132817;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132812;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132819;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132822;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132821;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132826;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132824;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132823;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132827;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132828;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132831;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132836;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132833;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132832;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132829;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132830;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132835;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132838;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132839;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132837;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132841;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132842;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132843;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132850;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132846;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132845;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132844;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132851;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132848;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132852;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132847;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132854;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132856;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132855;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132853;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132860;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132858;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132857;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132861;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132859;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132863;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132862;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132864;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132849;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132868;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132865;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132867;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132866;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132871;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132869;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132873;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132870;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132875;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132876;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132877;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132879;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132878;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132881;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132880;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132882;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132883;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132892;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132891;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132894;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132900;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132886;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132885;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132896;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132887;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132899;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132898;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132897;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132893;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132890;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132888;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132895;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132901;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132902;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132903;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132904;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132905;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132910;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132909;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132913;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132921;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132916;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132906;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132919;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132908;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132922;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132918;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132920;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132923;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132925;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132924;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132932;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132931;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132930;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132929;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132927;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132936;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132941;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132934;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132935;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132939;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132937;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132942;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132944;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132943;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132960;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132948;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132947;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132950;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132946;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132951;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132952;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132949;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132955;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132956;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132953;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132962;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132959;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132961;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132963;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132954;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132965;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132964;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132969;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132970;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132971;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132972;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132967;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132968;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132966;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132976;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132981;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132973;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132978;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132979;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132984;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132985;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132987;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132999;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132990;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132995;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132986;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132991;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132994;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132996;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132993;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132997;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133011;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133004;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133005;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132998;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133006;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133012;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 132989;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133007;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133003;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133019;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133022;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133020;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133023;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133026;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133021;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133025;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133038;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133027;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133030;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133031;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133029;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133028;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133039;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133042;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133032;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133035;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133045;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133048;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133046;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133034;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133043;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133049;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133047;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133053;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133040;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133037;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133044;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133056;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133059;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133064;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133066;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133050;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133054;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133055;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133057;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133060;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133071;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133058;

UPDATE `creature_template` SET `faction` = '2240' WHERE `entry` = 133063;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133061;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133070;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133067;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133069;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133081;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133082;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133083;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133084;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133085;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133075;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133068;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133080;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133074;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133073;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133076;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133078;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133087;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133086;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133077;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133079;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133088;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133089;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133091;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133090;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133104;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133106;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133093;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133109;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133094;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133095;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133108;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133092;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133098;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133097;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133099;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133100;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133102;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133105;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133107;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133101;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133110;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133103;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133114;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133111;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133112;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133117;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133113;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133120;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133119;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133121;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133125;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133128;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133116;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133127;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133123;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133126;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133133;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133136;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133134;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133137;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133135;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133142;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133139;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133147;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133148;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133153;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133149;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133140;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133150;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133164;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133151;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133168;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133157;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133152;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133158;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133156;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133155;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133166;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133160;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133162;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133165;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133163;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133167;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133154;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133177;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133176;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133178;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133180;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133185;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133186;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133188;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133173;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133174;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133175;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133172;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133182;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133179;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133196;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133197;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133183;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133181;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133189;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133198;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133187;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133193;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133192;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133191;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133195;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133194;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133209;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133201;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133199;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133218;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133200;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133203;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133202;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133204;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133213;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133212;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133206;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133220;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133207;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133214;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133217;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133221;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133222;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133224;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133223;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133225;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133215;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133228;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133239;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133208;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133236;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133241;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133227;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133226;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133229;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133237;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133230;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133235;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133238;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133234;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133243;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133240;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133254;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133231;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133242;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133244;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133247;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133246;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133249;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133245;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133262;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133250;

UPDATE `creature_template` SET `faction` = '35' WHERE `entry` = 133263;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133251;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133261;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133259;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133252;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133267;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133265;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133266;

UPDATE `creature_template` SET `faction` = '14' WHERE `entry` = 133264;

-- Table `creature` has creature (GUID: 210118987) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118988) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118989) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118990) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118991) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118992) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).
-- Table `creature` has creature (GUID: 210118993) that have wrong spawn mask 8388870 including unsupported difficulty modes for map (Id: 1753).

UPDATE creature SET spawnmask=6 WHERE spawnmask=8388870;


