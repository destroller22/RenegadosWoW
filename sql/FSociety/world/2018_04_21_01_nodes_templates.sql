-- Mining Nodes
-- Pool Templates
DELETE FROM `pool_template` WHERE `entry` IN (1020063,1020060,1020059);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(1020063, 1, 'Mining - Duskwood spawn 64'),
(1020059, 1, 'Mining - Duskwood spawn 60'),
(1020060, 1, 'Mining - Duskwood spawn 61');

-- Object Templates
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (1020063,1020060,1020059);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(305678, 1020063, 20, 'Mining node 64 - Duskwood'),
(312982, 1020063, 20, 'Mining node 64 - Duskwood'),
(315923, 1020063, 20, 'Mining node 64 - Duskwood'),
(322895, 1020063, 20, 'Mining node 64 - Duskwood'),
(319393, 1020063, 20, 'Mining node 64 - Duskwood'),
-- 60
(305682, 1020059, 20, 'Mining node 60 - Duskwood '),
(312986, 1020059, 7, 'Mining node 60 - Duskwood '),
(315927, 1020059, 15, 'Mining node 60 - Duskwood '),
(319397, 1020059, 27, 'Mining node 60 - Duskwood '),
(322899, 1020059, 31, 'Mining node 60 - Duskwood '),
-- 61
(305681, 1020060, 20, 'Mining node 60 - Duskwood '),
(312985, 1020060, 7, 'Mining node 60 - Duskwood '),
(315926, 1020060, 15, 'Mining node 60 - Duskwood '),
(319396, 1020060, 27, 'Mining node 60 - Duskwood '),
(322898, 1020060, 31, 'Mining node 60 - Duskwood ');



