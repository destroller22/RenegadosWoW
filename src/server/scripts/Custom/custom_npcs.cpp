/*
* Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include "Creature.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"

class npc_rate_xp_modifier : public CreatureScript
{
    public:
        npc_rate_xp_modifier() : CreatureScript("npc_rate_xp_modifier") { }

#define MAX_RATE uint32(10)

        bool OnGossipHello(Player* player, Creature* creature) override
        {
            for (uint32 i = 1; i <= MAX_RATE; ++i)
            {
                if (i == player->GetPersonnalXpRate())
                    continue;

                if (i == sWorld->getRate(RATE_XP_KILL))
                    continue;

                std::ostringstream gossipText;
                gossipText << "Rate x" << i;
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, gossipText.str(), GOSSIP_SENDER_MAIN, i);
            }

            if (player->GetPersonnalXpRate())
            {
                std::ostringstream gossipText;
                gossipText << "Default Rate - x" << sWorld->getRate(RATE_XP_KILL);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, gossipText.str(), GOSSIP_SENDER_MAIN, 0);
            }

            SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*uiSender*/, uint32 uiAction) override
        {
            CloseGossipMenuFor(player);
            player->SetPersonnalXpRate(float(std::min(MAX_RATE, uiAction)));
            return true;
        }
};



class npc_artifact_reward : public CreatureScript
{
public:
    npc_artifact_reward() : CreatureScript("npc_artifact_reward") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (player->getLevel() < 98)
            return false;

        switch (player->getClass())
        {
        case CLASS_WARRIOR:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARRIOR_ARMS)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Guerrero Armas", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARRIOR_FURY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Guerrero Furia", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARRIOR_PROTECTION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Guerrero Proteccion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_PALADIN:
            // inv-sword-2h-artifactashbringer-d-01
            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PALADIN_RETRIBUTION)
                AddGossipItemFor(player, 10, "|TInterface\\icons\\inv-sword-2h-artifactashbringer-d-01|Crematoria", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PALADIN_PROTECTION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Paladin Proteccion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PALADIN_HOLY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Paladin Sagrado", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_PRIEST:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PRIEST_DISCIPLINE)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Sacerdote Disciplina", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PRIEST_HOLY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Sacerdote Sagrado", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_PRIEST_SHADOW)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Sacerdote Sombra", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_SHAMAN:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_SHAMAN_RESTORATION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Chamán Restauración", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_SHAMAN_ELEMENTAL)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Chamán Elemental", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_SHAMAN_ENHANCEMENT)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Chamán Mejora", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_DRUID:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DRUID_BALANCE )
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Druida Equilibrio", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DRUID_RESTORATION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Druida Restauración", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DRUID_CAT)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Druida Feral", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DRUID_BEAR)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Druida Guardian", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);

            break;

        case CLASS_MONK:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MONK_BREWMASTER)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Monje Maestro Cervecero", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MONK_MISTWEAVER)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Monje Tejedor de Niebla", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MONK_BATTLEDANCER)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Monje Viajero del Viento", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_WARLOCK:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARLOCK_DESTRUCTION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Brujo Destruccion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARLOCK_AFFLICTION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Brujo Afliccion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_WARLOCK_DEMONOLOGY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Brujo Demonologia", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_HUNTER:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_HUNTER_MARKSMAN)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Cazador Punteria", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_HUNTER_BEASTMASTER)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Cazador Bestias", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_HUNTER_SURVIVAL)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Cazador Supervivencia", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_MAGE:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MAGE_FROST)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Mago Escarcha", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MAGE_FIRE)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Mago Fuego", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_MAGE_ARCANE)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Mago Arcano", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_ROGUE:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_ROGUE_SUBTLETY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Picaro Sutileza", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_ROGUE_ASSASSINATION)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Picaro Asesinato", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_ROGUE_COMBAT)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Picaro Forajido", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_DEATH_KNIGHT:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DEATHKNIGHT_FROST)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Caballero de la Muerte Escarcha", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DEATHKNIGHT_BLOOD)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Caballero de la Muerte Sangre", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == TALENT_SPEC_DEATHKNIGHT_UNHOLY)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Caballero de la Muerte Profano", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

            break;

        case CLASS_DEMON_HUNTER:

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == 577)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Cazador de Demonios Destruccion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetUInt32Value(PLAYER_FIELD_CURRENT_SPEC_ID) == 581)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Artefacto Cazador de Demonios Venganza", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            break;
        }

        SendGossipMenuFor(player, 1, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        if (action > GOSSIP_ACTION_INFO_DEF && action < 1007)
        {
            switch (player->getClass())
            {
            case CLASS_WARLOCK:
            {
                switch (action)
                {
                case 1001: // PvP
                {
                    player->AddItem(128941, 1);
                    break;
                }

                case 1002: // PvE
                {
                    player->AddItem(128942, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128943, 1);
                    player->AddItem(137246, 1);
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
                    player->AddItem(128826, 1);
                    break;
                }

                case 1002: // PvE
                {
                    player->AddItem(128861, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128808, 1);
                    break;
                }
                }
                break;
            }

            case CLASS_MAGE:
            {
                if (!player->HasSpell(224871)) // Dalaran Legion portal
                    player->LearnSpell(224871, true);

                if (!player->HasSpell(193759)) // Class Hall Teleport
                    player->LearnSpell(193759, true);

                if (!player->HasSpell(224869)) // Dalaran Legion Teleport
                    player->LearnSpell(224869, true);

                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128862, 1);
                    break;
                }
                case 1002: // PvP
                {
                    player->AddItem(128820, 1);
                    //player->AddItem(133959, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(127857, 1);
                    break;
                }
                }
                break;
            }

            case CLASS_ROGUE:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128476, 1);
                    //player->AddItem(128479, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128870, 1);
                    //player->AddItem(128870, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128872, 1);
                    //player->AddItem(134552, 1);
                    break;
                }
                }
                break;
            }

            case CLASS_WARRIOR:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128910, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128908, 1);
                    player->AddItem(134553, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128289, 1);
                    break;
                }
                }

                break;
            }

            case CLASS_PALADIN:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(120978, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128866, 1);
                    //player->AddItem(128867, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128823, 1);
                    break;
                }
                }

                break;
            }

            case CLASS_PRIEST:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128868, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128825, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128827, 1);
                    break;
                }
                }

                break;
            }

            case CLASS_SHAMAN:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128911, 1);
                    //player->AddItem(128934, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128935, 1);
                    //player->AddItem(128936, 1);
                    break;
                }
                case 1003: // PvE
                {
                    //player->AddItem(128873, 1);
                    player->AddItem(128819, 1);
                    break;
                }
                }

                break;
            }

            case CLASS_DRUID:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128858, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128306, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128860, 1);
                    //player->AddItem(128859, 1);
                    break;
                }
                case 1004: // PvE
                {
                    player->AddItem(128821, 1);
                    //player->AddItem(128822, 1);
                    break;
                }
                }

                break;
            }

            case CLASS_MONK:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128938, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128937, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128940, 1);
                    //player->AddItem(128948, 1);
                    break;
                }
                }
                break;
            }
            case CLASS_DEATH_KNIGHT:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(128292, 1);
                    //player->AddItem(128293, 1);
                    break;
                }
                case 1002: // PvE
                {
                    player->AddItem(128402, 1);
                    break;
                }
                case 1003: // PvE
                {
                    player->AddItem(128403, 1);
                    break;
                }
                }
                break;
            }
            case CLASS_DEMON_HUNTER:
            {
                switch (action)
                {
                case 1001: // PvE
                {
                    player->AddItem(127829, 1);
                    //player->AddItem(127830, 1);
                    break;
                }
                case 1002: // PvE
                {
                    //player->AddItem(128831, 1);
                    player->AddItem(128832, 1);
                    break;
                }
                }
                break;
            }
            player->SaveToDB();
            CloseGossipMenuFor(player);
            }
        }
        return true;
    }
};


void AddSC_custom_npcs()
{
    new npc_artifact_reward();
    new npc_rate_xp_modifier();
}
