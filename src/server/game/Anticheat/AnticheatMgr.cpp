/**/

#include "AnticheatMgr.h"
#include "Player.h"
#include "Unit.h"
#include "Chat.h"
#include "SpellMgr.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "Language.h"
#include "DatabaseEnv.h"
#include "World.h"
#include "Log.h"
#include <stdio.h>
#include "WorldSession.h"
#include "Map.h"


AnticheatMgr::AnticheatMgr() { }

AnticheatMgr::~AnticheatMgr() { }

AnticheatMgr* AnticheatMgr::instance()
{
    static AnticheatMgr instance;
    return &instance;
}

void AnticheatMgr::DeletePlayerReport(Player* player)
{
    if ( !player->GetSession() )
        return;

    CharacterDatabase.PExecute("DELETE FROM players_reports_status WHERE guid IN (SELECT guid FROM characters WHERE account=%u)", player->GetSession()->GetAccountId());
}

void AnticheatMgr::BuildReport(Player* player, uint8 reportType)
{
    if ( player->anticheatData.total_reports == 0 )
    {
        player->anticheatData.creation_time = time(NULL);
        CharacterDatabase.PExecute("INSERT IGNORE INTO players_reports_status (guid,creation_time) VALUES (%u,%u);", player->GetGUID().GetCounter(), player->anticheatData.creation_time);
        CharacterDatabase.PExecute("INSERT IGNORE INTO players_reports_status2 (guid,creation_time) VALUES (%u,%u);", player->GetGUID().GetCounter(), player->anticheatData.creation_time);
    }

    std::string report_type = report_types [reportType];

    player->anticheatData.type_reports [reportType]++;

    uint64 actual_time = time(NULL) - player->anticheatData.creation_time;

    player->anticheatData.average = player->anticheatData.total_reports > 0 ? ( ( player->anticheatData.average * ( player->anticheatData.total_reports ) ) + actual_time ) / ( player->anticheatData.total_reports + 1 ) : 0;
    player->anticheatData.total_reports++;

    CharacterDatabase.PExecute("UPDATE players_reports_status SET %s=%u, total_reports=%u, average=%u WHERE guid=%u", report_type.c_str(), player->anticheatData.type_reports [reportType], player->anticheatData.total_reports, player->anticheatData.average, player->GetGUID().GetCounter());
    CharacterDatabase.PExecute("UPDATE players_reports_status2 SET %s=%u, total_reports=%u, average=%u WHERE guid=%u", report_type.c_str(), player->anticheatData.type_reports [reportType], player->anticheatData.total_reports, player->anticheatData.average, player->GetGUID().GetCounter());

    if ( player->anticheatData.total_reports >= 40)
    {
        std::string ScrennWarning = "";
        ScrennWarning = "|[[ANTICHEAT]|cFF00FFFF[|cFF60FF00" + std::string(player->GetName()) + "|cFF00FFFF] Posible cheater! Tipo: " + report_type;
        WorldPacket data(SMSG_PRINT_NOTIFICATION, ( ScrennWarning.size() + 1 ));
        data << ScrennWarning;
        sWorld->SendGlobalGMMessage(&data);

        // display warning at the center of the screen, hacky way?
        std::string str = "| RenegadosWOW AntiCheats|cFF00FFFF[|cFF60FF00" + std::string(player->GetName()) + "|cFF00FFFF] Posible cheater! Tipo: " + report_type;
        sWorld->SendGMText(LANG_GM_BROADCAST, str.c_str());
        std::stringstream ssa;

        // display warning to GMs in IRC.
        ssa << player->GetName();
        ssa << " - Posible cheater!";
        ssa << " - Tipo: ";
        ssa << report_type;

        CharacterDatabase.PExecute("UPDATE players_reports_status SET autojail=(autojail+1) WHERE guid=%u", player->GetGUID().GetCounter());
        CharacterDatabase.PExecute("UPDATE players_reports_status2 SET autojail=(autojail+1) WHERE guid=%u", player->GetGUID().GetCounter());
        player->anticheatData.total_reports = ( ( player->anticheatData.total_reports - 40) + 2 );
        QueryResult result;
        result = CharacterDatabase.PQuery("SELECT * FROM `players_reports_status` WHERE `guid` = '%u'", player->GetGUID().GetCounter());
        Field *fields = result->Fetch();
        int32 autojail = fields [9].GetInt32();
        // so far never seen a fly,jump,tp hack thats fake one lol)

        if ( report_type == "fly_reports" || report_type == "jump_reports" || report_type == "teleportplane_reports" )
            autojail = 7; // lol juts to make sure these are very true

        if ( report_type == "speed_reports" ) // De momento no lo enjaulamos, solo avisamos a los gms para que le echen un vistazo y nos evitamos falsos positivos.
            autojail = 0;

        if ( report_type == "waterwalk_reports" )
            autojail = autojail + 1; // may need taking out????

        if ( autojail > 3 ) // 0,1,2,3 - computers start count from 0
        {
           // player->TeleportTo(1, 16220.7f, 16398.3f, -64.3786f, 0.825313f);
            player->CastSpell(player, 42201, true);  // Eternal Silence
            player->CastSpell(player, 23775, true);  // Stun Forever
            player->CastSpell(player, 9454, true);   // Freeze
            player->CastSpell(player, 45472, true);  // parachute
            player->ResurrectPlayer(100, false);


            std::string ScrennWarningJailed = "";
            ScrennWarningJailed = "|[[ANTICHEAT]|cFF00FFFF[|cFF60FF00" + std::string(player->GetName()) + "|cFF00FFFF] You has been jailed by: RenegadosWOW AntiCheats..Send ticket to tell us what happened";
            WorldPacket data(SMSG_PRINT_NOTIFICATION, ( ScrennWarningJailed.size() + 1 ));
            data << ScrennWarningJailed;
            sWorld->SendGlobalGMMessage(&data);


            ChatHandler(player->GetSession()).PSendSysMessage("You has been jailed by: RenegadosWOW AntiCheats");
            ChatHandler(player->GetSession()).PSendSysMessage("Send ticket to tell us what happened.");
            ssa << " *** JAILED *** ";
            std::stringstream ss;
            ss << player->GetName();
            ss << " <- You have been jailed for use cheats!";
            sWorld->SendWorldText(5532, ss.str().c_str());
        }
    }
}

void AnticheatMgr::DisableAnticheatDetection(Player* player, bool teleport)
{
    player->anticheatData.disableACCheck = true;
    player->anticheatData.disableACCheckTimer = ( teleport ? 7000 : 5000 );
}

void AnticheatMgr::HandleHackDetectionTimer(Player* player, uint32 diffTime)
{
    if ( player->anticheatData.disableACCheck )
    {
        if ( player->anticheatData.disableACCheckTimer <= diffTime )
            player->anticheatData.disableACCheck = false;
        else
            player->anticheatData.disableACCheckTimer -= diffTime;
    }
}

void AnticheatMgr::JumpHackDetection(Player* player, MovementInfo movementInfo, uint32 opcode)
{
    if ( player->anticheatData.lastOpcode == CMSG_MOVE_JUMP && opcode == CMSG_MOVE_JUMP && opcode != CMSG_MOVE_DOUBLE_JUMP )
    {
        TC_LOG_WARN("Anticheat", "Jump Hack detection in Player: %s (GUID: %s)", player->GetName().c_str(), player->GetGUID().ToString().c_str());
        BuildReport(player, JUMP_HACK_REPORT);
    }
}

void AnticheatMgr::WalkOnWaterHackDetection(Player* player, MovementInfo movementInfo)
{
    if ( !player->anticheatData.lastMovementInfo.HasMovementFlag(MOVEMENTFLAG_WATERWALKING) )
        return;

    if ( player->IsGameMaster() )
        return;

    // if we are a ghost we can walk on water
    if ( !player->IsAlive() )
        return;

    if (
        player->HasAuraType(SPELL_AURA_FEATHER_FALL) || // as is says on tin
        player->HasAuraType(SPELL_AURA_SAFE_FALL) ||    // as is says on tin
        player->HasAuraType(SPELL_AURA_WATER_WALK) ||   // as is says on tin
        player->HasAura(3714) ||                        // path of frost
        player->HasAura(60068) ||                       // path of frost (2)
        player->HasAura(61081) ||                       // path of frost (3)
        player->HasAura(59307) ||                       // glyph path of frost
        player->HasAura(1706) ||                        // levitate
        player->HasAura(57987)                          // Glyph of Levitate
        )
        return;

    TC_LOG_WARN("Anticheat", "WaterWalk Hack detection in Player: %s (GUID: %s)", player->GetName().c_str(), player->GetGUID().ToString().c_str());
    BuildReport(player, WALK_WATER_HACK_REPORT);
}

void AnticheatMgr::FlyHackDetection(Player* player, MovementInfo movementInfo)
{
    if ( player->IsGameMaster() )
        return;

    if ( !player->anticheatData.lastMovementInfo.HasMovementFlag(MOVEMENTFLAG_FLYING) )
        return;

    if ( player->HasAuraType(SPELL_AURA_FLY) ||
        player->HasAuraType(SPELL_AURA_MOD_INCREASE_MOUNTED_FLIGHT_SPEED) ||
        player->HasAuraType(SPELL_AURA_MOD_INCREASE_FLIGHT_SPEED) )
        return;

    if (
        player->HasAura(34480) || // GRAVITY_LAPSE
        player->HasAura(39432) || // GRAVITY_LAPSE_AURA
        player->HasAura(33943) || // Flight Form
        player->HasAura(40120) || // Swift Flight Form
        player->HasAura(73446) || // The Pride Of Kezan: Flight Speed Aura
        player->HasAura(44227)    // GRAVITY_LAPSE_FLY
        )
        return;

    TC_LOG_WARN("Anticheat", "Fly Hack detection in Player: %s (GUID: %s)", player->GetName().c_str(), player->GetGUID().ToString().c_str());
    BuildReport(player, FLY_HACK_REPORT);
}

void AnticheatMgr::TeleportPlaneHackDetection(Player* player, MovementInfo movementInfo)
{
    if ( player->anticheatData.lastMovementInfo.pos.GetPositionZ() != 0 ||
        movementInfo.pos.GetPositionZ() != 0 )
        return;

    if ( movementInfo.HasMovementFlag(MOVEMENTFLAG_FALLING) )
        return;

    if ( player->getDeathState() == JUST_DIED )
        return;

    float x, y, z;
    player->GetPosition(x, y, z);
    float ground_Z = player->GetMap()->GetHeight(player->GetPhaseShift(), x, y, z);
    float z_diff = fabs(ground_Z - z);

    // we are not really walking there
    if ( z_diff > 1.0f )
    {
        TC_LOG_WARN("Anticheat", "Teleport Hack detection in Player: %s (GUID: %s)", player->GetName().c_str(), player->GetGUID().ToString().c_str());
        BuildReport(player, TELEPORT_PLANE_HACK_REPORT);
    }
}

void AnticheatMgr::StartHackDetection(Player* player, MovementInfo movementInfo, uint32 opcode)
{
   /* if ( !sWorld->getBoolConfig(CONFIG_ANTICHEAT_ENABLE) )
        return;*/

    if ( player->IsGameMaster() )
        return;

    if ( player->anticheatData.disableACCheck || player->IsInFlight() || player->GetTransport() || player->GetVehicle() )
    {
        player->anticheatData.lastMovementInfo = movementInfo;
        player->anticheatData.lastOpcode = opcode;
        return;
    }

    SpeedHackDetection(player, movementInfo);
    FlyHackDetection(player, movementInfo);
    WalkOnWaterHackDetection(player, movementInfo);
    JumpHackDetection(player, movementInfo, opcode);
    TeleportPlaneHackDetection(player, movementInfo);

    player->anticheatData.lastMovementInfo = movementInfo;
    player->anticheatData.lastOpcode = opcode;
}

void AnticheatMgr::SpeedHackDetection(Player* player, MovementInfo movementInfo)
{
    // ghosts move faster
    if ( !player->IsAlive() )
        return;

    if ( player->IsGameMaster() )
        return;

    // if (player->IsMounted())
    //     return;

    if ( player->HasUnitMovementFlag(MOVEMENTFLAG_DISABLE_GRAVITY) )
        return;

    if ( ( player->IsFalling() && player->GetMapId() == 607 ) || player->IsFalling() ) //False postives in SOTA
        return;

    if ( player->HasAuraType(SPELL_AURA_FEATHER_FALL) || player->HasAuraType(SPELL_AURA_SAFE_FALL) )
        return;

    uint32 distance2D = ( uint32 )movementInfo.pos.GetExactDist2d(&player->anticheatData.lastMovementInfo.pos);
    uint8 moveType = 0;
    uint32 maxSpeed = 0;
    float auraspeed = 0.0f;
    int32 main_speed_mod = 0;
    int32 main_speed_mod_fly = 0;
    float stack_bonus = 0.0f;
    float stack_bonus_fly = 0.0f;
    float non_stack_bonus = 0.0f;
    float main_speed_mod_swim = 0.0f;

    // we need to know HOW is the player moving
    // TO-DO: Should we check the incoming movement flags?
    // of course not the client can modify those ^
    if ( player->HasUnitMovementFlag(MOVEMENTFLAG_SWIMMING) )
        moveType = MOVE_SWIM;
    else if ( player->IsFlying() )
        moveType = MOVE_FLIGHT;
    else if ( player->HasUnitMovementFlag(MOVEMENTFLAG_WALKING) )
        moveType = MOVE_WALK;
    else
        moveType = MOVE_RUN;

    if ( moveType == MOVE_SWIM )
    {
        // no need for mount check
        // vashj'ir?
        main_speed_mod_swim = player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_INCREASE_SWIM_SPEED);
        non_stack_bonus = ( 100.0f + player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_SPEED_NOT_STACK) ) / 100.0f;
        auraspeed = main_speed_mod_swim + non_stack_bonus;
    }

    if ( moveType == MOVE_RUN )
    {
        if ( player->IsMounted() )
        {
            main_speed_mod = player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_INCREASE_MOUNTED_SPEED);
            stack_bonus = player->GetTotalAuraMultiplier(SPELL_AURA_MOD_MOUNTED_SPEED_ALWAYS);
            non_stack_bonus = ( 100.0f + player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_MOUNTED_SPEED_NOT_STACK) ) / 100.0f;
            auraspeed += main_speed_mod + stack_bonus + non_stack_bonus;
        }
        else
        {
            main_speed_mod = player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_INCREASE_SPEED);
            stack_bonus = player->GetTotalAuraMultiplier(SPELL_AURA_MOD_SPEED_ALWAYS);
            non_stack_bonus = ( 100.0f + player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_SPEED_NOT_STACK) ) / 100.0f;
            auraspeed += main_speed_mod + stack_bonus + non_stack_bonus;
        }
    }

    if ( moveType == MOVE_FLIGHT )
    {
        // no need for mount check
        main_speed_mod_fly = player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_INCREASE_VEHICLE_FLIGHT_SPEED);
        stack_bonus_fly = player->GetTotalAuraMultiplier(SPELL_AURA_MOD_VEHICLE_SPEED_ALWAYS);
        non_stack_bonus = ( 100.0f + player->GetMaxPositiveAuraModifier(SPELL_AURA_MOD_SPEED_NOT_STACK) ) / 100.0f;
        auraspeed += main_speed_mod_fly + stack_bonus_fly + non_stack_bonus;
    }

    // how many yards the player can do in one sec.
    uint32 speedRate = ( uint32 )( player->GetSpeed(UnitMoveType(moveType)) + movementInfo.jump.xyspeed );

    // how long the player took to move to here.
    uint32 timeDiff = getMSTimeDiff(player->anticheatData.lastMovementInfo.time, movementInfo.time);

    if ( timeDiff == 0 )
        timeDiff = 1;

    // this is the distance doable by the player in 1 sec, using the time done to move to this point.
    // this has changed since 335a was 1000
    uint32 clientSpeedRate = distance2D * 800 / timeDiff;

    //TC_LOG_ERROR("misc", "fallxy %f fallz %f Distance2D %u clientSpeedRate %u speedRate %u auraspeed %u timeDiff %u ",movementInfo.j_xyspeed, movementInfo.j_zspeed,distance2D,clientSpeedRate,speedRate,auraspeed,timeDiff);
    
    

    // we need to know HOW is the player moving
    // TO-DO: Should we check the incoming movement flags?
    float x, y, z;
    player->GetPosition(x, y, z);
    float ground_Z = player->GetMap()->GetHeight(player->GetPhaseShift(),x, y, z);
    float z_diff = fabs(ground_Z - z);
    if ( player->HasUnitMovementFlag(MOVEMENTFLAG_SWIMMING) )
    {
        moveType = MOVE_SWIM;
        maxSpeed = 11;
        if ( player->HasAura(8326) || player->HasAura(20584) ) //Ghost
            maxSpeed += 5;

        if ( player->HasAura(86510) ) //Epic Swimming Mount
            maxSpeed += 20;

        if ( player->HasAura(95664) ) //Advanced Swimming Mount
            maxSpeed += 15;

        if ( player->HasAura(73701) ) //Sea Legs
            maxSpeed += 5;

        if ( player->HasAura(98718) ) //Subdued Seahorse
            maxSpeed = 41;

        if ( player->HasAura(75207) ) //Abyssal Seahorse
            maxSpeed = 56;
    }
    else if ( player->IsFlying() && player->HasAuraType(SPELL_AURA_MOUNTED) )
    {
        moveType = MOVE_FLIGHT;

        if ( player->HasSpell(90265) ) //master riding
            maxSpeed = 40;
        else if ( player->HasSpell(34091) ) //artisan riding
            maxSpeed = 33;
        else if ( player->HasSpell(34090) )
            maxSpeed = 20;

        //extra checks
        if ( maxSpeed < 25 )
        {
            if ( player->HasAura(86459) ) //Mount Speed Mod: Standard Flying Mount
                maxSpeed = 36;

            if ( player->HasAura(86460) ) //Mount Speed Mod: Epic Flying Mount
                maxSpeed = 49;
        }

        if ( player->HasAura(32223) ) //Crusader Aura
            maxSpeed += 9;

        if ( player->HasAura(51983) ) //On a Pale Horse Rank 1
            maxSpeed += 5;
        if ( player->HasAura(51986) ) //On a Pale Horse Rank 2
            maxSpeed += 9;

        if ( player->HasAura(26023) || player->HasAura(26022) ) //Pursuit of Justice
            maxSpeed += 19;
    }
    else if ( player->IsFlying() && !player->HasAuraType(SPELL_AURA_MOUNTED) )
    {
        maxSpeed = 1;

        if ( player->HasAura(98619) ) //Wings of Flame
            maxSpeed += 11;

        if ( player->HasAura(33943) ) //Flight Form
            maxSpeed += 20;

        if ( player->HasAura(40120) ) //Swift Flight Form
            maxSpeed += 35;

        if ( player->HasAura(59640) ) //Underbelly Elixir
            maxSpeed += 20;
    }
    else if ( player->HasAuraType(SPELL_AURA_MOUNTED) )
    {
        if ( player->HasSpell(33391) ) //journeyman riding
            maxSpeed = 25;
        else if ( player->HasSpell(33388) ) //apprentice riding
            maxSpeed = 21;

        //extra checks
        if ( maxSpeed < 17 )
        {
            if ( player->HasAura(86458) ) //Mount Speed Mod: Epic Ground Mount
                maxSpeed = 21;

            if ( player->HasAura(86457) ) //Mount Speed Mod: Standard Ground Mount
                maxSpeed = 17;
        }

        if ( player->HasAura(32223) ) //Crusader Aura
            maxSpeed += 5;

        if ( player->HasAura(51983) ) //On a Pale Horse Rank 1
            maxSpeed += 3;
        if ( player->HasAura(51986) ) //On a Pale Horse Rank 2
            maxSpeed += 5;

        if ( player->HasAura(26023) || player->HasAura(26022) ) //Pursuit of Justice
            maxSpeed += 5;
    }
    else if ( player->HasUnitMovementFlag(MOVEMENTFLAG_WALKING) )
    {
        moveType = MOVE_WALK;
        maxSpeed = 6;
    }
    else
    {
        moveType = MOVE_RUN;
        maxSpeed = 16;

        if ( z_diff > 1.0f )
            maxSpeed = 40;

        if ( player->HasAura(33943) ) //Flight Form
            maxSpeed += 20;

        if ( player->HasAura(40120) ) //Swift Flight Form
            maxSpeed += 33;

        if ( player->HasAura(8326) || player->HasAura(20584) ) //Ghost
            maxSpeed += 5;

        if ( player->HasAura(26023) || player->HasAura(26022) ) //Pursuit of Justice
            maxSpeed += 5;

        if ( player->HasAura(51721) || player->HasAura(54055) ) //Dominion over Acherus
            maxSpeed += 8;

        if ( player->HasAura(48265) ) //Unholy Presence
            maxSpeed += 2;

        if ( player->HasAura(23451) || player->HasAura(23978) ) //Speed
            maxSpeed += 10;

        if ( player->HasAura(68992) ) //Dark flight
            maxSpeed += 4;

        if ( player->HasAura(2983) || player->HasAura(1850) ) //Sprint, Dash
            maxSpeed += 7;

        if ( player->HasAura(36554) ) //Shadowstep
            maxSpeed += 8;
    }

    if ( player->HasUnitMovementFlag(MOVEMENTFLAG_FALLING) )
    {
        maxSpeed = 60;
    }

    // we did the (uint32) cast to accept a margin of tolerance
    if ( clientSpeedRate > maxSpeed && player->GetSession()->GetLatency() < 500 )
    {
        if ( player->GetSpellHistory()->HasCooldown(6544) ) //heroic leap
            return;

        if ( !player )
            return;

        TC_LOG_WARN("Anticheat", "Speed Hack detection in Player: %s (GUID: %s)", player->GetName().c_str(), player->GetGUID().ToString().c_str());
        BuildReport(player, SPEED_HACK_REPORT);
    }
}
