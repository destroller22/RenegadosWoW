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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "Player.h"
#include "QuestPackets.h"
#include "ScenePackets.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectAccessor.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "MotionMaster.h"
#include "WorldSession.h"
#include "PhasingHandler.h"

enum InquisitorBaleful
{
    // Events
    EVENT_LEGION_AEGIS = 0,
    EVENT_INCITE_MADNESS = 1,
    EVENT_ENABLE_GRAVITY = 2,
    // Spells
    SPELL_INCITE_MADNESS = 194529,
    SPELL_LEGION_AEGIS = 192665,

    SAY_ONDEATH = 0,
    SAY_ONCOMBAT = 1,
    SAY_60PCT = 2,
};

class npc_inquisitor_baleful : public CreatureScript
{
public:
    npc_inquisitor_baleful() : CreatureScript("npc_inquisitor_baleful") { }

    struct npc_inquisitor_balefulAI : public ScriptedAI
    {
        npc_inquisitor_balefulAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            auraDone = false;
            events.ScheduleEvent(EVENT_INCITE_MADNESS, urand(8000, 10000));
        }

        bool auraDone;

        void Reset() override
        {
            Initialize();
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
            {
                killer->ToPlayer()->KilledMonsterCredit(105946, ObjectGuid::Empty);
                killer->ToPlayer()->KilledMonsterCredit(96159, ObjectGuid::Empty);
            }

            Talk(SAY_ONDEATH);
        }

        void EnterCombat(Unit* /*who*/) override
        {
            Talk(SAY_ONCOMBAT);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            if (me->GetHealthPct() <= 60 && !auraDone)
            {
                events.ScheduleEvent(EVENT_LEGION_AEGIS, 1000);
                Talk(SAY_60PCT);
                auraDone = true;
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_LEGION_AEGIS:
                    me->GetMotionMaster()->MoveJump(592.068f, 2433.0f, -55.26011f, 15, false);
                    me->SetReactState(REACT_PASSIVE);
                    me->SetDisableGravity(true);
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(me, SPELL_LEGION_AEGIS, true);

                    events.ScheduleEvent(EVENT_ENABLE_GRAVITY, 8000);
                    break;
                case EVENT_INCITE_MADNESS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_INCITE_MADNESS, true);

                    events.ScheduleEvent(EVENT_INCITE_MADNESS, urand(8000, 10000));
                    break;
                case EVENT_ENABLE_GRAVITY:
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetDisableGravity(true);
                    events.ScheduleEvent(EVENT_INCITE_MADNESS, urand(4000, 5000));
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_inquisitor_balefulAI(creature);
    }
};

class npc_ashtongue_mystic : public CreatureScript
{
public:
    npc_ashtongue_mystic() : CreatureScript("npc_ashtongue_mystic") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Mistico, gracias por tu sacrificio.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 19015, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            creature->KillSelf();
            player->KilledMonsterCredit(99914, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

class go_coilskar : public GameObjectScript
{
public:
    go_coilskar() : GameObjectScript("go_coilskar") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        WorldPackets::Scenes::PlayScene packet;
        packet.SceneID = 1077;
        packet.PlaybackFlags = 20;
        packet.SceneInstanceID = 1;
        packet.SceneScriptPackageID = 1468;
        packet.TransportGUID = player->GetTransGUID();
        packet.Location = player->GetPosition();
        player->GetSession()->SendPacket(packet.Write(), true);

        player->KilledMonsterCredit(94406, ObjectGuid::Empty);
        player->KilledMonsterCredit(97831, ObjectGuid::Empty);
        CloseGossipMenuFor(player);

        return true;
    }
};

// 242990
class go_jailer_cage_1 : public GameObjectScript
{
public:
    go_jailer_cage_1() : GameObjectScript("go_jailer_cage_1") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(93230, ObjectGuid::Empty);

        return true;
    }
};

// 242987
class go_jailer_cage_2 : public GameObjectScript
{
public:
    go_jailer_cage_2() : GameObjectScript("go_jailer_cage_2") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(93117, ObjectGuid::Empty);

        return true;
    }
};

// 244916
class go_jailer_cage_3 : public GameObjectScript
{
public:
    go_jailer_cage_3() : GameObjectScript("go_jailer_cage_3") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(94377, ObjectGuid::Empty);

        return true;
    }
};

// 242989
class go_jailer_cage_4 : public GameObjectScript
{
public:
    go_jailer_cage_4() : GameObjectScript("go_jailer_cage_4") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(94400, ObjectGuid::Empty);

        return true;
    }
};

// 243335
class go_meeting_with_the_queen : public GameObjectScript
{
public:
    go_meeting_with_the_queen() : GameObjectScript("go_meeting_with_the_queen") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {

        WorldPackets::Scenes::PlayScene packet;
        packet.SceneID = 1061;
        packet.PlaybackFlags = 20;
        packet.SceneInstanceID = 2;
        packet.SceneScriptPackageID = 1460;
        packet.TransportGUID = player->GetTransGUID();
        packet.Location = player->GetPosition();
        player->GetSession()->SendPacket(packet.Write(), true);

        player->KilledMonsterCredit(100722, ObjectGuid::Empty);

        return true;
    }
};

class npc_sevis_brightflame : public CreatureScript
{
public:
    npc_sevis_brightflame() : CreatureScript("npc_sevis_brightflame") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Quiero que me sacrifiques para activar el portal.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 19016, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            creature->KillSelf();
            player->KilledMonsterCredit(99915, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

class go_shivarra : public GameObjectScript
{
public:
    go_shivarra() : GameObjectScript("go_shivarra") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        WorldPackets::Scenes::PlayScene packet;
        packet.SceneID = 1078;
        packet.PlaybackFlags = 20;
        packet.SceneInstanceID = 3;
        packet.SceneScriptPackageID = 1469;
        packet.TransportGUID = player->GetTransGUID();
        packet.Location = player->GetPosition();
        player->GetSession()->SendPacket(packet.Write(), true);

        player->KilledMonsterCredit(94407, ObjectGuid::Empty);
        player->KilledMonsterCredit(97831, ObjectGuid::Empty);
        player->KilledMonsterCredit(96654, ObjectGuid::Empty);
        return true;
    }
};

// 94435
class npc_matron_mother_malevolence : public CreatureScript
{
public:
    npc_matron_mother_malevolence() : CreatureScript("npc_matron_mother_malevolence") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Madre matriarca, necesito que lleves a tus shivaístas al otro lado de la falla, a la Forja de la Corrupción. Haced que el enemigo sufra.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 18434, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:

            WorldPackets::Scenes::PlayScene packet;
            packet.SceneID = 1095;
            packet.PlaybackFlags = 20;
            packet.SceneInstanceID = 5;
            packet.SceneScriptPackageID = 1480;
            packet.TransportGUID = player->GetTransGUID();
            packet.Location = player->GetPosition();
            player->GetSession()->SendPacket(packet.Write(), true);

            player->KilledMonsterCredit(94435, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 93693
class npc_lady_stheno : public CreatureScript
{
public:
    npc_lady_stheno() : CreatureScript("npc_lady_stheno") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Mi señora, lleva a tus nagas al norte. Interrumpe el ritual que están realizando los demonios en su máquina de almas.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 18447, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:

            WorldPackets::Scenes::PlayScene packet;
            packet.SceneID = 1094;
            packet.PlaybackFlags = 20;
            packet.SceneInstanceID = 6;
            packet.SceneScriptPackageID = 1479;
            packet.TransportGUID = player->GetTransGUID();
            packet.Location = player->GetPosition();
            player->GetSession()->SendPacket(packet.Write(), true);

            player->KilledMonsterCredit(93693, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 90247
class npc_battlelord_gaardoun : public CreatureScript
{
public:
    npc_battlelord_gaardoun() : CreatureScript("npc_battlelord_gaardoun") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Señor de la batalla, tus fuerzas atacarán La Fortaleza Maldita, al suroeste. Impide que el grueso de su ejército de demonios nos ataque.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 17260, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:

            WorldPackets::Scenes::PlayScene packet;
            packet.SceneID = 1079;
            packet.PlaybackFlags = 20;
            packet.SceneInstanceID = 4;
            packet.SceneScriptPackageID = 1470;
            packet.TransportGUID = player->GetTransGUID();
            packet.Location = player->GetPosition();
            player->GetSession()->SendPacket(packet.Write(), true);

            player->KilledMonsterCredit(90247, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 96436
class npc_jace_darkweaver : public CreatureScript
{
public:
    npc_jace_darkweaver() : CreatureScript("npc_jace_darkweaver") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Sí, Jace, usaré mi visión espectral para mirar qué hay en la cueva.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 19175, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->KilledMonsterCredit(96436, creature->GetGUID());
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        if (quest->GetQuestId() == 39495)
        {
            if (Creature* demonHunter1 = creature->FindNearestCreature(101790, 50.0f))
                demonHunter1->CastSpell(demonHunter1, 194326, true);
            if (Creature* demonHunter2 = creature->FindNearestCreature(101787, 50.0f))
                demonHunter2->CastSpell(demonHunter2, 194326, true);
            if (Creature* demonHunter3 = creature->FindNearestCreature(101788, 50.0f))
                demonHunter3->CastSpell(demonHunter3, 194326, true);
            if (Creature* demonHunter4 = creature->FindNearestCreature(101789, 50.0f))
                demonHunter4->CastSpell(demonHunter4, 194326, true);

            if (GameObject* go = creature->FindNearestGameObject(245045, 50.0f))
                go->UseDoorOrButton();

            player->KilledMonsterCredit(98755, ObjectGuid::Empty);
        }
        return true;
    }
};

enum FelLordCaza
{
    EVENT_SWEEPING_SLASH = 0,
    EVENT_FEL_INFUSION = 1,
    SPELL_SWEEPING_SLASH = 197002,
    SPELL_FEL_INFUSION = 197180,
    NPC_FEL_LORD_CAZA_CREDIT = 106014,
    SAY_ONCOMBAT_CAZA = 0,
};

class npc_fel_lord_caza : public CreatureScript
{
public:
    npc_fel_lord_caza() : CreatureScript("npc_fel_lord_caza") { }

    struct npc_fel_lord_cazaAI : public ScriptedAI
    {
        npc_fel_lord_cazaAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            events.ScheduleEvent(EVENT_SWEEPING_SLASH, 10000);
            events.ScheduleEvent(EVENT_FEL_INFUSION, 8000);
        }

        void Reset() override
        {
            Initialize();
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
                killer->ToPlayer()->KilledMonsterCredit(NPC_FEL_LORD_CAZA_CREDIT, ObjectGuid::Empty);
        }

        void EnterCombat(Unit* who) override
        {
            Talk(SAY_ONCOMBAT_CAZA);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SWEEPING_SLASH:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_SWEEPING_SLASH, true);

                    events.ScheduleEvent(EVENT_SWEEPING_SLASH, 10000);
                    break;
                case EVENT_FEL_INFUSION:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_FEL_INFUSION, true);

                    events.ScheduleEvent(EVENT_FEL_INFUSION, 8000);
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_fel_lord_cazaAI(creature);
    }
};

// 93221
enum DoomCommanderBeliash
{
    EVENT_SHADOW_BLAZE = 0,
    EVENT_SHADOW_BOLT_VOLLEY = 1,
    EVENT_SHADOW_RETREAT = 2,
    SPELL_SHADOW_BLAZE = 195401,
    SPELL_SHADOW_BOLT_VOLLEY = 196403,
    SPELL_SHADOW_RETREAT = 196625,
    NPC_QUEEN_TYRANNA = 95048,
    NPC_BELIASH_CREDIT = 106003,
    SAY_ONCOMBAT_BELIASH = 0,
    SAY_ON_COMBAT = 0,
};

class npc_doom_commander_beliash : public CreatureScript
{
public:
    npc_doom_commander_beliash() : CreatureScript("npc_doom_commander_beliash") { }

    struct npc_doom_commander_beliashAI : public ScriptedAI
    {
        npc_doom_commander_beliashAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            events.ScheduleEvent(EVENT_SHADOW_BLAZE, 10000);
            events.ScheduleEvent(EVENT_SHADOW_BOLT_VOLLEY, 8000);
            events.ScheduleEvent(EVENT_SHADOW_RETREAT, 12000);
        }

        void Reset() override
        {
            Initialize();
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
                killer->ToPlayer()->KilledMonsterCredit(NPC_BELIASH_CREDIT, ObjectGuid::Empty);
        }

        void EnterCombat(Unit* who) override
        {
            Talk(SAY_ONCOMBAT_BELIASH);

            if (Creature* tyranna = me->FindNearestCreature(NPC_QUEEN_TYRANNA, 100.0f))
                tyranna->AI()->Talk(SAY_ON_COMBAT, tyranna);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SHADOW_BLAZE:
                    DoCast(SPELL_SHADOW_BLAZE);
                    events.ScheduleEvent(EVENT_SHADOW_BLAZE, 10000);
                    break;
                case EVENT_SHADOW_BOLT_VOLLEY:
                    DoCast(SPELL_SHADOW_BOLT_VOLLEY);
                    events.ScheduleEvent(EVENT_SHADOW_BOLT_VOLLEY, 8000);
                    break;
                case EVENT_SHADOW_RETREAT:
                    DoCast(SPELL_SHADOW_RETREAT);
                    events.ScheduleEvent(EVENT_SHADOW_RETREAT, 12000);
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_doom_commander_beliashAI(creature);
    }
};

class go_book : public GameObjectScript
{
public:
    go_book() : GameObjectScript("go_book") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        /* WorldPackets::Quest::DisplayPlayerChoice playerChoice;

        playerChoice.ChoiceID = 231;
        playerChoice.GUID = go->GetGUID();

        //playerChoice.Responses.resize(2);
        WorldPackets::Quest::PlayerChoiceResponse response;
        for (uint32 i = 0; i < 2; ++i)
        {
        if (i = 0)
        {
        playerChoice.Responses[i].ResponseID = 122432;
        playerChoice.Responses[i].ChoiceArtFileID = 326313984;
        playerChoice.Responses[i].Answer = "Devastación";
        playerChoice.Responses[i].Description = "Continúa tu especialización en Devastación. Los cazadores de demonios Devastación pueden Description : usar Metamorfosis para convertirse en demonios alados.Se centran en el DPS cuerpo a cuerpo. Al elegir Devastación, consigues|cFFFF0000|Hspell:162264|h[Metamorfosis]|h|ry|cFFFF0000|Hspell:185164|h[Maestría:Presencia demoníaca]|h|r.";
        playerChoice.Responses.push_back(response);
        }
        if (i = 1)
        {
        playerChoice.Responses[i].ResponseID = 1818323299;
        playerChoice.Responses[i].ChoiceArtFileID = 1667332713;
        playerChoice.Responses[i].Answer = "Venganza";
        playerChoice.Responses[i].Description = "Cambia tu especialización a Venganza. Vengeance specialized demon hunters can use Metamorphosis to turn into spiked demons.They focus on Tanking. Choosing Vengeance grants |cFFFF0000|Hspell:187827|h[Metamorphosis]|h|r as well as|cFFFF0000|Hspell:203747|h[Mastery:Fel Blood]|h|r.";
        playerChoice.Responses.push_back(response);
        }
        }

        playerChoice.Question = "¿Qué especialización del cazador de demonios quieres aprender?";

        player->GetSession()->SendPacket(playerChoice.Write());*/

        /*
        *   Tempfix until find correct opcode structure
        */

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Devastacion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Venganza", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        SendGossipMenuFor(player, 31100, go->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, GameObject* go, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(player, 194939, true);
            player->CastSpell(player, 218386, true);
            CloseGossipMenuFor(player);
            break;
        case GOSSIP_ACTION_INFO_DEF + 1:
            player->CastSpell(player, 194940, true);
            player->CastSpell(player, 218386, true);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

class npc_felsaber : public CreatureScript
{
public:
    npc_felsaber() : CreatureScript("npc_felsaber") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (player->GetQuestStatus(40378) != QUEST_STATUS_INCOMPLETE) // Enter the Illidari: Ashtongue
            return false;

        player->CastSpell(creature, 200255, true);

        return true;
    }
};

// 188501 - Spectral Vision
class spell_spectral_vision : public SpellScriptLoader
{
public:
    spell_spectral_vision() : SpellScriptLoader("spell_spectral_vision") { }

    class spell_spectral_vision_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_spectral_vision_SpellScript);

        void HandleKillCredit()
        {
            GetCaster()->ToPlayer()->KilledMonsterCredit(96437, ObjectGuid::Empty);
        }

        void Register() override
        {
            OnCast += SpellCastFn(spell_spectral_vision_SpellScript::HandleKillCredit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_spectral_vision_SpellScript();
    }
};

// 243968 Illidari Banner
class go_illidari_banner1 : public GameObjectScript
{
public:
    go_illidari_banner1() : GameObjectScript("go_illidari_banner1") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(96734, ObjectGuid::Empty);
        player->KilledMonsterCredit(96732, ObjectGuid::Empty);
        return true;
    }
};

// 243967 Illidari Banner
class go_illidari_banner2 : public GameObjectScript
{
public:
    go_illidari_banner2() : GameObjectScript("go_illidari_banner2") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(96733, ObjectGuid::Empty);
        player->KilledMonsterCredit(96731, ObjectGuid::Empty);
        return true;
    }
};

// 243965 Illidari Banner
class go_illidari_banner3 : public GameObjectScript
{
public:
    go_illidari_banner3() : GameObjectScript("go_illidari_banner3") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(96692, ObjectGuid::Empty);
        player->KilledMonsterCredit(93762, ObjectGuid::Empty);
        return true;
    }
};

enum KaynSunfury
{
    QUEST_CRY_HAVOC = 39516,
    QUEST_ON_FELBAT_WINGS = 39663,
    SAY_1 = 0,
    SAY_2 = 1,
    SAY_3 = 2,
};

// 93127 Kayn Sunfury
class npc_kayn_sunfury : public CreatureScript
{
public:
    npc_kayn_sunfury() : CreatureScript("npc_kayn_sunfury") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_CRY_HAVOC)
            creature->AI()->Talk(0);

        if (quest->GetQuestId() == QUEST_ON_FELBAT_WINGS)
            creature->AI()->Talk(1);

        if (quest->GetQuestId() == 40077)
            creature->AI()->Talk(2);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_CRY_HAVOC) == QUEST_STATUS_INCOMPLETE)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Kayn, te enseñaré lo que he aprendido sobre los misterios demoníacos.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, 17260, creature->GetGUID());

            return true;
        }
        else
            SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(creature, 195020, true);
            creature->AI()->Talk(0);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 96655
class npc_allari : public CreatureScript
{
public:
    npc_allari() : CreatureScript("npc_allari") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_CRY_HAVOC) == QUEST_STATUS_INCOMPLETE)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Allari, estos son los secretos que he descubierto.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, 17260, creature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(creature, 194996, true);
            creature->AI()->Talk(0);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 96420
class npc_cyana : public CreatureScript
{
public:
    npc_cyana() : CreatureScript("npc_cyana") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == 38819)
            player->CompleteQuest(38819);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_CRY_HAVOC) == QUEST_STATUS_INCOMPLETE)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Escucha atentamente, Cyana. Esto es lo que he aprendido del Escrito de secretos viles.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, 17260, creature->GetGUID());
        }

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(creature, 195019, true);
            creature->AI()->Talk(0);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 99045
class npc_korvas : public CreatureScript
{
public:
    npc_korvas() : CreatureScript("npc_korvas") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_CRY_HAVOC) == QUEST_STATUS_INCOMPLETE)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "¿Lista para conocer los secretos de la Legion, Kor''vas?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, 17260, creature->GetGUID());
        }

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(creature, 195021, true);
            creature->AI()->Talk(0);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 96652
class npc_mannethrel : public CreatureScript
{
public:
    npc_mannethrel() : CreatureScript("npc_mannethrel") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_CRY_HAVOC) == QUEST_STATUS_INCOMPLETE)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Prepárate, Mannethrel. Voy a colmarte con el poder de los secretos de la Legión.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, 17260, creature->GetGUID());
        }

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(creature, 195022, true);
            creature->AI()->Talk(0);
            creature->AI()->Talk(1);
            creature->KillSelf();
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 96653
class npc_izal_whitemoon : public CreatureScript
{
public:
    npc_izal_whitemoon() : CreatureScript("npc_izal_whitemoon") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        creature->AI()->Talk(0);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Lunablanca, me llevare a uno de tus murcielagos viles. Vamos a obtener lo que vinimos a buscar.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        SendGossipMenuFor(player, 17260, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(player, 192136, true);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

// 97297
class npc_cyana2 : public CreatureScript
{
public:
    npc_cyana2() : CreatureScript("npc_cyana2") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        creature->AI()->Talk(0);

        return true;
    }
};

enum BroodQueenTyranna
{
    EVENT_BROOD_SWARM = 0,
    EVENT_INTO_THE_SHADOWS = 1,
    EVENT_QUEENS_BITE = 2,
    EVENT_CHECK_GROUND = 3,

    SPELL_BROOD_SWARM = 197627,
    SPELL_INTO_THE_SHADOWS = 197414,
    SPELL_QUEENS_BITE = 197486,

    NPC_CREDIT1 = 93802,
    NPC_CREDIT2 = 101760,
    SAY_ONCOMBAT_TYRANNA = 0,
};

class npc_brood_queen_tyranna : public CreatureScript
{
public:
    npc_brood_queen_tyranna() : CreatureScript("npc_brood_queen_tyranna") { }

    struct npc_brood_queen_tyrannaAI : public ScriptedAI
    {
        npc_brood_queen_tyrannaAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        float GroundPos;

        void Initialize()
        {
            events.ScheduleEvent(EVENT_BROOD_SWARM, 10000);
            events.ScheduleEvent(EVENT_INTO_THE_SHADOWS, 8000);
            events.ScheduleEvent(EVENT_QUEENS_BITE, 18000);
            events.ScheduleEvent(EVENT_CHECK_GROUND, 100);
        }

        void Reset() override
        {
            Initialize();
            events.Reset();
            GroundPos = me->GetPositionZ() + 0.1f;
        }

        void JustDied(Unit* killer) override
        {
            /*if (killer->GetTypeId() == TYPEID_PLAYER)
            {
            killer->ToPlayer()->KilledMonsterCredit(NPC_CREDIT1, ObjectGuid::Empty);
            killer->ToPlayer()->KilledMonsterCredit(NPC_CREDIT2, ObjectGuid::Empty);
            killer->ToPlayer()->AddItem(124672, 1);
            me->GetMotionMaster()->MovePoint(0, 0.0f, 0.0f, GroundPos + 1.0f);
            }*/
        }

        void EnterCombat(Unit* who) override
        {
            Talk(SAY_ONCOMBAT_TYRANNA);

            if (who->GetTypeId() == TYPEID_PLAYER)
            {
                who->ToPlayer()->KilledMonsterCredit(NPC_CREDIT1, ObjectGuid::Empty);
                who->ToPlayer()->KilledMonsterCredit(NPC_CREDIT2, ObjectGuid::Empty);
                who->ToPlayer()->AddItem(124672, 1);
                me->GetMotionMaster()->MovePoint(0, 0.0f, 0.0f, GroundPos + 1.0f);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BROOD_SWARM:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_BROOD_SWARM, true);

                    events.ScheduleEvent(EVENT_BROOD_SWARM, 14000);
                    break;
                case EVENT_INTO_THE_SHADOWS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_INTO_THE_SHADOWS, true);

                    events.ScheduleEvent(EVENT_INTO_THE_SHADOWS, 18000);
                    break;
                case EVENT_QUEENS_BITE:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_QUEENS_BITE, true);

                    events.ScheduleEvent(EVENT_QUEENS_BITE, 8000);
                    break;
                case EVENT_CHECK_GROUND:
                    if (me->GetPositionZ() < GroundPos - 0.2f)
                    {
                        me->GetMotionMaster()->MovePoint(0, 0.0f, 0.0f, GroundPos + 2.0f);
                        me->SetDisableGravity(true);
                        me->SetCanFly(true);
                    }
                    events.ScheduleEvent(EVENT_CHECK_GROUND, 600);
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_brood_queen_tyrannaAI(creature);
    }
};

// 97303 Kayn Sunfury
class npc_kayn_sunfury2 : public CreatureScript
{
public:
    npc_kayn_sunfury2() : CreatureScript("npc_kayn_sunfury2") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        if (quest->GetQuestId() == 38729)
        {
            player->KilledMonsterCredit(100651, ObjectGuid::Empty);
            creature->AI()->Talk(0);
        }

        return true;
    }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == 38729)
        {
            //player->SendMovieStart(497);
            //player->CastSpell(player, 192141, true);

            player->TeleportTo(1468, 4325.94f, -620.21f, -281.41f, 0);
        }

        return true;
    }
};

// 192140 - Return to the Black Temple: Complete Quest
class spell_return_to_the_black_temple_complete_quest : public SpellScriptLoader
{
public:
    spell_return_to_the_black_temple_complete_quest() : SpellScriptLoader("spell_return_to_the_black_temple_complete_quest") { }

    class spell_return_to_the_black_temple_complete_quest_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_return_to_the_black_temple_complete_quest_AuraScript);

        void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Aura* aura = GetAura())
                aura->SetDuration(1000);

        }

        void Register() override
        {
            AfterEffectApply += AuraEffectApplyFn(spell_return_to_the_black_temple_complete_quest_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_SCREEN_EFFECT, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_return_to_the_black_temple_complete_quest_AuraScript();
    }
};

// 259043
class go_legion_banner : public GameObjectScript
{
public:
    go_legion_banner() : GameObjectScript("go_legion_banner") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (player->GetQuestStatus(40077) != QUEST_STATUS_INCOMPLETE)
            return false;

        WorldPackets::Scenes::PlayScene packet;
        packet.SceneID = 1116;
        packet.PlaybackFlags = 20;
        packet.SceneInstanceID = 2;
        packet.SceneScriptPackageID = 1493;
        packet.TransportGUID = player->GetTransGUID();
        packet.Location = player->GetPosition();
        player->GetSession()->SendPacket(packet.Write(), true);

        player->KillCreditGO(250560, ObjectGuid::Empty);

        /*if (Quest const* quest = sObjectMgr->GetQuestTemplate(39279))
        player->AddQuest(quest, player);*/

        return true;
    }
};

// 103658
class npc_kayn_cell : public CreatureScript
{
public:
    npc_kayn_cell() : CreatureScript("npc_kayn_cell") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        player->CastSpell(creature, 177803, true);
        player->KilledMonsterCredit(99326, ObjectGuid::Empty);
        player->KilledMonsterCredit(112276, ObjectGuid::Empty);
        return true;
    }
};

// 103655
class npc_altruis_cell : public CreatureScript
{
public:
    npc_altruis_cell() : CreatureScript("npc_altruis_cell") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        player->CastSpell(creature, 184012, true);
        player->KilledMonsterCredit(112287, ObjectGuid::Empty);
        player->KilledMonsterCredit(112277, ObjectGuid::Empty);

        return true;
    }
};

class npc_fel_infusion : public CreatureScript
{
public:
    npc_fel_infusion() : CreatureScript("npc_fel_infusion") { }

    struct npc_fel_infusionAI : public ScriptedAI
    {
        npc_fel_infusionAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {

        }

        void Reset() override
        {
            Initialize();
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
            {
                killer->ToPlayer()->SetPower(POWER_ALTERNATE_POWER, killer->GetPower(POWER_ALTERNATE_POWER) + 10);

                for (uint8 i = 0; i < 10; ++i)
                    killer->ToPlayer()->KilledMonsterCredit(89297, ObjectGuid::Empty);
            }
        }

        void EnterCombat(Unit* who) override
        {

        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            /*while (uint32 eventId = events.ExecuteEvent())
            {
            switch (eventId)
            {

            }
            }*/

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_fel_infusionAI(creature);
    }
};

// 92986 Altruis
class npc_altruis : public CreatureScript
{
public:
    npc_altruis() : CreatureScript("npc_altruis") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        if (quest->GetQuestId() == 38689) // Fel Infusion
            player->CastSpell(player, 133508, true);

        return true;
    }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == 38689) // Fel Infusion
            player->RemoveAurasDueToSpell(133508);

        return true;
    }
};

// 259043
class go_ashtongue : public GameObjectScript
{
public:
    go_ashtongue() : GameObjectScript("go_ashtongue") { }

    uint32 changePhase;

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (player->GetQuestStatus(40378) != QUEST_STATUS_INCOMPLETE) // Enter the Illidari: Ashtongue
            return false;

        WorldPackets::Scenes::PlayScene packet;
        packet.SceneID = 1053;
        packet.PlaybackFlags = 20;
        packet.SceneInstanceID = 1;
        packet.SceneScriptPackageID = 1451;
        packet.TransportGUID = player->GetTransGUID();
        packet.Location = player->GetPosition();
        player->GetSession()->SendPacket(packet.Write(), true);

        player->KilledMonsterCredit(88872, ObjectGuid::Empty);
        player->KilledMonsterCredit(97831, ObjectGuid::Empty);
        player->KilledMonsterCredit(101534, ObjectGuid::Empty);

        changePhase = 5000;

        return true;
    }

    void OnUpdate(GameObject* go, uint32 diff)
    {
        if (!go)
            return;

        if (changePhase <= diff)
        {
            if (Creature* creature = go->FindNearestCreature(101518, 50.0f))
                PhasingHandler::AddPhase(creature, 169, true);
        }
        else
            changePhase -= diff;
    }

};

class npc_find_allari : public CreatureScript
{
public:
    npc_find_allari() : CreatureScript("npc_find_allari") { }

    struct npc_find_allariAI : public ScriptedAI
    {
        npc_find_allariAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {

        }

        void Reset() override
        {
            Initialize();
            events.Reset();
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 15.0f))
            {
                Player* player = who->ToPlayer();

                if (player->GetQuestStatus(40378) == QUEST_STATUS_INCOMPLETE)
                    player->KilledMonsterCredit(94410, ObjectGuid::Empty);
            }
        }

        void JustDied(Unit* killer) override
        {
        }

        void EnterCombat(Unit* who) override
        {

        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            /*while (uint32 eventId = events.ExecuteEvent())
            {
            switch (eventId)
            {

            }
            }*/

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_find_allariAI(creature);
    }
};

enum BarbarusExtermineitor
{
    // Events
    EVENT_ANNIHILATE = 0,
    EVENT_BRUTAL_ATTACKS = 1,
    EVENT_SHOULDER_CHARGE = 2,
    EVENT_LEAPING_RETREAT = 3,

    // Spells
    SPELL_ANNIHILATE = 199604,
    SPELL_BRUTAL_ATTACKS = 199556,
    SPELL_SHOULDER_CHARGE = 199476,
    SPELL_LEAPING_RETREAT = 199474,
};

class npc_barbarus : public CreatureScript
{
public:
    npc_barbarus() : CreatureScript("npc_barbarus") { }

    struct npc_barbarusAI : public ScriptedAI
    {
        npc_barbarusAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
                killer->ToPlayer()->KilledMonsterCredit(106241, ObjectGuid::Empty);
        }

        void EnterCombat(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER)
                who->ToPlayer()->KilledMonsterCredit(106241, ObjectGuid::Empty);

            me->KillSelf();
            /*events.ScheduleEvent(EVENT_ANNIHILATE, urand(20000, 30000));
            events.ScheduleEvent(EVENT_BRUTAL_ATTACKS, urand(3000, 6000));
            events.ScheduleEvent(EVENT_SHOULDER_CHARGE, urand(12000, 14000));
            events.ScheduleEvent(EVENT_LEAPING_RETREAT, urand(15000, 22000));*/
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ANNIHILATE:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(me, SPELL_ANNIHILATE, true);

                    events.ScheduleEvent(EVENT_ANNIHILATE, 30000);
                    break;
                case EVENT_BRUTAL_ATTACKS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_BRUTAL_ATTACKS, true);

                    events.ScheduleEvent(EVENT_BRUTAL_ATTACKS, urand(8000, 10000));
                    break;
                case EVENT_LEAPING_RETREAT:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_LEAPING_RETREAT, true);

                    events.ScheduleEvent(EVENT_LEAPING_RETREAT, urand(1500, 22000));
                    break;
                case EVENT_SHOULDER_CHARGE:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_SHOULDER_CHARGE, true);

                    events.ScheduleEvent(EVENT_SHOULDER_CHARGE, urand(10000, 12000));
                    break;
                }
            }

            //if (UpdateVictim())
            //DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_barbarusAI(creature);
    }
};

class npc_extermineitor : public CreatureScript
{
public:
    npc_extermineitor() : CreatureScript("npc_extermineitor") { }

    struct npc_extermineitorAI : public ScriptedAI
    {
        npc_extermineitorAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
                killer->ToPlayer()->KilledMonsterCredit(99303, ObjectGuid::Empty);
        }

        void EnterCombat(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER)
                who->ToPlayer()->KilledMonsterCredit(99303, ObjectGuid::Empty);

            me->KillSelf();
            /*events.ScheduleEvent(EVENT_ANNIHILATE, urand(35000, 40000));
            events.ScheduleEvent(EVENT_BRUTAL_ATTACKS, urand(3000, 6000));
            events.ScheduleEvent(EVENT_SHOULDER_CHARGE, urand(12000, 14000));
            events.ScheduleEvent(EVENT_LEAPING_RETREAT, urand(15000, 22000));*/
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ANNIHILATE:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(me, SPELL_ANNIHILATE, true);

                    events.ScheduleEvent(EVENT_ANNIHILATE, 36000);
                    break;
                case EVENT_BRUTAL_ATTACKS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_BRUTAL_ATTACKS, true);

                    events.ScheduleEvent(EVENT_BRUTAL_ATTACKS, urand(8000, 10000));
                    break;
                case EVENT_LEAPING_RETREAT:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_LEAPING_RETREAT, true);

                    events.ScheduleEvent(EVENT_LEAPING_RETREAT, urand(1500, 22000));
                    break;
                case EVENT_SHOULDER_CHARGE:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_SHOULDER_CHARGE, true);

                    events.ScheduleEvent(EVENT_SHOULDER_CHARGE, urand(10000, 12000));
                    break;
                }
            }

            //if (UpdateVictim())
            //DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_extermineitorAI(creature);
    }
};

// 96665 kayn
class npc_kayn_3 : public CreatureScript
{
public:
    npc_kayn_3() : CreatureScript("npc_kayn_3") { }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == 38690)
        {
            if (GameObject* go = player->FindNearestGameObject(245467, 200.0f))
                go->UseDoorOrButton();

            if (GameObject* go = player->FindNearestGameObject(244404, 200.0f))
                go->UseDoorOrButton();
        }
        return true;
    }
};

// 243967 Illidari Banner
class go_reflective_mirror : public GameObjectScript
{
public:
    go_reflective_mirror() : GameObjectScript("go_reflective_mirror") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->CastSpell(player, 191917, true);

        return true;
    }
};

// 204588
class spell_activate_countermeasure : public SpellScriptLoader
{
public:
    spell_activate_countermeasure() : SpellScriptLoader("spell_activate_countermeasure") { }

    class spell_activate_countermeasure_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_activate_countermeasure_SpellScript);

        void HandleKillCredit()
        {
            if (Creature* creature = GetCaster()->ToPlayer()->FindNearestCreature(99732, 5.0f))
                GetCaster()->ToPlayer()->KilledMonsterCredit(99732, ObjectGuid::Empty);

            if (Creature* creature = GetCaster()->ToPlayer()->FindNearestCreature(99731, 5.0f))
                GetCaster()->ToPlayer()->KilledMonsterCredit(99731, ObjectGuid::Empty);

            if (Creature* creature = GetCaster()->ToPlayer()->FindNearestCreature(99709, 5.0f))
                GetCaster()->ToPlayer()->KilledMonsterCredit(99709, ObjectGuid::Empty);
        }

        void Register() override
        {
            OnCast += SpellCastFn(spell_activate_countermeasure_SpellScript::HandleKillCredit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_activate_countermeasure_SpellScript();
    }
};

// 244644 Warden's Ascent
class go_warden_ascent : public GameObjectScript
{
public:
    go_warden_ascent() : GameObjectScript("go_warden_ascent") { }

    struct go_warden_ascentAI : public GameObjectAI
    {
        go_warden_ascentAI(GameObject* pGO) : GameObjectAI(pGO)
        {
        }

        uint32 giveKillCredit;

        void Reset()
        {
            giveKillCredit = 1000;
        }

        void UpdateAI(uint32 diff)
        {
            if (Player* player = go->FindNearestPlayer(5.0f))
            {
                if (player->GetQuestStatus(39686) == QUEST_STATUS_INCOMPLETE) // Arriba del todo
                {
                    if (giveKillCredit <= diff)
                    {
                        if (player->GetPositionZ() >= 253.0f)
                            player->KilledMonsterCredit(96814, ObjectGuid::Empty);

                        giveKillCredit = 1000;
                    }
                    else
                        giveKillCredit -= diff;
                }
            }
        }
    };

    GameObjectAI* GetAI(GameObject* pGO) const
    {
        return new go_warden_ascentAI(pGO);
    }
};

// 243967 Illidari Banner
class go_pool_of_judgements : public GameObjectScript
{
public:
    go_pool_of_judgements() : GameObjectScript("go_pool_of_judgements") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->KilledMonsterCredit(100166, ObjectGuid::Empty);
        player->SendMovieStart(478);
        return true;
    }
};

// 97644
class npc_korvas_2 : public CreatureScript
{
public:
    npc_korvas_2() : CreatureScript("npc_korvas_2") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Kayn", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Altruis", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF:
            player->CastSpell(player, 196661, true);
            CloseGossipMenuFor(player);
            break;
        case GOSSIP_ACTION_INFO_DEF + 1:
            player->CastSpell(player, 196662, true);
            CloseGossipMenuFor(player);
            break;
        }

        return true;
    }
};

enum Immolanth
{
    EVENT_BURNING_FEL = 0,
    EVENT_CHAOS_NOVA = 1,
    SPELL_BURNING_FEL = 199758,
    SPELL_CHAOS_NOVA = 199828,
};

class npc_immolanth : public CreatureScript
{
public:
    npc_immolanth() : CreatureScript("npc_immolanth") { }

    struct npc_immolanthAI : public ScriptedAI
    {
        npc_immolanthAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
                killer->ToPlayer()->KilledMonsterCredit(106254, ObjectGuid::Empty);
        }

        void EnterCombat(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER)
                who->ToPlayer()->KilledMonsterCredit(106254, ObjectGuid::Empty);

            //events.ScheduleEvent(EVENT_BURNING_FEL, urand(8000, 10000));
            //events.ScheduleEvent(EVENT_CHAOS_NOVA, urand(18000, 20000));
            me->KillSelf();
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BURNING_FEL:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(me, SPELL_BURNING_FEL, true);

                    events.ScheduleEvent(EVENT_BURNING_FEL, urand(8000, 10000));
                    break;
                case EVENT_CHAOS_NOVA:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_CHAOS_NOVA, true);

                    events.ScheduleEvent(EVENT_CHAOS_NOVA, 18000);
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_immolanthAI(creature);
    }
};

enum Bastillax
{
    EVENT_FEL_ANNIHILATION = 0,
    EVENT_CRUSHING_SHADOWS = 1,
    EVENT_BLUR_OF_SHADOWS = 2,
    SPELL_FEL_ANNIHILATION = 200007,
    SPELL_CRUSHING_SHADOWS = 200027,
    SPELL_BLUR_OF_SHADOWS = 200002,
};

class npc_bastillax : public CreatureScript
{
public:
    npc_bastillax() : CreatureScript("npc_bastillax") { }

    struct npc_bastillaxAI : public ScriptedAI
    {
        npc_bastillaxAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void JustDied(Unit* killer) override
        {
            if (killer->GetTypeId() == TYPEID_PLAYER)
            {
                killer->ToPlayer()->KilledMonsterCredit(113812, ObjectGuid::Empty);
                killer->ToPlayer()->KilledMonsterCredit(106255, ObjectGuid::Empty);
            }
        }

        void EnterCombat(Unit* /*who*/) override
        {
            events.ScheduleEvent(EVENT_FEL_ANNIHILATION, urand(6000, 8000));
            events.ScheduleEvent(EVENT_CRUSHING_SHADOWS, urand(10000, 12000));
            events.ScheduleEvent(EVENT_BLUR_OF_SHADOWS, 3000);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_FEL_ANNIHILATION:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(me, SPELL_FEL_ANNIHILATION, true);

                    events.ScheduleEvent(EVENT_FEL_ANNIHILATION, urand(8000, 10000));
                    break;
                case EVENT_CRUSHING_SHADOWS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_CRUSHING_SHADOWS, true);

                    events.ScheduleEvent(EVENT_CRUSHING_SHADOWS, 6000);
                    break;
                case EVENT_BLUR_OF_SHADOWS:
                    if (Unit* target = me->GetVictim())
                        me->CastSpell(target, SPELL_BLUR_OF_SHADOWS, true);

                    events.ScheduleEvent(EVENT_BLUR_OF_SHADOWS, 6000);
                    break;
                }
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }
    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_bastillaxAI(creature);
    }
};

// 96665 kayn
class npc_khadgar : public CreatureScript
{
public:
    npc_khadgar() : CreatureScript("npc_khadgar") { }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == 39690)
            player->CastSpell(player, 192758, true);

        if (quest->GetQuestId() == 39689)
            player->CastSpell(player, 192757, true);

        return true;
    }
};

void AddSC_zone_vault_of_wardens()
{
    new npc_inquisitor_baleful();
    new npc_ashtongue_mystic();
    new go_coilskar();
    new go_jailer_cage_1();
    new go_jailer_cage_2();
    new go_jailer_cage_3();
    new go_jailer_cage_4();
    new go_meeting_with_the_queen();
    new npc_sevis_brightflame();
    new go_shivarra();
    new npc_matron_mother_malevolence();
    new npc_lady_stheno();
    new npc_battlelord_gaardoun();
    new npc_jace_darkweaver();
    new npc_fel_lord_caza();
    new npc_doom_commander_beliash();
    new go_book();
    new npc_felsaber();
    new spell_spectral_vision();
    new go_illidari_banner1();
    new go_illidari_banner2();
    new go_illidari_banner3();
    new npc_kayn_sunfury();
    new npc_allari();
    new npc_cyana();
    new npc_korvas();
    new npc_mannethrel();
    new npc_izal_whitemoon();
    new npc_cyana2();
    new npc_brood_queen_tyranna();
    new npc_kayn_sunfury2();
    new spell_return_to_the_black_temple_complete_quest();
    new go_legion_banner();
    new npc_kayn_cell();
    new npc_altruis_cell();
    new npc_fel_infusion();
    new npc_altruis();
    new go_ashtongue();
    new npc_find_allari();
    new npc_barbarus();
    new npc_extermineitor();
    new npc_kayn_3();
    new go_reflective_mirror();
    new spell_activate_countermeasure();
    new go_warden_ascent();
    new npc_korvas_2();
    new npc_immolanth();
    new npc_bastillax();
    new npc_khadgar();
    new go_pool_of_judgements();
}
