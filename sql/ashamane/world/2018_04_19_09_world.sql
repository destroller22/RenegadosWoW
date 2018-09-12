
-- NPC FIX http://es.wowhead.com/npc=43350/utroka-la-maestra-de-llaves#screenshots
UPDATE creature_template SET DamageModifier = 0.1 , HealthModifier = 3 WHERE entry = 43350;