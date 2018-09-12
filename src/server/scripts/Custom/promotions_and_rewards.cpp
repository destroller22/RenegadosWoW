/*
* Copyright (C) 2014-2015 RenegadosWOW <http://renegadoswow.com/>
*
* Este codigo es de uso exclusivo y privado para la red de gaming
* Colossus WoW esta totalmente prohibida su distribucion y
* uso en proyectos ajenos, si has obtenido o encontrado este codigo
* publicamente envianos un email a administracion@colossuswow.com
* indicandonos como y donde has obtenido este codigo
*
* Recuerda, no distribuyas, no compartas y no subas este codigo a ningun
* lugar publico, usa siempre nuestros repositorios Git!
*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Language.h"
#include "Player.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include "ObjectMgr.h"


enum MyEnum
{
	// Promotion Multilanguage
	LANG_PROMOTION_ALCHEMY = 11030,
	LANG_PROMOTION_SKINNING = 11031,
	LANG_PROMOTION_ENCHANTING = 11032,
	LANG_PROMOTION_HERBALISM = 11033,
	LANG_PROMOTION_ENGINEERING = 11034,
	LANG_PROMOTION_INSCRIPTION = 11035,
	LANG_PROMOTION_JEWELCRAFTING = 11036,
	LANG_PROMOTION_MINING = 11037,
	LANG_PROMOTION_LEATHERWORKING = 11038,
	LANG_PROMOTION_TAILORING = 11039,

	LANG_PROMOTION_TELEPORT_TO_SW = 11040,
	LANG_PROMOTION_TELEPORT_TO_ORGRI = 11041,

	LANG_PROMOTION_WARRIOR_ARMS_PVP = 11042,
	LANG_PROMOTION_WARRIOR_FURY_PVP = 11043,
	LANG_PROMOTION_WARRIOR_PROTECT_PVP = 11044,
	LANG_PROMOTION_WARRIOR_ARMS_PVE = 11045,
	LANG_PROMOTION_WARRIOR_FURY_PVE = 11046,
	LANG_PROMOTION_WARRIOR_PROTECT_PVE = 11047,

	LANG_PROMOTION_PALADIN_RET_PVP = 11048,
	LANG_PROMOTION_PALADIN_PROTECT_PVP = 11049,
	LANG_PROMOTION_PALADIN_HOLY_PVP = 11050,
	LANG_PROMOTION_PALADIN_RET_PVE = 11051,
	LANG_PROMOTION_PALADIN_PROTECT_PVE = 11052,
	LANG_PROMOTION_PALADIN_HOLY_PVE = 11053,

	LANG_PROMOTION_PRIEST_HEAL_PVP = 11054,
	LANG_PROMOTION_PRIEST_SHADOW_PVP = 11055,
	LANG_PROMOTION_PRIEST_HEAL_PVE = 11056,
	LANG_PROMOTION_PRIEST_SHADOW_PVE = 11057,

	LANG_PROMOTION_SHAMAN_HEAL_PVP = 11058,
	LANG_PROMOTION_SHAMAN_ELEMENTAL_PVP = 11059,
	LANG_PROMOTION_SHAMAN_ENHANCEMENT_PVP = 11060,
	LANG_PROMOTION_SHAMAN_HEAL_PVE = 11061,
	LANG_PROMOTION_SHAMAN_ELEMENTAL_PVE = 11062,
	LANG_PROMOTION_SHAMAN_ENHANCEMENT_PVE = 11063,

	LANG_PROMOTION_DRUID_CASTER_PVP = 11064,
	LANG_PROMOTION_DRUID_HEAL_PVP = 11065,
	LANG_PROMOTION_DRUID_FERAL_PVP = 11066,
	LANG_PROMOTION_DRUID_CASTER_PVE = 11067,
	LANG_PROMOTION_DRUID_HEAL_PVE = 11068,
	LANG_PROMOTION_DRUID_FERAL_PVE = 11069,

	LANG_PROMOTION_GIVE_ME_MY_PROMO_PVP = 11070,
	LANG_PROMOTION_GIVE_ME_MY_PROMO_PVE = 11071,

	LANG_PROMOTION_BLACKSMITHING = 11072
};


class npc_promotion_blue_equip : public CreatureScript
{
public:
    npc_promotion_blue_equip() : CreatureScript("npc_promotion_blue_equip") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (player->getClass() == CLASS_DEATH_KNIGHT)
        {
            SendGossipMenuFor(player, 100021, creature->GetGUID());
            return true;
        }

        if (player->getLevel() == 110)
        {
            if (!Profession(player))
            {
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ALCHEMY), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_SKINNING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ENCHANTING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_HERBALISM), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_BLACKSMITHING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ENGINEERING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_INSCRIPTION), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 14);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_JEWELCRAFTING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 15);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_MINING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 16);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_LEATHERWORKING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 17);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TAILORING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 18);
            }
        }

        if (player->getLevel() != 1)
        {
            if (player && creature)
                SendGossipMenuFor(player, 100022, creature->GetGUID());
            return true;
        }

        if (AccountRewarded(player) && !IsGuildTransfer(player))
        {
            if (player->getLevel() == 110)
            {
                if (player->GetTeamId() == TEAM_ALLIANCE)
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_SW), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
                else
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_ORGRI), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
            }

            SendGossipMenuFor(player, 100023, creature->GetGUID());
            return true;
        }

        switch (player->getClass())
        {
        case CLASS_WARRIOR:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_WARRIOR_ARMS_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_WARRIOR_FURY_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_WARRIOR_PROTECT_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            break;

        case CLASS_PALADIN:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_PALADIN_RET_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_PALADIN_PROTECT_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_PALADIN_HOLY_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            break;

        case CLASS_PRIEST:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_PRIEST_HEAL_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_PRIEST_SHADOW_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            break;

        case CLASS_SHAMAN:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_SHAMAN_HEAL_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_SHAMAN_ELEMENTAL_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_SHAMAN_ENHANCEMENT_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            break;

        case CLASS_DRUID:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_DRUID_CASTER_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_DRUID_HEAL_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_DRUID_FERAL_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_DRUID_CASTER_PVE), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
            break;

        case CLASS_MONK:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "DPS PvP", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "HEAL PvP", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            break;

        case CLASS_WARLOCK:
        case CLASS_HUNTER:
        case CLASS_MAGE:
        case CLASS_ROGUE:
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_GIVE_ME_MY_PROMO_PVP), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            break;
        }

        SendGossipMenuFor(player, 100019, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action > GOSSIP_ACTION_INFO_DEF && action < 1007)
        {
            // Level
            player->GiveLevel(110);

            // Equipment specs
            switch (player->getClass())
            {
                case CLASS_MAGE:
                    player->LearnSpell(193759, false);
                    break;
                case CLASS_MONK:
                    player->LearnSpell(126892, false);
                    break;
                case CLASS_DRUID:
                    player->LearnSpell(193753, false);
                    break;
                case CLASS_SHAMAN:
                case CLASS_HUNTER:
                    player->LearnSpell(8737, false);
                    break;

                case CLASS_WARRIOR:
                case CLASS_PALADIN:
                    player->LearnSpell(750, false);
                    break;

                default:
                    break;
            }

            // Bags
            for (int slot = INVENTORY_SLOT_BAG_START; slot < INVENTORY_SLOT_BAG_END; slot++)
                if (Item* bag = player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot))
                    player->DestroyItem(INVENTORY_SLOT_BAG_0, slot, true);

            for (int slot = INVENTORY_SLOT_BAG_START; slot < INVENTORY_SLOT_BAG_END; slot++)
                player->EquipNewItem(slot, 10050, true);

            // Money
            player->ModifyMoney(50000000);

            // Ridding
            player->LearnSpell(33388, false);
            player->LearnSpell(33391, false);
            player->LearnSpell(34090, false);
            player->LearnSpell(34091, false);
            player->LearnSpell(90265, false);
            player->LearnSpell(54197, false);
            player->LearnSpell(90267, false);

            // Mounts
            player->LearnSpell(43688, false); // Amani War Bear
            player->LearnSpell(75614, false); // Celestial horse
            player->LearnSpell(46199, false); // X-51 Nether-Rocket X-TREME

            // Worgen misc
            if (player->getRace() == RACE_WORGEN)
            {
                player->LearnSpell(94293, false);
                player->LearnSpell(68978, false);
                player->LearnSpell(68996, false);
                player->LearnSpell(68976, false);
                player->LearnSpell(68992, false);
                player->CastSpell(player, 97709, true);
            }

            // Goblin misc
            if (player->getRace() == RACE_GOBLIN)
                player->LearnSpell(69046, false);

            // Equipment sets
            if (!Profession(player))
                for (uint8 slot = EQUIPMENT_SLOT_START; slot < EQUIPMENT_SLOT_END; slot++)
                    if (Item* pItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot))
                        player->DestroyItem(INVENTORY_SLOT_BAG_0, slot, true);

            switch (player->GetTeam())
            {
            case HORDE:
            {
                switch (player->getClass())
                {
                case CLASS_WARLOCK:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126295, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126298, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70557, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126469, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70549, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126466, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126286, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126301, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126290, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61350, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_HUNTER:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126316, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126318, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126314, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70670, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126315, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126367, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126317, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126371, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61340, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61353, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_MAGE:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126363, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126366, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70557, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126302, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70547, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126299, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126285, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126296, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126289, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61350, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_ROGUE:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126359, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126356, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126420, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70516, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126353, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126344, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126423, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126346, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61327, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61327, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61348, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_WARRIOR:
                {
                    switch (action)
                    {
                    case 1001: // Armas
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126412, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126409, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126471, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126406, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126397, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126474, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126399, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1002: // Furi
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126412, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126409, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126471, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126406, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126397, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126474, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126399, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1003: // Proteccion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126412, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126409, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126471, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126406, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126397, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126474, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126399, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61344, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61359, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_PALADIN:
                {
                    switch (action)
                    {
                    case 1001: // Represion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126393, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126395, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70543, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126391, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126392, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126398, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126394, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126400, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61346, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70628, true);
                        break;
                    }

                    case 1002: // Proteccion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126393, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126395, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70543, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126391, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126392, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126398, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126394, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126400, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61336, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61359, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70628, true);
                        break;
                    }

                    case 1003: // Sagrado
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126393, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126395, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126391, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70529, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126392, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126398, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126394, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126400, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61360, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_PRIEST:
                {
                    switch (action)
                    {
                    case 1001: // HEAL
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126300, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126303, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126297, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70548, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126294, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126287, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126417, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126288, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61351, true);
                        break;
                    }

                    case 1002: // Sombras
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126300, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126303, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70557, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126297, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70549, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126294, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126287, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126417, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126288, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61350, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_SHAMAN:
                {
                    switch (action)
                    {
                    case 1001: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126383, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126385, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126376, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126382, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126368, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126384, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126370, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1002: // Elemental
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126383, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126385, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70557, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126376, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70512, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126382, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126368, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126384, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126370, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61360, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1003: // Mejora
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126383, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126385, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126376, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70669, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126382, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126368, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126384, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126370, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61324, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61324, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70631, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_DRUID:
                {
                    switch (action)
                    {
                    case 1001: // Equilibrio
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126310, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126313, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126312, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126345, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126311, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126347, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1002: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126310, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126313, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126312, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70525, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126345, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126311, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126347, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1003: // Feral
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126310, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126313, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126312, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70516, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126345, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126311, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126347, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61340, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70631, true);
                        break;
                    }

                    case 1004: // Feral
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126310, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 67137, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126313, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67134, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126312, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 59329, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126345, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126311, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126347, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 69843, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 64671, true);
                        break;
                    }

                    }

                    break;
                }

                case CLASS_MONK:
                {
                    switch (action)
                    {
                    case 1001: // DPS
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126354, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 59517, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126389, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126390, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70022, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126386, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126343, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126360, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126348, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61330, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61331, true);
                        break;
                    }

                    case 1002: // Heal
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 126354, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 59483, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 126389, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 126390, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70030, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 126386, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 126343, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 126360, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 126348, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 126447, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 126448, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125978, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 126451, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        break;
                    }

                    }
                    break;
                }
                }
                break;
            }
            case ALLIANCE:
            {
                switch (player->getClass())
                {
                case CLASS_WARLOCK:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124876, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124879, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124878, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70549, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 70568, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124693, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124877, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124697, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 70518, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 125845, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61350, true);
                        break;
                    }

                    case 1002: // PvE
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 60249, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 67130, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 60252, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 58190, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 60251, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 59475, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 60248, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 54503, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 60250, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 58485, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 59501, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 64904, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 58183, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 59519, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 64489, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 59460, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_HUNTER:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124723, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124725, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124725, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70670, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124722, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124774, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124724, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124778, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 125794, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61353, true);
                        break;
                    }

                    case 1002: // PvE
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 60303, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 67137, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 60306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67134, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 60304, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 59329, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 60307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 59485, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 60305, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 59469, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 68812, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 67136, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 58181, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 59473, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 69843, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 63532, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_MAGE:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124770, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124773, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70557, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124772, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70547, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124769, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124692, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124771, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124696, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 125845, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61350, true);
                        break;
                    }

                    case 1002: // PvE
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 60243, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 67130, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 60246, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 58190, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 60244, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 59475, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 60247, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 54503, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 60245, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 58485, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 59501, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 64904, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 59326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 59519, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 64489, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 59460, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_ROGUE:
                {
                    switch (action)
                    {
                    case 1001: // PvP
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124829, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70614, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124831, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70531, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124827, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70516, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124828, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124751, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124830, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124753, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 125790, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 125840, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61348, true);
                        break;
                    }

                    case 1002: // PvE
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 60299, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 67137, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 60302, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67134, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 60301, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 59329, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 60298, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 56537, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 60300, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 59469, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 68812, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 67136, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 58181, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 59520, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 59122, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 59122, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 68162, true);
                        break;
                    }
                    }
                    break;
                }

                case CLASS_WARRIOR:
                {
                    switch (action)
                    {
                    case 1001: // Armas
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1002: // Furi
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1003: // Proteccion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1004: // Armas
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1005: // Furi
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }

                    case 1006: // Proteccion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124882, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124884, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70542, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124880, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124881, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124804, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124883, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124806, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61326, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61347, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_PALADIN:
                {
                    switch (action)
                    {
                    case 1001: // Represion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124800, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124802, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70543, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124798, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124799, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124801, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124807, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61346, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70628, true);
                        break;
                    }

                    case 1002: // Proteccion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124800, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124802, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70543, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124798, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124799, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124801, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124807, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118307, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 125805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61346, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70628, true);
                        break;
                    }

                    case 1003: // Sagrado
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124800, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70538, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124802, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70543, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124798, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70513, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124799, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124805, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124801, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124807, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133595, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61346, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70628, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_PRIEST:
                {
                    switch (action)
                    {
                    case 1001: // HEAL
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124823, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124826, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124825, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70548, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124822, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124694, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124824, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124695, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61351, true);
                        break;
                    }

                    case 1002: // Sombras
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124823, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124826, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124825, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70548, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124822, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124694, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124824, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124695, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61351, true);
                        break;
                    }

                    case 1003: // Disciplina heal
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124823, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124826, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124825, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70548, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124822, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124694, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124824, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124695, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61351, true);
                        break;
                    }

                    case 1004: // Sombras
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124823, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124826, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124825, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70548, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124822, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124694, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124824, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124695, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61342, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 61351, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_SHAMAN:
                {
                    switch (action)
                    {
                    case 1001: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1002: // Elemental
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1003: // Mejora
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1004: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1005: // Elemental
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }

                    case 1006: // Mejora
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124834, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70622, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124836, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 70556, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124832, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70511, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124833, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124775, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124835, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124777, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61338, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61361, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70630, true);
                        break;
                    }
                    }

                    break;
                }

                case CLASS_DRUID:
                {
                    switch (action)
                    {
                    case 1001: // Equilibrio
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1002: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1003: // Feral
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1004: // Equilibrio
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1005: // Restauracion
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    case 1006: // Feral
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124717, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 70620, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124720, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124719, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70526, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124716, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124752, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124718, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124754, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 125970, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 125974, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61341, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_RANGED, 70629, true);
                        break;
                    }

                    }

                    break;
                }

                case CLASS_MONK:
                {
                    switch (action)
                    {
                    case 1001: // DPS
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124794, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 59517, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124796, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124797, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70022, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124793, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124750, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124795, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124755, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61330, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61331, true);
                        break;
                    }

                    case 1002: // Heal
                    {
                        player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 124794, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_NECK, 59517, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 124796, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_BACK, 67131, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 124797, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 70022, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 124793, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 124750, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 124795, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FEET, 124755, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 118306, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 118309, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 133597, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 133596, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 61330, true);
                        player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 61331, true);
                        break;
                    }

                    }
                    break;
                }
                }
                break;
            }
            }
            player->SaveToDB();
            CloseGossipMenuFor(player);

            // Account protection
            std::string ip_address;
            QueryResult result = LoginDatabase.PQuery(
                "SELECT last_ip FROM account WHERE id = %u",
                player->GetSession()->GetAccountId());

            if (result)
            {
                Field* fields = result->Fetch();
                ip_address = fields[0].GetCString();

                CharacterDatabase.PExecute("INSERT INTO promotions_rewarded (account, ip) VALUES ( %u, '%s')", player->GetSession()->GetAccountId(), fields[0].GetCString());
            }

            if (!Profession(player))
            {
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ALCHEMY), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_SKINNING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ENCHANTING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_HERBALISM), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_BLACKSMITHING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_ENGINEERING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_INSCRIPTION), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 14);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_JEWELCRAFTING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 15);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_MINING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 16);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_LEATHERWORKING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 17);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TAILORING), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 18);

                CloseGossipMenuFor(player);
            }

            if (Profession(player))
            {
                if (player->GetTeamId() == TEAM_ALLIANCE)
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_SW), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
                else
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_ORGRI), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
            }

            SendGossipMenuFor(player, 100020, creature->GetGUID());
        }
        else
        {
            player->PlayerTalkClass->ClearMenus();
            CloseGossipMenuFor(player);

            std::string ip_address;
            QueryResult result = LoginDatabase.PQuery(
                "SELECT last_ip FROM account WHERE id = %u",
                player->GetSession()->GetAccountId());

            if (result)
            {
                Field* fields = result->Fetch();
                ip_address = fields[0].GetCString();

                if (IsGuildTransfer(player))
                    CharacterDatabase.PExecute("UPDATE `promotions_rewarded` SET `guildTransfer` = guildTransfer-1 WHERE `account` = %u OR `ip` = '%s'", player->GetSession()->GetAccountId(), fields[0].GetCString());
            }

            if (player->GetTeamId() == TEAM_ALLIANCE)
                player->TeleportTo(0, -8829.8710f, 625.3872f, 94.1712f, 3.808243f);
            else
                player->TeleportTo(1, 1570.6693f, -4399.3388f, 16.0058f, 3.382241f);
        }

        if (action > 1007 && action < 1019)
        {
            player->PlayerTalkClass->ClearMenus();
            CloseGossipMenuFor(player);

            uint32 skill = 0;
            uint32 spellid = 0;
            uint32 level = 525;
            uint32 max = 525;

            switch (action)
            {
            case 1008: // Alquimia
                skill = 171;
                spellid = 2259;
                break;
            case 1009: // Desuello
                skill = 393;
                spellid = 8613;
                break;
            case 1010: // Encantamiento
                level = 524;
                skill = 333;
                spellid = 7411;
                break;
            case 1011: // Herborister??a
                skill = 182;
                spellid = 2366;
                break;
            case 1012: // Herrer??a
                skill = 164;
                spellid = 2018;
                break;
            case 1013: // Ingenier??a
                skill = 202;
                spellid = 4036;
                break;
            case 1014: // Inscripci??n
                skill = 773;
                spellid = 45357;
                break;
            case 1015: // Joyer??a
                skill = 755;
                spellid = 25229;
                break;
            case 1016: // Miner??a
                skill = 186;
                spellid = 2575;
                break;
            case 1017: // Peleter??a
                skill = 165;
                spellid = 2108;
                break;
            case 1018: // Sastrer??a
                skill = 197;
                spellid = 3908;
                break;
            }

            std::string ip_address;
            QueryResult result = LoginDatabase.PQuery(
                "SELECT last_ip FROM account WHERE id = %u",
                player->GetSession()->GetAccountId());

            if (result)
            {
                Field* fields = result->Fetch();
                ip_address = fields[0].GetCString();

                uint16 targetHasSkill = player->GetSkillValue(skill);

                player->LearnSpell(spellid, false);

                if (targetHasSkill)
                    player->SetSkill(skill, player->GetSkillStep(skill), level, max);
                else
                    player->SetSkill(skill, 1, level, max);

                CharacterDatabase.PExecute("UPDATE `promotions_rewarded` SET `profession` = profession-1 WHERE `account` = %u OR `ip` = '%s'", player->GetSession()->GetAccountId(), fields[0].GetCString());
            }

            //player->SaveToDB();

            if (player->GetTeamId() == TEAM_ALLIANCE)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_SW), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
            else
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, sObjectMgr->GetTrinityStringForDBCLocale(LANG_PROMOTION_TELEPORT_TO_ORGRI), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        }

        return true;
    }

    bool Profession(Player* player)
    {
        QueryResult result = CharacterDatabase.PQuery("SELECT `profession` FROM `promotions_rewarded` WHERE `account` = %u", player->GetSession()->GetAccountId());
        if (result)
        {
            Field * pField = result->Fetch();
            uint32 profession = pField[0].GetUInt32();
            if (profession < 1)
                return true;
        }
        return false;
    }

    bool IsGuildTransfer(Player* player)
    {
        std::string ip_address;
        QueryResult result = LoginDatabase.PQuery(
            "SELECT last_ip FROM account WHERE id = %u",
            player->GetSession()->GetAccountId());

        if (result)
        {
            Field* fields = result->Fetch();
            ip_address = fields[0].GetCString();

            QueryResult result1 = CharacterDatabase.PQuery("SELECT `guildTransfer` FROM `promotions_rewarded` WHERE `account` = %u OR `ip` = '%s'", player->GetSession()->GetAccountId(), fields[0].GetCString());
            if (result1)
            {
                Field * pField = result1->Fetch();
                uint32 guildTransfer = pField[0].GetUInt32();
                if (guildTransfer < 1)
                    return false;
            }
            return false;
        }
        return false;
    }

    bool AccountRewarded(Player* player)
    {
        std::string ip_address;
        QueryResult result = LoginDatabase.PQuery(
            "SELECT last_ip FROM account WHERE id = %u",
            player->GetSession()->GetAccountId());

        if (result)
        {
            Field* fields = result->Fetch();
            ip_address = fields[0].GetCString();

            QueryResult result1 = CharacterDatabase.PQuery("SELECT `account` FROM `promotions_rewarded` WHERE `account` = %u OR `ip` = '%s'", player->GetSession()->GetAccountId(), fields[0].GetCString());
            if (result1)
            {
                Field * pField = result1->Fetch();
                uint32 account = pField[0].GetUInt32();
                if (account)
                    return true;
            }
            return false;
        }
        return false;
    }
};

class PlayerScript_reward_mount : public PlayerScript
{
public:
    PlayerScript_reward_mount() : PlayerScript("PlayerScript_reward_mount") { }

    void OnLogin(Player* player, bool firstLogin)
    {
        if (player->HasSpell(136505) || player->GetItemByEntry(93671))
            return;

        if (firstLogin)
            player->AddItem(79771, 1);

        player->AddItem(93671, 1);
    }
};

class PlayerScript_Loyalty_System : public PlayerScript
{
public:
    PlayerScript_Loyalty_System() : PlayerScript("PlayerScript_Loyalty_System") { }

    uint32 rewardTimer = 1800000; // 1 Hour playing

    void OnLevelChanged(Player* player, uint8 oldLevel) override
    {
        for (uint8 i = 1; i < 12; ++i)
        {
            uint64 money = ((20000 * (i*(10 + i)))*0.153f);

            if (oldLevel > 80)
                money *= i;

            if (player->getLevel() == uint8(i * 10))
                player->ModifyMoney(round(money));
        }
    }

    void OnPlayerUpdate(Player* player, uint32 diff) 
    {
        if (rewardTimer <= diff)
        {
            if (player)
                LoginDatabase.PExecute("UPDATE account SET loyalty_points = loyalty_points+1 WHERE id = %u", player->GetSession()->GetAccountId());

            rewardTimer = 3600000; // 1 Hour playing
        }
        else
            rewardTimer -= diff;
    }
};

void AddSC_promotions_and_rewards()
{
    //new PlayerScript_reward_mount();
    new npc_promotion_blue_equip();
    new PlayerScript_Loyalty_System();
}
