
#ifndef _ANTICHEATMGR_H
#define _ANTICHEATMGR_H

#include "Common.h"

enum ReportTypes
{
    SPEED_HACK_REPORT = 0,
    FLY_HACK_REPORT = 1,
    WALK_WATER_HACK_REPORT = 2,
    JUMP_HACK_REPORT = 3,
    TELEPORT_PLANE_HACK_REPORT = 4,

    MAX_REPORT_TYPES
};

const std::string report_types [MAX_REPORT_TYPES] = { "speed_reports", "fly_reports", "waterwalk_reports", "jump_reports", "teleportplane_reports" };

class TC_GAME_API AnticheatMgr
{
    AnticheatMgr();
    ~AnticheatMgr();

public:
    static AnticheatMgr* instance();
    void StartHackDetection(Player* player, MovementInfo movementInfo, uint32 opcode);
    void HandleHackDetectionTimer(Player* player, uint32 timeDiff);
    void DisableAnticheatDetection(Player* player, bool teleport = false);
    void DeletePlayerReport(Player* player);
    void JailPlayer(Player* player, bool applyAuras);

private:
    void SpeedHackDetection(Player* player, MovementInfo movementInfo);
    void FlyHackDetection(Player* player, MovementInfo movementInfo);
    void WalkOnWaterHackDetection(Player* player, MovementInfo movementInfo);
    void JumpHackDetection(Player* player, MovementInfo movementInfo, uint32 opcode);
    void TeleportPlaneHackDetection(Player* player, MovementInfo);
    void BuildReport(Player* player, uint8 reportType);
    void SendAlertToGMs(const std::string& playerName, std::string& reportType);
};

#define sAnticheatMgr AnticheatMgr::instance()
#endif
