-- http://www.wowhead.com/object=207520/maplewood-treasure-chest  
-- http://www.wowhead.com/object=207484/sturdy-treasure-chest
-- http://www.wowhead.com/object=207517/silken-treasure-chest
-- http://www.wowhead.com/item=67099/waistguard-of-new-days#contained-in-object
-- Fuera de posicion

DELETE FROM `gameobject` WHERE (`guid`='184230');
DELETE FROM `gameobject` WHERE (`guid`='1531480');
DELETE FROM `gameobject` WHERE (`guid`='21003861');
DELETE FROM `gameobject` WHERE (`guid`='170381');
DELETE FROM `gameobject` WHERE (`guid`='171566');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='2850') AND (`Item`='67099');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='2850') AND (`Item`='102291');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='2850') AND (`Item`='37792');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='2850') AND (`Item`='102318');